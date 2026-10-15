#include "common.h"
#include "psyq.h"

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
struct Vec29 {
    long vx, vy, vz;
};
// A player's state
struct Ply29 {
    MATRIX m_00; // its view
    u8 m_20[0xD8];
    Vec29 m_F8; // where it looks from
    u8 m_104[0x18];
    Vec29 m_11C;
    u8 m_128[0x1C];
    int m_144;
    u8 m_148[8];
    int m_150;
    int m_154; // a choice, 0 to 5
    u8 m_158[0x38];
    int m_190;
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
    int m_34;
    int m_38;
    u8 m_3C[7];
    s8 m_43; // its player, or -1
    u8 m_44[0x144];
    union {
        u16 m_188;
        struct {
            u8 m_188b;
            s8 m_189;
        } m_188s;
    };
    u8 m_18A[0x192];
    int *m_31C;
    s8 m_320;
    u8 m_321;
    s8 m_322;
    u8 m_323;
    u8 m_324[0x3C];
    int m_360;
    u8 m_364[0x79];
    s8 m_3DD;
    u8 m_3DE[0x14E];
    int m_52C; // the race's state
    u8 m_530[0x38];
};
struct Rc29 {
    int m_00; // the race's kind of game
    u8 m_04[0xC];
    struct Bk29 *m_10;
    u8 m_14[0x2D4];
    struct Bk29 m_2E8[5];
    u8 m_1DF0[0x18];
    int m_1E08;
    u8 m_1E0C[8];
    int m_1E14[2];
    int m_1E1C[2];
    u8 m_1E24[0x1C];
    u8 m_1E40[0x10A];
    s8 m_1F4A;
};
struct Cur29 {
    u8 m_00[4];
    int m_04;
    u8 m_08[0x2C];
    MATRIX *m_34;
    u8 m_38[0x24];
    int m_5C; // its target, or -1
    u8 m_60[0x1C0];
    int m_220;
};
// The scene's objects
struct Objs29 {
    void **m_00;
};
// The game: the players' views
struct Game29 {
    u8 m_00[0x10];
    int m_10;
    u8 m_14[4];
    int m_18;
    u8 m_1C[0x58];
    Objs29 *m_74;
    u8 m_78[0x44];
    int m_BC[2];
    u8 m_C4[0x240];
    int m_304;
    u8 m_308[4];
    int m_30C;
    u8 m_310[0x68];
    struct Rc29 *m_378;
    u8 m_37C[0xB4];
    int m_430[2];
    u8 m_438[4];
    Ply29 *m_43C[2];
    u8 m_444[0x14];
    void *m_458;
    void *m_45C; // the camera's target
    u8 m_460[4];
    Cur29 **m_464;
    int m_468[2];
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
// A slot of D_800CBC94's (chunk_51's): its list at 0x30
struct Ref29 {
    u8 m_00[0x30];
    u8 m_30[4];
};
struct Ent29 {
    u8 m_00[0x48];
    int m_48;
    int m_4C;
};
Ref29 *func_80078FC4(void *a, int b);
Ent29 *func_800891E8(void *l, int i);
void func_80054744(Game29 *g, char *s, int t, int i, int a, int c, int d);
int func_8004C1BC(Game29 *g, int i, int k);
// A bike's model: its matrix at 0x34
struct Body29 {
    u8 m_00[0x34];
    MATRIX *m_34;
    u8 m_38[0x21];
    s8 m_59;
    u8 m_5A[0x3BD];
    u8 m_417;
};
extern int *D_800CB2F4;
void func_8003491C(int *a, Bk29 *b);
extern int D_800D60EC;
void *func_8008C500(void *a, Game29 *g, int b, Bk29 *k, void *e);
void *func_8008C678(void *a, Game29 *g, Vec29 *v, int n);
void func_8008BCB0(void *c, Ply29 *p, Body29 *m, Bk29 *b, Vec29 *v, Game29 *g);
int func_8004CB5C(Game29 *g, int i);
void func_8004F0C4(Game29 *g, int i);
void func_80078280(Ply29 *p);
void func_8004C4E4(Game29 *g, int i, int c);
void func_8004C764(Game29 *g, int i);
void func_8004C38C(Game29 *g);
void func_8004C7EC(Game29 *g);
char *func_8004B96C(int k);
void func_8004C430(Game29 *g, int i);
void func_8004CD5C(Game29 *g, int i);
void func_800167B8(void *o, Vec29 *out);
void func_80078458(Ply29 *p, Vec29 *at);
extern int D_800CB2F0;
void func_8004FE38(void *a, Ply29 *p, int c);
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

extern "C" {
// A player of the race (8 bytes)
struct Seat29 {
    u8 m_00; // its colour
    u8 m_01[3];
    int m_04; // 1 a player, 3 a computer's, 2 a ghost, 0 none
};
extern Seat29 D_800D5E48[5];
extern u8 D_800D5F50[][4];
extern int D_800CB2C4, D_800CB2C8, D_800CB2CC;
extern int D_800D5F34, D_800D5F38, D_800D5F3C, D_800D5F40, D_800D5F44, D_800D5F48;
extern int D_800D4898;
void func_800A0CBC(int *a);
int func_80050E88(int i);
int func_8004B4B0(void);
}

extern "C" {
int func_80097AC8(int x); // a square root
void func_8004FE58(void *a, short *v);
MATRIX *func_80098674(MATRIX *a, MATRIX *b, MATRIX *out); // a product
long *func_8009887C(long *in, long *out);
Vec29 *func_80098768(MATRIX *m, Vec29 *v, Vec29 *out);
Vec29 *func_800997D0(Vec29 *v, Vec29 *a); // v += a
void func_800980F4(MATRIX *m);
void func_8004D300(Game29 *g, int i);
}

#ifdef NON_MATCHING
// The race's seats from the mode, written in full: the original keeps the constant 1 in a saved register across the second call (for the player count's switch), which shifts everything after it by one instruction (150 off); the cases and loops are laid out as the original's.
int func_8004B4B0(void) {
    int n1, n2, n3;
    int i, k, m;

    func_800A0CBC(&D_800D4898);
    D_800CB2CC = func_80050E88(D_800D5F38);
    n1 = 0;
    n3 = 0;
    D_800CB2C8 = D_800D5F44;
    n2 = 0;
    switch (D_800D5F3C) {
    case 0:
        n1 = 1;
        break;
    case 1:
        n1 = 2;
        break;
    }
    switch (D_800D5F40) {
    case 5:
        n1 = 1;
        D_800CB2C8 = 1;
        if (D_800D5F3C == n1) {
            D_800CB2C4 = 2;
            n2 = 1;
        } else {
            D_800CB2C4 = n1;
        }
        break;
    case 6:
        D_800CB2C4 = 0x100;
        n1 = 1;
        n2 = 1;
        break;
    case 9:
        D_800CB2C4 = 2;
        n1 = 1;
        n2 = 1;
        break;
    case 1:
        if (D_800D5F3C == 1) {
            D_800CB2C4 = 0x80;
        } else {
            D_800CB2C4 = 0x40;
            n3 = 1;
        }
        break;
    case 3:
    case 7:
        if (D_800D5F3C == 1) {
            D_800CB2C4 = 0x80;
            break;
        }
    case 8:
        D_800CB2C4 = 0x40;
        n3 = 4;
        break;
    case 4:
        if (D_800D5F3C == 1) {
            D_800CB2C4 = 0x80;
        } else {
            n3 = D_800D5F48;
            D_800CB2C4 = 0x40;
        }
        break;
    case 2:
        if (D_800D5F3C == 1) {
            D_800CB2C4 = 8;
        } else {
            D_800CB2C4 = 4;
        }
        break;
    case 0:
        if (D_800D5F3C == 1) {
            D_800CB2C4 = 0x20;
        } else {
            D_800CB2C4 = 0x10;
        }
        break;
    default:
        D_800CB2C4 = 0;
        break;
    }
    D_800D5F48 = n3;
    i = 0;
    for (k = n1 - 1; k >= 0; k--) {
        D_800D5E48[i++].m_04 = 1;
    }
    for (k = n2 - 1; k >= 0; k--) {
        D_800D5E48[i++].m_04 = 3;
    }
    for (k = n3 - 1; k >= 0; k--) {
        D_800D5E48[i++].m_04 = 2;
    }
    for (; i < 5; i++) {
        D_800D5E48[i].m_04 = 0;
    }
    if ((u32)(D_800CB2CC - 3) < 2 || D_800CB2CC == 6) {
        m = 1;
    } else {
        m = 8;
    }
    i = 0;
    do {
        D_800D5E48[i].m_00 = D_800D5F50[i][0] + m * D_800D5F34;
        i++;
    } while (i < n1);
    D_800CB2C0 = 0;
    func_80045168(&D_800CABC0, 1, -1, 8, &D_800CB2D8, 16, 18, 0);
    func_80045168(&D_800CABC0, 2, -1, 2, 16, 2, &D_800CB2C0, 7);
    func_80045168(&D_800CABC0, 2, -1, 2, 18, 1, &D_800CB2C0, 0);
    return 1;
}
#else
INCLUDE_ASM("asm/langimg/nonmatchings/chunk_29", func_8004B4B0);
#endif

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

static inline s8 *Picks29(Game29 *g) {
    return g->m_470;
}

int func_8004C1BC(Game29 *g, int i, int k) {
    Ref29 *r = func_80078FC4(&D_800CBC94, g->m_18);
    s8 *pk = Picks29(g) + i;
    Bk29 *b;

    if (*pk != (s8)-1) {
        b = &g->m_378->m_2E8[*pk];
        b->m_43 = -1;
        b->m_38 = 0x110;
    }
    *pk = k;
    g->m_468[i] = -1;
    if (k >= 0) {
        Ent29 *e;

        b = &g->m_378->m_2E8[k];
        e = func_800891E8(r->m_30, g->m_BC[i]);
        if (e && e->m_48) {
            b->m_43 = i;
            b->m_38 = e->m_4C;
        } else {
            b->m_38 = 0x110;
        }
    } else {
        b = 0;
    }
    if (b) {
        if (b->m_34 != -1) {
            g->m_378->m_1E14[i] = 0;
        } else {
            g->m_378->m_1E14[i] = b->m_34;
        }
        g->m_378->m_1E1C[i] = -1;
        if (g->m_378->m_00 & 0xA8) {
            char buf[2];

            buf[0] = k + '1';
            buf[1] = 0;
            func_80054744(g, buf, 3000, i, 4, 0xFFFF, 4);
        }
    }
    return 1;
}

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

void func_8004C4E4(Game29 *g, int i, int c) {
    Ply29 *p = g->m_43C[i];
    int k = g->m_470[i];
    Rc29 *r = g->m_378;
    Bk29 *b = 0;
    int m;

    if (k >= 0) {
        b = &r->m_2E8[k];
    }
    if (c >= 0) {
        m = 5;
        if (c < 6) {
            m = c;
        }
    } else {
        m = 0;
    }
    p->m_154 = m;
    switch (m) {
    case 1:
        p->m_190 = 0x1AE1;
        b->m_320 = m;
        b->m_322 = 0;
        if (b->m_31C && *b->m_31C && g->m_378->m_10->m_52C != 5 && g->m_378->m_10->m_52C != 6) {
            func_8003491C(b->m_31C, b);
            break;
        }
        p->m_154 = 0;
    case 0:
        p->m_190 = 0x1AE1;
        b->m_322 = 1;
        b->m_320 = 0;
        if ((u32)(g->m_378->m_10->m_52C - 5) >= 2) {
            break;
        }
        p->m_154 = 5;
    default:
        func_8004C420((Tab29 *)g, i, D_800CB2F8[p->m_154]);
        p->m_190 = D_800CB2F4[p->m_154];
        b->m_320 = 0;
        b->m_322 = 0;
        break;
    case 2:
        func_8004C420((Tab29 *)g, i, D_800CB2F8[2]);
        p->m_190 = D_800CB2F4[2];
        b->m_320 = 0;
        b->m_322 = 0;
        break;
    }
    {
        Body29 *m2 = (Body29 *)b->m_30;

        if (m2->m_59) {
            m2->m_417 = 0;
        }
    }
    p->m_144 = ((Tab29 *)g)->m_408[i] * 652;
    p->m_150 = -((Tab29 *)g)->m_3F8[i];
    g->m_438[i] = 1;
    if (b->m_188s.m_189) {
        u8 a = b->m_320;
        u8 d = b->m_322;

        b->m_320 = 0;
        b->m_322 = 0;
        b->m_321 = a;
        b->m_323 = d;
    }
}

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
    } else {
        // A workaround (the permuter): the last test in a do/while (0)
        do {
            if ((g->m_378->m_00 & 0xA8) || i == 0) {
                func_8004C870(g, i, b);
            } else {
                r = 0;
            }
        } while (0);
    }
    return r;
}

