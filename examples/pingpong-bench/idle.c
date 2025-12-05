/*
 * Copyright 2025, UNSW
 * SPDX-License-Identifier: BSD-2-Clause
 *
 * Simple idle counter for pingpong benchmark.
 * Runs at lowest priority and counts cycles when CPU is idle.
 */

#include <stdint.h>
#include <microkit.h>
#include <sddf/util/printf.h>
#include <sddf/benchmark/bench.h>

#define MAGIC_CYCLES 150

#if defined(CONFIG_ARCH_AARCH64)
#define READ_CYCLE_COUNTER(var) \
    asm volatile("mrs %0, PMCCNTR_EL0" : "=r"(var))
#endif

__attribute__((__section__(".benchmark_config"))) struct {
    void *cycle_counters;
    uint8_t init_channel;
} config;

struct bench *b;

void count_idle(void)
{
#if defined(MICROKIT_CONFIG_benchmark) && defined(CONFIG_ARCH_AARCH64)
    uint64_t val;
    READ_CYCLE_COUNTER(val);
    b->prev = val;
    b->ccount = 0;

    while (1) {
        READ_CYCLE_COUNTER(val);
        __atomic_store_n(&b->ts, val, __ATOMIC_RELAXED);
        uint64_t diff = b->ts - b->prev;

        if (diff < MAGIC_CYCLES) {
            __atomic_store_n(&b->ccount, __atomic_load_n(&b->ccount, __ATOMIC_RELAXED) + diff, __ATOMIC_RELAXED);
        }

        b->prev = b->ts;
    }
#endif
}

void notified(microkit_channel ch)
{
    if (ch == config.init_channel) {
        count_idle();
    } else {
        sddf_printf("Idle thread notified on unexpected channel: %u\n", ch);
    }
}

void init(void)
{
    b = (struct bench *)config.cycle_counters;
    return;
}
