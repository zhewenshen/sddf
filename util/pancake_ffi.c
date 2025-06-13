#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <stdint.h>
#include <microkit.h>
#include <os/sddf.h>
#include <sddf/util/fence.h>
#include <sddf/util/util.h>
#include <sddf/util/cache.h>

void print_address(void* addr) {
    char buf[16];
    int i;
    unsigned long int_addr = (unsigned long)addr;

    // Convert the address to a string representation
    for (i = 0; i < 16; i++) {
        unsigned char nibble = (int_addr >> (4 * (15 - i))) & 0xF;
        if (nibble < 10) {
            buf[i] = '0' + nibble;
        } else {
            buf[i] = 'A' + (nibble - 10);
        }
    }

    // Print the "0x" prefix
    microkit_dbg_putc('0');
    microkit_dbg_putc('x');

    // Print the address string
    for (i = 0; i < 16; i++) {
        microkit_dbg_putc(buf[i]);
    }
    microkit_dbg_putc('\n');
}

void print_int(int num) {
    if (num == 0) {
        microkit_dbg_putc('0');
        microkit_dbg_putc('\n');
        return;
    }

    char buf[10];
    int i = 0;

    while (num != 0) {
        buf[i++] = (num % 10) + '0';
        num /= 10;
    }

    while (i > 0) {
        microkit_dbg_putc(buf[--i]);
    }
    microkit_dbg_putc('\n');
}

void ffiprint_int(unsigned char *c, long clen, unsigned char *a, long alen) {
    microkit_dbg_puts("\nFFI print int:\n");
    print_int(clen);
    print_int(alen);
    microkit_dbg_putc('\n');
}

void ffiprint_char(unsigned char *c, long clen, unsigned char *a, long alen) {
    microkit_dbg_puts("FFI print char:\n");
    microkit_dbg_putc(((char) clen) + 48);
    microkit_dbg_putc(',');
    microkit_dbg_putc(((char) alen) + 48);
    microkit_dbg_putc('\n');
}

void ffiprint_string(unsigned char *c, long clen, unsigned char *a, long alen) {
    for (int i = 0; i < clen; i++) {
        microkit_dbg_putc(c[i]);
    }
    microkit_dbg_putc('\n');
}

void ffiprint_address(unsigned char *c, long clen, unsigned char *a, long alen) {
    microkit_dbg_puts("FFI print address:\n");
    microkit_dbg_putc(((char) clen) + 48);
    microkit_dbg_putc(',');
    print_address((void *) c);
    microkit_dbg_putc(((char) alen) + 48);
    microkit_dbg_putc(',');
    print_address((void *) a);
    microkit_dbg_putc('\n');
}

void ffiTHREAD_MEMORY_RELEASE(unsigned char *c, long clen, unsigned char *a, long alen) {
    THREAD_MEMORY_RELEASE();
}

void ffiTHREAD_MEMORY_ACQUIRE(unsigned char *c, long clen, unsigned char *a, long alen) {
    THREAD_MEMORY_ACQUIRE();
}

void ffiassert(unsigned char *c, long clen, unsigned char *a, long alen) {
    // clen is the condition
    assert(clen);
}

/* `clen` is the notification channel */
void ffimicrokit_notify(unsigned char *c, long clen, unsigned char *a, long alen) {
    microkit_notify(clen);
}

void ffimicrokit_deferred_irq_ack(unsigned char *c, long clen, unsigned char *a, long alen) {
    microkit_deferred_irq_ack(clen);
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
