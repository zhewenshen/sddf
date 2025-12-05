/*
 * Copyright 2025, UNSW
 * SPDX-License-Identifier: BSD-2-Clause
 */

#include <stdint.h>
#include <microkit.h>
#include <sddf/serial/queue.h>
#include <sddf/serial/config.h>
#include <sddf/benchmark/bench.h>
#include <sddf/util/printf.h>

/* Configuration for ping-pong benchmark */
#define WARMUP_ITERATIONS   100000
#define BENCH_ITERATIONS    100000
#define NUM_RUNS            2

#if defined(CONFIG_ARCH_AARCH64)
#define READ_CYCLE_COUNTER(var) \
    asm volatile("mrs %0, PMCCNTR_EL0" : "=r"(var))
#endif

__attribute__((__section__(".serial_client_config"))) serial_client_config_t serial_config;
__attribute__((__section__(".pingpong_config"))) struct {
    void *cycle_counters;
    uint8_t partner_ch;
    uint8_t idle_init_ch;
} pingpong_config;

serial_queue_handle_t serial_tx_queue_handle;

struct bench *bench;

typedef enum {
    PHASE_INIT,
    PHASE_WARMUP,
    PHASE_BENCHMARK,
    PHASE_DONE
} bench_phase_t;

static bench_phase_t current_phase;
static uint64_t iteration_count;
static uint64_t current_run;
static uint64_t start_cycles;
static uint64_t start_idle;
static uint64_t start_ts;

static void start_warmup(void)
{
    current_phase = PHASE_WARMUP;
    iteration_count = 0;
    sddf_printf("PINGPONG|CLIENT_A: Starting warmup (%lu iterations)...\n",
                (uint64_t)WARMUP_ITERATIONS);
    microkit_notify(pingpong_config.partner_ch);
}

static void start_benchmark_run(void)
{
    current_phase = PHASE_BENCHMARK;
    iteration_count = 0;

    /* Record start measurements */
#if defined(CONFIG_ARCH_AARCH64) && defined(MICROKIT_CONFIG_benchmark)
    READ_CYCLE_COUNTER(start_cycles);
#else
    start_cycles = 0;
#endif
    start_idle = __atomic_load_n(&bench->ccount, __ATOMIC_RELAXED);
    start_ts = __atomic_load_n(&bench->ts, __ATOMIC_RELAXED);

    sddf_printf("PINGPONG|CLIENT_A: Run %lu/%lu starting (%lu iterations)...\n",
                current_run + 1, (uint64_t)NUM_RUNS, (uint64_t)BENCH_ITERATIONS);

    microkit_notify(pingpong_config.partner_ch);
}

static void finish_benchmark_run(void)
{
    uint64_t end_cycles = 0;
#if defined(CONFIG_ARCH_AARCH64) && defined(MICROKIT_CONFIG_benchmark)
    READ_CYCLE_COUNTER(end_cycles);
#endif
    uint64_t end_idle = __atomic_load_n(&bench->ccount, __ATOMIC_RELAXED);
    uint64_t end_ts = __atomic_load_n(&bench->ts, __ATOMIC_RELAXED);

    uint64_t total_cycles = end_cycles - start_cycles;
    uint64_t total_idle = end_idle - start_idle;
    uint64_t total_ts = end_ts - start_ts;

    /* Calculate utilization: (total_ts - idle_cycles) / total_ts * 100 */
    uint64_t busy_cycles = 0;
    if (total_ts > total_idle) {
        busy_cycles = total_ts - total_idle;
    }

    uint64_t util_percent = 0;
    if (total_ts > 0) {
        util_percent = (busy_cycles * 100) / total_ts;
    }

    uint64_t cycles_per_rt = 0;
    uint64_t cycles_per_notify = 0;
    if (iteration_count > 0) {
        cycles_per_rt = total_cycles / iteration_count;
        cycles_per_notify = total_cycles / (iteration_count * 2);
    }

    sddf_printf("PINGPONG|RUN[%lu]: cycles=%lu, idle=%lu, busy=%lu, util=%lu%%, cycles/rt=%lu, cycles/notify=%lu\n",
                current_run + 1, total_cycles, total_idle, busy_cycles,
                util_percent, cycles_per_rt, cycles_per_notify);

    current_run++;

    if (current_run < NUM_RUNS) {
        /* Start next run */
        start_benchmark_run();
    } else {
        /* All runs complete */
        current_phase = PHASE_DONE;
        sddf_printf("PINGPONG|CLIENT_A: ==============================\n");
        sddf_printf("PINGPONG|CLIENT_A: All %lu runs completed!\n", (uint64_t)NUM_RUNS);
        sddf_printf("PINGPONG|CLIENT_A: ==============================\n");
    }
}

void init(void)
{
    serial_queue_init(&serial_tx_queue_handle, serial_config.tx.queue.vaddr,
                      serial_config.tx.data.size, serial_config.tx.data.vaddr);
    serial_putchar_init(serial_config.tx.id, &serial_tx_queue_handle);

    bench = (struct bench *)pingpong_config.cycle_counters;
    current_phase = PHASE_INIT;
    iteration_count = 0;
    current_run = 0;

    sddf_printf("PINGPONG|CLIENT_A: ==============================\n");
    sddf_printf("PINGPONG|CLIENT_A: Ping-Pong Notification Benchmark\n");
    sddf_printf("PINGPONG|CLIENT_A: Warmup iterations: %lu\n", (uint64_t)WARMUP_ITERATIONS);
    sddf_printf("PINGPONG|CLIENT_A: Benchmark iterations: %lu\n", (uint64_t)BENCH_ITERATIONS);
    sddf_printf("PINGPONG|CLIENT_A: Number of runs: %lu\n", (uint64_t)NUM_RUNS);
    sddf_printf("PINGPONG|CLIENT_A: ==============================\n");

    /* Start the idle counter thread */
    sddf_printf("PINGPONG|CLIENT_A: Starting idle counter...\n");
    microkit_notify(pingpong_config.idle_init_ch);

    /* Small delay to let idle counter start */
    for (volatile int i = 0; i < 100000; i++);

    /* Start warmup phase */
    start_warmup();
}

void notified(microkit_channel ch)
{
    if (ch == serial_config.tx.id) {
        /* Serial TX notification - ignore */
        return;
    }

    if (ch != pingpong_config.partner_ch) {
        sddf_printf("PINGPONG|CLIENT_A: Unexpected notification on channel %u\n", ch);
        return;
    }

    if (current_phase == PHASE_DONE) {
        return;
    }

    iteration_count++;

    if (current_phase == PHASE_WARMUP) {
        if (iteration_count >= WARMUP_ITERATIONS) {
            sddf_printf("PINGPONG|CLIENT_A: Warmup complete.\n");
            /* Start first benchmark run */
            start_benchmark_run();
        } else {
            microkit_notify(pingpong_config.partner_ch);
        }
    } else if (current_phase == PHASE_BENCHMARK) {
        if (iteration_count >= BENCH_ITERATIONS) {
            finish_benchmark_run();
        } else {
            microkit_notify(pingpong_config.partner_ch);
        }
    }
}
