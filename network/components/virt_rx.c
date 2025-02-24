/*
 * Copyright 2024, UNSW
 * SPDX-License-Identifier: BSD-2-Clause
 */

#include <stdbool.h>
#include <stdint.h>
#include <microkit.h>
#include <sddf/network/constants.h>
#include <sddf/network/queue.h>
#include <sddf/network/util.h>
#include <sddf/network/config.h>
#include <sddf/util/util.h>
#include <sddf/util/printf.h>
#include <sddf/util/cache.h>

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

int _ccomp_net_enqueue_active(net_queue_handle_t *queue, net_buff_desc_t *buffer)
{
    return net_enqueue_active(queue, *buffer);
}
