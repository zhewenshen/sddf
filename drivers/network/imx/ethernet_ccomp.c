#include <stdint.h>
#include <stdbool.h>
#include <sddf/network/queue.h>
#include <sddf/network/config.h>
#include <sddf/resources/device.h>

#include "ethernet.h"

typedef unsigned int microkit_channel;

extern device_resources_t device_resources;
extern net_driver_config_t config;

#define RX_COUNT 256
#define TX_COUNT 256
#define MAX_COUNT 256

#define MAX_PACKET_SIZE     1536

// the microkit stuff we need
extern void _ccomp_microkit_notify(microkit_channel ch);
extern void _ccomp_microkit_deferred_irq_ack(microkit_channel ch);

// some other stuff we need
extern void _ccomp_thread_memory_release(void);
extern void _ccomp_thread_memory_acquire(void);
extern void _ccomp_assert(bool condition);
extern void _ccomp_notified_sddf_dprintf(microkit_channel ch);
extern void _ccomp_handle_irq_sddf_dprintf(unsigned int e);

// sddf stuff
extern int _ccomp_net_enqueue_active(net_queue_handle_t *queue, net_buff_desc_t *buffer);
extern int _ccomp_net_enqueue_free(net_queue_handle_t *queue, net_buff_desc_t *buffer);
extern void _ccomp_handle_irq_sddf_dprintf(unsigned int e);
extern void _ccomp_notified_sddf_dprintf(microkit_channel ch);

/* HW ring descriptor (shared with device) */
struct descriptor {
    uint16_t len;
    uint16_t stat;
    uint32_t addr;
};

/* HW ring buffer data type */
typedef struct {
    uint32_t tail; /* index to insert at */
    uint32_t head; /* index to remove from */
    uint32_t capacity; /* capacity of the ring */
    volatile struct descriptor *descr; /* buffer descriptor array */
    net_buff_desc_t descr_mdata[MAX_COUNT]; /* associated meta data array */
} hw_ring_t;

hw_ring_t rx; /* Rx NIC ring */
hw_ring_t tx; /* Tx NIC ring */

net_queue_handle_t rx_queue;
net_queue_handle_t tx_queue;

volatile struct enet_regs *eth;

static inline bool ethernet_ccomp_hw_ring_full(hw_ring_t *ring) {
    return ring->tail - ring->head == ring->capacity;
}

static inline bool ethernet_ccomp_hw_ring_empty(hw_ring_t *ring) {
    return ring->tail - ring->head == 0;
}

static void ethernet_ccomp_update_ring_slot(hw_ring_t *ring, unsigned int idx, uintptr_t phys, uint16_t len, uint16_t stat) {
    volatile struct descriptor *d = &(ring->descr[idx]);

    d->addr = phys;
    d->len = len;

    _ccomp_thread_memory_release(); // double check this

    d->stat = stat;
}

static void ethernet_ccomp_rx_provide(void)
{
    bool reprocess = true;
    while (reprocess) {
        while (!ethernet_ccomp_hw_ring_full(&rx) && !net_queue_empty_free(&rx_queue)) {
            net_buff_desc_t buffer;
            int err = net_dequeue_free(&rx_queue, &buffer);
            // we can ignore asserts for now...
            // assert(!err); 
            _ccomp_assert(!err);

            uint32_t idx = rx.tail % rx.capacity;
            uint16_t stat = RXD_EMPTY;
            if (idx + 1 == rx.capacity) {
                stat |= WRAP;
            }
            rx.descr_mdata[idx] = buffer;
            ethernet_ccomp_update_ring_slot(&rx, idx, buffer.io_or_offset, 0, stat);
            rx.tail++;
            eth->rdar = RDAR_RDAR;
        }

        /* Only request a notification from virtualiser if HW ring not full */
        if (!ethernet_ccomp_hw_ring_full(&rx)) {
            net_request_signal_free(&rx_queue);
        } else {
            net_cancel_signal_free(&rx_queue);
        }
        reprocess = false;

        if (!net_queue_empty_free(&rx_queue) && !ethernet_ccomp_hw_ring_full(&rx)) {
            net_cancel_signal_free(&rx_queue);
            reprocess = true;
        }
    }
}

