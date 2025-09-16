/*
 * Copyright 2024, UNSW
 * SPDX-License-Identifier: BSD-2-Clause
 */

#include <stdbool.h>
#include <stdint.h>
#include <os/sddf.h>
#include <sddf/resources/device.h>
#include <sddf/network/queue.h>
#include <sddf/network/config.h>
#include <sddf/util/util.h>
#include <sddf/util/fence.h>
#include <sddf/util/printf.h>

#include "ethernet.h"

__attribute__((__section__(".device_resources"))) device_resources_t device_resources;

__attribute__((__section__(".net_driver_config"))) net_driver_config_t config;

#ifdef CONFIG_PLAT_STAR64
// @kwinter: Figure out how to get this to work with the new elf patching.
uintptr_t resets = 0x3000000;
#endif /* CONFIG_PLAT_STAR64 */

#define RX_COUNT 256
#define TX_COUNT 256
#define MAX_COUNT MAX(RX_COUNT, TX_COUNT)

struct descriptor {
    uint32_t addr_low;
    uint32_t addr_high;
    uint32_t des2;
    uint32_t des3;
};

typedef struct {
#ifdef PANCAKE_NETWORK_DRIVER
    uint64_t tail;
    uint64_t head;
    uint64_t capacity;
#else
    uint32_t tail; /* index to insert at */
    uint32_t head; /* index to remove from */
    uint32_t capacity; /* capacity of the ring */
#endif
    volatile struct descriptor *descr; /* buffer descripter array */
#ifdef PANCAKE_NETWORK_DRIVER
    uint64_t io_addr_mdata[MAX_COUNT];
#else
    net_buff_desc_t descr_mdata[MAX_COUNT]; /* associated meta data array */
#endif
} hw_ring_t;

#ifdef PANCAKE_NETWORK_DRIVER
hw_ring_t *rx;
hw_ring_t *tx;

net_queue_handle_t *rx_queue;
net_queue_handle_t *tx_queue;

#else
hw_ring_t rx;
hw_ring_t tx;

net_queue_handle_t rx_queue;
net_queue_handle_t tx_queue;
#endif

uintptr_t rx_desc_base;
uintptr_t tx_desc_base;

uintptr_t eth_regs;



#ifdef PANCAKE_NETWORK_DRIVER
static char cml_memory[1024*10];
extern void *cml_heap;
extern void *cml_stack;
extern void *cml_stackend;

extern void cml_main(void);

void cml_exit(int arg) {
    microkit_dbg_puts("ERROR! We should not be getting here\n");
}

void cml_err(int arg) {
    if (arg == 3) {
        microkit_dbg_puts("Memory not ready for entry. You may have not run the init code yet, or be trying to enter during an FFI call.\n");
    }
    cml_exit(arg);
}

void cml_clear() {
    microkit_dbg_puts("Trying to clear cache\n");
}

void init_pancake_mem() {
    unsigned long cml_heap_sz = 1024*8;
    unsigned long cml_stack_sz = 1024*2;
    cml_heap = cml_memory;
    cml_stack = cml_heap + cml_heap_sz;
    cml_stackend = cml_stack + cml_stack_sz;
}
#endif


#ifndef PANCAKE_NETWORK_DRIVER
static inline bool hw_ring_full(hw_ring_t *ring)
{
    return ring->tail - ring->head == ring->capacity;
}

static inline bool hw_ring_empty(hw_ring_t *ring)
{
    return ring->tail - ring->head == 0;
}

static void update_ring_slot(hw_ring_t *ring, unsigned int idx, uint32_t addr_low, uint32_t addr_high, uint32_t des2,
                             uint32_t des3)
{
    volatile struct descriptor *d = &(ring->descr[idx]);
    d->addr_low = addr_low;
    d->addr_high = addr_high;
    d->des2 = des2;
    /* Ensure all writes to the descriptor complete, before we set the flags
     * that makes hardware aware of this slot.
     */
    THREAD_MEMORY_RELEASE();
    d->des3 = des3;
}

static void rx_provide()
{
    bool reprocess = true;
    while (reprocess) {
        while (!hw_ring_full(&rx) && !net_queue_empty_free(&rx_queue)) {
            net_buff_desc_t buffer;
            int err = net_dequeue_free(&rx_queue, &buffer);
            assert(!err);

            uint32_t idx = rx.tail % rx.capacity;
            rx.descr_mdata[idx] = buffer;
            update_ring_slot(&rx, idx, (uint32_t)buffer.io_or_offset, buffer.io_or_offset >> 32, 0,
                             DESC_RXSTS_OWNBYDMA | DESC_RXSTS_BUFFER1_ADDR_VALID | DESC_RXSTS_IOC);
            /* We will update the hardware register that stores the tail address. This tells
            the device that we have new descriptors to use. */
            THREAD_MEMORY_RELEASE();
            *DMA_REG(DMA_CH0_RXDESC_TAIL_PTR) = rx_desc_base + sizeof(struct descriptor) * rx.tail;
            rx.tail++;
        }

        net_request_signal_free(&rx_queue);
        reprocess = false;

        if (!net_queue_empty_free(&rx_queue) && !hw_ring_full(&rx)) {
            net_cancel_signal_free(&rx_queue);
            reprocess = true;
        }
    }
}

