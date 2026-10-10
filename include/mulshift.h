#ifndef MULSHIFT_H
#define MULSHIFT_H

// (a * b) >> s on the 64-bit product, as the game's asm macro does it:
// the high word shifted left by 32 - s, or'd with the low word shifted
// right by s (and `sub`, not `subu`). Volatile, as the original's: GCC
// then loads a constant shift again for each use (func_800236F0).
#define MULSHIFT(a, b, s) \
    ({ \
        int r_, t_; \
        __asm__ volatile("mult %2, %3\n\t" \
                         "ori %1, $0, 32\n\t" \
                         "sub %1, %1, %4\n\t" \
                         "mfhi %0\n\t" \
                         "sllv %0, %0, %1\n\t" \
                         "mflo %1\n\t" \
                         "srlv %1, %1, %4\n\t" \
                         "or %0, %0, %1" \
                         : "=&r"(r_), "=&r"(t_) \
                         : "r"(a), "r"(b), "r"(s)); \
        r_; \
    })

#endif
