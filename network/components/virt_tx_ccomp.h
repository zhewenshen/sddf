#ifndef VIRT_TX_CCOMP_H
#define VIRT_TX_CCOMP_H

#include <sddf/network/queue.h>
#include <sddf/network/config.h>

extern net_virt_tx_config_t config;

typedef unsigned int microkit_channel;

extern void _ccomp_microkit_notify(microkit_channel ch);
extern void _ccomp_microkit_deferred_notify(microkit_channel ch);
extern void _ccomp_assert(bool condition);
extern void _ccomp_cache_clean_and_invalidate(unsigned long start, unsigned long end);
extern int _ccomp_net_enqueue_active(net_queue_handle_t *queue, net_buff_desc_t *buffer);
extern void _ccomp_tx_provide_sddf_dprintf(unsigned long offset);
extern int _ccomp_net_enqueue_free(net_queue_handle_t *queue, net_buff_desc_t *buffer);
extern void _ccomp_cache_clean(unsigned long start, unsigned long end);
typedef struct state {
    net_queue_handle_t tx_queue_drv;
    net_queue_handle_t tx_queue_clients[SDDF_NET_MAX_CLIENTS];
} state_t;

state_t state;

int virt_tx_ccomp_extract_offset(uintptr_t *phys);
void virt_tx_ccomp_tx_provide(void);
void virt_tx_ccomp_tx_return(void);

#endif // VIRT_RX_CCOMP_H