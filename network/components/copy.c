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

void _ccomp_thread_memory_acquire(void) {
    THREAD_MEMORY_ACQUIRE();
}

void _ccomp_thread_memory_release(void) {
    THREAD_MEMORY_RELEASE();
}

void _ccomp_microkit_notify(microkit_channel ch) {
    microkit_notify(ch);
}

void _ccomp_microkit_deferred_notify(microkit_channel ch) {
    microkit_deferred_notify(ch);
}

void _ccomp_microkit_deferred_irq_ack(microkit_channel ch) {
    microkit_deferred_irq_ack(ch);
}
