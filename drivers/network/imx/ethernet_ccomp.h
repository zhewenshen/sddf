#ifndef ETHERNET_CCOMP_H
#define ETHERNET_CCOMP_H

#include <stdint.h>
#include <stdbool.h>
#include <sddf/network/queue.h>
#include <sddf/network/config.h>
#include <sddf/resources/device.h>

#include "ethernet.h"

typedef unsigned int microkit_channel;

extern device_resources_t device_resources;
extern net_driver_config_t config;

#define RX_COUNT 256
#define TX_COUNT 256
#define MAX_COUNT 256

#define MAX_PACKET_SIZE     1536

// the microkit stuff we need
extern void _ccomp_microkit_notify(microkit_channel ch);
extern void _ccomp_microkit_deferred_irq_ack(microkit_channel ch);

// some other stuff we need
extern void _ccomp_thread_memory_release(void);
extern void _ccomp_thread_memory_acquire(void);
extern void _ccomp_assert(bool condition);
extern void _ccomp_notified_sddf_dprintf(microkit_channel ch);
extern void _ccomp_handle_irq_sddf_dprintf(unsigned int e);

// sddf stuff
extern int _ccomp_net_enqueue_active(net_queue_handle_t *queue, net_buff_desc_t *buffer);
extern int _ccomp_net_enqueue_free(net_queue_handle_t *queue, net_buff_desc_t *buffer);
extern void _ccomp_handle_irq_sddf_dprintf(unsigned int e);
extern void _ccomp_notified_sddf_dprintf(microkit_channel ch);

/* HW ring descriptor (shared with device) */
struct descriptor {
    uint16_t len;
    uint16_t stat;
    uint32_t addr;
};

/* HW ring buffer data type */
typedef struct {
    uint32_t tail; /* index to insert at */
    uint32_t head; /* index to remove from */
    uint32_t capacity; /* capacity of the ring */
    volatile struct descriptor *descr; /* buffer descriptor array */
    net_buff_desc_t descr_mdata[MAX_COUNT]; /* associated meta data array */
} hw_ring_t;

hw_ring_t rx; /* Rx NIC ring */
hw_ring_t tx; /* Tx NIC ring */

net_queue_handle_t rx_queue;
net_queue_handle_t tx_queue;

volatile struct enet_regs *eth;


#endif // ETHERNET_CCOMP_H
