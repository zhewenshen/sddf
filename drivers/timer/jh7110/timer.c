/*
 * Copyright 2024, UNSW
 * SPDX-License-Identifier: BSD-2-Clause
 */

#include <stdint.h>
#include <microkit.h>
#include <sddf/resources/device.h>
#include <sddf/util/util.h>
#include <sddf/util/printf.h>
#include <sddf/timer/protocol.h>

/*
 * The JH7110 SoC contains a timer with four 32-bit counters. Each one of these
 * counters is referred to as a "channel". These are not to be confused with
 * Microkit channels. Anything with a prefix STARFIVE_TIMER_* is to do with the
 * hardware.
 */
#define STARFIVE_TIMER_NUM_CHANNELS 4

#define STARFIVE_TIMER_CHANNEL_REGS_SIZE 0x40

#ifndef STARFIVE_TIMER_CHANNEL
#define STARFIVE_TIMER_CHANNEL 1
#endif

#if STARFIVE_TIMER_CHANNEL >= STARFIVE_TIMER_NUM_CHANNELS
#error "Invalid StarFive timer device channel"
#endif

#define CLIENT_CH_START 2
#define MAX_TIMEOUTS 6
#ifdef PANCAKE_TIMER
#define TIMEOUT_BASE 10
#endif

#define STARFIVE_TIMER_MAX_TICKS UINT32_MAX
#define STARFIVE_TIMER_MODE_CONTINUOUS 0
#define STARFIVE_TIMER_MODE_SINGLE 1
#define STARFIVE_TIMER_DISABLED 0
#define STARFIVE_TIMER_ENABLED 1
#define STARFIVE_TIMER_INTERRUPT_UNMASKED 0
#define STARFIVE_TIMER_INTERRUPT_MASKED 1
#define STARFIVE_TIMER_INTCLR_BUSY (1 << 1)

/* 24 MHz frequency. */
#define STARFIVE_TIMER_TICKS_PER_SECOND 0x16e3600

typedef struct {
    /* Registers */
    uint32_t intstatus; /* 0x00: Interrupt status for channels 0 -4. Read only. */
    uint32_t ctrl;      /* 0x04: Timer control. 0 - continuous run, 1 - single run. */
    uint32_t load;      /* 0x08: Load value to counter. */
    uint32_t unknown1;  /* 0x0b: Unused. */
    uint32_t enable;    /* 0x10: Timer enable register. */
    uint32_t reload;    /* 0x14: Write 1 or 0, both reload counter. */
    uint32_t value;     /* 0x18: Value of timer. Read only. */
    uint32_t unknown2;  /* 0x1b: Unused. */
    uint32_t intclr;    /* 0x20: Timer interrupt clear register. */
    uint32_t intmask;   /* 0x24: Timer interrupt mask register. */
} starfive_timer_regs_t;

__attribute__((__section__(".device_resources"))) device_resources_t device_resources;

static volatile starfive_timer_regs_t *counter_regs;
static volatile starfive_timer_regs_t *timeout_regs;
microkit_channel counter_irq;
microkit_channel timeout_irq;

/* Keep track of how many timer overflows have occured.
 * Used as the most significant segment of ticks.
 * We need to keep track of this state as the value register is only
 * 32 bits as opposed to the common 64 bit timer value regsiters found
 * on other devices.
 */
uint32_t counter_timer_elapses = 0;
uint32_t timeout_timer_elapses = 0;

/* Right now, we only service a single timeout per client.
 * This timeout array indicates when a timeout should occur,
 * indexed by client ID. */
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

// Pancake-specific functions are defined in Pancake code
#else
static uint64_t timeouts[MAX_TIMEOUTS];

