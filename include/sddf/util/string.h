/*
 * Very simple string.h that punts everything to compiler builtins.
 * This is what usually happens for -O3, but we want it for everything.
 *
 * Copyright 2024 UNSW, Sydney
 * SPDX-License-Identifier: BSD-2-Clause
 */

#pragma once
#include <stddef.h>
#include <stdint.h>

#ifndef __has_builtin
#  define __has_builtin(x) 0
#endif

#define OPSIZ sizeof(size_t)
#define OP_T_THRES 16

static inline void *sddf_memset(void *s, int c, size_t n)
{
    unsigned char *p = s;
    while (n-- > 0) {
        *p++ = c;
    }
    return s;
}

static inline void *sddf_memcpy(void *dstpp, const void *srcpp, size_t len)
{
    unsigned long int dstp = (unsigned long int) dstpp;
    unsigned long int srcp = (unsigned long int) srcpp;
    void *ret = dstpp;

    if (len < OP_T_THRES)
    {
        unsigned char *dst = (unsigned char *)dstp;
        const unsigned char *src = (const unsigned char *)srcp;
        
        while (len--)
            *dst++ = *src++;
            
        return ret;
    }

    size_t align = (-dstp) & (OPSIZ - 1);
    if (align) 
    {
        unsigned char *dst = (unsigned char *)dstp;
        const unsigned char *src = (const unsigned char *)srcp;
        
        len -= align;
        while (align--)
            *dst++ = *src++;
            
        dstp = (unsigned long int) dst;
        srcp = (unsigned long int) src;
    }

    size_t *dst_w = (size_t *)dstp;
    const size_t *src_w = (const size_t *)srcp;
    
    while (len >= OPSIZ * 8) 
    {
        dst_w[0] = src_w[0];
        dst_w[1] = src_w[1];
        dst_w[2] = src_w[2];
        dst_w[3] = src_w[3];
        dst_w[4] = src_w[4];
        dst_w[5] = src_w[5];
        dst_w[6] = src_w[6];
        dst_w[7] = src_w[7];
        dst_w += 8;
        src_w += 8;
        len -= OPSIZ * 8;
    }
    
    while (len >= OPSIZ) 
    {
        *dst_w++ = *src_w++;
        len -= OPSIZ;
    }

    unsigned char *dst_b = (unsigned char *)dst_w;
    const unsigned char *src_b = (const unsigned char *)src_w;
    
    while (len--)
        *dst_b++ = *src_b++;

    return ret;
}

static inline char *sddf_strncpy(char *dest, const char *restrict src,
                                 size_t dsize)
{
    char *to = dest;
    while (dsize-- && (*to = *src++)) {
        to++;
    }
    while (dsize--) {
        *to++ = '\0';
    }
    return dest;
}

static inline int sddf_strcmp(const char *a, const char *b)
{
    while (*a != '\0' && *b != '\0' && *a == *b) {
        a++;
        b++;
    }
    return (int)(*a) - *b;
}

static inline int sddf_strncmp(const char *a, const char *b, size_t n)
{
    for (size_t i = 0; i < n; i++) {
        if (a[i] == '\0' || b[i] == '\0' || a[i] != b[i]) {
            return (int)a[i] - b[i];
        }
    }
    return 0;
}

static inline char *sddf_strchr(const char *s, int c)
{
    while (*s != '\0') {
        if (*s == c) {
            return (char *)s;
        }
        s++;
    }
    if (c == '\0') {
        return (char *)s;
    }
    return NULL;
}

static inline int sddf_memcmp(const void *a, const void *b, size_t n)
{
    const unsigned char *_a = a;
    const unsigned char *_b = b;
    for (size_t i = 0; i < n; i++) {
        if (_a[i] != _b[i]) {
            return (int)_a[i] - (int)_b[i];
        }
    }
    return 0;
}


static inline size_t sddf_strlen(const char *s)
{
    const char *_s = s;
    while (*_s != '\0') {
        _s++;
    }
    return (size_t)(_s - s);
}


static inline void *sddf_memmove(void *dest, const void *src, size_t n)
{
    if (dest == src) {
        return dest;
    }
    int copy_backwards = dest > src;
    for (size_t i = 0; i < n; i++) {
        if (copy_backwards) {
            ((uint8_t *)dest)[n - 1 - i] = ((uint8_t *)src)[n - 1 - i];
        } else {
            ((uint8_t *)dest)[i] = ((uint8_t *)src)[i];
        }
    }
    return dest;
}
