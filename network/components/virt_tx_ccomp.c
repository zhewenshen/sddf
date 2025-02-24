#include <sddf/network/queue.h>
#include <sddf/network/config.h>

__attribute__((__section__(".net_virt_tx_config"))) net_virt_tx_config_t config;

typedef unsigned int microkit_channel;

extern void _ccomp_microkit_notify(microkit_channel ch);
extern void _ccomp_microkit_deferred_notify(microkit_channel ch);
extern void _ccomp_assert(bool condition);
extern void _ccomp_cache_clean_and_invalidate(unsigned long start, unsigned long end);
extern int _ccomp_net_enqueue_active(net_queue_handle_t *queue, net_buff_desc_t *buffer);
extern void _ccomp_tx_provide_sddf_dprintf(unsigned long offset);
extern int _ccomp_net_enqueue_free(net_queue_handle_t *queue, net_buff_desc_t *buffer);
extern void _ccomp_cache_clean(unsigned long start, unsigned long end);
typedef struct state {
    net_queue_handle_t tx_queue_drv;
    net_queue_handle_t tx_queue_clients[SDDF_NET_MAX_CLIENTS];
} state_t;

state_t state;

int virt_tx_ccomp_extract_offset(uintptr_t *phys)
{
    for (int client = 0; client < config.num_clients; client++) {
        if (*phys >= config.clients[client].data.io_addr
            && *phys
                   < config.clients[client].data.io_addr + state.tx_queue_clients[client].capacity * NET_BUFFER_SIZE) {
            *phys = *phys - config.clients[client].data.io_addr;
            return client;
        }
    }
    return -1;
}

void virt_tx_ccomp_tx_provide(void)
{
    bool enqueued = false;
    for (int client = 0; client < config.num_clients; client++) {
        bool reprocess = true;
        while (reprocess) {
            while (!net_queue_empty_active(&state.tx_queue_clients[client])) {
                net_buff_desc_t buffer;
                int err = net_dequeue_active(&state.tx_queue_clients[client], &buffer);
                _ccomp_assert(!err);

                if (buffer.io_or_offset % NET_BUFFER_SIZE
                    || buffer.io_or_offset >= NET_BUFFER_SIZE * state.tx_queue_clients[client].capacity) {
                    // sddf_dprintf("VIRT_TX|LOG: Client provided offset %lx which is not buffer aligned or outside of buffer region\n",
                                //  buffer.io_or_offset);
                    _ccomp_tx_provide_sddf_dprintf(buffer.io_or_offset);
                    err = net_enqueue_free(&state.tx_queue_clients[client], buffer);
                    _ccomp_assert(!err);
                    continue;
                }

                uintptr_t buffer_vaddr = buffer.io_or_offset + (uintptr_t)config.clients[client].data.region.vaddr;
                // cache_clean(buffer_vaddr, buffer_vaddr + buffer.len);
                _ccomp_cache_clean(buffer_vaddr, buffer_vaddr + buffer.len);

                buffer.io_or_offset = buffer.io_or_offset + config.clients[client].data.io_addr;
                err = net_enqueue_active(&state.tx_queue_drv, buffer);
                // err = _ccomp_net_enqueue_active(&state.tx_queue_drv, &buffer);
                _ccomp_assert(!err);
                enqueued = true;
            }

            net_request_signal_active(&state.tx_queue_clients[client]);
            reprocess = false;

            if (!net_queue_empty_active(&state.tx_queue_clients[client])) {
                net_cancel_signal_active(&state.tx_queue_clients[client]);
                reprocess = true;
            }
        }
    }

    if (enqueued && net_require_signal_active(&state.tx_queue_drv)) {
        net_cancel_signal_active(&state.tx_queue_drv);
        _ccomp_microkit_deferred_notify(config.driver.id);
    }
}

void virt_tx_ccomp_tx_return(void)
{
    bool reprocess = true;
    bool notify_clients[SDDF_NET_MAX_CLIENTS] = { false };
    while (reprocess) {
        while (!net_queue_empty_free(&state.tx_queue_drv)) {
            net_buff_desc_t buffer;
            int err = net_dequeue_free(&state.tx_queue_drv, &buffer);
            _ccomp_assert(!err);

            int client = virt_tx_ccomp_extract_offset(&buffer.io_or_offset);
            _ccomp_assert(client >= 0);

            // err = _ccomp_net_enqueue_free(&state.tx_queue_clients[client], &buffer);
            err = net_enqueue_free(&state.tx_queue_clients[client], buffer);
            _ccomp_assert(!err);
            notify_clients[client] = true;
        }

        net_request_signal_free(&state.tx_queue_drv);
        reprocess = false;

        if (!net_queue_empty_free(&state.tx_queue_drv)) {
            net_cancel_signal_free(&state.tx_queue_drv);
            reprocess = true;
        }
    }

    for (int client = 0; client < config.num_clients; client++) {
        if (notify_clients[client] && net_require_signal_free(&state.tx_queue_clients[client])) {
            net_cancel_signal_free(&state.tx_queue_clients[client]);
            _ccomp_microkit_notify(config.clients[client].conn.id);
        }
    }
}

void notified(microkit_channel ch)
{
    virt_tx_ccomp_tx_return();
    virt_tx_ccomp_tx_provide();
}

void init(void)
{
    _ccomp_assert(net_config_check_magic(&config));

    /* Set up driver queues */
    net_queue_init(&state.tx_queue_drv, config.driver.free_queue.vaddr, config.driver.active_queue.vaddr,
                   config.driver.num_buffers);

    for (int i = 0; i < config.num_clients; i++) {
        net_queue_init(&state.tx_queue_clients[i], config.clients[i].conn.free_queue.vaddr,
                       config.clients[i].conn.active_queue.vaddr, config.clients[i].conn.num_buffers);
    }

    virt_tx_ccomp_tx_provide();
}