static void ethernet_ccomp_rx_return(void)
{
    bool packets_transferred = false;
    while (!ethernet_ccomp_hw_ring_empty(&rx)) {
        /* If buffer slot is still empty, we have processed all packets the device has filled */
        uint32_t idx = rx.head % rx.capacity;
        volatile struct descriptor *d = &(rx.descr[idx]);
        if (d->stat & RXD_EMPTY) {
            break;
        }

        // THREAD_MEMORY_ACQUIRE();
        _ccomp_thread_memory_acquire();

        net_buff_desc_t buffer = rx.descr_mdata[idx];
        buffer.len = d->len;

        // ccomp dont support struct as function parameter... this is so sad...
        // int err = net_enqueue_active(&rx_queue, buffer);
        int err = _ccomp_net_enqueue_active(&rx_queue, &buffer);
        // assert(!err);
        _ccomp_assert(!err);

        packets_transferred = true;
        rx.head++;
    }

    // how do we deal with this?
    if (packets_transferred && net_require_signal_active(&rx_queue)) {
        net_cancel_signal_active(&rx_queue);
        
        // microkit_notify(config.virt_rx.id);
        _ccomp_microkit_notify(config.virt_rx.id);
    }
}

static void ethernet_ccomp_tx_provide(void)
{
    bool reprocess = true;
    while (reprocess) {
        while (!(ethernet_ccomp_hw_ring_full(&tx)) && !net_queue_empty_active(&tx_queue)) {
            net_buff_desc_t buffer;
            int err = net_dequeue_active(&tx_queue, &buffer);
            // assert(!err);
            _ccomp_assert(!err);

            uint32_t idx = tx.tail % tx.capacity;
            uint16_t stat = TXD_READY | TXD_ADDCRC | TXD_LAST;
            if (idx + 1 == tx.capacity) {
                stat |= WRAP;
            }
            tx.descr_mdata[idx] = buffer;
            ethernet_ccomp_update_ring_slot(&tx, idx, buffer.io_or_offset, buffer.len, stat);
            tx.tail++;
            eth->tdar = TDAR_TDAR;
        }

        net_request_signal_active(&tx_queue);
        reprocess = false;

        if (!ethernet_ccomp_hw_ring_full(&tx) && !net_queue_empty_active(&tx_queue)) {
            net_cancel_signal_active(&tx_queue);
            reprocess = true;
        }
    }
}

static void ethernet_ccomp_tx_return(void)
{
    bool enqueued = false;
    while (!ethernet_ccomp_hw_ring_empty(&tx)) {
        /* Ensure that this buffer has been sent by the device */
        uint32_t idx = tx.head % tx.capacity;
        volatile struct descriptor *d = &(tx.descr[idx]);
        if (d->stat & TXD_READY) {
            break;
        }

        // THREAD_MEMORY_ACQUIRE();
        _ccomp_thread_memory_acquire();

        net_buff_desc_t buffer = tx.descr_mdata[idx];
        buffer.len = 0;
        // int err = net_enqueue_free(&tx_queue, buffer);
        int err = _ccomp_net_enqueue_free(&tx_queue, &buffer);
        // assert(!err);
        _ccomp_assert(!err);

        enqueued = true;
        tx.head++;
    }

    if (enqueued && net_require_signal_free(&tx_queue)) {
        net_cancel_signal_free(&tx_queue);
        _ccomp_microkit_notify(config.virt_tx.id);
    }
}

static void ethernet_ccomp_handle_irq(void)
{
    uint32_t e = eth->eir & IRQ_MASK;
    eth->eir = e;

    while (e & IRQ_MASK) {
        if (e & NETIRQ_TXF) {
            ethernet_ccomp_tx_return();
            ethernet_ccomp_tx_provide();
        }
        if (e & NETIRQ_RXF) {
            ethernet_ccomp_rx_return();
            ethernet_ccomp_rx_provide();
        }
        if (e & NETIRQ_EBERR) {
            _ccomp_handle_irq_sddf_dprintf(e);
        }
        e = eth->eir & IRQ_MASK;
        eth->eir = e;
    }
}

