#pragma once

#include <sel4/sel4.h>
#include <stdint.h>

#define PD_NAME_LENGTH 64

extern char *pd_name;

extern void sddf_irq_ack(unsigned int id);
extern void sddf_notify(unsigned int id);
extern void sddf_deferred_notify(unsigned int id);
extern void sddf_deferred_irq_ack(unsigned int id);
extern seL4_MessageInfo_t sddf_ppcall(unsigned int id, seL4_MessageInfo_t msginfo);
extern uint64_t sddf_get_mr(unsigned int n);
extern void sddf_set_mr(unsigned int n, uint64_t val);
extern unsigned int sddf_deferred_notify_curr();
