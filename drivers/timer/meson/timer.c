/*
 * Copyright 2024, UNSW
 * SPDX-License-Identifier: BSD-2-Clause
 */

#include <stdint.h>
#include <microkit.h>
#include <sddf/resources/device.h>
#include <sddf/util/printf.h>
#include <sddf/timer/protocol.h>

#define MAX_TIMEOUTS 6

// Workaround for Pancake 64-bit comparison bug: use a large but safe value
// instead of UINT64_MAX to represent "no timeout set"
// #define TIMEOUT_INVALID_VALUE UINT64_MAX
#define TIMEOUT_INVALID_VALUE 9999999999999999ULL

#define TIMER_REG_START   0x70    // TIMER_MUX

#define TIMER_A_INPUT_CLK 0
#define TIMER_E_INPUT_CLK 8
#define TIMER_A_EN      (1 << 16)
#define TIMER_A_MODE    (1 << 12)

#define TIMESTAMP_TIMEBASE_SYSTEM   0b000
#define TIMESTAMP_TIMEBASE_1_US     0b001
#define TIMESTAMP_TIMEBASE_10_US    0b010
#define TIMESTAMP_TIMEBASE_100_US   0b011
#define TIMESTAMP_TIMEBASE_1_MS     0b100

#define TIMEOUT_TIMEBASE_1_US   0b00
#define TIMEOUT_TIMEBASE_10_US  0b01
#define TIMEOUT_TIMEBASE_100_US 0b10
#define TIMEOUT_TIMEBASE_1_MS   0b11

__attribute__((__section__(".device_resources"))) device_resources_t device_resources;

struct timer_regs {
    uint32_t mux;
    uint32_t timer_a;
    uint32_t timer_b;
    uint32_t timer_c;
    uint32_t timer_d;
    uint32_t unused[13];
    uint32_t timer_e;
    uint32_t timer_e_hi;
    uint32_t mux1;
    uint32_t timer_f;
    uint32_t timer_g;
    uint32_t timer_h;
    uint32_t timer_i;
};

volatile struct timer_regs *regs;

/* Right now, we only service a single timeout per client.
 * This timeout array indicates when a timeout should occur,
 * indexed by client ID. */
static uint64_t timeouts[MAX_TIMEOUTS];

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

// FFI function for seL4_GetMR - stores result in scratchpad slot 3
void ffiseL4_GetMR_timer(unsigned char *c, long clen, unsigned char *a, long alen) {
    uintptr_t *pnk_mem = (uintptr_t *) cml_heap;
    seL4_Word value = seL4_GetMR(clen);
    pnk_mem[3] = value; // Store in SCRATCHPAD slot
}

static uint64_t get_ticks(void)
{
    uint64_t initial_high = regs->timer_e_hi;
    uint64_t low = regs->timer_e;
    uint64_t high = regs->timer_e_hi;
    if (high != initial_high) {
        low = regs->timer_e;
    }

    uint64_t ticks = (high << 32) | low;
    return ticks;
}

static void process_timeouts(uint64_t curr_time)
{
    uintptr_t *pnk_mem = (uintptr_t *) cml_heap;
    
    for (int i = 0; i < MAX_TIMEOUTS; i++) {
        if (timeouts[i] <= curr_time) {
            microkit_notify(i);
            timeouts[i] = TIMEOUT_INVALID_VALUE;
            // update Pancake memory
            pnk_mem[10 + i] = TIMEOUT_INVALID_VALUE;
        }
    }

    uint64_t next_timeout = TIMEOUT_INVALID_VALUE;
    for (int i = 0; i < MAX_TIMEOUTS; i++) {
        if (timeouts[i] < next_timeout) {
            next_timeout = timeouts[i];
        }
    }

    if (next_timeout != TIMEOUT_INVALID_VALUE) {
        regs->mux &= ~TIMER_A_MODE;
        regs->timer_a = next_timeout - curr_time;
        regs->mux |= TIMER_A_EN;
    }
}

// Pancake version handles all protected calls
extern seL4_MessageInfo_t protected(microkit_channel ch, microkit_msginfo msginfo);

void init(void)
{
    assert(device_resources_check_magic(&device_resources));
    assert(device_resources.num_irqs == 1);
    assert(device_resources.num_regions == 1);

    microkit_irq_ack(device_resources.irqs[0].id);

    for (int i = 0; i < MAX_TIMEOUTS; i++) {
        timeouts[i] = TIMEOUT_INVALID_VALUE;
    }

    regs = (void *)((uintptr_t)device_resources.regions[0].region.vaddr + TIMER_REG_START);

    /* Start timer E acts as a clock, while timer A can be used for timeouts from clients */
    regs->mux = TIMER_A_EN | (TIMESTAMP_TIMEBASE_1_US << TIMER_E_INPUT_CLK) |
                (TIMEOUT_TIMEBASE_1_US << TIMER_A_INPUT_CLK);

    regs->timer_e = 0;

    init_pancake_mem();
    
    uintptr_t *pnk_mem = (uintptr_t *) cml_heap;
    
    pnk_mem[0] = device_resources.irqs[0].id;  // IRQ_CH
    pnk_mem[1] = (uintptr_t)regs;  // TIMER_REG_BASE
    
    for (int i = 0; i < MAX_TIMEOUTS; i++) {
        pnk_mem[10 + i] = TIMEOUT_INVALID_VALUE;
    }
    
    cml_main();
}

extern void notified(microkit_channel ch);