static void rx_return(void)
{
    bool packets_transferred = false;
    while (!hw_ring_empty(&rx)) {
        /* If buffer slot is still empty, we have processed all packets the device has filled */
        uint32_t idx = rx.head % rx.capacity;
        volatile struct descriptor *d = &(rx.descr[idx]);
        if (d->des3 & DESC_RXSTS_OWNBYDMA) {
            break;
        }

        THREAD_MEMORY_ACQUIRE();

        net_buff_desc_t buffer = rx.descr_mdata[idx];
        if (d->des3 & DESC_RXSTS_ERROR) {
            sddf_dprintf("ETH|ERROR: RX descriptor returned with error status %x\n", d->des3);
            idx = rx.tail % rx.capacity;
            rx.descr_mdata[idx] = buffer;
            update_ring_slot(&rx, idx, (uint32_t)buffer.io_or_offset, buffer.io_or_offset >> 32, 0,
                             DESC_RXSTS_OWNBYDMA | DESC_RXSTS_BUFFER1_ADDR_VALID | DESC_RXSTS_IOC);

            /* We will update the hardware register that stores the tail address. This tells
            the device that we have new descriptors to use. */
            *DMA_REG(DMA_CH0_RXDESC_TAIL_PTR) = rx_desc_base + sizeof(struct descriptor) * idx;
            rx.tail++;
        } else {
            /* Read 0-14 bits to get length of received packet, manual pg 4081, table 11-152, RDES3 Normal Descriptor */
            buffer.len = (d->des3 & 0x7FFF);
            int err = net_enqueue_active(&rx_queue, buffer);
            assert(!err);
            packets_transferred = true;
        }
        rx.head++;
    }

    if (packets_transferred && net_require_signal_active(&rx_queue)) {
        net_cancel_signal_active(&rx_queue);
        sddf_notify(config.virt_rx.id);
    }
}

static void tx_provide(void)
{
    bool reprocess = true;
    while (reprocess) {
        while (!(hw_ring_full(&tx)) && !net_queue_empty_active(&tx_queue)) {
            net_buff_desc_t buffer;
            int err = net_dequeue_active(&tx_queue, &buffer);
            assert(!err);

            // For normal transmit descriptors, tdes2 needs to be set to generate an IRQ on transmit
            // completion. We also need to provide the length of the buffer data in bits 13:0.
            uint32_t des2 = DESC_TXCTRL_TXINT | buffer.len;

            uint32_t idx = tx.tail % tx.capacity;
            // For normal transmit descriptors, we need to give ownership to DMA, as well as indicate
            // that this is the first and last parts of the current packet.
            uint32_t des3 = (DESC_TXSTS_OWNBYDMA | DESC_TXCTRL_TXFIRST | DESC_TXCTRL_TXLAST | DESC_TXCTRL_TXCIC
                             | buffer.len);
            tx.descr_mdata[idx] = buffer;
            update_ring_slot(&tx, idx, (uint32_t)buffer.io_or_offset, buffer.io_or_offset >> 32, des2, des3);

            tx.tail++;
            /* Set the tail in hardware to the latest tail we have inserted in.
             * This tells the hardware that it has new buffers to send.
             * NOTE: Setting this on every enqueued packet for sanity, change this to once per batch.
             */
            *DMA_REG(DMA_CH0_TXDESC_TAIL_PTR) = tx_desc_base + sizeof(struct descriptor) * (idx);
        }

        net_request_signal_active(&tx_queue);
        reprocess = false;

        if (!hw_ring_full(&tx) && !net_queue_empty_active(&tx_queue)) {
            net_cancel_signal_active(&tx_queue);
            reprocess = true;
        }
    }
}

static void tx_return(void)
{
    bool enqueued = false;
    while (!hw_ring_empty(&tx)) {
        /* Ensure that this buffer has been sent by the device */
        uint32_t idx = tx.head % tx.capacity;
        volatile struct descriptor *d = &(tx.descr[idx]);
        if (d->des3 & DESC_TXSTS_OWNBYDMA) {
            break;
        }
        THREAD_MEMORY_ACQUIRE();

        net_buff_desc_t buffer = tx.descr_mdata[idx];
        int err = net_enqueue_free(&tx_queue, buffer);
        assert(!err);
        enqueued = true;
        tx.head++;
    }

    if (enqueued && net_require_signal_free(&tx_queue)) {
        net_cancel_signal_free(&tx_queue);
        sddf_notify(config.virt_tx.id);
    }
}

static void handle_irq()
{
    uint32_t e = *DMA_REG(DMA_CH0_STATUS);
    *DMA_REG(DMA_CH0_STATUS) &= e;

    while (e & DMA_INTR_MASK) {
        if (e & DMA_CH0_INTERRUPT_EN_TIE) {
            tx_return();
            tx_provide();
        }
        if (e & DMA_CH0_INTERRUPT_EN_RIE) {
            rx_return();
        }
        if (e & DMA_INTR_ABNORMAL) {
            if (e & DMA_CH0_INTERRUPT_EN_FBEE) {
                sddf_dprintf("Ethernet device fatal bus error\n");
            }
        }
        e = *DMA_REG(DMA_CH0_STATUS);
        *DMA_REG(DMA_CH0_STATUS) &= e;
    }
}
#else
static inline bool hw_ring_full(hw_ring_t *ring)
{
    return ring->tail - ring->head == ring->capacity;
}

