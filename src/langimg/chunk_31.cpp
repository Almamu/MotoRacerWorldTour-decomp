#include "common.h"

/* A bike's state, the race's bikes (docs/matching/issue-32-langimg-chunk31.md) */

extern "C" {
struct Vec31 {
    int x;
    int y;
    int z;
};
// Four shorts, 2-aligned
struct SVec31 {
    short x;
    short y;
    short z;
    short pad;
};
// A vtable's entry
struct VtEntry31 {
    short m_delta;
    short m_index;
    void *m_func;
};
// A bike's model, an object with a virtual destructor (its vtable at 0x50)
struct Def31 {
    u8 m_00[0x50];
    VtEntry31 *m_50;
    u8 m_54[0x10];
    Vec31 m_64;
    SVec31 m_70;
};
// A virtual destructor called with 3 (destroy and free)
#define VDELETE31(p) \
    ((void (*)(void *, int))(p)->m_50[1].m_func)((char *)(p) + (p)->m_50[1].m_delta, 3)
// A matrix: 3x3 shorts and a translation
struct Mat31 {
    short m[3][3];
    short pad;
    Vec31 t;
};
// A bike, 0x568 bytes
struct Bike31 {
    int m_00; // flags; bits 1-5: a mode
    u8 m_04[8];
    short m_0C;
    u8 m_0E[0x22];
    Def31 *m_30;
    int m_34;
    u8 m_38[0x10];
    int m_48;
    void *m_4C;
    int m_50;
    u8 m_54[0x74]; // freed by func_80081EC8
    u8 m_C8[0xC3]; // freed by func_80081EC8
    u8 m_18B;
    u8 m_18C[0x18C];
    int m_318;
    int m_31C;
    s8 m_320;
    u8 m_321[3];
    u8 m_324;
    u8 m_325[2];
    s8 m_327;
    u8 m_328[0x9C];
    int m_3C4;
    u8 m_3C8[0x178];
    int m_540;
    int m_544;
    Vec31 m_548;
    SVec31 m_554;
    int m_55C;
    int m_560;
    int m_564;
};
struct Run31 {
    u8 m_00[0x18];
    int m_18[5]; // the bikes in order
    u8 m_2C[0x2BC];
    Bike31 m_2E8[5];
    u8 m_1DF0[0x168];
    Def31 *m_1F58;
};
// What func_8004F6C8 sets a matrix from
struct Pos31 {
    u8 m_00[0x20];
    Mat31 m_20;
    u8 m_40[0xB8];
    Vec31 m_F8;
};
// The object a vtable call returns
struct Got31 {
    u8 m_00[0x9C];
    Pos31 *m_9C;
};
struct Sys31 {
    u8 m_00[0x68];
    VtEntry31 *m_68;
};
// The menu-like object of func_8004F76C
struct Two31 {
    u8 m_00[0xBC];
    int m_BC[2];
    u8 m_C4[0x3C4];
    int m_488[2];
    u8 m_490[0xC];
    u8 m_49C[2][0x184];
};
struct Ctl31 {
    u8 m_00[0x3E8];
    int m_3E8;
};
// An entry of D_800C9EE0's table
struct Ent31 {
    int m_00;
    u8 m_04[4];
    u8 m_08[0xC];
};
extern int D_800C8868;
extern int *D_800C9EF0;
extern Ent31 *D_800C9EE0;
extern int D_800D5FAC; // a table of 5
void func_8004F83C(void *a, void *b);
void func_80097E4C(void *a, int x, int y, int z);
int func_80050EBC(int k);
void func_80033E4C(int a, Bike31 *b);
void func_8005108C(u8 *p, int v);
void func_8004F828(int a, int b);
int func_8004FFAC(int *a, int *b);
int func_8004FFC8(int *a, int *b);
int func_80050F1C(int *a, int *b);
void func_8004FE38(void *a, u8 *b);
void func_80051094(Bike31 *b);
void func_80050F38(Run31 *r);
void func_80051060(Bike31 *b, Ctl31 *c);
void func_8004FE58(void *a, short *v);
void func_80050E88(int i);
int func_8005102C(Run31 *r, int k);
void func_80051114(Bike31 *b);
void func_800510B4(Bike31 *b, int k);
void func_80050850(Run31 *r, int load);
void func_8005148C(Bike31 *b, int v);
extern Sys31 *D_800C886C;
void func_800788D8(Pos31 *p);
void func_8007857C(Pos31 *p);
void func_8001DA44(void *a, Mat31 *m);
void func_80081EC8(void *p);
int func_80050EBC(int k);
void func_8004F6C8(Two31 *o, Pos31 *p, void *m);
void func_8004F76C(Two31 *o);
void func_80050F5C(Run31 *r);
void func_80050CA4(Run31 *r);
void qsort(void *base, int n, int size, int (*cmp)(int *, int *));
}

#ifdef NON_MATCHING
// The struct copies' registers: the original has the translation's address and the call's first argument in registers before the copies, and copies the matrix through $t0-$t3
/* A matrix from p's rotation and position, passed to func_8001DA44. */
void func_8004F6C8(Two31 *o, Pos31 *p, void *m) {
    Mat31 t;

    func_800788D8(p);
    func_8007857C(p);
    t = p->m_20;
    t.t = p->m_F8;
    func_8001DA44(m, &t);
}
#else
INCLUDE_ASM("asm/langimg/nonmatchings/chunk_31", func_8004F6C8);
#endif

