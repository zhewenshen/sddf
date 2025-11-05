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

#ifdef PANCAKE_SERIAL

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

#else /* !PANCAKE_SERIAL - C version */

#include <string.h>

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

#define TX_PENDING_MAX (SDDF_SERIAL_MAX_CLIENTS + 1)
typedef struct tx_pending {
    uint32_t queue[TX_PENDING_MAX];
    bool clients_pending[SDDF_SERIAL_MAX_CLIENTS];
    uint32_t head;
    uint32_t tail;
} tx_pending_t;

tx_pending_t tx_pending;

static uint32_t tx_pending_length(void)
{
    return (TX_PENDING_MAX + tx_pending.tail - tx_pending.head) % TX_PENDING_MAX;
}

static void tx_pending_push(uint32_t client)
{
    /* Ensure client is not already pending */
    if (tx_pending.clients_pending[client]) {
        return;
    }

    /* Ensure the pending queue is not already full */
    assert(tx_pending_length() < config.num_clients);

    tx_pending.queue[tx_pending.tail] = client;
    tx_pending.clients_pending[client] = true;
    tx_pending.tail = (tx_pending.tail + 1) % TX_PENDING_MAX;
}

static void tx_pending_pop(uint32_t *client)
{
    /* This should only be called when length > 0 */
    assert(tx_pending_length());

    *client = tx_pending.queue[tx_pending.head];
    tx_pending.clients_pending[*client] = false;
    tx_pending.head = (tx_pending.head + 1) % TX_PENDING_MAX;
}

bool process_tx_queue(uint32_t client)
{
    serial_queue_handle_t *handle = &tx_queue_handle_cli[client];

    if (serial_queue_empty(handle, handle->queue->head)) {
        return false;
    }

    uint32_t length = serial_queue_length(handle);
    if (config.enable_colour) {
        const char *client_colour = colours[client % ARRAY_SIZE(colours)];
        assert(COLOUR_BEGIN_LEN == strlen(client_colour));
        length += COLOUR_BEGIN_LEN + COLOUR_END_LEN;
    }

    /* Not enough space to transmit string to virtualiser. Continue later */
    if (length > serial_queue_free(&tx_queue_handle_drv)) {
        /* Request signal from the driver when data has been consumed */
        serial_request_consumer_signal(&tx_queue_handle_drv);
    }

    /* Re-check free space in case signal was missed */
    if (length > serial_queue_free(&tx_queue_handle_drv)) {
        tx_pending_push(client);
        return false;
    }

    if (config.enable_colour) {
        const char *client_colour = colours[client % ARRAY_SIZE(colours)];
        serial_transfer_all_colour(&tx_queue_handle_drv, handle, client_colour, COLOUR_BEGIN_LEN, COLOUR_END,
                                   COLOUR_END_LEN);
    } else {
        serial_transfer_all(&tx_queue_handle_drv, handle);
    }

    return true;
}

void tx_return(void)
{
    uint32_t num_pending_tx = tx_pending_length();
    if (!num_pending_tx) {
        return;
    }

    uint32_t client;
    bool notify_client[SDDF_SERIAL_MAX_CLIENTS] = { false };
    bool transferred = false;
    for (uint32_t req = 0; req < num_pending_tx; req++) {
        tx_pending_pop(&client);
        notify_client[client] = process_tx_queue(client);
        transferred |= notify_client[client];
    }

    if (transferred) {
        sddf_notify(config.driver.id);
    }

    for (uint32_t client = 0; client < config.num_clients; client++) {
        if (notify_client[client] && serial_require_consumer_signal(&tx_queue_handle_cli[client])) {
            serial_cancel_consumer_signal(&tx_queue_handle_cli[client]);
            sddf_notify(config.clients[client].conn.id);
        }
    }
}

void tx_provide(sddf_channel ch)
{
    uint32_t active_client = SDDF_SERIAL_MAX_CLIENTS;
    for (int i = 0; i < config.num_clients; i++) {
        if (ch == config.clients[i].conn.id) {
            active_client = i;
            break;
        }
    }

    if (active_client == SDDF_SERIAL_MAX_CLIENTS) {
        sddf_dprintf("VIRT_TX|LOG: Received notification from unknown channel %u\n", ch);
        return;
    }

    bool transferred = process_tx_queue(active_client);
    if (transferred) {
        sddf_notify(config.driver.id);
    }

    if (transferred && serial_require_consumer_signal(&tx_queue_handle_cli[active_client])) {
        serial_cancel_consumer_signal(&tx_queue_handle_cli[active_client]);
        sddf_notify(ch);
    }
}

void init(void)
{
    assert(serial_config_check_magic(&config));

    serial_queue_init(&tx_queue_handle_drv, config.driver.queue.vaddr, config.driver.data.size,
                      config.driver.data.vaddr);
    for (uint64_t i = 0; i < config.num_clients; i++) {
        serial_virt_tx_client_config_t *client = &config.clients[i];
        serial_queue_init(&tx_queue_handle_cli[i], client->conn.queue.vaddr, client->conn.data.size,
                          client->conn.data.vaddr);
    }

    if (config.enable_rx) {
        /* Print a deterministic string to allow console input to begin */
        size_t begin_str_len = strlen(config.begin_str);
        memcpy(tx_queue_handle_drv.data_region, config.begin_str, begin_str_len);
        serial_update_shared_tail(&tx_queue_handle_drv, begin_str_len);
        sddf_notify(config.driver.id);
    }

    if (config.enable_colour) {
        for (uint64_t i = 0; i < config.num_clients; i++) {
            sddf_dprintf("%s'%s' is client %lu%s\n", colours[i % ARRAY_SIZE(colours)], config.clients[i].name, i,
                         COLOUR_END);
        }
    }
}

void notified(sddf_channel ch)
{
    if (ch == config.driver.id) {
        tx_return();
    } else {
        tx_provide(ch);
    }
}

#endif /* PANCAKE_SERIAL */