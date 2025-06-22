/*
 * Copyright 2024, UNSW
 * SPDX-License-Identifier: BSD-2-Clause
 */

#include <stdbool.h>
#include <stdint.h>
#include <os/sddf.h>
#include <sddf/serial/queue.h>
#include <sddf/serial/config.h>
#include <sddf/util/printf.h>

__attribute__((__section__(".serial_virt_tx_config"))) serial_virt_tx_config_t config;

/* When we have more clients than colours, we re-use the colours. */
const char *colours[] = {
    /* foreground red */
    "\x1b[31m",
    /* foreground green */
    "\x1b[32m",
    /* foreground yellow */
    "\x1b[33m",
    /* foreground blue */
    "\x1b[34m",
    /* foreground magenta */
    "\x1b[35m",
    /* foreground cyan */
    "\x1b[36m"
};

#define COLOUR_BEGIN_LEN 5
#define COLOUR_END "\x1b[0m"
#define COLOUR_END_LEN 4

serial_queue_handle_t tx_queue_handle_drv;
serial_queue_handle_t tx_queue_handle_cli[SDDF_SERIAL_MAX_CLIENTS];

// Memory layout for queue handles (must match pancake definitions)
#define DRV_QUEUE_BASE      10
#define CLI_QUEUE_BASE      20
#define CLI_CONN_ID_BASE    50
#define TX_PENDING_HEAD     60
#define TX_PENDING_TAIL     61
#define TX_PENDING_QUEUE_BASE    70
#define TX_PENDING_CLIENTS_BASE  140
#define COLOR_ENABLED           210
#define COLOR_START_BASE        220
#define COLOR_END_BASE          250

#define TX_PENDING_MAX (SDDF_SERIAL_MAX_CLIENTS + 1)

static char cml_memory[1024*20];
extern void *cml_heap;
extern void *cml_stack;
extern void *cml_stackend;

extern void cml_main(void);

void cml_exit(int arg) {
    microkit_dbg_puts("ERROR! We should not be getting here\n");
}

void cml_err(int arg) {
    if (arg == 3) {
        microkit_dbg_puts("Memory not ready for entry. You may have not run the init code yet, or be trying to enter during an FFI call.\n");
    }
  cml_exit(arg);
}

/* Need to come up with a replacement for this clear cache function.
    Might be worth testing just flushing the entire l1 cache,
    but might cause issues with returning to this file
*/
void cml_clear() {
    microkit_dbg_puts("Trying to clear cache\n");
}

void init_pancake_mem() {
    unsigned long cml_heap_sz = 1024*10;
    unsigned long cml_stack_sz = 1024*10;
    cml_heap = cml_memory;
    cml_stack = cml_heap + cml_heap_sz;
    cml_stackend = cml_stack + cml_stack_sz;
}

void init(void)
{
    assert(serial_config_check_magic(&config));

    init_pancake_mem();

    uintptr_t *pnk_mem = (uintptr_t *) cml_heap;

    pnk_mem[0] = config.driver.id;

    serial_queue_handle_t *tx_queue_handle_drv_ptr = (serial_queue_handle_t *) &pnk_mem[DRV_QUEUE_BASE];
    serial_queue_handle_t *tx_queue_handle_cli_ptr = (serial_queue_handle_t *) &pnk_mem[CLI_QUEUE_BASE];

    serial_queue_init(tx_queue_handle_drv_ptr, config.driver.queue.vaddr, config.driver.data.size,
                      config.driver.data.vaddr);
    for (uint64_t i = 0; i < config.num_clients; i++) {
        serial_virt_tx_client_config_t *client = &config.clients[i];
        serial_queue_init(&tx_queue_handle_cli_ptr[i], client->conn.queue.vaddr, client->conn.data.size,
                          client->conn.data.vaddr);
        pnk_mem[CLI_CONN_ID_BASE + i] = client->conn.id;
    }

    pnk_mem[TX_PENDING_HEAD] = 0;
    pnk_mem[TX_PENDING_TAIL] = 0;
    
    for (int i = 0; i < TX_PENDING_MAX; i++) {
        pnk_mem[TX_PENDING_QUEUE_BASE + i] = 0;
    }
    for (int i = 0; i < SDDF_SERIAL_MAX_CLIENTS; i++) {
        pnk_mem[TX_PENDING_CLIENTS_BASE + i] = 0; // false
    }
    
    pnk_mem[COLOR_ENABLED] = config.enable_colour ? 1 : 0;
    
    if (config.enable_colour) {
        const char *color_codes[] = {
            "\x1b[31m",  // red
            "\x1b[32m",  // green  
            "\x1b[33m",  // yellow
            "\x1b[34m",  // blue
            "\x1b[35m",  // magenta
            "\x1b[36m"   // cyan
        };
        
        for (int color = 0; color < 6; color++) {
            for (int byte = 0; byte < 5; byte++) {
                pnk_mem[COLOR_START_BASE + color * 5 + byte] = (unsigned char)color_codes[color][byte];
            }
        }
        
        const char *color_end = "\x1b[0m";
        for (int byte = 0; byte < 4; byte++) {
            pnk_mem[COLOR_END_BASE + byte] = (unsigned char)color_end[byte];
        }
    }

    if (config.enable_rx) {
        /* Print a deterministic string to allow console input to begin */
        size_t begin_str_len = sddf_strlen(config.begin_str);
        sddf_memcpy(tx_queue_handle_drv_ptr->data_region, config.begin_str, begin_str_len);
        serial_update_shared_tail(tx_queue_handle_drv_ptr, begin_str_len);
        sddf_notify(config.driver.id);
    }

    if (config.enable_colour) {
        for (uint64_t i = 0; i < config.num_clients; i++) {
            sddf_dprintf("%s'%s' is client %lu%s\n", colours[i % ARRAY_SIZE(colours)], config.clients[i].name, i,
                         COLOUR_END);
        }
    }

    cml_main();
}

extern void notified(sddf_channel ch);
