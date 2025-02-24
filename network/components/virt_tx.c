/*
 * Copyright 2024, UNSW
 * SPDX-License-Identifier: BSD-2-Clause
 */

#include <microkit.h>
#include <sddf/network/queue.h>
#include <sddf/network/config.h>
#include <sddf/util/cache.h>
#include <sddf/util/util.h>
#include <sddf/util/printf.h>

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

void _ccomp_cache_clean_and_invalidate(unsigned long start, unsigned long end)
{
    cache_clean_and_invalidate(start, end);
}

void _ccomp_tx_provide_sddf_dprintf(unsigned long offset)
{
    sddf_dprintf("VIRT_TX|LOG: Client provided offset %lx which is not buffer aligned or outside of buffer region\n",offset);
}

int _ccomp_net_enqueue_active(net_queue_handle_t *queue, net_buff_desc_t *buffer)
{
    return net_enqueue_active(queue, *buffer);
}

int _ccomp_net_enqueue_free(net_queue_handle_t *queue, net_buff_desc_t *buffer)
{
    return net_enqueue_free(queue, *buffer);
}

void _ccomp_cache_clean(unsigned long start, unsigned long end)
{
    cache_clean(start, end);
}

