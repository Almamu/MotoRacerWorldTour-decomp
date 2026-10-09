#include "common.h"
#include "sound.h"

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

/* A field of a note's tone in the VAB: tone note[2] of program note[0]
 * (the tones follow the header and the 128 programs, 16 to a program). */
u16 func_80011898(u8 *note) {
    VagAtr *t = (VagAtr *)(D_800C4734 + (note[0] * 0x200 + 0x820));

    t += note[2];
    return t->unkC;
}

#ifdef NON_MATCHING
/* Equivalent; the original keeps i and walks the fields with three
 * pointers, this build with one */
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

/* Sets the SPU up: reverb off, full master and CD volume, the volume curve
 * (full up to nearDist, none from farDist) and the voices to leave alone. */
int func_80011C5C(int nearDist, int farDist, int reserved) {
    SpuInit();
    SpuSetReverb(0);
    SpuClearReverbWorkArea(7);
    SpuSetCommonMasterVolume(0x3FFF, 0x3FFF);
    SpuSetCommonCDMix(1);
    SpuSetCommonCDVolume(0x7FFF, 0x7FFF);
    D_800C473D = 0;
    D_800C473E = 0;
    D_800C4740 = 0;
    D_800C9F50 = reserved;
    D_800C46FC = 1;
    func_800121C0(1);
    D_800C470C = nearDist;
    D_800C4710 = farDist;
    D_800C4714 = nearDist;
    D_800C4718 = farDist;
    D_800C471C = 0;
    D_800C4720 = 0x40;
    func_80011D10();
    return 1;
}

#ifdef NON_MATCHING
/* Equivalent; the slot loop, as in func_80012F7C (one pointer per field, each loaded
 * with its own la, and ~1 in a register) */
/* Frees every sound slot and voice. */
void func_80011D10(void) {
    int i;

    for (i = 0; i < 30; i++) {
        D_800CA0F8[i].unk6 = 0;
        D_800CA0F8[i].unk4 = 0;
        D_800CA0F8[i].unk0 = -1;
        D_800CA0F8[i].unk6 &= ~1;
    }
    func_800118C4(D_800C9F50);
    D_800C9F48 = 0;
    memset(D_800C9F58, 0, 24);
}
#else
INCLUDE_ASM("asm/langimg/nonmatchings/chunk_00", func_80011D10);
#endif

/* Turns the reverb on: type, and depth from -128 to 127. */
void func_80011DA8(int type, int depth) {
    SpuClearReverbWorkArea(type);
    SpuSetReverbModeType(type);
    SpuSetReverbModeDepth(depth << 8, depth << 8);
    SpuSetReverb(1);
    D_800C473D = 0;
    D_800C473E = 0;
    D_800C4740 = 0;
}

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

int func_80011F84(void) {
    func_80012F7C();
    D_800C46FC &= ~6;
    if (D_800C46F0) {
        free(D_800C46F0);
        D_800C46F0 = 0;
    }
    return 1;
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_00", func_80011FCC);

/* The value of the directory entry called name, or -1. */
int func_80012080(const char *name) {
    u32 i;

    for (i = 0; i < D_800C472C->count; i++) {
        if (func_80011FCC(name, &D_800C472C->entries[i]) == 0) {
            return D_800C472C->entries[i].value;
        }
    }
    return -1;
}

/* Sets byte 1 of the record of every bank entry whose 4-letter name is
 * name's (upper-cased). */
void func_80012120(const char *name, int value) {
    char key[5];
    DirName *names = D_800C472C->names;
    int n = D_800C472C->nNames;
    DirRecord *rec = (DirRecord *)(D_800C472C->records + 0x20);
    int i;
    int k;

    key[4] = 0;
    strncpy(key, name, 4);
    func_800A638C(key);
    k = *(int *)key;
    for (i = 0; i < n; i++) {
        if (k == names->name) {
            rec->unk1 = value;
        }
        names++;
        rec++;
    }
}

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

#ifdef NON_MATCHING
/* Equivalent; GCC reads the table as D_800C4850(v), the original forms its
 * address (la) and adds v. With GCC's default split addresses it matches,
 * but those put a lui in func_800121C0's branch delay slot. */
/* The volume at a distance: full up to D_800C470C, none from D_800C4710. */
u8 func_800128E8(int dist) {
    int range = D_800C4710 - D_800C470C;
    int v = 0;

    if (range) {
        if (dist > D_800C470C) {
            v = (dist - D_800C470C) * 127 / range;
        }
        if (v < 0) {
            v = 0;
        }
        if (v >= 128) {
            v = 127;
        }
    }
    v = 127 - v;
    return D_800C4850[v];
}
#else
INCLUDE_ASM("asm/langimg/nonmatchings/chunk_00", func_800128E8);
#endif

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_00", func_8001295C);

/* Plays with a volume and a pan (0 left, 127 right). */
void func_80012A88(int a, int vol, int pan, int c, int d) {
    int v = vol * D_800C4708;

    func_80012504(d, a, c, v * D_800C46F4[127 - pan], v * D_800C46F4[pan]);
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_00", func_80012AF0);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_00", func_80012C18);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_00", func_80012D38);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_00", func_80012E58);

