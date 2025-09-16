#include <microkit.h>
#include <os/sddf.h>
#include <sddf/util/fence.h>
#include <sddf/util/util.h>
#include <sddf/util/cache.h>
#include <sddf/util/printf.h>
#include <sddf/util/string.h>

void ffiTHREAD_MEMORY_RELEASE(unsigned char *c, long clen, unsigned char *a, long alen) {
    THREAD_MEMORY_RELEASE();
}

void ffiTHREAD_MEMORY_ACQUIRE(unsigned char *c, long clen, unsigned char *a, long alen) {
    THREAD_MEMORY_ACQUIRE();
}

void ffiassert(unsigned char *c, long clen, unsigned char *a, long alen) {
    // clen is the condition
    sddf_dprintf("ASSERT: c=%p clen=%ld a=%p alen=%ld\n", c, clen, a, alen);
    assert(clen);
}

/* `clen` is the notification channel */
void ffimicrokit_notify(unsigned char *c, long clen, unsigned char *a, long alen) {
    microkit_notify(clen);
}

void ffimicrokit_deferred_irq_ack(unsigned char *c, long clen, unsigned char *a, long alen) {
    microkit_deferred_irq_ack(clen);
}

void ffimicrokit_irq_ack(unsigned char *c, long clen, unsigned char *a, long alen) {
    sddf_irq_ack(clen);
}

void ffisddf_irq_ack(unsigned char *c, long clen, unsigned char *a, long alen) {
    sddf_irq_ack(clen);
}

void ffisddf_notify(unsigned char *c, long clen, unsigned char *a, long alen) {
    sddf_notify(clen);
}

void ffisddf_notify0(unsigned char *c, long clen, unsigned char *a, long alen) {
    sddf_notify(clen);
}

void ffisddf_notify1(unsigned char *c, long clen, unsigned char *a, long alen) {
    sddf_notify(clen);
}

void ffisddf_deferred_notify(unsigned char *c, long clen, unsigned char *a, long alen) {
    sddf_deferred_notify(clen);
}

void fficache_clean(unsigned char *c, long clen, unsigned char *a, long alen) {
    cache_clean((unsigned long) c, (unsigned long) a);
}

void fficache_clean_and_invalidate(unsigned char *c, long clen, unsigned char *a, long alen) {
    cache_clean_and_invalidate((unsigned long) c, (unsigned long) a);
}

void ffild16(unsigned char *c, long clen, unsigned char *a, long alen) {
    uint16_t x = *((uint16_t *) c);
    ((uint16_t *) a)[0] = x;
}

void ffist16(unsigned char *c, long clen, unsigned char *a, long alen) {
    uint16_t x = (uint16_t) clen;
    ((uint16_t *) c)[0] = x;
}

void ffimemcpy(unsigned char *c, long clen, unsigned char *a, long alen) {
    /* c = dest, clen = src, a = size */
    sddf_memcpy((void *)c, (void *)clen, (size_t)a);
}

void ffidebug_print(unsigned char *c, long clen, unsigned char *a, long alen) {
    /* clen = debug value to print, alen = context/location id */
    sddf_dprintf("[DEBUG] Location %ld: Value = %ld (0x%lx)\n", alen, clen, clen);
}

void ffiseL4_SetMR(unsigned char *c, long clen, unsigned char *a, long alen) {
    /* clen = register index, alen = value */
    seL4_SetMR(clen, alen);
}
