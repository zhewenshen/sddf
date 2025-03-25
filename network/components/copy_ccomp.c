/*
* Copyright 2024, UNSW
* SPDX-License-Identifier: BSD-2-Clause
*/
#include <stdbool.h>
#include <sddf/network/queue.h>
#include <sddf/network/config.h>
#include <sddf/util/string.h>
#include <sddf/util/util.h>

__attribute__((__section__(".net_copy_config"))) net_copy_config_t config;

net_queue_handle_t rx_queue_virt;
net_queue_handle_t rx_queue_cli;

typedef unsigned int microkit_channel;
typedef microkit_channel sddf_channel;

extern void _ccomp_thread_memory_acquire(void);
extern void _ccomp_thread_memory_release(void);
extern void _ccomp_microkit_notify(microkit_channel ch);
extern void _ccomp_microkit_deferred_notify(microkit_channel ch);
extern void _ccomp_microkit_deferred_irq_ack(microkit_channel ch);

void rx_return(void)
{
    bool enqueued = false;
    bool reprocess = true;

    while (reprocess) {
        while (!net_queue_empty_active(&rx_queue_virt) && !net_queue_empty_free(&rx_queue_cli)) {
            net_buff_desc_t cli_buffer, virt_buffer = {0};
            int err = net_dequeue_free(&rx_queue_cli, &cli_buffer);

            if (cli_buffer.io_or_offset % NET_BUFFER_SIZE
                || cli_buffer.io_or_offset >= NET_BUFFER_SIZE * rx_queue_cli.capacity) {
                continue;
            }

            err = net_dequeue_active(&rx_queue_virt, &virt_buffer);

            void *cli_addr = (char*)config.client_data.vaddr + cli_buffer.io_or_offset;
            void *virt_addr = (char*)config.device_data.vaddr + virt_buffer.io_or_offset;

            sddf_memcpy(cli_addr, virt_addr, virt_buffer.len);
            cli_buffer.len = virt_buffer.len;
            virt_buffer.len = 0;

            err = net_enqueue_active(&rx_queue_cli, cli_buffer);

            err = net_enqueue_free(&rx_queue_virt, virt_buffer);

            enqueued = true;
        }

        net_request_signal_active(&rx_queue_virt);

        /* Only request signal from client if incoming packets from multiplexer are awaiting free buffers */
        if (!net_queue_empty_active(&rx_queue_virt)) {
            net_request_signal_free(&rx_queue_cli);
        } else {
            net_cancel_signal_free(&rx_queue_cli);
        }

        reprocess = false;

        if (!net_queue_empty_active(&rx_queue_virt) && !net_queue_empty_free(&rx_queue_cli)) {
            net_cancel_signal_active(&rx_queue_virt);
            net_cancel_signal_free(&rx_queue_cli);
            reprocess = true;
        }
    }

    if (enqueued && net_require_signal_active(&rx_queue_cli)) {
        net_cancel_signal_active(&rx_queue_cli);
        _ccomp_microkit_notify(config.client.id);
    }

    if (enqueued && net_require_signal_free(&rx_queue_virt)) {
        net_cancel_signal_free(&rx_queue_virt);
        _ccomp_microkit_deferred_notify(config.virt_rx.id);
    }
}

void notified(sddf_channel ch)
{
    rx_return();
}

void init(void)
{
    /* Set up the queues */
    net_queue_init(&rx_queue_cli, config.client.free_queue.vaddr, config.client.active_queue.vaddr,
                config.client.num_buffers);
    net_queue_init(&rx_queue_virt, config.virt_rx.free_queue.vaddr, config.virt_rx.active_queue.vaddr,
                config.virt_rx.num_buffers);

    net_buffers_init(&rx_queue_cli, 0);
}
