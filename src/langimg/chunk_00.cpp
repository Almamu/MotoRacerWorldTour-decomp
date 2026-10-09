#include "common.h"
#include "langimg/sound.h"

/* Sets the CD audio volume, each side from -128 to 127. */
void func_80011820(int unused, s8 left, s8 right) {
    SpuSetCommonCDVolume(left << 8, right << 8);
}

/* Waits, at most 300 frames, until func_80011BA4 says the voices are
 * quiet, then 30 more. */
void func_8001184C(void) {
    int unused[6]; /* the original's frame has 24 bytes of unused locals */
    int n = 300;

    /* Jumps into the loop: the first VSync comes before any test */
    goto body;
test:
    if (n == 0) {
        goto done;
    }
body:
    VSync(0);
    n--;
    if (func_80011BA4()) {
        goto test;
    }
done:
    VSync(30);
}

#ifdef NON_MATCHING
/* Equivalent; the original adds the tone's offset to the pointer into
 * the pointer's register, this build into the offset's (two instructions) */
/* A field of a note's tone in the VAB: tone note[2] of program note[0]
 * (the tones follow the header and the 128 programs). */
u16 func_80011898(u8 *note) {
    VagAtr *t = (VagAtr *)(D_800C4734 + (note[0] * 0x200 + 0x820));

    return t[note[2]].unkC;
}
#else
INCLUDE_ASM("asm/langimg/nonmatchings/chunk_00", func_80011898);
#endif

#ifdef NON_MATCHING
/* Equivalent; the original keeps i and walks the fields with three
 * pointers (unk0, unk4/unkA, unkC), this build with one pointer and a
 * count down */
/* Clears the voices' bookkeeping, reserved voices left out of use. */
void func_800118C4(int reserved) {
    int i;

    D_800C9F54 = 0;
    D_800C9F48 = 0;
    D_800C4748 = 24 - reserved;
    for (i = 0; i < 24; i++) {
        D_800C9F70[i].unk0 = 0;
        D_800C9F70[i].unk4 = 0;
        D_800C9F70[i].unkA = 0;
        D_800C9F70[i].unkC = 0;
    }
}
#else
INCLUDE_ASM("asm/langimg/nonmatchings/chunk_00", func_800118C4);
#endif

/* Marks a voice to be keyed off; -1 is no voice. */
int func_80011924(int voice) {
    int r = 0;

    if (voice != -1) {
        D_800C9F54 |= 1 << voice;
        D_800C4738 &= ~(1 << voice);
        r = 1;
    }
    return r;
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_00", func_80011960);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_00", func_80011A68);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_00", func_80011BA4);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_00", func_80011C5C);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_00", func_80011D10);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_00", func_80011DA8);

/* Shuts the SPU down. */
int func_80011E08(void) {
    func_80011F84();
    func_8001184C();
    SpuSetReverb(0);
    SpuQuit();
    D_800C46FC = 0;
    return 1;
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_00", func_80011E44);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_00", func_80011F84);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_00", func_80011FCC);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_00", func_80012080);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_00", func_80012120);

void func_800121C0(int mode) {
    D_800C46F8 = mode;
    if (mode == 0) {
        D_800C46F4 = D_800C4750;
    } else {
        D_800C46F4 = D_800C47D0;
    }
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_00", func_800121F4);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_00", func_80012504);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_00", func_8001280C);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_00", func_800128E8);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_00", func_8001295C);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_00", func_80012A88);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_00", func_80012AF0);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_00", func_80012C18);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_00", func_80012D38);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_00", func_80012E58);

int func_80012F40(void) {
    int r = 0;
    SoundUnk *p = func_80013348();

    if (p) {
        func_80012E58(p);
        r = 1;
    }
    return r;
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_00", func_80012F7C);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_00", func_80012FEC);

void func_80013098(void) {
    SoundUnk *p = func_80013348();

    if (p) {
        D_800C4724 = p->unkA;
    }
}

int func_800130CC(void) {
    int r = 0;
    SoundUnk *p = func_80013348();

    if (p) {
        r = p->unk4 != 0;
    }
    return r;
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_00", func_80013108);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_00", func_800131D0);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_00", func_80013348);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_00", func_800133A0);

void func_80013440(void) {
}

void func_80013448(void) {
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_00", func_80013450);

void func_80013554(void) {
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_00", func_8001355C);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_00", func_8001363C);
