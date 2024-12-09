/*
 * Copyright 2024, UNSW
 * SPDX-License-Identifier: BSD-2-Clause
 */

#include <microkit.h>
#include <sddf/util/printf.h>
#include <sddf/util/util.h>
#include <sddf/util/string.h>
#include <sddf/blk/queue.h>
#include <sddf/blk/storage_info.h>
#include <sddf/serial/queue.h>
#include <serial_config.h>
#include <benchmark_config.h>
#include <blk_config.h>

/*
 * This header is generated by the build system, it contains the data we want
 * to write to the block device
 */
#include "basic_data.h"
//#include "sddf/util/fence.h"

#define LOG_CLIENT(...) do{ sddf_printf("CLIENT|INFO: "); sddf_printf(__VA_ARGS__); }while(0)
#define LOG_CLIENT_ERR(...) do{ sddf_printf("CLIENT|ERROR: "); sddf_printf(__VA_ARGS__); }while(0)

#define VIRT_CH 0
#define SERIAL_TX_CH 1
#define START_PMU 2
#define STOP_PMU 3
#define BENCH_RUN_CH 4


char *serial_tx_data;
serial_queue_t *serial_tx_queue;
serial_queue_handle_t serial_tx_queue_handle;

blk_storage_info_t *blk_storage_info;
uintptr_t blk_request;
uintptr_t blk_response;
uintptr_t blk_data;
uintptr_t blk_client0_data_paddr;

static blk_queue_handle_t blk_queue;

enum run_benchmark_state {
    START_BENCHMARK,
    THROUGHPUT_RANDOM_READ,
    THROUGHPUT_WRITE,
    LATENCY_READ,
    LATENCY_WRITE,
};

enum test_basic_state {
    START,
    WRITE,
    READ,
    FINISH,
};


enum test_basic_state test_basic_state = START;
enum run_benchmark_state run_benchmark_state = START_BENCHMARK;
bool virtualiser_replied = false;
uint8_t benchmark_size_idx = 0;
 // only read 1024 sectors in, Avoid U-Boot
 // continuosly advance read start to avoid caching benefits
uint64_t read_start_sector = 1024;