static uint64_t get_ticks_in_ns(void)
{
    /* the timer value counts down from the load value */
    uint64_t value_l = (uint64_t)(STARFIVE_TIMER_MAX_TICKS - counter_regs->value);
    uint64_t value_h = (uint64_t)counter_timer_elapses;

    /* Account for potential pending counter IRQ */
    if (counter_regs->intclr == 1) {
        value_h += 1;
        value_l = (uint64_t)(STARFIVE_TIMER_MAX_TICKS - counter_regs->value);
    }

    uint64_t value_ticks = (value_h << 32) | value_l;

    /* convert from ticks to nanoseconds */
    uint64_t value_whole_seconds = value_ticks / STARFIVE_TIMER_TICKS_PER_SECOND;
    uint64_t value_subsecond_ticks = value_ticks % STARFIVE_TIMER_TICKS_PER_SECOND;
    uint64_t value_subsecond_ns = (value_subsecond_ticks * NS_IN_S) / STARFIVE_TIMER_TICKS_PER_SECOND;
    uint64_t value_ns = value_whole_seconds * NS_IN_S + value_subsecond_ns;

    return value_ns;
}

static void process_timeouts(uint64_t curr_time)
{
    for (int i = 0; i < MAX_TIMEOUTS; i++) {
        if (timeouts[i] <= curr_time) {
            microkit_notify(CLIENT_CH_START + i);
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
        uint64_t ns = next_timeout - curr_time;
        timeout_regs->enable = STARFIVE_TIMER_DISABLED;
        timeout_timer_elapses = 0;
        timeout_regs->ctrl = STARFIVE_TIMER_MODE_SINGLE;

        uint64_t ticks_whole_seconds = (ns / NS_IN_S) * STARFIVE_TIMER_TICKS_PER_SECOND;
        uint64_t ticks_remainder = (ns % NS_IN_S) * STARFIVE_TIMER_TICKS_PER_SECOND / NS_IN_S;
        uint64_t num_ticks = ticks_whole_seconds + ticks_remainder;

        if (num_ticks > STARFIVE_TIMER_MAX_TICKS) {
            /* truncate num_ticks to maximum timeout, will use multiple interrupts to process the requested timeout. */
            num_ticks = STARFIVE_TIMER_MAX_TICKS;
        }

        timeout_regs->load = num_ticks;
        timeout_regs->enable = STARFIVE_TIMER_ENABLED;
    }
}
#endif

#ifdef PANCAKE_TIMER
extern void notified(microkit_channel ch);
#else
void notified(microkit_channel ch)
{
    if (ch == counter_irq) {
        counter_timer_elapses += 1;
        while (counter_regs->intclr & STARFIVE_TIMER_INTCLR_BUSY) {
            /*
            * Hardware will not currently accept writes to this register.
            * Wait for this bit to be unset by hardware.
            */
        }
        counter_regs->intclr = 1;
    } else if (ch == timeout_irq) {
        timeout_timer_elapses += 1;
        while (timeout_regs->intclr & STARFIVE_TIMER_INTCLR_BUSY) {
            /*
            * Hardware will not currently accept writes to this register.
            * Wait for this bit to be unset by hardware.
            */
        }
        timeout_regs->intclr = 1;

        uint64_t curr_time = get_ticks_in_ns();
        process_timeouts(curr_time);
    } else {
        sddf_dprintf("TIMER DRIVER|LOG: unexpected notification from channel %u\n", ch);
        return;
    }

    microkit_deferred_irq_ack(ch);
}
#endif

#ifdef PANCAKE_TIMER
extern uint64_t get_ticks_in_ns_pancake(void);
extern void process_timeouts_pancake(uint64_t curr_time);

// FFI function for seL4_GetMR - stores result in scratchpad slot 7
void ffiseL4_GetMR_timer(unsigned char *c, long clen, unsigned char *a, long alen) {
    uintptr_t *pnk_mem = (uintptr_t *) cml_heap;
    seL4_Word value = seL4_GetMR(clen);
    pnk_mem[7] = value; // Store in SCRATCHPAD slot
}

// Pancake version handles all protected calls
extern seL4_MessageInfo_t protected(microkit_channel ch, microkit_msginfo msginfo);
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
        uint64_t offset_ns = seL4_GetMR(0);
        timeouts[ch - CLIENT_CH_START] = curr_time + offset_ns;
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

void init(void)
{
    assert(device_resources_check_magic(&device_resources));
    assert(device_resources.num_irqs == 2);
    assert(device_resources.num_regions == 1);

    /* Ack any IRQs that were delivered before the driver started. */
    for (int i = 0; i < device_resources.num_irqs; i++) {
        microkit_irq_ack(device_resources.irqs[i].id);
    }

#ifdef PANCAKE_TIMER
    init_pancake_mem();
    
    uintptr_t *pnk_mem = (uintptr_t *) cml_heap;
    
    pnk_mem[0] = device_resources.irqs[0].id;
    pnk_mem[1] = device_resources.irqs[1].id;
    
    uintptr_t timer_base = (uintptr_t)device_resources.regions[0].region.vaddr;
    pnk_mem[2] = timer_base;
    pnk_mem[3] = timer_base + STARFIVE_TIMER_CHANNEL_REGS_SIZE * STARFIVE_TIMER_CHANNEL;
    pnk_mem[4] = 0;
    pnk_mem[5] = 0;
    pnk_mem[6] = CLIENT_CH_START;
    
    for (int i = 0; i < MAX_TIMEOUTS; i++) {
        pnk_mem[TIMEOUT_BASE + i] = 9223372036854775807ULL;
    }
    
    counter_regs = (volatile starfive_timer_regs_t *)timer_base;
    timeout_regs = (volatile starfive_timer_regs_t *)(timer_base
                                                      + STARFIVE_TIMER_CHANNEL_REGS_SIZE * STARFIVE_TIMER_CHANNEL);
    timeout_regs->enable = STARFIVE_TIMER_DISABLED;
    timeout_regs->ctrl = STARFIVE_TIMER_MODE_CONTINUOUS;
    timeout_regs->load = STARFIVE_TIMER_MAX_TICKS;
    timeout_regs->intmask = STARFIVE_TIMER_INTERRUPT_UNMASKED;

    counter_regs->enable = STARFIVE_TIMER_DISABLED;
    counter_regs->ctrl = STARFIVE_TIMER_MODE_CONTINUOUS;
    counter_regs->load = STARFIVE_TIMER_MAX_TICKS;
    counter_regs->intmask = STARFIVE_TIMER_INTERRUPT_UNMASKED;

    counter_regs->enable = STARFIVE_TIMER_ENABLED;
    
    cml_main();
#else
    for (int i = 0; i < MAX_TIMEOUTS; i++) {
        timeouts[i] = UINT64_MAX;
    }

    counter_irq = device_resources.irqs[0].id;
    timeout_irq = device_resources.irqs[1].id;

    uintptr_t timer_base = (uintptr_t)device_resources.regions[0].region.vaddr;
    counter_regs = (volatile starfive_timer_regs_t *)timer_base;
    timeout_regs = (volatile starfive_timer_regs_t *)(timer_base
                                                      + STARFIVE_TIMER_CHANNEL_REGS_SIZE * STARFIVE_TIMER_CHANNEL);
    timeout_regs->enable = STARFIVE_TIMER_DISABLED;
    timeout_regs->ctrl = STARFIVE_TIMER_MODE_CONTINUOUS;
    timeout_regs->load = STARFIVE_TIMER_MAX_TICKS;
    timeout_regs->intmask = STARFIVE_TIMER_INTERRUPT_UNMASKED;

    counter_regs->enable = STARFIVE_TIMER_DISABLED;
    counter_regs->ctrl = STARFIVE_TIMER_MODE_CONTINUOUS;
    counter_regs->load = STARFIVE_TIMER_MAX_TICKS;
    counter_regs->intmask = STARFIVE_TIMER_INTERRUPT_UNMASKED;

    counter_regs->enable = STARFIVE_TIMER_ENABLED;
#endif
}