static void ethernet_ccomp_eth_setup(void)
{
    eth = device_resources.regions[0].region.vaddr;

    uint32_t l = eth->palr;
    uint32_t h = eth->paur;

    /* Set up HW rings */
    rx.descr = (volatile struct descriptor *)device_resources.regions[1].region.vaddr;
    tx.descr = (volatile struct descriptor *)device_resources.regions[2].region.vaddr;
    rx.capacity = RX_COUNT;
    tx.capacity = TX_COUNT;

    /* Perform reset */
    eth->ecr = ECR_RESET;
    while (eth->ecr & ECR_RESET);
    eth->ecr |= ECR_DBSWP;

    /* Clear and mask interrupts */
    eth->eimr = 0x00000000;
    eth->eir  = 0xffffffff;

    /* set MDIO freq */
    eth->mscr = 24 << 1;

    /* Disable */
    eth->mibc |= MIBC_DIS;
    while (!(eth->mibc & MIBC_IDLE));
    /* Clear */
    eth->mibc |= MIBC_CLEAR;
    while (!(eth->mibc & MIBC_IDLE));
    /* Restart */
    eth->mibc &= ~MIBC_CLEAR;
    eth->mibc &= ~MIBC_DIS;

    /* Descriptor group and individual hash tables - Not changed on reset */
    eth->iaur = 0;
    eth->ialr = 0;
    eth->gaur = 0;
    eth->galr = 0;

    /* Mac address needs setting again. */
    if (eth->palr == 0) {
        eth->palr = l;
        eth->paur = h;
    }

    eth->opd = PAUSE_OPCODE_FIELD;

    /* coalesce transmit IRQs to batches of 128 */
    eth->txic0 = ICEN | ICFT(128) | 0xFF;
    eth->tipg = TIPG;
    /* Transmit FIFO Watermark register - store and forward */
    eth->tfwr = STRFWD;
    /* clear rx store and forward. This must be done for hardware csums */
    eth->rsfl = 0;
    /* Do not forward frames with errors + check the csum */
    eth->racc = RACC_LINEDIS | RACC_IPDIS | RACC_PRODIS;
    /* Add the checksum for known IP protocols */
    eth->tacc = TACC_PROCHK | TACC_IPCHK;

    /* Set RDSR */
    eth->rdsr = device_resources.regions[1].io_addr;
    eth->tdsr = device_resources.regions[2].io_addr;

    /* Size of max eth packet size */
    eth->mrbr = MAX_PACKET_SIZE;

    eth->rcr = RCR_MAX_FL(1518) | RCR_RGMII_EN | RCR_MII_MODE | RCR_PROMISCUOUS;
    eth->tcr = TCR_FDEN;

    /* set speed */
    eth->ecr |= ECR_SPEED;

    /* Set Enable  in ECR */
    eth->ecr |= ECR_ETHEREN;

    eth->rdar = RDAR_RDAR;

    /* enable events */
    eth->eir = eth->eir;
    eth->eimr = IRQ_MASK;
}

static void ethernet_ccomp_notified(microkit_channel ch)
{
    if (ch == device_resources.irqs[0].id) {
        ethernet_ccomp_handle_irq();
        /*
         * Delay calling into the kernel to ack the IRQ until the next loop
         * in the microkit event handler loop.
         */
        _ccomp_microkit_deferred_irq_ack(ch);
    } else if (ch == config.virt_rx.id) {
        ethernet_ccomp_rx_provide();
    } else if (ch == config.virt_tx.id) {
        ethernet_ccomp_tx_provide();
    } else {
        _ccomp_notified_sddf_dprintf(ch);
    }
}

static void ethernet_ccomp_init(void)
{
    _ccomp_assert(net_config_check_magic(&config));
    _ccomp_assert(device_resources_check_magic(&device_resources));
    _ccomp_assert(device_resources.num_irqs == 1);
    _ccomp_assert(device_resources.num_regions == 3);
    // All buffers should fit within our DMA region
    _ccomp_assert(RX_COUNT * sizeof(struct descriptor) <= device_resources.regions[1].region.size);
    _ccomp_assert(TX_COUNT * sizeof(struct descriptor) <= device_resources.regions[2].region.size);

    ethernet_ccomp_eth_setup();

    net_queue_init(&rx_queue, config.virt_rx.free_queue.vaddr, config.virt_rx.active_queue.vaddr,
                   config.virt_rx.num_buffers);
    net_queue_init(&tx_queue, config.virt_tx.free_queue.vaddr, config.virt_tx.active_queue.vaddr,
                   config.virt_tx.num_buffers);

    ethernet_ccomp_rx_provide();
    ethernet_ccomp_tx_provide();
}

void init(void)
{
    ethernet_ccomp_init();
}

void notified(microkit_channel ch)
{
    ethernet_ccomp_notified(ch);
}
