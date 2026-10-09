#ifndef STDARG_H
#define STDARG_H

/* PsyQ's stdarg, by the address of the last named argument (the code
 * keeps that argument in its stack slot, func_80016144). */
typedef char *va_list;

#define __va_rounded_size(TYPE) (((sizeof(TYPE) + sizeof(int) - 1) / sizeof(int)) * sizeof(int))
#define va_start(AP, LASTARG) ((AP) = (va_list) & (LASTARG) + __va_rounded_size(LASTARG))
#define va_end(AP) ((void)0)
#define va_arg(AP, TYPE) \
    ((AP) += __va_rounded_size(TYPE), *(TYPE *)((AP) - __va_rounded_size(TYPE)))

#endif
