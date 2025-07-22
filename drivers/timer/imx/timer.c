/*
 * Copyright 2022, UNSW
 * SPDX-License-Identifier: BSD-2-Clause
 */

/*
 * Very basic timer driver. Currently only permtis
 * a maximum of a single timeout per client for simplicity.
 *
 * Interfaces for clients:
 * microkit_ppcall() with label 0 is a request to get the current time.
 * with a 1 is a request to set a timeout.
 */

#include <stdint.h>
#include <microkit.h>
#include <sddf/resources/device.h>
#include <sddf/util/printf.h>
#include <sddf/timer/protocol.h>

#ifdef PANCAKE_DRIVER
// Pancake runtime support
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
#endif

#define GPT_STATUS_REGISTER_CLEAR 0x3F
#define CR 0
#define PR 1
#define SR 2
#define IR 3
#define OCR1 4
#define OCR2 5
#define OCR3 6
#define ICR1 7
#define ICR2 8
#define CNT 9

#define MAX_TIMEOUTS 6

#define GPT_FREQ   (12u)

__attribute__((__section__(".device_resources"))) device_resources_t device_resources;

#ifndef PANCAKE_DRIVER
static volatile uint32_t *gpt;
static uint32_t overflow_count;
static uint64_t timeouts[MAX_TIMEOUTS];
#else
static volatile uint32_t *gpt;
static uint32_t overflow_count;
static uint64_t timeouts[MAX_TIMEOUTS];
#endif

#ifndef PANCAKE_DRIVER
static uint64_t get_ticks(void)
{
    uint64_t overflow = overflow_count;
    uint32_t sr1 = gpt[SR];
    uint32_t cnt = gpt[CNT];
    uint32_t sr2 = gpt[SR];
    if ((sr2 & (1 << 5)) && (!(sr1 & (1 << 5)))) {
        /* rolled-over during - 64-bit time must be the overflow */
        cnt = gpt[CNT];
        overflow++;
    }
    return (overflow << 32) | cnt;
}
#endif

#ifndef PANCAKE_DRIVER
static void process_timeouts(uint64_t curr_time)
{
    for (int i = 0; i < MAX_TIMEOUTS; i++) {
        if (timeouts[i] <= curr_time) {
            microkit_notify(i);
            timeouts[i] = UINT64_MAX;
        }
    }

    uint64_t next_timeout = UINT64_MAX;
    for (int i = 0; i < MAX_TIMEOUTS; i++) {
        if (timeouts[i] < next_timeout) {
            next_timeout = timeouts[i];
        }
    }

    if (next_timeout != UINT64_MAX && overflow_count == (next_timeout >> 32)) {
        gpt[OCR1] = (uint32_t)next_timeout;
        gpt[IR] |= 1;
    }
}
#else
// Pancake versions maintain state in memory slots
static void process_timeouts(uint64_t curr_time)
{
    uintptr_t *pnk_mem = (uintptr_t *) cml_heap;
    
    for (int i = 0; i < MAX_TIMEOUTS; i++) {
        if (timeouts[i] <= curr_time) {
            microkit_notify(i);
            timeouts[i] = UINT64_MAX;
            // update Pancake memory
            pnk_mem[10 + i] = UINT64_MAX;
        }
    }

    uint64_t next_timeout = UINT64_MAX;
    for (int i = 0; i < MAX_TIMEOUTS; i++) {
        if (timeouts[i] < next_timeout) {
            next_timeout = timeouts[i];
        }
    }

    if (next_timeout != UINT64_MAX && overflow_count == (next_timeout >> 32)) {
        gpt[OCR1] = (uint32_t)next_timeout;
        gpt[IR] |= 1;
        // update overflow count in Pancake memory
        pnk_mem[2] = overflow_count;
    }
}
#endif

#ifndef PANCAKE_DRIVER
void notified(microkit_channel ch)
{
    if (ch != device_resources.irqs[0].id) {
        sddf_dprintf("TIMER DRIVER|LOG: unexpected notification from channel %u\n", ch);
        return;
    }

    microkit_deferred_irq_ack(ch);

    uint32_t sr = gpt[SR];
    gpt[SR] = sr;

    if (sr & (1 << 5)) {
        overflow_count++;
    }

    if (sr & 1) {
        gpt[IR] &= ~1;
    }

    uint64_t curr_time = get_ticks();
    process_timeouts(curr_time);
}
#else
// In Pancake mode, notified is implemented in Pancake and called from C
extern void notified(microkit_channel ch);
#endif

