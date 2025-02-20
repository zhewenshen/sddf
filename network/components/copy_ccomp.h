#ifndef COPY_CCOMP_H
#define COPY_CCOMP_H

#include <stdbool.h>
#include <sddf/network/queue.h>
#include <sddf/network/config.h>
#include <sddf/util/string.h>

// microkit stuff 
typedef unsigned int microkit_channel;

extern void _ccomp_microkit_notify(microkit_channel ch);
extern void _ccomp_microkit_deferred_notify(microkit_channel ch);
extern void _ccomp_assert(bool condition);
extern int _ccomp_net_enqueue_active(net_queue_handle_t *queue, net_buff_desc_t *buffer);
extern int _ccomp_net_enqueue_free(net_queue_handle_t *queue, net_buff_desc_t *buffer);
extern void _ccomp_rx_return_sddf_dprintf(unsigned long offset);

extern net_copy_config_t config;

net_queue_handle_t rx_queue_virt;
net_queue_handle_t rx_queue_cli;

void copy_ccomp_rx_return(void);

#endif // COPY_CCOMP_H