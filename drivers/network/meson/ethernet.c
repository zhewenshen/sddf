/*
* Copyright 2023, UNSW
* SPDX-License-Identifier: BSD-2-Clause
*/

#include <stdbool.h>
#include <stdint.h>
#include <microkit.h>
#include <sddf/resources/device.h>
#include <sddf/network/queue.h>
#include <sddf/network/config.h>
#include <sddf/util/fence.h>
#include <sddf/util/util.h>
#include <sddf/util/printf.h>

#include "ethernet.h"

void _microkit_deferred_irq_ack(microkit_channel ch)
{
    microkit_deferred_irq_ack(ch);
}

void _microkit_irq_ack(microkit_channel ch)
{
    microkit_irq_ack(ch);
}

void _microkit_notify(microkit_channel ch)
{
    microkit_notify(ch);
}

void _thread_memory_acquire(void)
{
    THREAD_MEMORY_ACQUIRE();
}

void _thread_memory_release(void)
{
    THREAD_MEMORY_RELEASE();
}
