#include "common.h"

/* The memory cards (docs/matching/issue-73-langimg-chunk72.md) */

extern "C" {
// A card's state
struct Card72 {
    u8 m_00[0x16EC];
    int m_16EC;
    u8 m_16F0[0x10];
    int m_1700[5];
    int m_1714[5];
    int m_1728[2];
};

// A file's entry (24 bytes)
struct File72 {
    u8 m_00[0x10];
    int m_10;
    u8 m_14[4];
};

// A directory: its files
struct Dir72 {
    File72 *m_files;
};

// A position in a directory (20 bytes)
struct Pos72 {
    int m_file;
    int m_04;
    u8 m_08[0xC];
};

// The positions (at 0x40) and the current one
struct Cards72 {
    u8 m_00[0x40];
    Pos72 m_pos[3];
    int m_cur; // 0x7C
};

// Something with a count at 6
struct Item72 {
    u8 m_00[6];
    u16 m_06;
};

extern int D_800B887C[]; // not one of the small globals
extern int D_800C9F34;
extern int D_800D6094[];    // not one of the small globals
extern int D_800D60C0[];    // not one of the small globals
extern Dir72 *D_800C9EE8[]; // not one of the small globals
extern int D_800D4914[];    // not one of the small globals
extern Pos72 D_800D48D8[];
extern Cards72 D_800D4898;
void func_80015210(void);
void func_800152E4(void);
void func_80014CB8(void);

void func_800A1228(Card72 *c);
void func_800A1248(Card72 *c);
void func_800A1268(Card72 *c);
int func_800A1284(int *a, int *b);
void func_800A12A0(Card72 *c);
int func_800A138C(Card72 *c, int x);
Dir72 *func_800A14B8(int i);
Dir72 *func_800A14CC(void);
Pos72 *func_800A14E8(int i);
Pos72 *func_800A1504(void);
int func_800A1528(Dir72 *d, Pos72 *p);
int func_800A1558(void);
int func_800A158C(int *p);
void func_800A164C(int *p);
void func_800A1B4C(void);
void func_800A1BD0(void);
void func_800A1BE0(void);
int func_800A1BEC(Item72 *p);
void func_800A2290(void);
void func_800A22B0(void);
int func_800A22D0(void);
void func_800A22D8(void);
void func_800A22F8(int a);
int func_800A2AA0(void);
int func_800A2AB0(void);
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_72", func_800A1110);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_72", func_800A1170);

void func_800A1228(Card72 *c) {
    int i;

    for (i = 4; i >= 0; i--) {
        c->m_1714[i] = 0;
    }
}

void func_800A1248(Card72 *c) {
    int i;

    for (i = 1; i >= 0; i--) {
        c->m_1728[i] = 0;
    }
}

void func_800A1268(Card72 *c) {
    int i;

    for (i = 4; i >= 0; i--) {
        c->m_16EC = -1;
    }
}

/* A sort's comparison, ignoring the low 4 bits. */
int func_800A1284(int *a, int *b) {
    int x = *a & ~15;
    int y = *b & ~15;

    return y - x;
}

void func_800A12A0(Card72 *c) {
    int i;

    for (i = 4; i >= 0; i--) {
        c->m_1700[i] = -1;
    }
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_72", func_800A12C4);

#ifdef NON_MATCHING
/* What fills the match's delay slot: the original advances its pointer there (3 off) */
int func_800A138C(Card72 *c, int x) {
    int i = 4;

    do {
        if (c->m_1700[i] == x) {
            return i;
        }
    } while (--i >= 0);
    return -1;
}
#else
INCLUDE_ASM("asm/langimg/nonmatchings/chunk_72", func_800A138C);
#endif

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_72", func_800A13C0);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_72", func_800A1420);

Dir72 *func_800A14B8(int i) {
    return &D_800C9EE8[0][i];
}

Dir72 *func_800A14CC(void) {
    return &D_800C9EE8[0][D_800D4914[0]];
}

Pos72 *func_800A14E8(int i) {
    return &D_800D48D8[i];
}

Pos72 *func_800A1504(void) {
    return &D_800D4898.m_pos[D_800D4898.m_cur];
}

/* At the directory's last file. */
int func_800A1528(Dir72 *d, Pos72 *p) {
    return p->m_04 >= d->m_files[p->m_file].m_10 - 1;
}

int func_800A1558(void) {
    Pos72 *p = func_800A1504();

    return func_800A1528(func_800A14CC(), p);
}

int func_800A158C(int *p) {
    return *p >= 2;
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_72", func_800A15A0);

void func_800A164C(int *p) {
    *p = 0;
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_72", func_800A1654);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_72", func_800A17EC);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_72", func_800A195C);

void func_800A1B4C(void) {
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_72", func_800A1B54);

void func_800A1BD0(void) {
    D_800B887C[0] = 1;
}

void func_800A1BE0(void) {
    D_800B887C[0] = 0;
}

/* An item's count, 0x30 when it has none. */
int func_800A1BEC(Item72 *p) {
    int r = 0;

    if (p) {
        r = p->m_06;
        if (!r) {
            r = 0x30;
        }
    }
    return r;
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_72", func_800A1C10);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_72", func_800A1C74);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_72", func_800A1CF8);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_72", func_800A1EFC);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_72", func_800A207C);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_72", func_800A2148);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_72", func_800A2234);

void func_800A2290(void) {
    func_80015210();
}

void func_800A22B0(void) {
    func_800152E4();
}

int func_800A22D0(void) {
    return 1;
}

void func_800A22D8(void) {
    func_80014CB8();
}

void func_800A22F8(int a) {
    D_800C9F34 = a;
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_72", func_800A2304);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_72", func_800A2380);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_72", func_800A2490);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_72", func_800A24CC);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_72", func_800A2510);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_72", func_800A2554);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_72", func_800A2598);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_72", func_800A25D4);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_72", func_800A2618);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_72", func_800A265C);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_72", func_800A26A0);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_72", func_800A26DC);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_72", func_800A28B8);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_72", func_800A29E0);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_72", func_800A2A40);

int func_800A2AA0(void) {
    return D_800D6094[0];
}

int func_800A2AB0(void) {
    return D_800D60C0[0];
}

INCLUDE_RODATA("asm/langimg/nonmatchings/chunk_72", D_800B7B60);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_72", func_800A2AC0);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_72", func_800A2DA8);
