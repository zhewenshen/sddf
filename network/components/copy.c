/*
 * Copyright 2024, UNSW
 * SPDX-License-Identifier: BSD-2-Clause
 */

#include <stdbool.h>
#include <microkit.h>
#include <sddf/network/queue.h>
#include <sddf/network/config.h>
#include <sddf/util/string.h>
#include <sddf/util/util.h>
#include <sddf/util/printf.h>

__attribute__((__section__(".net_copy_config"))) net_copy_config_t config;

void _ccomp_microkit_notify(microkit_channel ch)
{
    microkit_notify(ch);
}

void _ccomp_microkit_deferred_notify(microkit_channel ch)
{
    microkit_deferred_notify(ch);
}

void _ccomp_assert(bool condition)
{
    assert(condition);
}

int _ccomp_net_enqueue_active(net_queue_handle_t *queue, net_buff_desc_t *buffer)
{
    return net_enqueue_active(queue, *buffer);
}

void _ccomp_rx_return_sddf_dprintf(unsigned long offset)
{
    sddf_dprintf("COPY|LOG: Client provided offset %lx which is not buffer aligned or outside of buffer region\n", offset);
}

int _ccomp_net_enqueue_free(net_queue_handle_t *queue, net_buff_desc_t *buffer)
{
    return net_enqueue_free(queue, *buffer);
}