static inline bool hw_ring_empty(hw_ring_t *ring)
{
    return ring->tail - ring->head == 0;
}

static void update_ring_slot(hw_ring_t *ring, unsigned int idx, uint32_t addr_low, uint32_t addr_high, uint32_t des2,
                             uint32_t des3)
{
    volatile struct descriptor *d = &(ring->descr[idx]);
    d->addr_low = addr_low;
    d->addr_high = addr_high;
    d->des2 = des2;
    /* Ensure all writes to the descriptor complete, before we set the flags
     * that makes hardware aware of this slot.
     */
    THREAD_MEMORY_RELEASE();
    d->des3 = des3;
}

static void rx_provide()
{
    bool reprocess = true;
    while (reprocess) {
        while (!hw_ring_full(rx) && !net_queue_empty_free(rx_queue)) {
            net_buff_desc_t buffer;
            int err = net_dequeue_free(rx_queue, &buffer);
            assert(!err);

            uint32_t idx = rx->tail % rx->capacity;
            rx->io_addr_mdata[idx] = buffer.io_or_offset;
            update_ring_slot(rx, idx, (uint32_t)buffer.io_or_offset, buffer.io_or_offset >> 32, 0,
                             DESC_RXSTS_OWNBYDMA | DESC_RXSTS_BUFFER1_ADDR_VALID | DESC_RXSTS_IOC);
            /* We will update the hardware register that stores the tail address. This tells
            the device that we have new descriptors to use. */
            THREAD_MEMORY_RELEASE();
            *DMA_REG(DMA_CH0_RXDESC_TAIL_PTR) = rx_desc_base + sizeof(struct descriptor) * rx->tail;
            rx->tail++;
        }

        net_request_signal_free(rx_queue);
        reprocess = false;

        if (!net_queue_empty_free(rx_queue) && !hw_ring_full(rx)) {
            net_cancel_signal_free(rx_queue);
            reprocess = true;
        }
    }
}

static void rx_return(void)
{
    bool packets_transferred = false;
    while (!hw_ring_empty(rx)) {
        /* If buffer slot is still empty, we have processed all packets the device has filled */
        uint32_t idx = rx->head % rx->capacity;
        volatile struct descriptor *d = &(rx->descr[idx]);
        if (d->des3 & DESC_RXSTS_OWNBYDMA) {
            break;
        }

        THREAD_MEMORY_ACQUIRE();

        net_buff_desc_t buffer;
        buffer.io_or_offset = rx->io_addr_mdata[idx];
        if (d->des3 & DESC_RXSTS_ERROR) {
            sddf_dprintf("ETH|ERROR: RX descriptor returned with error status %x\n", d->des3);
            idx = rx->tail % rx->capacity;
            rx->io_addr_mdata[idx] = buffer.io_or_offset;
            update_ring_slot(rx, idx, (uint32_t)buffer.io_or_offset, buffer.io_or_offset >> 32, 0,
                             DESC_RXSTS_OWNBYDMA | DESC_RXSTS_BUFFER1_ADDR_VALID | DESC_RXSTS_IOC);

            /* We will update the hardware register that stores the tail address. This tells
            the device that we have new descriptors to use. */
            *DMA_REG(DMA_CH0_RXDESC_TAIL_PTR) = rx_desc_base + sizeof(struct descriptor) * idx;
            rx->tail++;
        } else {
            /* Read 0-14 bits to get length of received packet, manual pg 4081, table 11-152, RDES3 Normal Descriptor */
            buffer.len = (d->des3 & 0x7FFF);
            int err = net_enqueue_active(rx_queue, buffer);
            assert(!err);
            packets_transferred = true;
        }
        rx->head++;
    }

    if (packets_transferred && net_require_signal_active(rx_queue)) {
        net_cancel_signal_active(rx_queue);
        sddf_notify(config.virt_rx.id);
    }
}

static void tx_provide(void)
{
    bool reprocess = true;
    while (reprocess) {
        while (!(hw_ring_full(tx)) && !net_queue_empty_active(tx_queue)) {
            net_buff_desc_t buffer;
            int err = net_dequeue_active(tx_queue, &buffer);
            assert(!err);

            // For normal transmit descriptors, tdes2 needs to be set to generate an IRQ on transmit
            // completion. We also need to provide the length of the buffer data in bits 13:0.
            uint32_t des2 = DESC_TXCTRL_TXINT | buffer.len;

            uint32_t idx = tx->tail % tx->capacity;
            // For normal transmit descriptors, we need to give ownership to DMA, as well as indicate
            // that this is the first and last parts of the current packet.
            uint32_t des3 = (DESC_TXSTS_OWNBYDMA | DESC_TXCTRL_TXFIRST | DESC_TXCTRL_TXLAST | DESC_TXCTRL_TXCIC
                             | buffer.len);
            tx->io_addr_mdata[idx] = buffer.io_or_offset;
            update_ring_slot(tx, idx, (uint32_t)buffer.io_or_offset, buffer.io_or_offset >> 32, des2, des3);

            tx->tail++;
            /* Set the tail in hardware to the latest tail we have inserted in.
             * This tells the hardware that it has new buffers to send.
             * NOTE: Setting this on every enqueued packet for sanity, change this to once per batch.
             */
            *DMA_REG(DMA_CH0_TXDESC_TAIL_PTR) = tx_desc_base + sizeof(struct descriptor) * (idx);
        }

        net_request_signal_active(tx_queue);
        reprocess = false;

        if (!hw_ring_full(tx) && !net_queue_empty_active(tx_queue)) {
            net_cancel_signal_active(tx_queue);
            reprocess = true;
        }
    }
}

