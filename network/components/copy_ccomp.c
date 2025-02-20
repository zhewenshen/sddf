#include "copy_ccomp.h"

void copy_ccomp_rx_return(void)
{
    bool enqueued = false;
    bool reprocess = true;

    while (reprocess) {
        while (!net_queue_empty_active(&rx_queue_virt) && !net_queue_empty_free(&rx_queue_cli)) {
            net_buff_desc_t cli_buffer, virt_buffer = {0};
            int err = net_dequeue_free(&rx_queue_cli, &cli_buffer);
            _ccomp_assert(!err);

            if (cli_buffer.io_or_offset % NET_BUFFER_SIZE
                || cli_buffer.io_or_offset >= NET_BUFFER_SIZE * rx_queue_cli.capacity) {
                _ccomp_rx_return_sddf_dprintf(cli_buffer.io_or_offset);
                continue;
            }

            err = net_dequeue_active(&rx_queue_virt, &virt_buffer);
            _ccomp_assert(!err);

            // error: illegal arithmetic on a pointer to void in binary '+'
            // void *cli_addr = config.client_data.vaddr + cli_buffer.io_or_offset;
            // void *virt_addr = config.device_data.vaddr + virt_buffer.io_or_offset;

            // double check this
            void *cli_addr = (char *)config.client_data.vaddr + cli_buffer.io_or_offset;
            void *virt_addr = (char *)config.device_data.vaddr + virt_buffer.io_or_offset;


            sddf_memcpy(cli_addr, virt_addr, virt_buffer.len);
            cli_buffer.len = virt_buffer.len;
            virt_buffer.len = 0;

            err = _ccomp_net_enqueue_active(&rx_queue_cli, &cli_buffer);
            _ccomp_assert(!err);

            err = _ccomp_net_enqueue_free(&rx_queue_virt, &virt_buffer);
            _ccomp_assert(!err);

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

void notified(microkit_channel ch)
{
    copy_ccomp_rx_return();
}

void init(void)
{
    _ccomp_assert(net_config_check_magic(&config));
    /* Set up the queues */
    net_queue_init(&rx_queue_cli, config.client.free_queue.vaddr, config.client.active_queue.vaddr,
                   config.client.num_buffers);
    net_queue_init(&rx_queue_virt, config.virt_rx.free_queue.vaddr, config.virt_rx.active_queue.vaddr,
                   config.virt_rx.num_buffers);

    net_buffers_init(&rx_queue_cli, 0);
}