seL4_MessageInfo_t protected(microkit_channel ch, microkit_msginfo msginfo)
{
    switch (microkit_msginfo_get_label(msginfo)) {
    case SDDF_TIMER_GET_TIME: {
#ifndef PANCAKE_DRIVER
        uint64_t time_ns = (get_ticks() / (uint64_t)GPT_FREQ) * NS_IN_US;
#else
        // In Pancake mode, we need to call Pancake get_ticks through memory or use C version
        uint64_t overflow = overflow_count;
        uint32_t sr1 = gpt[SR];
        uint32_t cnt = gpt[CNT];
        uint32_t sr2 = gpt[SR];
        if ((sr2 & (1 << 5)) && (!(sr1 & (1 << 5)))) {
            cnt = gpt[CNT];
            overflow++;
        }
        uint64_t ticks = (overflow << 32) | cnt;
        uint64_t time_ns = (ticks / (uint64_t)GPT_FREQ) * NS_IN_US;
#endif
        seL4_SetMR(0, time_ns);
        return microkit_msginfo_new(0, 1);
    }
    case SDDF_TIMER_SET_TIMEOUT: {
#ifndef PANCAKE_DRIVER
        uint64_t curr_time = get_ticks();
        uint64_t offset_ticks = (seL4_GetMR(0) / NS_IN_US) * (uint64_t)GPT_FREQ;
        timeouts[ch] = curr_time + offset_ticks;
        process_timeouts(curr_time);
#else
        // In Pancake mode, update both C state and Pancake memory
        uint64_t overflow = overflow_count;
        uint32_t sr1 = gpt[SR];
        uint32_t cnt = gpt[CNT];
        uint32_t sr2 = gpt[SR];
        if ((sr2 & (1 << 5)) && (!(sr1 & (1 << 5)))) {
            cnt = gpt[CNT];
            overflow++;
        }
        uint64_t curr_time = (overflow << 32) | cnt;
        uint64_t offset_ticks = (seL4_GetMR(0) / NS_IN_US) * (uint64_t)GPT_FREQ;
        timeouts[ch] = curr_time + offset_ticks;
        
        // Update Pancake memory
        uintptr_t *pnk_mem = (uintptr_t *) cml_heap;
        pnk_mem[10 + ch] = timeouts[ch];
        pnk_mem[2] = overflow_count;
        
        process_timeouts(curr_time);
#endif
        break;
    }
    default:
        sddf_dprintf("TIMER DRIVER|LOG: Unknown request %lu to timer from channel %u\n", microkit_msginfo_get_label(msginfo),
                     ch);
        break;
    }

    return microkit_msginfo_new(0, 0);
}

void init(void)
{
    assert(device_resources_check_magic(&device_resources));
    assert(device_resources.num_irqs == 1);
    assert(device_resources.num_regions == 1);

    /* Ack any IRQs that were delivered before the driver started. */
    microkit_irq_ack(device_resources.irqs[0].id);

    for (int i = 0; i < MAX_TIMEOUTS; i++) {
        timeouts[i] = UINT64_MAX;
    }

    gpt = (volatile uint32_t *)device_resources.regions[0].region.vaddr;

    /* Disable GPT. */
    gpt[CR] = 0;
    gpt[SR] = GPT_STATUS_REGISTER_CLEAR;

    /* Configure GPT. */
    gpt[CR] = 0 | (1 << 15); /* Reset the GPT */
    /* SWR will be 0 when the reset is done */
    while (gpt[CR] & (1 << 15));

    uint32_t cr = (
                      (1 << 9) | // Free run mode
                      (1 << 6) | // Peripheral clocks
                      (1) // Enable
                  );

    gpt[CR] = cr;

    gpt[IR] = (
                  (1 << 5) // rollover interrupt
              );

    gpt[PR] = 1; // prescaler.

#ifdef PANCAKE_DRIVER
    // Initialize Pancake runtime and memory layout
    init_pancake_mem();
    
    uintptr_t *pnk_mem = (uintptr_t *) cml_heap;
    
    // Memory slot layout for Pancake
    pnk_mem[0] = device_resources.irqs[0].id;  // IRQ_CH
    pnk_mem[1] = (uintptr_t)gpt;               // TIMER_REG_BASE  
    pnk_mem[2] = overflow_count;               // OVERFLOW_COUNT
    
    // Initialize timeout values
    for (int i = 0; i < MAX_TIMEOUTS; i++) {
        pnk_mem[10 + i] = UINT64_MAX;          // TIMEOUT_BASE + i
    }
    
    // Hand control to Pancake
    cml_main();
#endif

    /* Now go passive! */
}
