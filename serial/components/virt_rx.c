/*
 * Copyright 2024, UNSW
 * SPDX-License-Identifier: BSD-2-Clause
 */

#include <stdbool.h>
#include <stdint.h>
#include <os/sddf.h>
#include <sddf/serial/queue.h>
#include <sddf/serial/config.h>
#include <sddf/util/string.h>
#include <sddf/util/printf.h>

__attribute__((__section__(".serial_virt_rx_config"))) serial_virt_rx_config_t config;

serial_queue_handle_t *rx_queue_handle_drv;
serial_queue_handle_t *rx_queue_handle_cli;

#define MAX_CLI_BASE_10 4
typedef enum mode {normal, switched, number} mode_t;

mode_t *current_mode;
uint64_t *current_client;
uint64_t *next_client_index;
char *next_client;

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

void reset_state(void)
{
    sddf_memset(next_client, '\0', MAX_CLI_BASE_10 + 1);
    *next_client_index = 0;
    *current_mode = normal;
}


void init(void)
{
    assert(serial_config_check_magic(&config));

    init_pancake_mem();

    uintptr_t *pnk_mem = (uintptr_t *) cml_heap;
    
    current_mode = (mode_t *) &pnk_mem[0];
    current_client = (uint64_t *) &pnk_mem[1]; 
    next_client_index = (uint64_t *) &pnk_mem[2];
    next_client = (char *) &pnk_mem[3];
    
    rx_queue_handle_drv = (serial_queue_handle_t *) &pnk_mem[10];
    rx_queue_handle_cli = (serial_queue_handle_t *) &pnk_mem[20];

    *current_mode = normal;
    *current_client = 0;
    *next_client_index = 0;

    serial_queue_init(rx_queue_handle_drv, config.driver.queue.vaddr, config.driver.data.size,
                      config.driver.data.vaddr);
    for (uint64_t i = 0; i < config.num_clients; i++) {
        serial_queue_init(&rx_queue_handle_cli[i], config.clients[i].queue.vaddr, config.clients[i].data.size,
                          config.clients[i].data.vaddr);
    }

    cml_main();
}

void ffireset_state(unsigned char *c, long clen, unsigned char *a, long alen) {
    reset_state();
}


void ffisimple_atoi(unsigned char *str, long str_len, unsigned char *result_addr, long alen) {
    char temp_str[MAX_CLI_BASE_10 + 1];
    long copy_len = (str_len > MAX_CLI_BASE_10) ? MAX_CLI_BASE_10 : str_len;
    sddf_memcpy(temp_str, str, copy_len);
    temp_str[copy_len] = '\0';
    
    int result = sddf_atoi(temp_str);
    *((int*)result_addr) = result;
}

void ffidebug(unsigned char *str, long str_len, unsigned char *result_addr, long alen) {
    sddf_dprintf("VIRT_RX|LOG: we are here... some val %ld\n", str_len);
}

extern void notified(sddf_channel ch);