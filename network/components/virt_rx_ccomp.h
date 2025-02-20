#ifndef VIRT_RX_CCOMP_H
#define VIRT_RX_CCOMP_H

#include <stdbool.h>
#include <stdint.h>
#include <sddf/network/constants.h>
#include <sddf/network/queue.h>
#include <sddf/network/config.h>

// microkit stuff 
typedef unsigned int microkit_channel;

extern void _ccomp_microkit_notify(microkit_channel ch);
extern void _ccomp_microkit_deferred_notify(microkit_channel ch);
extern void _ccomp_assert(bool condition);
extern void _ccomp_cache_clean_and_invalidate(unsigned long start, unsigned long end);
extern int _ccomp_net_enqueue_active(net_queue_handle_t *queue, net_buff_desc_t *buffer);

/* Used to signify that a packet has come in for the broadcast address and does not match with
 * any particular client. */
#define BROADCAST_ID (-2)

extern net_virt_rx_config_t config;

/* In order to handle broadcast packets where the same buffer is given to multiple clients
  * we keep track of a reference count of each buffer and only hand it back to the driver once
  * all clients have returned the buffer. */
uint32_t *buffer_refs;

typedef struct state {
    net_queue_handle_t rx_queue_drv;
    net_queue_handle_t rx_queue_clients[SDDF_NET_MAX_CLIENTS];
} state_t;

state_t state;

/* Boolean to indicate whether a packet has been enqueued into the driver's free queue during notification handling */
static bool notify_drv;

int virt_rx_ccomp_get_mac_add_match(struct ethernet_header *buffer);
void virt_rx_ccomp_rx_provide(void);
void virt_rx_ccomp_rx_return(void);

#endif // VIRT_RX_CCOMP_H