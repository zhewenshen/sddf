/*
 * Copyright 2025, UNSW
 * SPDX-License-Identifier: BSD-2-Clause
 */

#include <stdint.h>
#include <microkit.h>
#include <sddf/serial/queue.h>
#include <sddf/serial/config.h>
#include <sddf/util/printf.h>

__attribute__((__section__(".serial_client_config"))) serial_client_config_t serial_config;
__attribute__((__section__(".pingpong_config"))) struct {
    uint8_t partner_ch;
} pingpong_config;

serial_queue_handle_t serial_tx_queue_handle;

void init(void)
{
    serial_queue_init(&serial_tx_queue_handle, serial_config.tx.queue.vaddr,
                      serial_config.tx.data.size, serial_config.tx.data.vaddr);
    serial_putchar_init(serial_config.tx.id, &serial_tx_queue_handle);

    sddf_printf("PINGPONG|CLIENT_B: Initialized, waiting for pings...\n");
}

void notified(microkit_channel ch)
{
    if (ch == serial_config.tx.id) {
        /* Serial TX notification - ignore */
        return;
    }

    if (ch == pingpong_config.partner_ch) {
        /* Got a ping, send pong back */
        microkit_notify(pingpong_config.partner_ch);
    } else {
        sddf_printf("PINGPONG|CLIENT_B: Unexpected notification on channel %u\n", ch);
    }
}