int func_80012F40(u32 handle) {
    int r = 0;
    SoundSlot *p = func_80013348(handle);

    if (p) {
        func_80012E58(p);
        r = 1;
    }
    return r;
}

#ifdef NON_MATCHING
/* Equivalent; the original keeps ~1 in a register and loads each field's
 * address on its own. With ClearFlags (decomp-permuter's idea) and
 * -fno-rerun-cse-after-loop it matches, but that flag breaks
 * func_80012080, so the library isn't built with it. */
static inline void ClearFlags(u16 *flags, int bits) {
    *flags &= ~bits;
}

/* Frees every sound slot. */
int func_80012F7C(void) {
    int i;

    func_80011960();
    for (i = 0; i < 30; i++) {
        D_800CA0F8[i].unk4 = 0;
        D_800CA0F8[i].unk0 = -1;
        ClearFlags(&D_800CA0F8[i].unk6, 1);
    }
    return 1;
}
#else
INCLUDE_ASM("asm/langimg/nonmatchings/chunk_00", func_80012F7C);
#endif

/* The longest of a chain of notes: each record gives the next one's
 * distance in records, 0xFF ends it. */
u32 func_80012FEC(int first) {
    u8 *p = D_800C4744;
    u32 longest = 0;
    u32 len;
    int next = first;

    do {
        p += next * 44;
        len = (u32)(*(u16 *)(p + 8) * 28000) / func_80011898(p);
        if (longest < len) {
            longest = len;
        }
        next = p[3];
    } while (next != 0xFF);
    return longest;
}

void func_80013098(u32 handle) {
    SoundSlot *p = func_80013348(handle);

    if (p) {
        D_800C4724 = p->unkA;
    }
}

int func_800130CC(u32 handle) {
    int r = 0;
    SoundSlot *p = func_80013348(handle);

    if (p) {
        r = p->unk4 != 0;
    }
    return r;
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_00", func_80013108);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_00", func_800131D0);

/* The slot of a sound handle, or 0 if the sound is gone. */
SoundSlot *func_80013348(u32 handle) {
    SoundSlot *r = 0;
    SoundSlot *slot;

    if (handle != (u32)-1) {
        slot = &D_800CA0F8[handle & 0x1F];
        if (slot->unk2 == handle >> 16 && slot->unk0 != -1) {
            r = slot;
        }
    }
    return r;
}

#ifdef NON_MATCHING
/* Equivalent; the order of the slot's stores and the serial number's
 * load */
/* Starts sound id in a free slot; returns its handle, or -1. */
int func_800133A0(int id) {
    int h = -1;
    int serial;
    SoundSlot *slot;

    if (id != -1) {
        h = func_80013108(-1);
        if (h != -1) {
            slot = &D_800CA0F8[h];
            h = (h & 0x1F) | ((id & 0x3FF) << 5);
            serial = D_800C9F4C;
            slot->unk0 = id;
            slot->unk4 = 0;
            h |= serial << 16;
            slot->unk2 = serial;
            D_800C9F4C = (serial + 1) & 0xFFFF;
            slot->unk6 |= 1;
        }
    }
    return h;
}
#else
INCLUDE_ASM("asm/langimg/nonmatchings/chunk_00", func_800133A0);
#endif

void func_80013440(void) {
}

void func_80013448(void) {
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_00", func_80013450);

void func_80013554(void) {
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_00", func_8001355C);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_00", func_8001363C);