// The identity, rows from the diagonal out (chunk_48's IdentMat48)
static inline void IdentMat29(MATRIX *m) {
    m->m[0][0] = 0x1000;
    m->m[1][1] = 0x1000;
    m->m[2][2] = 0x1000;
    m->m[0][1] = m->m[0][2] = m->t[0] = 0;
    m->m[1][0] = m->m[1][2] = m->t[1] = 0;
    m->m[2][0] = m->m[2][1] = m->t[2] = 0;
}

static inline void ZeroVec29(Vec29 *v) {
    v->vx = v->vy = v->vz = 0;
}

int func_8004CB5C(Game29 *g, int i) {
    int r = 0;
    int k = g->m_470[i];
    Rc29 *rc = g->m_378;
    Bk29 *b = 0;

    if (k >= 0) {
        b = &rc->m_2E8[k];
    }
    if (b) {
        Body29 *m = (Body29 *)b->m_30;

        if (m) {
            Ply29 *p = g->m_43C[i];
            void *c;
            Vec29 v;

            if (rc->m_1F4A) {
                c = func_8008C500(g->m_458, g, D_800D60EC, b, rc->m_1E40);
            } else {
                int n = 0;

                v = *(Vec29 *)m->m_34->t;
                if (b->m_360 && b->m_3DD >= 26) {
                    n = b->m_3DD - 25;
                }
                c = func_8008C678(g->m_458, g, &v, n);
            }
            if (c) {
                v = *(Vec29 *)m->m_34->t;
                func_8008BCB0(c, p, m, b, &v, g);
                r = 1;
            }
            if (g->m_45C != c) {
                g->m_438[i] = 1;
            }
            g->m_45C = c;
            if (!r) {
                IdentMat29(&p->m_00);
                ZeroVec29(&p->m_F8);
                func_8004C870(g, i, b);
            }
        }
    }
    return r;
}

