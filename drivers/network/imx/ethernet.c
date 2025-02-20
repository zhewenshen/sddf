/*
 * Copyright 2022, UNSW
 * SPDX-License-Identifier: BSD-2-Clause
 */

#include <stdbool.h>
#include <stdint.h>
#include <microkit.h>
#include <sddf/resources/device.h>
#include <sddf/network/queue.h>
#include <sddf/network/config.h>
#include <sddf/util/util.h>
#include <sddf/util/fence.h>
#include <sddf/util/printf.h>

#include "ethernet.h"

#include "ethernet_ccomp.h"

void _ccomp_thread_memory_acquire(void) {
    THREAD_MEMORY_ACQUIRE();
}

void _ccomp_thread_memory_release(void) {
    THREAD_MEMORY_RELEASE();
}

void _ccomp_microkit_notify(microkit_channel ch) {
    microkit_notify(ch);
}

void _ccomp_microkit_deferred_irq_ack(microkit_channel ch) {
    microkit_deferred_irq_ack(ch);
}

void _ccomp_assert(bool condition) {
    assert(condition);
}

int _ccomp_net_enqueue_active(net_queue_handle_t *queue, net_buff_desc_t *buffer) {
    return net_enqueue_active(queue, *buffer);
}

void _ccomp_handle_irq_sddf_dprintf(unsigned int e) {
    sddf_dprintf("ETH|ERROR: System bus/uDMA %u\n", e);
}

void _ccomp_notified_sddf_dprintf(microkit_channel ch) {
    sddf_dprintf("ETH|LOG: received notification on unexpected channel: %u\n", ch);
}

__attribute__((__section__(".device_resources"))) device_resources_t device_resources;
__attribute__((__section__(".net_driver_config"))) net_driver_config_t config;

extern net_queue_handle_t rx_queue;
extern net_queue_handle_t tx_queue;
extern volatile struct enet_regs *eth;

static inline bool hw_ring_full(hw_ring_t *ring)
{
    return ethernet_ccomp_hw_ring_full(ring);
}

static inline bool hw_ring_empty(hw_ring_t *ring)
{
    return ethernet_ccomp_hw_ring_empty(ring);
}

static void update_ring_slot(hw_ring_t *ring, unsigned int idx, uintptr_t phys,
                             uint16_t len, uint16_t stat)
{
    ethernet_ccomp_update_ring_slot(ring, idx, phys, len, stat);
}

static void rx_provide(void)
{
    ethernet_ccomp_rx_provide();
}

static void rx_return(void)
{
    ethernet_ccomp_rx_return();
}

// --- up to here ---

static void tx_provide(void)
{
    bool reprocess = true;
    while (reprocess) {
        while (!(hw_ring_full(&tx)) && !net_queue_empty_active(&tx_queue)) {
            net_buff_desc_t buffer;
            int err = net_dequeue_active(&tx_queue, &buffer);
            assert(!err);

            uint32_t idx = tx.tail % tx.capacity;
            uint16_t stat = TXD_READY | TXD_ADDCRC | TXD_LAST;
            if (idx + 1 == tx.capacity) {
                stat |= WRAP;
            }
            tx.descr_mdata[idx] = buffer;
            update_ring_slot(&tx, idx, buffer.io_or_offset, buffer.len, stat);
            tx.tail++;
            eth->tdar = TDAR_TDAR;
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
        if (d->stat & TXD_READY) {
            break;
        }

        THREAD_MEMORY_ACQUIRE();

        net_buff_desc_t buffer = tx.descr_mdata[idx];
        buffer.len = 0;
        int err = net_enqueue_free(&tx_queue, buffer);
        assert(!err);

        enqueued = true;
        tx.head++;
    }

    if (enqueued && net_require_signal_free(&tx_queue)) {
        net_cancel_signal_free(&tx_queue);
        microkit_notify(config.virt_tx.id);
    }
}

static void handle_irq(void)
{
    uint32_t e = eth->eir & IRQ_MASK;
    eth->eir = e;

    while (e & IRQ_MASK) {
        if (e & NETIRQ_TXF) {
            tx_return();
            tx_provide();
        }
        if (e & NETIRQ_RXF) {
            rx_return();
            rx_provide();
        }
        if (e & NETIRQ_EBERR) {
            sddf_dprintf("ETH|ERROR: System bus/uDMA %u\n", e);
        }
        e = eth->eir & IRQ_MASK;
        eth->eir = e;
    }
}

static void eth_setup(void)
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

void init(void)
{
    assert(net_config_check_magic(&config));
    assert(device_resources_check_magic(&device_resources));
    assert(device_resources.num_irqs == 1);
    assert(device_resources.num_regions == 3);
    // All buffers should fit within our DMA region
    assert(RX_COUNT * sizeof(struct descriptor) <= device_resources.regions[1].region.size);
    assert(TX_COUNT * sizeof(struct descriptor) <= device_resources.regions[2].region.size);

    eth_setup();

    net_queue_init(&rx_queue, config.virt_rx.free_queue.vaddr, config.virt_rx.active_queue.vaddr,
                   config.virt_rx.num_buffers);
    net_queue_init(&tx_queue, config.virt_tx.free_queue.vaddr, config.virt_tx.active_queue.vaddr,
                   config.virt_tx.num_buffers);

    rx_provide();
    tx_provide();
}

void notified(microkit_channel ch)
{
    if (ch == device_resources.irqs[0].id) {
        handle_irq();
        /*
         * Delay calling into the kernel to ack the IRQ until the next loop
         * in the microkit event handler loop.
         */
        microkit_deferred_irq_ack(ch);
    } else if (ch == config.virt_rx.id) {
        rx_provide();
    } else if (ch == config.virt_tx.id) {
        tx_provide();
    } else {
        sddf_dprintf("ETH|LOG: received notification on unexpected channel: %u\n", ch);
    }
}
