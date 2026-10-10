#include "common.h"
#include "psyq.h"

/* The memory cards (docs/matching/issue-73-langimg-chunk72.md) */

extern "C" {
// A card's state
struct Card72 {
    u8 m_00[0x1630];
    void *m_1630[11];
    u8 m_165C[0x38];
    int m_1694; // the file to start at
    u8 m_1698[0x30];
    int m_16C8;
    u8 m_16CC[0x20];
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
extern volatile int D_800D6094[]; // not one of the small globals
extern volatile int D_800D60C0[]; // not one of the small globals
extern Dir72 *D_800C9EE8[];       // not one of the small globals
extern int D_800D4914[];          // not one of the small globals
extern Pos72 D_800D48D8[];
extern Cards72 D_800D4898;
void func_80015210(void);
void func_800152E4(void);
void func_80014CB8(void);
int _card_chan(void);
extern int D_800D6070[];
extern volatile int D_800D60A0[]; // the events counted, by kind
extern volatile int D_800D60C8[];
extern int D_800C9D60[];
extern int *D_800C9EEC;
extern char D_800BC88C[];
extern char D_800D4958[];
void *func_800A1EFC(int a, int b, int c, int d);
int func_800A2148(int a, void *x, int c, int d);
int TestEvent(int ev);
extern int D_800D6074[], D_800D6078[], D_800D607C[], D_800D6080[], D_800D6084[], D_800D6088[];
extern int D_800D60B0[], D_800D60B8[]; // the card's events
int CdInit(void);
void func_800A7660(int a);
void func_80015684(int a);
int func_800963E8(void);
int func_80015650(void);
struct Ent66 {
    int m_00, m_04, m_08;
};
Ent66 *func_80096240(int id);
extern int *D_800C9F30;
extern char *D_800CC030[];
extern char *D_800CBE84[]; // not one of this file's small globals

void func_800A29E0(void);
void func_800A2A40(void);
int func_800A1C10(int a);
void func_800A1B54(void);
void func_800A2304(u8 *d, u32 c, int n);
CdlFILE *func_800A1C74(CdlFILE *fp, char *name);

int func_800A1110(Card72 *c);
void func_800A13C0(Card72 *c);
int func_800A2234(int a, int b, int c, int d);
void func_800A2490(void);
void func_800A24CC(void);
void func_800A2510(void);
void func_800A2554(void);
void func_800A2598(void);
void func_800A25D4(void);
void func_800A2618(void);
void func_800A265C(void);
void func_800A26A0(void);

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

#ifdef NON_MATCHING
/* The clamp's value and the count's pointer in other registers (14 off) */
/* The file to start at: the one asked for, within the directory. */
int func_800A1110(Card72 *c) {
    c->m_1694 = 0;
    if (D_800C9D60[0] != -1) {
        int v = 0;

        if (D_800C9D60[0] >= 0) {
            int m = *D_800C9EEC - 1;

            v = m;
            if (!(m < D_800C9D60[0])) {
                v = D_800C9D60[0];
            }
        }
        c->m_1694 = v;
    }
    c->m_16C8 = 0;
    return 1;
}
#else
INCLUDE_ASM("asm/langimg/nonmatchings/chunk_72", func_800A1110);
#endif

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

void func_800A13C0(Card72 *c) {
    c->m_1630[0] = D_800BC88C;
    c->m_1630[1] = (u8 *)c + 0xCC;
    c->m_1630[2] = (u8 *)c + 0xC4;
    c->m_1630[3] = D_800BC88C;
    c->m_1630[4] = (u8 *)c + 0xD0;
    c->m_1630[5] = (u8 *)c + 0xB8;
    c->m_1630[6] = (u8 *)c + 0xBC;
    c->m_1630[7] = (u8 *)c + 0xB0;
    c->m_1630[8] = (u8 *)c + 0xC8;
    c->m_1630[9] = D_800D4958;
    c->m_1630[10] = D_800D4958 - 12;
}

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

#ifdef NON_MATCHING
/* GCC hoists the data pointer's lui out of the loop, which the original reloads, and allocates the counters the other way (32 off) */
/* The 163 sounds' data found by their ids. */
void func_800A1B54(void) {
    int i;
    int *ids = D_800C9F30;
    char **out = D_800CC030;

    for (i = 0; i < 163; i++) {
        Ent66 *e = func_80096240(*ids);
        char *p = 0;

        if (e) {
            p = D_800CBE84[0] + e->m_00;
        }
        *out++ = p;
        ids++;
    }
}
#else
INCLUDE_ASM("asm/langimg/nonmatchings/chunk_72", func_800A1B54);
#endif

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

int func_800A1C10(int a) {
    CdInit();
    func_800A7660(0);
    func_80015684(a);
    if (!func_800963E8()) {
        return -1;
    }
    if (!func_80015650()) {
        return -1;
    }
    return 1;
}

/* A file looked for on the CD, twice. */
CdlFILE *func_800A1C74(CdlFILE *fp, char *name) {
    int tries;
    CdlFILE *r;

    func_800A1BD0();
    VSync(0);
    tries = 2;
    do {
        r = CdSearchFile(fp, name);
    } while (!r && --tries);
    func_800A1BE0();
    VSync(0);
    return r;
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_72", func_800A1CF8);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_72", func_800A1EFC);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_72", func_800A207C);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_72", func_800A2148);

#ifdef NON_MATCHING
/* The first and last arguments in each other's saved registers (6 off) */
int func_800A2234(int a, int b, int c, int d) {
    void *x = func_800A1EFC(a, b, c, d);

    if (x) {
        c = func_800A2148(a, x, c, d);
    }
    return c;
}
#else
INCLUDE_ASM("asm/langimg/nonmatchings/chunk_72", func_800A2234);
#endif

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

/* n bytes of d set to c, by words where it can. */
void func_800A2304(u8 *d, u32 c, int n) {
    int k;

    if (n >= 7) {
        c |= c << 8;
        c |= c << 16;
        k = 4 - ((u32)d & 3);
        n -= k;
        while (k) {
            *d++ = c;
            k--;
        }
        k = n >> 2;
        n &= 3;
        while (k) {
            *(u32 *)d = c;
            d += 4;
            k--;
        }
    }
    while (n) {
        *d++ = c;
        n--;
    }
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_72", func_800A2380);

void func_800A2490(void) {
    int ch = _card_chan();

    D_800D6094[0] = 0;
    D_800D6070[0] = ch;
    D_800D60A0[0]++;
}

void func_800A24CC(void) {
    int ch = _card_chan();

    D_800D6094[0] = 1;
    D_800D6070[0] = ch;
    D_800D60A0[1]++;
}

void func_800A2510(void) {
    int ch = _card_chan();

    D_800D6094[0] = 2;
    D_800D6070[0] = ch;
    D_800D60A0[2]++;
}

void func_800A2554(void) {
    int ch = _card_chan();

    D_800D6094[0] = 3;
    D_800D6070[0] = ch;
    D_800D60A0[3]++;
}

void func_800A2598(void) {
    int ch = _card_chan();

    D_800D60C0[0] = 0;
    D_800D6070[0] = ch;
    D_800D60C8[0]++;
}

void func_800A25D4(void) {
    int ch = _card_chan();

    D_800D60C0[0] = 1;
    D_800D6070[0] = ch;
    D_800D60C8[1]++;
}

void func_800A2618(void) {
    int ch = _card_chan();

    D_800D60C0[0] = 2;
    D_800D6070[0] = ch;
    D_800D60C8[2]++;
}

void func_800A265C(void) {
    int ch = _card_chan();

    D_800D60C0[0] = 3;
    D_800D6070[0] = ch;
    D_800D60C8[3]++;
}

/* The events' counts cleared. */
void func_800A26A0(void) {
    int i;

    for (i = 0; i < 4; i++) {
        D_800D60A0[i] = D_800D60C8[i] = 0;
    }
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_72", func_800A26DC);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_72", func_800A28B8);

void func_800A29E0(void) {
    TestEvent(D_800D6080[0]);
    TestEvent(D_800D60B8[0]);
    TestEvent(D_800D6078[0]);
    TestEvent(D_800D6088[0]);
    D_800D6094[0] = -1;
}

void func_800A2A40(void) {
    TestEvent(D_800D607C[0]);
    TestEvent(D_800D60B0[0]);
    TestEvent(D_800D6074[0]);
    TestEvent(D_800D6084[0]);
    D_800D60C0[0] = -1;
}

int func_800A2AA0(void) {
    return D_800D6094[0];
}

int func_800A2AB0(void) {
    return D_800D60C0[0];
}

INCLUDE_RODATA("asm/langimg/nonmatchings/chunk_72", D_800B7B60);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_72", func_800A2AC0);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_72", func_800A2DA8);
