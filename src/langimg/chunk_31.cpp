#include "common.h"
#include "mulshift.h"

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
    u8 m_00[4];
    int m_04;
    u8 m_08[0x3C];
    u8 m_44;
    u8 m_45[0xB];
    VtEntry31 *m_50;
    u8 m_54[0x10];
    Vec31 m_64;
    SVec31 m_70;
    u8 m_78[0x1A8];
    void *m_220[5];
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
    u8 m_04[6];
    short m_0A;
    short m_0C;
    u8 m_0E[0x1E];
    int m_2C;
    Def31 *m_30;
    int m_34;
    u8 m_38[8];
    s8 m_40; // a lap's index
    u8 m_41[2];
    s8 m_43;
    u8 m_44[4];
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
struct Pair31 {
    int m_00;
    int m_04;
};
// The race's lap data
struct Lap31 {
    int m_00;
};
struct Run31 {
    int m_00;
    u8 m_04[8];
    int m_0C;
    u8 m_10[6];
    short m_16;
    int m_18[5]; // the bikes in order
    int m_2C[5];
    int m_40[5];
    int m_54[5][8]; // each bike's lap times
    int m_F4[5][8];
    int m_194[5];
    Pair31 m_1A8[5][8];
    Bike31 m_2E8[5];
    u8 m_1DF0[4];
    int m_1DF4;
    u8 m_1DF8[0x10];
    int m_1E08; // the race's kind
    int m_1E0C;
    int m_1E10;
    int m_1E14[2];
    int m_1E1C[2];
    s8 m_1E24[2]; // the bikes of mode 1
    s8 m_1E26[5]; // of mode 2
    s8 m_1E2B[1]; // of mode 3
    int m_1E2C;   // how many of each
    int m_1E30;
    int m_1E34;
    u8 m_1E38;
    s8 m_1E39;
    short m_1E3A;
    Lap31 *m_1E3C;
    u8 m_1E40[0x118];
    Def31 *m_1F58;
};
struct Opt31 {
    u8 m_00[0x304];
    int m_304;
};
extern Opt31 *D_800C5E14;
int func_800A0420(Lap31 *l, int t, void *p, int a, int b);
int func_80050D7C(Run31 *r, int k);
void func_8004FE88(Run31 *r);
extern char D_800C6714[]; // "Moto %d"
extern char D_800C671C[]; // "Moto X"
int sprintf(char *s, const char *f, ...);
void func_80050A4C(Run31 *r);
// The track: its segments' starts and lengths
struct Trk31 {
    u8 m_00[0x14];
    short m_14;
    u8 m_16[0x1E6E];
    int m_1E84[16];
    int m_1EC4[16];
    u8 m_1F04[0x20];
    short m_1F24;
    short m_1F26;
    u8 m_1F28[0x23];
    s8 m_1F4B;
};
// A segment
struct Seg31 {
    u8 m_00[2];
    s8 m_02;
    u8 m_03[5];
    int m_08;
};
// What moves along it
struct Mob31 {
    u8 m_00[0x10];
    int m_10;
    int m_14;
    int m_18;
    u8 m_1C[4];
    short m_20;
    short m_22;
    u8 m_24[0x18];
    short m_3C;
    short m_3E;
};
void func_8005044C(Trk31 *t, Mob31 *o, Seg31 *s, int d);
Def31 *func_800508B4(void *a, const char *name, int kind);
Def31 *func_80064340(void *p);
Def31 *func_80024064(void *p);
void func_80016144(Def31 *o, Vec31 *v, SVec31 *r, int a);
void func_80016268(Def31 *o, SVec31 *r, Vec31 *v);
void *func_8001A62C(void *p);
// CName::Set(const char *)
void CName_Set31(Def31 *o, const char *s) asm("Set__5CNamePCc");
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
void func_80097E4C(void *a, int x, int y, int z);
int func_80050EBC(int k);
void func_80033E4C(int a, Bike31 *b);
void func_8005108C(u8 *p, int v);
void func_8004F828(int a, int b);
int func_8004FFAC(int *a, int *b);
int func_8004FFC8(int *a, int *b);
int func_80050F1C(int *a, int *b);
void func_8004FE38(void *a, u8 *b, int c);
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
// Eight bytes a bike
struct Slot31 {
    u8 m_00;
    u8 m_01[7];
};
// Both named for their fifth entry (the bikes are walked from the last)
extern Slot31 D_800D5E69;
extern int D_800D5F68;
int func_8004F908(void *o, Vec31 *v, int c, Vec31 *n);
Vec31 *func_80099834(Vec31 *v, Vec31 *a);
int func_80099B88(Vec31 *a, Vec31 *b);
Vec31 *func_800996D4(Vec31 *d, int k, Vec31 *s);
Vec31 *func_8009975C(Vec31 *d, Vec31 *s, int k);
Vec31 *func_800997D0(Vec31 *v, Vec31 *a);
int func_8004F83C(void *o, Vec31 *v, int c);
void func_800507B0(Run31 *r);
}

