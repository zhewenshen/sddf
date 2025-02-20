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

__attribute__((__section__(".device_resources"))) device_resources_t device_resources;
__attribute__((__section__(".net_driver_config"))) net_driver_config_t config;

void _ccomp_thread_memory_acquire(void) {
    THREAD_MEMORY_ACQUIRE();
}

void _ccomp_thread_memory_release(void) {
    THREAD_MEMORY_RELEASE();
}

void _ccomp_microkit_notify(microkit_channel ch) {
    microkit_notify(ch);
}

void _ccomp_microkit_deferred_irq_ack(microkit_channel ch) {
    microkit_deferred_irq_ack(ch);
}

void _ccomp_assert(bool condition) {
    assert(condition);
}

int _ccomp_net_enqueue_active(net_queue_handle_t *queue, net_buff_desc_t *buffer) {
    return net_enqueue_active(queue, *buffer);
}

int _ccomp_net_enqueue_free(net_queue_handle_t *queue, net_buff_desc_t *buffer) {
    return net_enqueue_free(queue, *buffer);
}

void _ccomp_handle_irq_sddf_dprintf(unsigned int e) {
    sddf_dprintf("ETH|ERROR: System bus/uDMA %u\n", e);
}

void _ccomp_notified_sddf_dprintf(microkit_channel ch) {
    sddf_dprintf("ETH|LOG: received notification on unexpected channel: %u\n", ch);
}
