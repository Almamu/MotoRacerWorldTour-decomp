#ifndef INCLUDE_ASM_H
#define INCLUDE_ASM_H

#if !defined(M2CTX) && !defined(PERMUTER)

/* The wrapper function is named after the line, not the function: GCC 2.95's
 * C++ names can contain dots (_._6Cobjet), which can't be pasted into an
 * identifier. maspsx finds the wrapper by its prefix. */
#define INCLUDE_ASM_CAT2(A, B) A##B
#define INCLUDE_ASM_CAT(A, B) INCLUDE_ASM_CAT2(A, B)
#ifndef INCLUDE_ASM
#define INCLUDE_ASM(FOLDER, NAME) \
    void INCLUDE_ASM_CAT(__maspsx_include_asm_hack_, __LINE__)() { \
        __asm__( \
            ".text # maspsx-keep \n" \
            "    .align 2 # maspsx-keep\n" \
            "    .set noat # maspsx-keep\n" \
            "    .set noreorder # maspsx-keep\n" \
            "    .include \"" FOLDER "/" #NAME ".s\" # maspsx-keep\n" \
            "    .set reorder # maspsx-keep\n" \
            "    .set at # maspsx-keep\n" \
        ); \
    }
#endif
#ifndef INCLUDE_RODATA
#define INCLUDE_RODATA(FOLDER, NAME) \
    __asm__( \
        ".section .rodata\n" \
        "    .include \"" FOLDER "/" #NAME ".s\"\n" \
        ".section .text" \
    )
#endif

#if INCLUDE_ASM_USE_MACRO_INC
__asm__(".include \"include/macro.inc\"\n");
#else
__asm__(".include \"include/labels.inc\"\n");
#endif

#else

#ifndef INCLUDE_ASM
#define INCLUDE_ASM(FOLDER, NAME)
#endif
#ifndef INCLUDE_RODATA
#define INCLUDE_RODATA(FOLDER, NAME)
#endif

#endif /* !defined(M2CTX) && !defined(PERMUTER) */

#endif /* INCLUDE_ASM_H */