static inline void VecCopyL29(Vec29 *d, Vec29 *s) {
    int x = s->vx;
    int y = s->vy;
    int z = s->vz;

    d->vx = x;
    d->vy = y;
    d->vz = z;
}

void func_8004CD5C(Game29 *g, int i) {
    Cur29 *c = g->m_464[i];
    Ply29 *p = g->m_43C[i];
    MATRIX *m = c->m_34;
    Cur29 *a = 0;
    Vec29 v;

    if (c->m_04 & 0x8000) {
        a = c;
    }
    if (a && a->m_5C != -1) {
        int k = a->m_5C;
        Objs29 *objs = g->m_74;
        void *o = 0;

        if (k >= 0) {
            o = objs->m_00[k];
        }
        {
            int x = m->t[0];
            int y = m->t[1];
            int z = m->t[2];

            v.vx = x;
            v.vy = y;
            v.vz = z;
        }
        VecCopyL29(&p->m_F8, &v);
        func_800167B8(o, &v);
        VecCopyL29(&p->m_11C, &v);
        func_80078458(p, &v);
    } else {
        p->m_00 = *m;
        p->m_00.t[0] = p->m_00.t[1] = p->m_00.t[2] = 0;
        {
            int x = m->t[0];
            int y = m->t[1];
            int z = m->t[2];

            v.vx = x;
            v.vy = y;
            v.vz = z;
        }
        VecCopyL29(&p->m_F8, &v);
        if (c->m_04 & 0x1000000) {
            func_8004FE38(&D_800CB2F0, p, c->m_220);
        }
    }
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_29", func_8004CEFC);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_29", func_8004D068);

