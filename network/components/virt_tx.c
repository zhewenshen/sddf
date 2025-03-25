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

void _ccomp_cache_clean(unsigned long start, unsigned long end)
{
    cache_clean(start, end);
}