static void tx_return(void)
{
    bool enqueued = false;
    while (!hw_ring_empty(tx)) {
        /* Ensure that this buffer has been sent by the device */
        uint32_t idx = tx->head % tx->capacity;
        volatile struct descriptor *d = &(tx->descr[idx]);
        if (d->des3 & DESC_TXSTS_OWNBYDMA) {
            break;
        }
        THREAD_MEMORY_ACQUIRE();

        net_buff_desc_t buffer;
        buffer.io_or_offset = tx->io_addr_mdata[idx];
        int err = net_enqueue_free(tx_queue, buffer);
        assert(!err);
        enqueued = true;
        tx->head++;
    }

    if (enqueued && net_require_signal_free(tx_queue)) {
        net_cancel_signal_free(tx_queue);
        sddf_notify(config.virt_tx.id);
    }
}

static void handle_irq()
{
    uint32_t e = *DMA_REG(DMA_CH0_STATUS);
    *DMA_REG(DMA_CH0_STATUS) &= e;

    while (e & DMA_INTR_MASK) {
        if (e & DMA_CH0_INTERRUPT_EN_TIE) {
            tx_return();
            tx_provide();
        }
        if (e & DMA_CH0_INTERRUPT_EN_RIE) {
            rx_return();
        }
        if (e & DMA_INTR_ABNORMAL) {
            if (e & DMA_CH0_INTERRUPT_EN_FBEE) {
                sddf_dprintf("Ethernet device fatal bus error\n");
            }
        }
        e = *DMA_REG(DMA_CH0_STATUS);
        *DMA_REG(DMA_CH0_STATUS) &= e;
    }
}

void ffirx_provide(unsigned char *c, long clen, unsigned char *a, long alen) {
    rx_provide();
}

void ffirx_return(unsigned char *c, long clen, unsigned char *a, long alen) {
    rx_return();
}

void ffitx_provide(unsigned char *c, long clen, unsigned char *a, long alen) {
    tx_provide();
}

void ffitx_return(unsigned char *c, long clen, unsigned char *a, long alen) {
    tx_return();
}

void ffihandle_irq(unsigned char *c, long clen, unsigned char *a, long alen) {
    handle_irq();
}

#endif

/* On the JH7110 U-Boot asserts a reset signal that clears the MAC register values.
 * For other SoCs we can re-use the MAC address that U-Boot has read from
 * the EEPROM.
 * See https://github.com/au-ts/sddf/issues/437 for more details.
 */
#if defined(CONFIG_PLAT_IMX8MP_EVK)
#define USE_MAC_ADDR_REGS 1
#elif defined(CONFIG_PLAT_STAR64)
#define USE_MAC_ADDR_REGS 0
#else
#error "Unknown platform to handle MAC address for"
#endif

