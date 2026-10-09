#include "common.h"
#include "cdaudio.h"
#include "sound.h"

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_01b", func_80014CB8);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_01b", func_800150E4);

int func_800151F0(void) {
    return D_800B8778;
}

/* The store stays out of the return's delay slot: the variable is
 * volatile. */
void func_80015200(int x) {
    D_800B8778 = x;
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_01b", func_80015210);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_01b", func_800152E4);

/* Sets the CD volume. This file declared func_80011820 with short
 * parameters (the caller extends them to 16 bits), the sound engine with
 * s8 ones. */
void func_800153FC(int vol) {
    ((void (*)(int, short, short))func_80011820)(0, vol, vol);
    D_800B8780 = vol;
}

void func_80015438(int n) {
    if (n > 0) {
        D_800B877C = n;
    } else {
        D_800B877C = 1;
    }
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_01b", func_80015458);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_01b", func_800154D4);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_01b", func_800155CC);

/* Reads the disc's table of contents. */
void func_80015650(void) {
    D_800CC690 = CdGetToc(D_800CC4F8);
}

void func_80015678(int x) {
    D_800CC4E0 = x;
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_01b", func_80015684);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_01b", func_800156DC);

/* CD audio in mono: each channel to both speakers. */
void func_80015730(void) {
    CdlATV v;

    v.val0 = 0x80;
    v.val1 = 0x80;
    v.val2 = 0x80;
    v.val3 = 0x80;
    CdMix(&v);
}

/* CD audio in stereo: each channel to its own speaker. */
void func_80015764(void) {
    CdlATV v;

    v.val0 = 0x80;
    v.val1 = 0;
    v.val2 = 0x80;
    v.val3 = 0;
    CdMix(&v);
}