// A matrix's translation set, all three loads first
static inline void SetTrans31(Mat31 *m, Vec31 *v) {
    int x = v->x;
    int y = v->y;
    int z = v->z;

    m->t.x = x;
    m->t.y = y;
    m->t.z = z;
}

static inline void VecCopyL31(Vec31 *d, Vec31 *s) {
    int x = s->x;
    int y = s->y;
    int z = s->z;

    d->x = x;
    d->y = y;
    d->z = z;
}

/* A matrix from p's rotation and position, passed to func_8001DA44. */
void func_8004F6C8(Two31 *o, Pos31 *p, void *m) {
    Mat31 t;

    func_800788D8(p);
    func_8007857C(p);
    t = p->m_20;
    SetTrans31(&t, &p->m_F8);
    func_8001DA44(m, &t);
}

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

/* v moved by func_8004F908; when it hit (bit 1), pushed back out along the normal, flat. */
int func_8004F83C(void *o, Vec31 *v, int c) {
    Vec31 d;
    Vec31 n;
    Vec31 a;
    Vec31 b;
    Vec31 *pn = &n;
    Vec31 *pa;
    Vec31 *pb;
    int r;

    d = *v;
    r = func_8004F908(o, &d, c, pn);
    if (r & 2) {
        func_80099834(&d, v);
        pa = &a;
        pb = &b;
        func_800996D4(pb, func_80099B88(&d, pn), pn);
        func_8009975C(pa, pb, 0x1000);
        a.y = 0;
        func_800997D0(v, pa);
    }
    return r;
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_31", func_8004F908);

void func_8004FE38(void *a, u8 *b, int c) {
    func_8004F83C(a, (Vec31 *)(b + 0xF8), c);
}

void func_8004FE58(void *a, short *v) {
    func_80097E4C(a, v[0], v[1], v[2]);
}

#ifdef NON_MATCHING
// The loops: the original walks the per-bike arrays with pointers, shares one inner counter set to 0 in delay slots, and needs no saved register
/* The race's tables reset. */
void func_8004FE88(Run31 *r) {
    int i;
    int j;

    for (i = 0; i < 5; i++) {
        r->m_2C[i] = -1;
        r->m_40[i] = -1;
        r->m_1E26[i] = -1;
        for (j = 0; j < 8; j++) {
            r->m_54[i][j] = -1;
        }
        if (!D_800C5E14->m_304) {
            for (j = 0; j < 8; j++) {
                r->m_F4[i][j] = -1;
                r->m_194[i] = -1;
            }
        }
        for (j = 0; j < 8; j++) {
            r->m_1A8[i][j].m_00 = -1;
            r->m_1A8[i][j].m_04 = 0;
        }
    }
    for (i = 0; i < 2; i++) {
        r->m_1E14[i] = -1;
        r->m_1E1C[i] = -1;
    }
    r->m_1E3A = 0;
    r->m_1E10 = 0;
    r->m_16 = 0;
    r->m_1DF4 = -1;
    r->m_1E0C = 0;
}
#else
INCLUDE_ASM("asm/langimg/nonmatchings/chunk_31", func_8004FE88);
#endif

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

#ifdef NON_MATCHING
// Registers: each value one register later than ours, and the flag at 0x3E read before the two stores
/* Where o is along its segment: the segment's start plus its length times the fraction, plus d. */
void func_8005044C(Trk31 *t, Mob31 *o, Seg31 *s, int d) {
    int n = s->m_08;
    int k = s->m_02;
    u32 f;
    int p;
    int a;

    if (n >= 2) {
        u32 pos = o->m_22;

        if (o->m_20 == t->m_1F26) {
            u32 start = t->m_1F24;

            if (pos >= start) {
                f = ((pos - start) << 11) / (n - start);
            } else {
                k = t->m_1F4B;
                f = (pos << 11) / start;
            }
        } else {
            f = (pos << 11) / (n - 1);
        }
    } else {
        f = 0x800;
    }
    o->m_10 = t->m_1EC4[k] + MULSHIFT(f, t->m_1E84[k], 11);
    p = o->m_10 + MULSHIFT(d, t->m_1E84[k] / s->m_08, 12);
    a = o->m_3E;
    o->m_10 = p;
    o->m_14 = p;
    if (a != -0x7FFF) {
        o->m_18 = (a << 18) / (t->m_14 + o->m_3C) + (d << 6) / (t->m_14 + o->m_3C);
    }
}
#else
INCLUDE_ASM("asm/langimg/nonmatchings/chunk_31", func_8005044C);
#endif

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_31", func_800505BC);

// How many bikes of the kind are in the race
static inline int Count31(Run31 *r, int kind) {
    int n = 0;
    Bike31 *end = &r->m_2E8[0];
    Bike31 *p = &r->m_2E8[4];

    do {
        if (((u32)p->m_00 >> 6) & 1) {
            if (((p->m_00 << 26) >> 27) == kind) {
                n++;
            }
        }
    } while (p-- != end);
    return n;
}

/* Each bike's slot: the first two from a table when that many bikes are in mode 1. */
void func_800507B0(Run31 *r) {
    int i;

    for (i = 4; i >= 0; i--) {
        if (i < 2) {
            if (i < Count31(r, 1)) {
                (&D_800D5E69)[i - 4].m_00 = (&D_800D5F68)[i - 4];
                goto done;
            }
        }
        (&D_800D5E69)[i - 4].m_00 = i;
    done:
        r->m_2E8[i].m_0A = i;
    }
}

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

static inline void VecZero31(Vec31 *v) {
    v->x = 0;
    v->y = 0;
    v->z = 0;
}

/* An object of a kind made, placed and named, with its five parts. */
Def31 *func_800508B4(void *a, const char *name, int kind) {
    Def31 *o = 0;
    Vec31 v;
    SVec31 r;

    VecZero31(&v);
    r.x = 0;
    r.y = 0;
    r.z = 0;
    switch (kind) {
    case -1:
    case 0:
        break;
    case 2:
        o = func_80064340(operator new(0x49C));
        break;
    case 1:
    case 3:
        o = func_80024064(operator new(0x5D4));
        break;
    }
    if (o) {
        func_80016144(o, &v, &r, 0);
        VecCopyL31(&o->m_64, &v);
        o->m_70 = r;
        func_80016268(o, &o->m_70, &o->m_64);
        CName_Set31(o, name);
        o->m_220[0] = func_8001A62C(operator new(0x20));
        o->m_220[1] = func_8001A62C(operator new(0x20));
        o->m_220[2] = func_8001A62C(operator new(0x20));
        o->m_220[3] = func_8001A62C(operator new(0x20));
        o->m_220[4] = func_8001A62C(operator new(0x20));
        o->m_04 = (o->m_04 | 0x10002) & ~4;
    }
    return o;
}

#ifdef NON_MATCHING
// Registers: the original keeps 2 for the last mode's test in $fp and walks the bikes' second byte array by pointer
/* The bikes' objects made and named, each listed by its mode; "Moto X" too. */
void func_80050A4C(Run31 *r) {
    char name[32];
    Bike31 *b = r->m_2E8;
    int i;

    r->m_1E2C = 0;
    r->m_1E30 = 0;
    r->m_1E34 = 0;
    for (i = 0; i < 2; i++) {
        r->m_1E24[i] = -1;
    }
    for (i = 0; i >= 0; i--) {
        r->m_1E2B[i] = -1;
    }
    for (i = 0; i < 5; i++) {
        r->m_1E26[i] = -1;
    }
    for (i = 0; i < 5; i++, b++) {
        if (((u32)b->m_00 >> 6) & 1) {
            sprintf(name, D_800C6714, i + 1);
            b->m_2C = r->m_0C;
            b->m_30 = func_800508B4(r, name, (b->m_00 << 26) >> 27);
            if (b->m_30) {
                int mode = (b->m_00 << 26) >> 27;

                if (mode == 1) {
                    r->m_1E24[r->m_1E2C] = i;
                    func_800510B4(b, r->m_1E2C);
                    r->m_1E2C++;
                } else if (mode == 3) {
                    r->m_1E2B[r->m_1E30] = i;
                    func_800510B4(b, r->m_1E30 + 2);
                    r->m_1E30++;
                } else if (mode == 2) {
                    r->m_1E26[r->m_1E34] = i;
                    func_800510B4(b, r->m_1E34 + 4);
                    r->m_1E34++;
                }
            } else {
                b->m_00 &= ~0x40;
            }
        }
    }
    if (r->m_1E2C && r->m_00 == 0x40) {
        Def31 *d = func_800508B4(r, D_800C671C, 2);

        r->m_1F58 = d;
        if (d) {
            d->m_44 = 1;
        }
    }
}
#else
INCLUDE_ASM("asm/langimg/nonmatchings/chunk_31", func_80050A4C);
#endif

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

/* A bike's lap passed to the race's lap data, in a race of kind 3. */
int func_80050D7C(Run31 *r, int k) {
    int res = 0;

    if (r->m_1E3C && r->m_1E08 == 3) {
        Bike31 *b = &r->m_2E8[k];

        if (((u32)b->m_00 >> 6) & 1) {
            u8 st = ((u8 *)b)[1];

            if (st != 4 && st != 0) {
                int t;
                void *q;

                if (r->m_1E3C->m_00) {
                    t = r->m_54[k][b->m_40];
                } else {
                    t = b->m_0C;
                }
                q = b->m_4C;
                res = func_800A0420(r->m_1E3C, t, q, -1, b->m_43);
                if (res && r->m_1E39) {
                    r->m_1E39 = 1;
                }
            }
        }
    }
    return res;
}

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

void func_8005148C(Bike31 *b, int v) {
    b->m_544 = 0;
    b->m_540 = 0;
    VecCopyL31(&b->m_548, &b->m_30->m_64);
    b->m_554 = b->m_30->m_70;
    b->m_55C = v;
    b->m_560 = 0;
    b->m_564 = 1;
}
