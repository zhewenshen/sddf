#include "ethernet_ccomp.h"

void ethernet_ccomp_init_hw_ring(hw_ring_t *ring, volatile struct descriptor *descr, uint32_t capacity) {
    ring->descr = descr;
    ring->capacity = capacity;
    ring->head = 0;
    ring->tail = 0;
}

bool ethernet_ccomp_hw_ring_full(hw_ring_t *ring) {
    return ring->tail - ring->head == ring->capacity;
}

bool ethernet_ccomp_hw_ring_empty(hw_ring_t *ring) {
    return ring->tail - ring->head == 0;
}

void ethernet_ccomp_update_ring_slot(hw_ring_t *ring, unsigned int idx, uintptr_t phys, uint16_t len, uint16_t stat) {
    volatile struct descriptor *d = &(ring->descr[idx]);

    d->addr = phys;
    d->len = len;

    _ccomp_thread_memory_release(); // double check this

    d->stat = stat;
}

void ethernet_ccomp_rx_provide(void)
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

void ethernet_ccomp_rx_return(void)
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

void ethernet_ccomp_tx_provide(void)
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

void ethernet_ccomp_tx_return(void)
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
