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
#include <sddf/util/cache.h>

void _ccomp_microkit_notify(microkit_channel ch) {
    microkit_notify(ch);
}

void _ccomp_microkit_deferred_notify(microkit_channel ch) {
    microkit_deferred_notify(ch);
}

void _ccomp_cache_clean_and_invalidate(unsigned long start, unsigned long end) {
    cache_clean_and_invalidate(start, end);
}
