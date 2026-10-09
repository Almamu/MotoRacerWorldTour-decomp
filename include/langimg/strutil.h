#ifndef LANGIMG_STRUTIL_H
#define LANGIMG_STRUTIL_H

#include "common.h"

#ifdef __cplusplus
extern "C" {
#endif

/* Compares up to n characters of a and b through the 256-byte table at
 * D_800BC93C (probably case folding); 0 when equal. */
int func_800A6100(const char *a, const char *b, int n);

#ifdef __cplusplus
}
#endif

#endif