// The racer's bike, or 0
static inline Bk29 *Bike29At(Rc29 *r, int k) {
    Bk29 *b = 0;

    if (k >= 0) {
        b = &r->m_2E8[k];
    }
    return b;
}

// A vector set, the first and last stores at the stack's offsets
static inline void SetVec29(Vec29 *v, int x, int y, int z) {
    v->vx = x;
    v->vy = y;
    v->vz = z;
}

// The matrix turned by half a turn about y (through func_8004FE58), its
// translation added to t
static inline void Turn29(MATRIX *m, long *t) {
    MATRIX out;
    MATRIX r;
    SVECTOR a;

    a.vx = 0;
    a.vy = 0x800;
    a.vz = 0;
    func_8004FE58(&r, &a.vx);
    r.t[0] = r.t[1] = r.t[2] = 0;
    func_80098674(m, &r, &out);
    func_8009887C(r.t, out.t);
    func_800997D0((Vec29 *)out.t, (Vec29 *)t);
    *m = out;
}

#ifdef NON_MATCHING
// Written in the original's shape (frame, slots and calls): the product and the half turn in an inline function so their addresses are recomputed, &w and the view's translation kept as the original's. Left: the product's address (sp+0x30) is merged with w's, which shares the slot, so GCC builds it in $s1 early and addresses the angle through it (33 off).
void func_8004D300(Game29 *g, int i) {
    int k = g->m_470[i];
    Body29 *m = 0;
    Bk29 *b = Bike29At(g->m_378, (s8)g->m_378->m_1E24[k]);

    if (b && (b->m_00 & 0x7E) == 0x42) {
        m = (Body29 *)b->m_30;
    }
    if (m) {
        long unused[8];
        MATRIX *mm = m->m_34;
        int cs, sn;

        sn = mm->m[0][2];
        cs = mm->m[2][2];
        Ply29 *p = g->m_43C[i];
        int l = func_80097AC8(sn * sn + cs * cs);

        if (l) {
            l = 0x1000000 / l;
        }
        sn = sn * l >> 12;
        cs = cs * l >> 12;
        p->m_00.m[1][0] = 0;
        p->m_00.m[0][1] = 0;
        p->m_00.m[1][1] = 0x1000;
        p->m_00.m[2][1] = 0;
        p->m_00.m[1][2] = 0;
        p->m_00.m[2][0] = -sn;
        p->m_00.m[0][2] = sn;
        p->m_00.m[0][0] = cs;
        p->m_00.m[2][2] = cs;
        Turn29(&p->m_00, p->m_00.t);
        VecCopyL29(&p->m_F8, (Vec29 *)((u8 *)m + 0x64));
        p->m_00.t[0] = p->m_00.t[1] = p->m_00.t[2] = 0;
        {
            Vec29 w, v;

            SetVec29(&v, 0, 0x2000, 0);
            func_80098768(&p->m_00, &v, &w);
            func_800997D0(&w, (Vec29 *)p->m_00.t);
            func_800997D0(&p->m_F8, &w);
        }
        func_800980F4(&p->m_00);
    }
}
#else
INCLUDE_ASM("asm/langimg/nonmatchings/chunk_29", func_8004D300);
#endif
