#ifndef LANGIMG_STRUTIL_H
#define LANGIMG_STRUTIL_H

#include "common.h"

#ifdef __cplusplus
extern "C" {
#endif

/* Compares up to $a2 characters of a and b through the 256-byte table at
 * D_800BC93C (probably case folding); 0 when equal. Callers such as
 * CName::Equals pass only a and b, so $a2 is whatever it held: the
 * original prototype had two parameters, and so does this one. */
int func_800A6100(const char *a, const char *b);

#ifdef __cplusplus
}
#endif

#endif
