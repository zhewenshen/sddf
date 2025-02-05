#pragma once

#include <stdint.h>

#define NUM_ROUTES 10

typedef struct routing_entry {
    uint32_t network_id;
    uint32_t subnet_mask;
    uint32_t next_hop;
    // @kwinter: Not sure if out_interface is useful in our system.
    // uint8_t out_interface;
    // @kwinter: this metric field supposedly keeps a value for the min number
    // hops to reach network_id.
    // uint16_t metric;
} routing_entry_t;