bool run_benchmark() {
    switch(run_benchmark_state) {
        case START_BENCHMARK:
            /* make sure the driver is working properly */
            if (!virtualiser_replied) {
                LOG_CLIENT("run_benchmark: START state,verifying if a simple read succeeds...\n");
                int err = blk_enqueue_req(&blk_queue, BLK_REQ_READ, 0x10000, 0, 2, 0);
                assert(!err);
                microkit_notify(VIRT_CH);
            } else {
                blk_resp_status_t status = -1;
                uint16_t count = -1;
                uint32_t id = -1;
                int err = blk_dequeue_resp(&blk_queue, &status, &count, &id);
                assert(!err);
                assert(status == BLK_RESP_OK);
                assert(count == 2);
                assert(id == 0);
                LOG_CLIENT("run_benchmark: simple read successful.\n");
                run_benchmark_state = THROUGHPUT_RANDOM_READ;
                virtualiser_replied = false;
                // TODO schedule the first benchmark now
                run_benchmark();
            }
            break;
        case THROUGHPUT_RANDOM_READ:
            /* Perform QUEUE_SIZE random READs, from 4KiB write size up to 128MiB (x8 at each step) */
            // XXX can "simulate" random reads, by interleaving reads at 2 distant offsets (see Cheng's sdmmc_rust branch)
            if (!virtualiser_replied) {
                LOG_CLIENT("run_benchmark: THROUGHPUT_RANDOM_READ: %d requests of %d transfer blocks at a time.\n"
                        "Reading start sector: %lu\n", REQUEST_COUNT[benchmark_size_idx],
                        BENCHMARK_BLOCKS_PER_REQUEST[benchmark_size_idx], read_start_sector);
                assert(blk_queue_length_req(&blk_queue) == 0);
                assert(blk_queue_length_resp(&blk_queue) == 0);
                for (uint32_t i = 0; i != REQUEST_COUNT[benchmark_size_idx]; ++i) {
                    // Read BENCHMARK_BLOCKS_PER_REQUEST blocks for this benchmark run, oscillating between
                    // a small and large sector size (driver doesn't do any smart reordering, should mean that SD
                    // card's caching has no effect)
                    //sddf_printf("Enqueued: offset: 0x%x, block number: %lu, count: %d, id: %d\n", i * BENCHMARK_BLOCKS_PER_REQUEST[benchmark_size_idx] * BLK_TRANSFER_SIZE, read_start_sector + i * BENCHMARK_BLOCKS_PER_REQUEST[benchmark_size_idx] + i \
                    //        * BLOCK_READ_WRITE_INTERVAL / BLK_TRANSFER_SIZE, BENCHMARK_BLOCKS_PER_REQUEST[benchmark_size_idx], i);
                    uintptr_t io_or_offset = i * BENCHMARK_BLOCKS_PER_REQUEST[benchmark_size_idx] * BLK_TRANSFER_SIZE;
                    uint32_t block_number = read_start_sector + i * BENCHMARK_BLOCKS_PER_REQUEST[benchmark_size_idx] + \
                                         i * BLOCK_READ_WRITE_INTERVAL / BLK_TRANSFER_SIZE;
                    uint16_t count = BENCHMARK_BLOCKS_PER_REQUEST[benchmark_size_idx];
                    sddf_printf("client: io_or_offset 0x%lx, block_number: %d, count: %d\n", io_or_offset, block_number, count);

                    int err = blk_enqueue_req(&blk_queue, BLK_REQ_READ, io_or_offset, block_number, count, i);
                    assert(!err);
                }
                // start the PMU and notify the virtualiser to start processing the input queue
                microkit_notify(START_PMU);
                microkit_notify(VIRT_CH);
            } else if (blk_queue_length_resp(&blk_queue) == REQUEST_COUNT[benchmark_size_idx] ) {
                // virtualiser replied -> queue processed!
                microkit_notify(STOP_PMU);
                // clean up the queue
                sddf_printf("queue size before dequeue: %d\n", blk_queue_length_resp(&blk_queue));
                for (uint32_t i = 0; i != REQUEST_COUNT[benchmark_size_idx]; ++i) {
                    blk_resp_status_t status = -1;
                    uint16_t count = -1;
                    uint16_t expected_count = BENCHMARK_BLOCKS_PER_REQUEST[benchmark_size_idx];
                    uint32_t id = -1;
                    int err = blk_dequeue_resp(&blk_queue, &status, &count, &id);
                    assert(!err);
                    if (status != BLK_RESP_OK) {
                        sddf_printf("error: %d\n", status);
                    }
                    assert(status == BLK_RESP_OK);
                    assert(count == expected_count);
                    //sddf_printf("count %d. id %d\n", count, id);
                }
                sddf_printf("queue size after dequeue: %d\n", blk_queue_length_resp(&blk_queue));
                benchmark_size_idx = (benchmark_size_idx + 1) % BENCHMARK_RUN_COUNT;
                // XXX maybe this needs to happen as atomic before notifying `bench` to avoid a race of bench starting another run before this one is finished
                sddf_printf("benchmark_size_idx: %d\n", benchmark_size_idx);
                sddf_printf("BENCHMARK_RUN_COUNT: %ld\n", BENCHMARK_RUN_COUNT);
                if (benchmark_size_idx == 0) {
                    // cycled through all BENCHMARK_BLOCKS_PER_REQUEST, start next benchmark
                    run_benchmark_state = THROUGHPUT_WRITE;
                    sddf_printf("run_benchmark: finished all BENCHMARK_BLOCKS_PER_REQUEST for THROUGHPUT_RANDOM_READ\n");
                }
                virtualiser_replied = false;
            }
            break;
        case THROUGHPUT_WRITE:
            /* Perform QUEUE_SIZE WRITEs, from 4KiB write size up to 128MiB (x8 at each step) */
            break;
        case LATENCY_READ:
            // Perform QUEUE_SIZE random reads, only measure latency of each read
            // XXX to verify: will latency differ with request read size? or will it be constant
            // XXX if varies, maybe can be merged into THROUGHPUT_RANDOM_READ
            break;
        case LATENCY_WRITE:
            // Per
            // Returns true, as this is the final benchmark. System will sit idle afterwards
            return true;
            break;
        default:
            LOG_CLIENT_ERR("internal error, invalid state\n");
            assert(false);
    }
    return false;
}

void init(void)
{
    serial_cli_queue_init_sys(microkit_name, NULL, NULL, NULL, &serial_tx_queue_handle, serial_tx_queue, serial_tx_data);
    // TODO: fix the below - currently will crash if debug_build as it is compiled with sddf_util and not sddf_util_debug.
    // FIX: modify makefile to add sddf_util_debug if MICORKIT_CONFIG=debug ??
#ifndef CONFIG_DEBUG_BUILD
    serial_putchar_init(SERIAL_TX_CH, &serial_tx_queue_handle);
#endif

    LOG_CLIENT("starting.\n");

    blk_queue_init(&blk_queue, (blk_req_queue_t *)blk_request, (blk_resp_queue_t *)blk_response, blk_cli_queue_capacity(microkit_name));

    /* Want to print out configuration information, so wait until the config is ready. */
    LOG_CLIENT("check if device config ready\n");
    while (!blk_storage_is_ready(blk_storage_info));
    LOG_CLIENT("device config ready\n");

    LOG_CLIENT("device size: 0x%lx bytes\n", blk_storage_info->capacity * BLK_TRANSFER_SIZE);
}

void notified(microkit_channel ch)
{
    //LOG_CLIENT("notified %u\n", ch);
    switch (ch) {
        case VIRT_CH:
            //LOG_CLIENT("notified from virtualiser %u\n", ch);
            // Virtualiser replied, handle appropriately
            virtualiser_replied = true;
            run_benchmark();
            break;
        case SERIAL_TX_CH:
            // Nothing to do
            break;
        case BENCH_RUN_CH:
            // TODO: Start the required benchmark
            virtualiser_replied = false;
            LOG_CLIENT("client notified to start bench.\n");
            run_benchmark();
            break;
        default:
            LOG_CLIENT_ERR("received notification on unexpected channel: %u\n", ch);
            break;
    }
}