#ifdef NON_MATCHING
// Registers: the counter and the flags' pointer swap $s0 and $s3 (9 off)
void func_8004F76C(Two31 *o) {
    int *f = o->m_488;
    u8 *m = o->m_49C[0];
    int *id = o->m_BC;
    int i;

    for (i = 0; i < 2; i++) {
        if (*f & 1) {
            VtEntry31 *e = &D_800C886C->m_68[14];
            Got31 *g = ((Got31 * (*)(void *, int)) e->m_func)((char *)D_800C886C + e->m_delta, *id);

            if (g->m_9C) {
                func_8004F6C8(o, g->m_9C, m);
            }
        }
        m += 0x184;
        id++;
        f++;
    }
}
#else
INCLUDE_ASM("asm/langimg/nonmatchings/chunk_31", func_8004F76C);
#endif

void func_8004F828(int a, int b) {
    D_800C8868 = b + 0x40;
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_31", func_8004F83C);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_31", func_8004F908);

void func_8004FE38(void *a, u8 *b) {
    func_8004F83C(a, b + 0xF8);
}

void func_8004FE58(void *a, short *v) {
    func_80097E4C(a, v[0], v[1], v[2]);
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_31", func_8004FE88);

/* qsort's comparisons: the words without their low bits */
int func_8004FFAC(int *a, int *b) {
    int x = *a & ~7;
    int y = *b & ~7;

    return y - x;
}

int func_8004FFC8(int *a, int *b) {
    return (*a & ~7) - (*b & ~7);
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_31", func_8004FFE4);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_31", func_8005044C);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_31", func_800505BC);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_31", func_800507B0);

/* The bikes' values at 0x0C saved to, or loaded from, a table. */
void func_80050850(Run31 *r, int load) {
    Bike31 *b = r->m_2E8;
    int i = 0;

    if (load) {
        for (; i < 5; i++) {
            b->m_0C = (&D_800D5FAC)[i];
            b++;
        }
    } else {
        for (; i < 5; i++) {
            (&D_800D5FAC)[i] = b->m_0C;
            b++;
        }
    }
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_31", func_800508B4);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_31", func_80050A4C);

void func_80050CA4(Run31 *r) {
    int i;
    Bike31 *b = r->m_2E8;

    i = 0;
    while (i < 5) {
        if (b->m_30) {
            VDELETE31(b->m_30);
            b->m_30 = 0;
        }
        func_80081EC8(b->m_54);
        func_80081EC8(b->m_C8);
        i++;
        b++;
    }
    if (r->m_1F58) {
        VDELETE31(r->m_1F58);
        r->m_1F58 = 0;
    }
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_31", func_80050D7C);

void func_80050E88(int i) {
    func_80050EBC(D_800C9EF0[i]);
}

int func_80050EBC(int k) {
    int r = 0;

    switch (k) {
    case 0:
        break;
    case 1:
        r = 1;
        break;
    case 5:
        r = 3;
        break;
    case 6:
        r = 4;
        break;
    case 2:
        r = 2;
        break;
    case 3:
        r = 5;
        break;
    case 7:
        r = 6;
        break;
    }
    return r;
}

int func_80050F1C(int *a, int *b) {
    int x = *a & ~15;
    int y = *b & ~15;

    return y - x;
}

void func_80050F38(Run31 *b) {
    int i;

    for (i = 4; i >= 0; i--) {
        b->m_18[i] = -1;
    }
}

/* The bikes that are in, ordered by their value at 0x0C. */
void func_80050F5C(Run31 *r) {
    int n = 0;
    int i;

    func_80050F38(r);
    for (i = 4; i >= 0; i--) {
        if (((u32)r->m_2E8[i].m_00 >> 6) & 1) {
            r->m_18[n++] = i | (r->m_2E8[i].m_0C << 8);
        }
    }
    if (n >= 2) {
        qsort(r->m_18, n, 4, func_80050F1C);
    }
    for (i = n - 1; i >= 0; i--) {
        r->m_18[i] &= 0xF;
    }
}

int func_8005102C(Run31 *b, int k) {
    int i = 4;
    int *p = &b->m_18[4];

    for (; i >= 0; i--) {
        if (*p-- == k) {
            goto found;
        }
    }
    return -1;
found:
    return i;
}

void func_80051060(Bike31 *b, Ctl31 *c) {
    if (((b->m_00 << 26) >> 27) == 1) {
        b->m_31C = c->m_3E8;
    }
}

void func_8005108C(u8 *p, int v) {
    p[1] = v;
}

void func_80051094(Bike31 *b) {
    b->m_18B = 0;
    b->m_324 = 0;
    b->m_327 = -1;
    b->m_34 = 0;
    b->m_3C4 = 0;
    b->m_318 = 0;
}

void func_800510B4(Bike31 *b, int k) {
    b->m_50 = k;
    if (k == -1) {
        b->m_48 = 0;
        b->m_4C = 0;
    } else {
        b->m_48 = D_800C9EE0[k].m_00;
        b->m_4C = D_800C9EE0[k].m_08;
    }
}

void func_80051114(Bike31 *b) {
    if (b->m_320) {
        func_80033E4C(b->m_31C, b);
    }
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_31", func_8005114C);

#ifdef NON_MATCHING
// The struct copies: the original's block moves keep the addresses in registers ($v0, $v1) and copy through $t registers; ours fold the offsets
void func_8005148C(Bike31 *b, int v) {
    b->m_544 = 0;
    b->m_540 = 0;
    b->m_548 = b->m_30->m_64;
    b->m_554 = b->m_30->m_70;
    b->m_55C = v;
    b->m_560 = 0;
    b->m_564 = 1;
}
#else
INCLUDE_ASM("asm/langimg/nonmatchings/chunk_31", func_8005148C);
#endif
