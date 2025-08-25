/*
 * Copyright 2025, UNSW
 * SPDX-License-Identifier: BSD-2-Clause
 */

#include <stdint.h>
#include <microkit.h>
#include <sddf/timer/protocol.h>
#include <sddf/util/util.h>
#include <sddf/util/printf.h>
#include <sddf/resources/device.h>

#define MAX_TIMEOUTS 6
#define TIMEOUT_BASE 10

/* taken from: https://github.com/torvalds/linux/blob/master/include/clocksource/timer-goldfish.h */
typedef struct {
    /* Registers */
    uint32_t time_low;            /* 0x00: get low bits of current time and update time_high */
    uint32_t time_high;           /* 0x04: get high bits of time at last time_low read */
    uint32_t alarm_low;           /* 0x08: set low bits of alarm and activate it */
    uint32_t alarm_high;          /* 0x0c: set high bits of next alarm */
    uint32_t irq_enabled;         /* 0x10: set to 1 to enable alarm interrupt */
    uint32_t clear_alarm;         /* 0x14: set to 1 to disarm an existing alarm */
    uint32_t alarm_status;        /* 0x18: alarm status (1 running; 0 not) */
    uint32_t clear_interrupt;     /* 0x1c: set to 1 to clear interrupt */
} goldfish_timer_regs_t;

__attribute__((__section__(".device_resources"))) device_resources_t device_resources;

#ifdef PANCAKE_TIMER
static char cml_memory[1024*20];
extern void *cml_heap, *cml_stack, *cml_stackend;
extern void cml_main(void);

void init_pancake_mem() {
    unsigned long cml_heap_sz = 1024*10;
    unsigned long cml_stack_sz = 1024*10;
    cml_heap = cml_memory;
    cml_stack = cml_heap + cml_heap_sz;
    cml_stackend = cml_stack + cml_stack_sz;
}

void cml_exit(int arg) {
    microkit_dbg_puts("ERROR! We should not be getting here\n");
}

void cml_err(int arg, char* filename, char* funcname, int lineno) {
    if (filename == NULL) {
        microkit_dbg_puts("Memory not ready for entry. You may have not run the init code yet, or be trying to enter during an FFI call.\n");
    }
    cml_exit(arg);
}
#else
static volatile goldfish_timer_regs_t *timer_regs;

static inline uint64_t get_ticks_in_ns(void)
{
    uint64_t time = (uint64_t)timer_regs->time_low;
    time |= ((uint64_t)timer_regs->time_high) << 32;
    return time;
}

void set_timeout(uint64_t timeout)
{
    timer_regs->alarm_high = (uint32_t)(timeout >> 32);
    timer_regs->alarm_low = (uint32_t)timeout;
    timer_regs->irq_enabled = 1U;
}

static uint64_t timeouts[MAX_TIMEOUTS];

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

    if (next_timeout != UINT64_MAX) {
        set_timeout(next_timeout);
    }
}
#endif

#ifdef PANCAKE_TIMER
extern uint64_t get_ticks_in_ns_pancake(void);
extern void process_timeouts_pancake(uint64_t curr_time);
#endif

void init()
{
    assert(device_resources_check_magic(&device_resources));
    assert(device_resources.num_irqs == 1);
    assert(device_resources.num_regions == 1);

    microkit_irq_ack(device_resources.irqs[0].id);

#ifdef PANCAKE_TIMER
    init_pancake_mem();
    
    uintptr_t *pnk_mem = (uintptr_t *) cml_heap;
    
    pnk_mem[0] = device_resources.irqs[0].id;
    pnk_mem[1] = (uintptr_t)device_resources.regions[0].region.vaddr;
    
    for (int i = 0; i < MAX_TIMEOUTS; i++) {
        pnk_mem[TIMEOUT_BASE + i] = 9223372036854775807ULL;
    }
    
    cml_main();
#else
    timer_regs = (goldfish_timer_regs_t *)device_resources.regions[0].region.vaddr;

    for (int i = 0; i < MAX_TIMEOUTS; i++) {
        timeouts[i] = UINT64_MAX;
    }
#endif
}

#ifdef PANCAKE_TIMER
extern void notified(microkit_channel ch);
#else
void notified(microkit_channel ch)
{
    assert(ch == device_resources.irqs[0].id);
    microkit_deferred_irq_ack(ch);

    timer_regs->clear_interrupt = 1;
    uint64_t curr_time = get_ticks_in_ns();
    process_timeouts(curr_time);
}
#endif

#ifdef PANCAKE_TIMER
seL4_MessageInfo_t protected(microkit_channel ch, microkit_msginfo msginfo)
{
    switch (microkit_msginfo_get_label(msginfo)) {
    case SDDF_TIMER_GET_TIME: {
        uint64_t time_ns = get_ticks_in_ns_pancake();
        seL4_SetMR(0, time_ns);
        return microkit_msginfo_new(0, 1);
    }
    case SDDF_TIMER_SET_TIMEOUT: {
        uint64_t curr_time = get_ticks_in_ns_pancake();
        uint64_t offset_us = seL4_GetMR(0);
        uintptr_t *pnk_mem = (uintptr_t *) cml_heap;
        pnk_mem[TIMEOUT_BASE + ch] = curr_time + offset_us;
        process_timeouts_pancake(curr_time);
        break;
    }
    default:
        sddf_dprintf("TIMER DRIVER|LOG: Unknown request %lu to timer from channel %u\n",
                     microkit_msginfo_get_label(msginfo), ch);
        break;
    }

    return microkit_msginfo_new(0, 0);
}
#else
seL4_MessageInfo_t protected(microkit_channel ch, microkit_msginfo msginfo)
{
    switch (microkit_msginfo_get_label(msginfo)) {
    case SDDF_TIMER_GET_TIME: {
        uint64_t time_ns = get_ticks_in_ns();
        seL4_SetMR(0, time_ns);
        return microkit_msginfo_new(0, 1);
    }
    case SDDF_TIMER_SET_TIMEOUT: {
        uint64_t curr_time = get_ticks_in_ns();
        uint64_t offset_us = (uint64_t)(seL4_GetMR(0));
        timeouts[ch] = curr_time + offset_us;
        process_timeouts(curr_time);
        break;
    }
    default:
        sddf_dprintf("TIMER DRIVER|LOG: Unknown request %lu to timer from channel %u\n",
                     microkit_msginfo_get_label(msginfo), ch);
        break;
    }

    return microkit_msginfo_new(0, 0);
}
#endif
