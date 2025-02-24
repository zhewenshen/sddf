#include <stdint.h>
#include <stdbool.h>
#include <sddf/network/queue.h>
#include <sddf/network/config.h>
#include <sddf/resources/device.h>

#include "ethernet.h"

#define MAX(a, b) ((a) > (b) ? (a) : (b))

#define RX_COUNT 256
#define TX_COUNT 256
#define MAX_COUNT MAX(RX_COUNT, TX_COUNT)

/* The same as Linux's default for pause frame timeout */
const uint32_t pause_time = 0xffff;

struct descriptor {
    uint32_t status;
    uint32_t cntl;
    uint32_t addr;
    uint32_t next;
};

typedef struct {
    uint32_t tail; /* index to insert at */
    uint32_t head; /* index to remove from */
    uint32_t capacity; /* capacity of the ring */
    volatile struct descriptor *descr; /* buffer descriptor array */
    net_buff_desc_t descr_mdata[MAX_COUNT]; /* associated meta data array */
} hw_ring_t;

hw_ring_t rx;
hw_ring_t tx;

net_queue_handle_t rx_queue;
net_queue_handle_t tx_queue;

__attribute__((__section__(".device_resources"))) device_resources_t device_resources;
__attribute__((__section__(".net_driver_config"))) net_driver_config_t config;

typedef unsigned int microkit_channel;

volatile struct eth_mac_regs *eth_mac;
volatile struct eth_dma_regs *eth_dma;

extern void _microkit_deferred_irq_ack(microkit_channel ch);
extern void _microkit_irq_ack(microkit_channel ch);
extern void _microkit_notify(microkit_channel ch);
extern void _thread_memory_acquire(void);
extern void _thread_memory_release(void);
extern void _assert(bool condition);