static void eth_init()
{
#if USE_MAC_ADDR_REGS
    sddf_dprintf("we should not get here\n");
    uint32_t mac_high = *MAC_REG(MAC_ADDRESS0_HIGH);
    uint32_t mac_low = *MAC_REG(MAC_ADDRESS0_LOW);
#endif
    // Software reset -- This will reset the MAC internal registers.
    volatile uint32_t *mode = DMA_REG(DMA_MODE);
    *mode |= DMA_MODE_SWR;

    // Poll on BIT 0. This bit is cleared by the device when the reset is complete.
    while (1) {
        mode = DMA_REG(DMA_MODE);
        if (!(*mode & DMA_MODE_SWR)) {
            break;
        }
    }

    /* Configure MTL */

    // Enable store and forward mode for TX, and enable the TX queue.
    *MTL_REG(MTL_TXQ0_OPERATION_MODE) |= MTL_TXQ_OP_MODE_TSF | MTL_TXQ_OP_MODE_TXQEN;

    // Enable store and forward mode for rx
    *MTL_REG(MTL_RXQ0_OPERATION_MODE) |= MTL_RXQ_OP_MODE_RSF;

    // Program the rx queue to the DMA mapping.
    uint32_t map0 = *MTL_REG(MTL_RXQ_DMA_MAP0);
    // We only have one queue, and we map it onto DMA channel 0
    map0 &= ~MTL_RXQ_DMA_MAP0_Q0_MDMACH_MASK;
    map0 |= MTL_RXQ_DMA_MAP0_Q0_DMA0;
    *MTL_REG(MTL_RXQ_DMA_MAP0) = map0;

    // Transmit/receive queue fifo size, use all RAM for 1 queue
    uint32_t val = *MAC_REG(MAC_HW_FEATURE1);
    uint32_t tx_fifo_sz;
    uint32_t rx_fifo_sz;
    // These sizes of the tx and rx FIFO are encoded in the hardware feature 1 register.
    // These values are expressed as: Log2(FIFO_SIZE) -7
    tx_fifo_sz = (val >> 6) & 0x1f;
    rx_fifo_sz = (val >> 0) & 0x1f;

    /* r/tx_fifo_sz is encoded as log2(n / 128). Undo that by shifting */
    tx_fifo_sz = 128 << tx_fifo_sz;
    rx_fifo_sz = 128 << rx_fifo_sz;

    /* r/tqs is encoded as (n / 256) - 1 */
    uint32_t tqs = tx_fifo_sz / 256 - 1;
    uint32_t rqs = rx_fifo_sz / 256 - 1;

    *MTL_REG(MTL_TXQ0_OPERATION_MODE) &= ~(MTL_TXQ_OP_MODE_TQS_MASK);
    *MTL_REG(MTL_TXQ0_OPERATION_MODE) |= tqs << MTL_TXQ_OP_MODE_TQS_POS;
    *MTL_REG(MTL_RXQ0_OPERATION_MODE) &= ~(MTL_RXQ_OP_MODE_RQS_MASK);
    *MTL_REG(MTL_RXQ0_OPERATION_MODE) |= rqs << MTL_RXQ_OP_MODE_RQS_POS;

    // NOTE - more stuff in dwc_eth_qos that we are skipping regarding to tuning the tqs

    /* Configure MAC */
    *MAC_REG(MAC_RXQ_CTRL0) &= MAC_RXQ_CTRL0_Q0_CLEAR;
    *MAC_REG(MAC_RXQ_CTRL0) |= MAC_RXQ_CTRL0_Q0_DCB_GEN_EN;

    uint32_t filter = MAC_PACKET_FILTER_PR;

    *MAC_REG(MAC_PACKET_FILTER) = filter;

    // For now, disabling all flow control.

    *MAC_REG(MAC_Q0_TX_FLOW_CTRL) = 0;

    // Program all other appropriate fields in MAC_CONFIGURATION
    //       (ie. inter-packet gap, jabber disable).
    uint32_t conf = *MAC_REG(MAC_CONFIGURATION);
    // Set full duplex mode
    conf |= MAC_CONFIG_DM;
    // Enable checksum offload
    conf |= MAC_CONFIG_IPC;

    // Setting the speed of our device to 1000mbps
    conf &= ~(MAC_CONFIG_PS | MAC_CONFIG_FES);
    *MAC_REG(MAC_CONFIGURATION) = conf;

    // Set the MAC Address.
#if USE_MAC_ADDR_REGS
    *MAC_REG(MAC_ADDRESS0_HIGH) = mac_high;
    *MAC_REG(MAC_ADDRESS0_LOW) = mac_low;
#else
    /* Certain platforms require more work to read/set the hardware MAC address,
     * see the definition of USE_MAC_ADDR_REGS for more details. */
    *MAC_REG(MAC_ADDRESS0_HIGH) = 0x00005b75;
    *MAC_REG(MAC_ADDRESS0_LOW) = 0x0039cf6c;
#endif

    /* Configure DMA */

    // Enable operate on second packet
    *DMA_REG(DMA_CH0_TX_CONTROL) |= DMA_CH0_TX_CONTROL_OSF;

    // Set the max packet size for rx
    *DMA_REG(DMA_CH0_RX_CONTROL) &= ~(DMA_CH0_RX_RBSZ_MASK);
    *DMA_REG(DMA_CH0_RX_CONTROL) |= (MAX_RX_FRAME_SZ << DMA_CH0_RX_RBSZ_POS);

    // Program the descriptor length. This is to tell the device that when
    // we reach the base addr + count, we should then wrap back around to
    // the base.

    *DMA_REG(DMA_CH0_TXDESC_RING_LENGTH) = TX_COUNT - 1;
    *DMA_REG(DMA_CH0_RXDESC_RING_LENGTH) = RX_COUNT - 1;

    // Init rx and tx descriptor list addresses.
    rx_desc_base = device_resources.regions[1].io_addr;
    tx_desc_base = device_resources.regions[2].io_addr;

#ifdef PANCAKE_NETWORK_DRIVER
    uintptr_t *pnk_mem = (uintptr_t *)cml_heap;

    pnk_mem[530] = (uintptr_t)rx_desc_base;
    pnk_mem[531] = (uintptr_t)tx_desc_base;
    pnk_mem[0] = (uintptr_t)eth_regs;
#endif

    *DMA_REG(DMA_CH0_RXDESC_LIST_ADDR) = rx_desc_base & 0xffffffff;
    *DMA_REG(DMA_CH0_TXDESC_LIST_ADDR) = tx_desc_base & 0xffffffff;

    // Enable interrupts.
    *DMA_REG(DMA_CH0_INTERRUPT_EN) = DMA_INTR_NORMAL;

// #ifndef PANCAKE_NETWORK_DRIVER
//     rx_provide();
//     tx_provide();
// #else

// #endif
    // Start DMA and MAC
    *DMA_REG(DMA_CH0_TX_CONTROL) |= DMA_CH0_TX_CONTROL_ST;
    *DMA_REG(DMA_CH0_RX_CONTROL) |= DMA_CH0_RX_CONTROL_SR;
    *MAC_REG(MAC_CONFIGURATION) |= (MAC_CONFIG_RE | MAC_CONFIG_TE);

    /* NOTE ------ FROM U-BOOT SOURCE CODE dwc_eth_qos.c:995 */

    /* TX tail pointer not written until we need to TX a packet */
    /*
	 * Point RX tail pointer at last descriptor. Ideally, we'd point at the
	 * first descriptor, implying all descriptors were available. However,
	 * that's not distinguishable from none of the descriptors being
	 * available.
	 */
    *DMA_REG(DMA_CH0_RXDESC_TAIL_PTR) = rx_desc_base + (sizeof(struct descriptor) * (RX_COUNT - 1));
}

