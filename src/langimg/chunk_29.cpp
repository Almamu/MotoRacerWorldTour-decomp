#include "common.h"

/* Classes on Cobjet and CName, their globals (docs/matching/issue-30-langimg-chunk29.md) */

extern "C" {
struct Tab29 {
    u8 m_00[0x3F8];
    int m_3F8[2];
    int m_400[2];
    int m_408[2];
    int m_410[2];
};
// An object on Cobjet: its vtable at 0x50
struct Obj29 {
    u8 m_00[0x50];
    void *m_50;
};
// An object on CName: its flags at 4, its vtable at 8
struct Named29 {
    u8 m_00[4];
    int m_04;
    void *m_08;
};
// A global object's vtable, at 0x10
struct Glob29 {
    int m_00[4];
    void *m_10;
};
extern int D_800CB2D0; // how many times constructed
extern int D_800CB2D8, D_800CB2DC, D_800CB2E0, D_800CB2E4;
extern int D_800C6488, D_800C64B0; // vtables
extern u8 D_800C64D8[];
extern int D_800C6508; // a vtable
extern int D_800CABC0;
extern int D_800D5FCC;
void CobjetDtor29(void *o, int f) asm("_._6Cobjet");
void CNameDtor29(void *o, int f) asm("_._5CName");
int func_80045168(void *a, int b, int c, int d, ...);
int func_8004B480(void);
int func_8004B900(int a, int b);
void func_8004BEE0(void);
int func_8004C0E4(void);
int func_8004C0EC(void);
int func_8004C0F4(void);
int func_8004C0FC(void);
void func_8004C104(Obj29 *o, int f);
void func_8004C12C(Obj29 *o, int f);
void func_8004C14C(Named29 *o, int f);
void func_8004C184(Named29 *o, int f);
void func_8004C3FC(Tab29 *t, int i, int a, int b, int c);
void func_8004C420(Tab29 *t, int i, int v);
// A player's state
struct Ply29 {
    u8 m_00[0x154];
    int m_154; // a choice, 0 to 5
};
struct Lp29 {
    u8 m_00[0xC];
    s8 m_0C;
};
struct Bk29 {
    int m_00; // bits 1-5: a mode
    u8 m_04[0x24];
    Lp29 *m_28;
    u8 m_2C[4];
    int m_30;
    u8 m_34[0x154];
    u16 m_188;
    u8 m_18A[0x196];
    s8 m_320;
    u8 m_321;
    s8 m_322;
    u8 m_323[0x245];
};
struct Rc29 {
    int m_00; // the race's kind of game
    u8 m_04[0xC];
    struct Bk29 *m_10;
    u8 m_14[0x2D4];
    struct Bk29 m_2E8[5];
    u8 m_1DF0[0x18];
    int m_1E08;
};
struct Cur29 {
    u8 m_00[4];
    int m_04;
};
// The game: the players' views
struct Game29 {
    u8 m_00[0x10];
    int m_10;
    u8 m_14[4];
    int m_18;
    u8 m_1C[0x2E8];
    int m_304;
    u8 m_308[4];
    int m_30C;
    u8 m_310[0x68];
    struct Rc29 *m_378;
    u8 m_37C[0xB4];
    int m_430[2];
    u8 m_438[4];
    Ply29 *m_43C[2];
    u8 m_444[0x20];
    Cur29 **m_464;
    u8 m_468[8];
    s8 m_470[2];
    u8 m_472[2];
    int m_474[2];
    u8 m_47C[0xC];
    int m_488[2];
    u8 m_490[4];
    int m_494;
};
extern int *D_800CB2F8;
extern char D_800C6444[]; // "Data\\Final\\"
extern char D_800C6450[]; // ".bs"
extern char *D_800C9E94;  // a table of names
extern char D_800D4798;
extern int D_800CBC94;
extern int D_800CB2C0;
char *strcat(char *d, const char *s);
int func_80078FC4(void *a, int b);
void func_8004F0C4(Game29 *g, int i);
void func_80078280(Ply29 *p);
void func_8004C4E4(Game29 *g, int i, int c);
void func_8004C764(Game29 *g, int i);
void func_8004C38C(Game29 *g);
void func_8004C7EC(Game29 *g);
char *func_8004B96C(int k);
void func_8004C430(Game29 *g, int i);
int func_8004B844(int a, int b);
// A scale's four weights for each of its kinds, and its sizes
struct Sc29 {
    u8 m_00[8];
    short m_08[4];
    short m_10[4];
    short m_18[4];
    short m_20[4];
    int m_28[4];
    int m_38; // the kind
};
int func_8004C02C(Sc29 *o);
int func_8004BF30(Sc29 *o, int x, int y, int z);
void func_8004C870(Game29 *g, int i, Bk29 *b);
extern int D_800CB3BC;
int func_80052120(int a);
int func_8004C9D0(Game29 *g, int i);
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_29", func_8004B4B0);

int func_8004B844(int a, int b) {
    func_80045168(&D_800CABC0, 0, -1, 1, a);
    func_80045168(&D_800CABC0, 0, -1, 1, b);
    func_80045168(&D_800CABC0, 1, -1, 8, 0);
    func_80045168(&D_800CABC0, 2, -1, 2, 0x11, 2, &D_800CB2C0, 7);
    D_800D5FCC = 0;
    return 1;
}

int func_8004B900(int a, int b) {
    int r;

    func_80045168(&D_800CABC0, 0, -1, 1, a);
    func_80045168(&D_800CABC0, 0, -1, 1, b);
    r = func_8004B480();
    D_800D5FCC = 1;
    return r;
}

/* "Data\\Final\\", a name from the table, ".bs". */
char *func_8004B96C(int k) {
    char *b = &D_800D4798;
    char *n = (&D_800C9E94)[k];

    memcpy(&D_800D4798, D_800C6444, 12);
    strcat(b, n);
    strcat(b, D_800C6450);
    return b;
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_29", func_8004BA04);

/* A global object constructed once: its base's vtable, its fields, its own vtable. */
void func_8004BEE0(void) {
    if (++D_800CB2D0 == 1) {
        Glob29 *g = (Glob29 *)&D_800CB2D8;

        g->m_10 = &D_800C64B0;
        D_800CB2D8 = 0;
        D_800CB2DC = 0;
        D_800CB2E0 = 0;
        D_800CB2E4 = 0;
        g->m_10 = &D_800C6488;
    }
}

// The scale's start: its size times 281/256, doubled
static inline int Base29(Sc29 *o) {
    return o->m_28[o->m_38] * 281 / 256 * 2;
}

// Its length: the kind's weighted sum (doubled past the first kind), plus the start
static inline int Len29(Sc29 *o) {
    int k = o->m_38;
    int b = Base29(o);
    int t = (o->m_08[k] * 15 + o->m_18[k] * 31) * 4 + o->m_10[k] * 72 + o->m_20[k] * 146;

    if (k) {
        t *= 2;
    }
    return t + b;
}

#ifdef NON_MATCHING
// The same sums as func_8004C02C, the same differences
/* x placed on the scale, in steps of y. */
int func_8004BF30(Sc29 *o, int x, int y, int z) {
    int b = Base29(o);

    return (x - b) / z * y / ((Len29(o) - b) / z + 1);
}
#else
INCLUDE_ASM("asm/langimg/nonmatchings/chunk_29", func_8004BF30);
#endif

#ifdef NON_MATCHING
// Registers: the original copies the column's pointer through several registers (inlines passing it on, likely) and computes its offset first
int func_8004C02C(Sc29 *o) {
    int k = o->m_38;
    int w = o->m_28[k] * 281;
    int t = (o->m_18[k] * 31 + o->m_08[k] * 15) * 4 + o->m_10[k] * 72 + o->m_20[k] * 146;
    int b = w / 256 * 2;

    if (k) {
        return t * 2 + b;
    }
    return t + b;
}
#else
INCLUDE_ASM("asm/langimg/nonmatchings/chunk_29", func_8004C02C);
#endif

int func_8004C0E4(void) {
    return 1;
}

int func_8004C0EC(void) {
    return 1;
}

int func_8004C0F4(void) {
    return 1;
}

int func_8004C0FC(void) {
    return 1;
}

void func_8004C104(Obj29 *o, int f) {
    o->m_50 = D_800C64D8;
    CobjetDtor29(o, f);
}

void func_8004C12C(Obj29 *o, int f) {
    CobjetDtor29(o, f);
}

void func_8004C14C(Named29 *o, int f) {
    o->m_08 = &D_800C6508;
    o->m_04 &= ~0x7FF;
    CNameDtor29(o, f);
}

void func_8004C184(Named29 *o, int f) {
    o->m_08 = &D_800C6508;
    o->m_04 &= ~0x7FF;
    CNameDtor29(o, f);
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_29", func_8004C1BC);

void func_8004C38C(Game29 *g) {
    int i;

    for (i = 1; i >= 0; i--) {
        func_8004C764(g, i);
    }
    if (g->m_30C != -1 && !g->m_304) {
        func_8004C4E4(g, 0, g->m_30C);
        g->m_30C = -1;
    }
}

void func_8004C3FC(Tab29 *t, int i, int a, int b, int c) {
    t->m_400[i] = a;
    t->m_408[i] = b;
    t->m_410[i] = c;
}

void func_8004C420(Tab29 *t, int i, int v) {
    t->m_3F8[i] = v;
}

/* The player's choice stepped back (from 0 to 5), unless their bike is busy. */
void func_8004C430(Game29 *g, int i) {
    if (g->m_10 == 0x10 && !g->m_304) {
        int k = g->m_470[i];
        Rc29 *r = g->m_378;
        Bk29 *b = 0;

        if (k >= 0) {
            b = &r->m_2E8[k];
        }
        if (!b->m_188) {
            Ply29 *p = g->m_43C[i];

            if (--p->m_154 < 0) {
                p->m_154 = 5;
            }
            func_8004C4E4(g, i, p->m_154);
        }
    }
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_29", func_8004C4E4);

void func_8004C764(Game29 *g, int i) {
    Ply29 *p = g->m_43C[i];

    func_80078280(p);
    func_8004C420((Tab29 *)g, i, D_800CB2F8[p->m_154]);
    func_8004C3FC((Tab29 *)g, i, *(int *)((u8 *)g->m_378->m_10 + 0x55C), 0, 0);
}

void func_8004C7EC(Game29 *g) {
    int i;

    if (func_80078FC4(&D_800CBC94, g->m_18)) {
        for (i = 0; i < 2; i++) {
            g->m_488[i] &= ~1;
            func_8004F0C4(g, i);
        }
    }
}

/* The player's state from their bike: 9 when it can go on, else 7, 8 or 1; 0 when it isn't racing. */
void func_8004C870(Game29 *g, int i, Bk29 *b) {
    if (b->m_320) {
        if (((b->m_00 << 26) >> 27) == 1 && b->m_28 && b->m_28->m_0C && !b->m_188) {
            g->m_430[i] = 9;
        } else {
            g->m_430[i] = 7;
        }
    } else if (b->m_322) {
        if (((b->m_00 << 26) >> 27) == 1 && b->m_28 && b->m_28->m_0C && !b->m_188) {
            g->m_430[i] = 9;
        } else {
            g->m_430[i] = 8;
        }
    } else if (((b->m_00 << 26) >> 27) == 1) {
        if (b->m_28) {
            if (b->m_28->m_0C && !b->m_188) {
                g->m_430[i] = 9;
            } else {
                g->m_430[i] = 1;
            }
        }
    } else {
        g->m_474[i] = b->m_30;
        g->m_430[i] = 0;
    }
}

#ifdef NON_MATCHING
// Registers: the result and the bike swap $s2 and $s3 (10 off)
int func_8004C9D0(Game29 *g, int i) {
    int r = 1;
    int k = g->m_470[i];
    Rc29 *rc = g->m_378;
    Bk29 *b = 0;
    int x;
    Cur29 *c;

    if (k >= 0) {
        b = &rc->m_2E8[k];
    }
    x = func_80052120(g->m_494);
    if (i == 0 && (c = *g->m_464) && (g->m_378->m_1E08 == 1 || (c->m_04 & 0x200))) {
        g->m_430[0] = 3;
    } else if (i == 0 && (g->m_304 ||
                          ((D_800CB3BC || x) && !(g->m_378->m_00 & 0xA8) && g->m_378->m_00 != 2))) {
        g->m_430[i] = 5;
    } else if ((g->m_378->m_00 & 0xA8) || i == 0) {
        func_8004C870(g, i, b);
    } else {
        r = 0;
    }
    return r;
}
#else
INCLUDE_ASM("asm/langimg/nonmatchings/chunk_29", func_8004C9D0);
#endif

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_29", func_8004CB5C);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_29", func_8004CD5C);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_29", func_8004CEFC);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_29", func_8004D068);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_29", func_8004D300);
