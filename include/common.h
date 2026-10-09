#ifndef COMMON_H
#define COMMON_H

#include "include_asm.h"

typedef unsigned char u8;
typedef signed char s8;
typedef unsigned short u16;
typedef signed short s16;
typedef unsigned int u32;
typedef signed int s32;

#ifdef __cplusplus
extern "C" {
#endif

typedef unsigned int size_t;

size_t strlen(const char *s);
void *memcpy(void *dst, const void *src, size_t n);
int strcmp(const char *a, const char *b);

#ifdef __cplusplus
}
#endif

#endif