static void eth_setup(void)
{
    assert((device_resources.regions[1].io_addr & 0xFFFFFFFF) == device_resources.regions[1].io_addr);
#ifdef PANCAKE_NETWORK_DRIVER
    rx->capacity = RX_COUNT;
    rx->descr = (volatile struct descriptor *)device_resources.regions[1].region.vaddr;
    tx->capacity = TX_COUNT;
    tx->descr = (volatile struct descriptor *)device_resources.regions[2].region.vaddr;
#else
    rx.capacity = RX_COUNT;
    rx.descr = (volatile struct descriptor *)device_resources.regions[1].region.vaddr;
    tx.capacity = TX_COUNT;
    tx.descr = (volatile struct descriptor *)device_resources.regions[2].region.vaddr;
#endif
    eth_init();
}

void init(void)
{
    assert(net_config_check_magic((void *)&config));
    assert(device_resources_check_magic(&device_resources));
    assert(device_resources.num_irqs == 1);
    assert(device_resources.num_regions == 3);
    // All buffers should fit within our DMA region
    assert(RX_COUNT * sizeof(struct descriptor) <= device_resources.regions[1].region.size);
    assert(TX_COUNT * sizeof(struct descriptor) <= device_resources.regions[2].region.size);

    /* Ack any IRQs that were delivered before the driver started. */
    sddf_irq_ack(device_resources.irqs[0].id);

    eth_regs = (uintptr_t)device_resources.regions[0].region.vaddr;

    /* De-assert the reset signals that u-boot left asserted. */
#ifdef CONFIG_PLAT_STAR64
    volatile uint32_t *reset_eth = (volatile uint32_t *)(resets + 0x38);
    uint32_t reset_val = *reset_eth;
    uint32_t mask = 0;
    /* U-Boot de-asserts BIT(0) first then BIT(1) when starting up eth0.
        NOTE: This will be different per-board, but this is correct for the
        Pine64 Star64. */
    for (int i = 0; i < 2; i++) {
        reset_val = *reset_eth;
        mask = BIT(i);
        reset_val &= ~mask;
        *reset_eth = reset_val;
    }
#endif /* CONFIG_PLAT_STAR64 */

#ifdef PANCAKE_NETWORK_DRIVER
    init_pancake_mem();

    uintptr_t *pnk_mem = (uintptr_t *)cml_heap;

    pnk_mem[1] = device_resources.irqs[0].id;
    pnk_mem[2] = config.virt_rx.id;
    pnk_mem[3] = config.virt_tx.id;

    rx_queue = (net_queue_handle_t *) &pnk_mem[4];
    tx_queue = (net_queue_handle_t *) &pnk_mem[7];
    rx = (hw_ring_t *) &pnk_mem[10];
    tx = (hw_ring_t *) &pnk_mem[10 + sizeof(hw_ring_t)/sizeof(uintptr_t)];
#endif
    // Check if the PHY device is up
    uint32_t phy_stat = *MAC_REG(MAC_PHYIF_CONTROL_STATUS);
    if (phy_stat & MAC_PHYIF_CONTROL_LINKSTS) {
        sddf_dprintf("PHY device is up and running\n");
    } else {
        sddf_dprintf("PHY device is currently down\n");
    }

    if (phy_stat & BIT(16)) {
        sddf_dprintf("PHY device is operating in full duplex mode\n");
    } else {
        sddf_dprintf("PHY device is operating in half duplex mode\n");
    }

#ifdef PANCAKE_NETWORK_DRIVER
    net_queue_init(rx_queue, config.virt_rx.free_queue.vaddr, config.virt_rx.active_queue.vaddr,
                   config.virt_rx.num_buffers);
    net_queue_init(tx_queue, config.virt_tx.free_queue.vaddr, config.virt_tx.active_queue.vaddr,
                   config.virt_tx.num_buffers);

    eth_setup();

    sddf_irq_ack(device_resources.irqs[0].id);

    cml_main();
#else
    net_queue_init(&rx_queue, config.virt_rx.free_queue.vaddr, config.virt_rx.active_queue.vaddr,
                   config.virt_rx.num_buffers);
    net_queue_init(&tx_queue, config.virt_tx.free_queue.vaddr, config.virt_tx.active_queue.vaddr,
                   config.virt_tx.num_buffers);
    eth_setup();
    
    sddf_irq_ack(device_resources.irqs[0].id);

    rx_provide();
    tx_provide();

    sddf_irq_ack(device_resources.irqs[0].id);
#endif
}


