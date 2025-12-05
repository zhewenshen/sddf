/*
 * Copyright 2025, UNSW
 * SPDX-License-Identifier: BSD-2-Clause
 */

#include <stdint.h>
#include <microkit.h>
#include <sddf/timer/client.h>
#include <sddf/timer/config.h>
#include <sddf/serial/queue.h>
#include <sddf/serial/config.h>
#include <sddf/util/printf.h>


#if defined(CONFIG_ARCH_AARCH64)
#define READ_CYCLE_COUNTER(var) \
    asm volatile("mrs %0, PMCCNTR_EL0" : "=r"(var))
#endif

__attribute__((__section__(".timer_client_config"))) timer_client_config_t config;
__attribute__((__section__(".serial_client_config"))) serial_client_config_t serial_config;

microkit_channel timer_channel;
serial_queue_handle_t serial_tx_queue_handle;

static char cml_memory[1024*8];
extern void *cml_heap;
extern void *cml_stack;
extern void *cml_stackend;

extern long bench(void);
extern void cml_main(void);

void cml_exit(int arg) {
    sddf_printf("ERROR! cml_exit called with arg=%d\n", arg);
}

void cml_err(int arg) {
    if (arg == 3) {
        sddf_printf("Memory not ready for entry.\n");
    }
    cml_exit(arg);
}

void cml_clear() {
    //
}

void init_pancake_mem() {
    unsigned long cml_heap_sz = 1024*4;
    unsigned long cml_stack_sz = 1024*4;
    cml_heap = cml_memory;
    cml_stack = cml_heap + cml_heap_sz;
    cml_stackend = cml_stack + cml_stack_sz;
}

static uint64_t measure_pancake_cycles(void)
{
    uint64_t start, end;

    READ_CYCLE_COUNTER(start);
    long result = bench();
    READ_CYCLE_COUNTER(end);

    (void)result;

    return end - start;
}

void init(void)
{
    serial_queue_init(&serial_tx_queue_handle, serial_config.tx.queue.vaddr, serial_config.tx.data.size,
                      serial_config.tx.data.vaddr);
    serial_putchar_init(serial_config.tx.id, &serial_tx_queue_handle);

    sddf_printf("FFI-BENCH|INFO: Starting FFI benchmark system\n");

    assert(timer_config_check_magic(&config));
    timer_channel = config.driver_id;

    init_pancake_mem();
    cml_main();
    sddf_printf("FFI-BENCH|INFO: Pancake memory initialized (heap=%p, stack=%p)\n",
                cml_heap, cml_stack);

#if defined(CONFIG_ARCH_AARCH64) && defined(MICROKIT_CONFIG_benchmark)
    sddf_printf("FFI-BENCH|INFO: Starting cycle counter measurements\n");
    uint64_t cycles = measure_pancake_cycles();
    sddf_printf("FFI-BENCH|PANCAKE: took %lu cycles (avg %lu cycles/iter)\n", cycles, cycles / 100000000);

    cycles = measure_pancake_cycles();
    sddf_printf("FFI-BENCH|PANCAKE: took %lu cycles (avg %lu cycles/iter)\n", cycles, cycles / 100000000);

    cycles = measure_pancake_cycles();
    sddf_printf("FFI-BENCH|PANCAKE: took %lu cycles (avg %lu cycles/iter)\n", cycles, cycles / 100000000);

    cycles = measure_pancake_cycles();
    sddf_printf("FFI-BENCH|PANCAKE: took %lu cycles (avg %lu cycles/iter)\n", cycles, cycles / 100000000);

    cycles = measure_pancake_cycles();
    sddf_printf("FFI-BENCH|PANCAKE: took %lu cycles (avg %lu cycles/iter)\n", cycles, cycles / 100000000);

    cycles = measure_pancake_cycles();
    sddf_printf("FFI-BENCH|PANCAKE: took %lu cycles (avg %lu cycles/iter)\n", cycles, cycles / 100000000);

    cycles = measure_pancake_cycles();
    sddf_printf("FFI-BENCH|PANCAKE: took %lu cycles (avg %lu cycles/iter)\n", cycles, cycles / 100000000);

    cycles = measure_pancake_cycles();
    sddf_printf("FFI-BENCH|PANCAKE: took %lu cycles (avg %lu cycles/iter)\n", cycles, cycles / 100000000);

    cycles = measure_pancake_cycles();
    sddf_printf("FFI-BENCH|PANCAKE: took %lu cycles (avg %lu cycles/iter)\n", cycles, cycles / 100000000);

    cycles = measure_pancake_cycles();
    sddf_printf("FFI-BENCH|PANCAKE: took %lu cycles (avg %lu cycles/iter)\n", cycles, cycles / 100000000);
#else
    sddf_printf("FFI-BENCH|INFO: System started successfully\n");
    sddf_printf("FFI-BENCH|INFO: Cycle counters require MICROKIT_CONFIG=benchmark\n");
    sddf_printf("FFI-BENCH|INFO: Currently running in debug mode for serial output\n");

    sddf_printf("FFI-BENCH|INFO: Running example function (no cycle measurement)...\n");
    volatile uint64_t result = example_function(100000);
    (void)result;
    sddf_printf("FFI-BENCH|INFO: Function executed successfully!\n");
#endif
}

void notified(microkit_channel ch)
{
    if (ch == serial_config.tx.id) {
        // do nothing
    } else if (ch == timer_channel) {
        // do nothing
    } else {
        sddf_printf("FFI-BENCH|WARN: unexpected notification on channel %u\n", ch);
    }
}