#ifdef PANCAKE_NETWORK_DRIVER
void ffidump_pnk_mem_slots(unsigned char *c, long clen, unsigned char *a, long alen) {
    uintptr_t *pnk_mem = (uintptr_t *)cml_heap;

    // ANSI color codes
    #define RESET   "\033[0m"
    #define BOLD    "\033[1m"
    #define RED     "\033[31m"
    #define GREEN   "\033[32m"
    #define YELLOW  "\033[33m"
    #define BLUE    "\033[34m"
    #define MAGENTA "\033[35m"
    #define CYAN    "\033[36m"

    sddf_dprintf("\n" BOLD CYAN "════════════════════════════════════════════════════════════════════════\n" RESET);
    sddf_dprintf(BOLD CYAN "                    PANCAKE pnk_mem slot dump\n" RESET);
    sddf_dprintf(BOLD CYAN "════════════════════════════════════════════════════════════════════════\n" RESET);

    int tx_hw_ring_slot = 10 + (int)((sizeof(hw_ring_t) + sizeof(uintptr_t) - 1) / sizeof(uintptr_t));
    int i;

    // Header
    sddf_dprintf(BOLD "%-12s %-18s %-20s %-15s %s\n" RESET, "Slot", "Address", "Hex Value", "Decimal", "Description");
    sddf_dprintf("────────────────────────────────────────────────────────────────────────\n");

    // Print 0..6 (ETH_REGS, IRQ_CH, RX_CH, TX_CH, NET_RX_FREE, NET_RX_ACTIVE, NET_RX_CAPACITY)
    const char *names[] = {"ETH_REGS", "IRQ_CH", "RX_CH", "TX_CH", "NET_RX_FREE", "NET_RX_ACTIVE", "NET_RX_CAPACITY"};
    for (i = 0; i <= 6; i++) {
        sddf_dprintf(YELLOW "pnk_mem[%3d]" RESET " @ " GREEN "%p" RESET " = " BLUE "0x%016lx" RESET " (%lu) " MAGENTA "[%s]\n" RESET,
                    i, &pnk_mem[i], (unsigned long)pnk_mem[i], (unsigned long)pnk_mem[i], names[i]);
    }

    sddf_dprintf("────────────────────────────────────────────────────────────────────────\n");

    // Print 7..9 (NET_TX_FREE, NET_TX_ACTIVE, NET_TX_CAPACITY)
    const char *tx_names[] = {"NET_TX_FREE", "NET_TX_ACTIVE", "NET_TX_CAPACITY"};
    for (i = 7; i <= 9; i++) {
        sddf_dprintf(YELLOW "pnk_mem[%3d]" RESET " @ " GREEN "%p" RESET " = " BLUE "0x%016lx" RESET " (%lu) " MAGENTA "[%s]\n" RESET,
                    i, &pnk_mem[i], (unsigned long)pnk_mem[i], (unsigned long)pnk_mem[i], tx_names[i-7]);
    }

    sddf_dprintf("────────────────────────────────────────────────────────────────────────\n");

    // Print RX hw_ring_t (10..tx_hw_ring_slot-1)
    sddf_dprintf(BOLD RED "RX hw_ring_t structure:\n" RESET);
    for (i = 10; i < tx_hw_ring_slot; i++) {
        sddf_dprintf(YELLOW "pnk_mem[%3d]" RESET " @ " GREEN "%p" RESET " = " BLUE "0x%016lx" RESET " (%lu)\n",
                    i, &pnk_mem[i], (unsigned long)pnk_mem[i], (unsigned long)pnk_mem[i]);
    }

    sddf_dprintf("────────────────────────────────────────────────────────────────────────\n");

    // Print TX hw_ring_t (tx_hw_ring_slot..tx_hw_ring_slot+259)
    sddf_dprintf(BOLD RED "TX hw_ring_t structure:\n" RESET);
    for (i = tx_hw_ring_slot; i < tx_hw_ring_slot + 260; i++) {
        sddf_dprintf(YELLOW "pnk_mem[%3d]" RESET " @ " GREEN "%p" RESET " = " BLUE "0x%016lx" RESET " (%lu)\n",
                    i, &pnk_mem[i], (unsigned long)pnk_mem[i], (unsigned long)pnk_mem[i]);
    }

    sddf_dprintf("────────────────────────────────────────────────────────────────────────\n");

    // Print RX_DESC_BASE and TX_DESC_BASE
    sddf_dprintf(BOLD RED "Descriptor Base Addresses:\n" RESET);
    sddf_dprintf(YELLOW "pnk_mem[530]" RESET " @ " GREEN "%p" RESET " = " BLUE "0x%016lx" RESET " (%lu) " MAGENTA "[RX_DESC_BASE]\n" RESET,
                &pnk_mem[530], (unsigned long)pnk_mem[530], (unsigned long)pnk_mem[530]);
    sddf_dprintf(YELLOW "pnk_mem[531]" RESET " @ " GREEN "%p" RESET " = " BLUE "0x%016lx" RESET " (%lu) " MAGENTA "[TX_DESC_BASE]\n" RESET,
                &pnk_mem[531], (unsigned long)pnk_mem[531], (unsigned long)pnk_mem[531]);

    sddf_dprintf("────────────────────────────────────────────────────────────────────────\n");

    // Dump important DMA registers
    sddf_dprintf(BOLD RED "DMA Registers:\n" RESET);

    // DMA Channel 0 Status
    uint32_t dma_status = *DMA_REG(DMA_CH0_STATUS);
    sddf_dprintf(CYAN "DMA_CH0_STATUS" RESET " @ " GREEN "%p" RESET " = " BLUE "0x%08x" RESET " (%u)\n",
                DMA_REG(DMA_CH0_STATUS), dma_status, dma_status);

    // RX Descriptor Tail Pointer
    uint32_t rx_tail_ptr = *DMA_REG(DMA_CH0_RXDESC_TAIL_PTR);
    sddf_dprintf(CYAN "DMA_CH0_RXDESC_TAIL_PTR" RESET " @ " GREEN "%p" RESET " = " BLUE "0x%08x" RESET " (%u)\n",
                DMA_REG(DMA_CH0_RXDESC_TAIL_PTR), rx_tail_ptr, rx_tail_ptr);

    // TX Descriptor Tail Pointer
    uint32_t tx_tail_ptr = *DMA_REG(DMA_CH0_TXDESC_TAIL_PTR);
    sddf_dprintf(CYAN "DMA_CH0_TXDESC_TAIL_PTR" RESET " @ " GREEN "%p" RESET " = " BLUE "0x%08x" RESET " (%u)\n",
                DMA_REG(DMA_CH0_TXDESC_TAIL_PTR), tx_tail_ptr, tx_tail_ptr);

    // RX Descriptor List Address
    uint32_t rx_list_addr = *DMA_REG(DMA_CH0_RXDESC_LIST_ADDR);
    sddf_dprintf(CYAN "DMA_CH0_RXDESC_LIST_ADDR" RESET " @ " GREEN "%p" RESET " = " BLUE "0x%08x" RESET " (%u)\n",
                DMA_REG(DMA_CH0_RXDESC_LIST_ADDR), rx_list_addr, rx_list_addr);

    // TX Descriptor List Address
    uint32_t tx_list_addr = *DMA_REG(DMA_CH0_TXDESC_LIST_ADDR);
    sddf_dprintf(CYAN "DMA_CH0_TXDESC_LIST_ADDR" RESET " @ " GREEN "%p" RESET " = " BLUE "0x%08x" RESET " (%u)\n",
                DMA_REG(DMA_CH0_TXDESC_LIST_ADDR), tx_list_addr, tx_list_addr);

    // DMA Interrupt Enable
    uint32_t dma_intr_en = *DMA_REG(DMA_CH0_INTERRUPT_EN);
    sddf_dprintf(CYAN "DMA_CH0_INTERRUPT_EN" RESET " @ " GREEN "%p" RESET " = " BLUE "0x%08x" RESET " (%u)\n",
                DMA_REG(DMA_CH0_INTERRUPT_EN), dma_intr_en, dma_intr_en);

    // RX Control
    uint32_t rx_control = *DMA_REG(DMA_CH0_RX_CONTROL);
    sddf_dprintf(CYAN "DMA_CH0_RX_CONTROL" RESET " @ " GREEN "%p" RESET " = " BLUE "0x%08x" RESET " (%u)\n",
                DMA_REG(DMA_CH0_RX_CONTROL), rx_control, rx_control);

    // TX Control
    uint32_t tx_control = *DMA_REG(DMA_CH0_TX_CONTROL);
    sddf_dprintf(CYAN "DMA_CH0_TX_CONTROL" RESET " @ " GREEN "%p" RESET " = " BLUE "0x%08x" RESET " (%u)\n",
                DMA_REG(DMA_CH0_TX_CONTROL), tx_control, tx_control);

    // Ring Length registers
    uint32_t rx_ring_len = *DMA_REG(DMA_CH0_RXDESC_RING_LENGTH);
    sddf_dprintf(CYAN "DMA_CH0_RXDESC_RING_LENGTH" RESET " @ " GREEN "%p" RESET " = " BLUE "0x%08x" RESET " (%u)\n",
                DMA_REG(DMA_CH0_RXDESC_RING_LENGTH), rx_ring_len, rx_ring_len);

    uint32_t tx_ring_len = *DMA_REG(DMA_CH0_TXDESC_RING_LENGTH);
    sddf_dprintf(CYAN "DMA_CH0_TXDESC_RING_LENGTH" RESET " @ " GREEN "%p" RESET " = " BLUE "0x%08x" RESET " (%u)\n",
                DMA_REG(DMA_CH0_TXDESC_RING_LENGTH), tx_ring_len, tx_ring_len);

    sddf_dprintf(BOLD CYAN "════════════════════════════════════════════════════════════════════════\n" RESET);
}
#endif

#ifdef PANCAKE_NETWORK_DRIVER
// extern void pnk_notified(sddf_channel ch);
// void notified(sddf_channel ch) {
//     if (ch > 2) {
//         sddf_dprintf("ETH|DEBUG: bad channel: %d\n", ch);
//     }
//     pnk_notified(ch);
// }
extern void notified(sddf_channel ch);
#else
void notified(sddf_channel ch)
{
    sddf_dprintf("channel: %d\n", ch);
    if (ch == device_resources.irqs[0].id) {
        handle_irq();
        sddf_deferred_irq_ack(ch);
    } else if (ch == config.virt_rx.id) {
        rx_provide();
    } else if (ch == config.virt_tx.id) {
        tx_provide();
    } else {
        sddf_dprintf("ETH|LOG: received notification on unexpected channel %u\n", ch);
    }
}
#endif
