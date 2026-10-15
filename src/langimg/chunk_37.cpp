#include "common.h"

/* The game's code built with GCC 2.91.66, -G8, split addresses
 * (docs/matching/issue-38-langimg-chunk37.md). */

extern "C" {
struct SVec37 {
    short x;
    short y;
    short z;
    short pad;
};
struct Vec37 {
    int x;
    int y;
    int z;
};
struct Mat37 {
    short m[3][3];
    Vec37 t; // 0x14
};
// A bike's body (a Cobjet subclass)
struct Body37 {
    u8 m_00[0x34];
    Mat37 *m_34;
    u8 m_38[0x2C];
    Vec37 m_64;  // where it is
    SVec37 m_70; // how it's turned
    Vec37 m_78;
    u8 m_84[0x19C];
    struct Hist37 *m_220;
};
// A node of a grid, 0x38 bytes
struct Node37 {
    u8 m_00[0x38];
};
struct Grid37 {
    u8 m_00[4];
    Node37 *m_04;
};
// Where a body was: its node now and before, and its position
struct Hist37 {
    Node37 *m_00;
    Node37 *m_04;
    Vec37 m_08;
};
struct Name37 {
    int m_00;
    int m_04;
};
// A bike, 0x568 bytes (chunk_33's Bike33)
struct Bike37 {
    union {
        u32 m_00;    // flags: bit 6, in the race; bits 1-5, its kind
        u8 m_00b[4]; // 1: its state
    };
    int m_04;
    u8 m_08[6];
    short m_0E;
    int m_10;
    int m_14;
    int m_18;
    u8 m_1C[4];
    short m_20;
    short m_22;
    short m_24;
    short m_26;
    u8 m_28[8];
    Body37 *m_30;
    u8 m_34[8];
    short m_3C;
    short m_3E;
    s8 m_40;
    s8 m_41;
    u8 m_42;
    s8 m_43;
    u8 m_44;
    u8 m_45;
    u8 m_46[0x522];
};
// The run (chunk_33's Run33)
struct Run37 {
    u32 m_00;
    u8 m_04[0x3C];
    int m_40[5];
    int m_54[5][8];
    u8 m_F4[0x1F4];
    Bike37 m_2E8[5];
    u8 m_1DF0[0x34];
    s8 m_1E24[2];
    s8 m_1E26[5];
    s8 m_1E2B[0x15];
    u8 m_1E40[0x104]; // a list
    u8 m_1F44;
    u8 m_1F45[5];
    s8 m_1F4A;
};
// A camera, 0x5C bytes (chunk_58's Cam58)
struct Cam37 {
    u8 m_00[0x14];
    SVec37 m_14; // where it looks
    SVec37 m_1C; // from
    SVec37 m_24; // to
    u8 m_2C[0x2E];
    short m_5A;
};
// What func_8006AA30 returns
struct Spr37 {
    u8 m_00[4];
    int m_04;
    u8 m_08[0x34];
    int m_3C;
    short m_40;
    short m_42;
    int m_44;
    u8 m_48[2];
    short m_4A;
};
// An entry of the run's list at 0x1E40
struct Ent37 {
    u8 m_00[2];
    s8 m_02;
};
// What func_800891E8 returns
struct Txt37 {
    u8 m_00[0x30];
    int m_30;
};
struct Font37 {
    u8 m_00[0x30];
    u8 m_30[4];
};
struct Snd37 {
    int m_00;
};
// The race (chunk_33's Race33)
struct Own37 {
    u8 m_00[0x18];
    int m_18;
    u8 m_1C[0x58];
    int m_74;
    u8 m_78[0x4C];
    int m_C4[8];
    u8 m_E4[0x220];
    int m_304;
    u8 m_308[0x70];
    Run37 *m_378;
    u16 *m_37C;
    u8 m_380[0x18];
    SVec37 *m_398;
    u8 m_39C[0x1C];
    struct Cam37 *m_3B8;
    SVec37 m_3BC;
    SVec37 m_3C4;
    SVec37 m_3CC;
    SVec37 m_3D4;
    u8 m_3DC[0x10];
    int m_3EC;
    u8 m_3F0[0x87C];
    struct Grid37 *m_C6C;
};

extern int D_800CB3C0;
extern int D_800C6AB0[]; // "n_motoX"
extern int D_800CBC94;
extern int D_800CB400; // a table of ints, declared small
extern Snd37 D_800CAE90;
extern Snd37 D_800CB0A0;
extern void *D_800C89F4;
extern void *D_800CB478;
extern int D_800C8C0C;
extern int D_800C9EFC;
extern int D_800D5F34;
extern int D_800D5F38;
extern int D_800D5F70; // four ints, declared small

int func_80086A38(int b, int i);
int func_8006FD78(Snd37 *s);
Snd37 *func_8006FDAC(Snd37 *s, Snd37 *src);
void func_80082A8C(void *g, Own37 *o);
void func_8006ABD4(void *c, int id);
Spr37 *func_8006AA30(void *c, int a, int b, int d, int e, int f, int g);
void func_800863CC(Cam37 *c, SVec37 *v, int a);
void func_8005C128(Own37 *o, u32 i, int k);
void func_8005108C(Bike37 *b, int a);
void func_80051094(Bike37 *b);
void func_80024824(Body37 *s);
void func_80064608(Body37 *s, Own37 *o);
void func_8005DD70(Own37 *o, int n);
void func_800634BC(Body37 *s, Grid37 *g);
int func_8001A6AC(Grid37 *g, Vec37 *v, int a, int b);
void func_80061250(Bike37 *b);
void func_8006F858(int n, Bike37 *b);
void func_8001B974(int a, int n, Own37 *o, int b);
Ent37 *func_8007142C(u8 *l, int i);
void *func_80070D98(Ent37 *e, int i);
int func_80071464(u8 *l, short *i, short *j, Vec37 *pos, u8 *a, int b, int c, int d, void *e);
Body37 *func_80017E10(int l, const char *name, int len);
void func_80016600(Body37 *o, SVec37 *rot, Vec37 *pos);
Font37 *func_80078FC4(int *a, int b);
Txt37 *func_800891E8(u8 *f, int s);
void func_80086350(Cam37 *c, SVec37 *v);
int func_80050E88(int i);
void func_8006C8EC(int a, int b, int c);
void func_80044D70(Own37 *o);
void func_80097E4C(Own37 *o, int x, int y, int z);
void func_8005C304(Own37 *o, u32 i);
void func_8005B788(Own37 *o);
void func_8005B8D0(Own37 *o, Bike37 *b, int n, int k);
void func_8005BB44(Own37 *o, Bike37 *b, int n, int k);
void func_8005BC94(Own37 *o, Bike37 *b);
void func_8005BDE4(Own37 *o);
void func_8005BEC4(Own37 *o);
int func_8005BFEC(Own37 *o, Bike37 *e);
void func_8005C0E4(Own37 *o);
void func_8005C3FC(Own37 *o, int i);
int func_8005C424(Own37 *o, int i);
int func_8005C46C(Own37 *o, int i);
void func_8005C594(void);
void func_8005C5D8(Own37 *o, short *v);
void func_8005C608(void);
void func_8005CD9C(void);
int func_8005D12C(Own37 *o);
}

static inline int func_8005B788_count(Run37 *r, int kind) {
    int n = 0;
    Bike37 *end = &r->m_2E8[0];
    Bike37 *p = &r->m_2E8[4];

    do {
        if ((p->m_00 >> 6) & 1 && (int)(p->m_00 << 26) >> 27 == kind) {
            n++;
        }
    } while (p-- != end);
    return n;
}

void func_8005B788(Own37 *o) {
    int i1 = 0;
    int i2 = 0;
    int n = 0;
    int n1 = func_8005B788_count(o->m_378, 1);
    int n2 = func_8005B788_count(o->m_378, 2);
    int k;

    if (n2 > 0) {
        do {
            (&D_800D5F70)[n++] = o->m_378->m_1E26[i2++];
        } while (--n2);
    }
    if (n1 > 0) {
        do {
            (&D_800D5F70)[n++] = o->m_378->m_1E24[i1++];
        } while (--n1);
    }
    k = 4 - n;
    if (k > 0) {
        do {
            (&D_800D5F70)[n++] = -1;
        } while (--k >= 0);
    }
}

static inline void func_8005BB44_cpy(Vec37 *d, Vec37 *s) {
    int x = s->x;
    int y = s->y;
    int z = s->z;

    d->x = x;
    d->y = y;
    d->z = z;
}

void func_8005B8D0(Own37 *o, Bike37 *b, int n, int k) {
    Body37 *s;
    int j;

    if (((b->m_00 >> 6) & 1) == 0) {
        func_8005108C(b, 0);
        return;
    }
    func_80051094(b);
    func_8005108C(b, 1);
    b->m_04 = -1;
    b->m_40 = -1;
    b->m_00 &= ~0x80;
    b->m_42 = o->m_378->m_1F44;
    b->m_10 = -3;
    b->m_14 = -1;
    b->m_18 = -1;
    if (!o->m_304) {
        b->m_41 = -1;
    }
    b->m_0E = 0;
    for (j = 0; j < 8; j++) {
        o->m_378->m_54[n][j] = -1;
    }
    s = b->m_30;
    func_8005BB44(o, b, n, k);
    if ((int)(b->m_00 << 26) >> 27 == 1) {
        func_80024824(s);
    } else if ((int)(b->m_00 << 26) >> 27 == 2) {
        func_80064608(s, o);
    }
    func_8005DD70(o, n);
    if (!(o->m_378->m_00 & 0x3C)) {
        func_8005BC94(o, b);
        b->m_3E = -0x7FFF;
        b->m_3C = 0;
    }
    func_800634BC(s, o->m_C6C);
    if ((int)(b->m_00 << 26) >> 27 == 1) {
        Node37 *nd = 0;
        Vec37 v = s->m_64;
        Grid37 *g = o->m_C6C;
        Hist37 *h;
        int i = func_8001A6AC(g, &v, 0, 0);

        if (i != -1) {
            nd = &g->m_04[i];
        }
        h = s->m_220;
        h->m_04 = h->m_00;
        h->m_00 = nd;
        func_8005BB44_cpy(&h->m_08, &v);
    }
    func_80061250(b);
    func_8006F858(n, b);
    func_8001B974(o->m_3EC, n, o, 1);
}

#ifdef NON_MATCHING
// The matrix's copy: the original loads and stores it 3, 2 and 3 words at a time through $a0-$a2; GCC's block move goes 4 and 4 through $t2-$t5
void func_8005BB44(Own37 *o, Bike37 *b, int n, int k) {
    Body37 *s = b->m_30;
    Body37 *f;
    char name[8];

    if (b->m_00 & 1) {
        name[0] = 0;
        *(Name37 *)name = *(Name37 *)D_800C6AB0;
        name[6] = k + '0';
        name[7] = 0;
        f = func_80017E10(o->m_74, name, 7);
        if (f) {
            *s->m_34 = *f->m_34;
        }
    }
    func_8005BB44_cpy(&s->m_64, &s->m_34->t);
    s->m_70 = o->m_398[k];
    func_80016600(s, &s->m_70, &s->m_64);
    func_8005BB44_cpy(&s->m_78, &s->m_64);
}
#else
INCLUDE_ASM("asm/langimg/nonmatchings/chunk_37", func_8005BB44);
#endif

#ifdef NON_MATCHING
// The loop's test: GCC copies it before the loop (i known to be 0) and keeps fewer constants in saved registers; the original tests at the top each time
void func_8005BC94(Own37 *o, Bike37 *b) {
    short i;
    int done;
    void *e;

    if (o->m_378->m_1F4A > 0) {
        done = 0;
        b->m_20 = -1;
        i = 0;
        while (i < o->m_378->m_1F4A) {
            b->m_22 = 1;
            e = func_80070D98(func_8007142C(o->m_378->m_1E40, i), b->m_22 - 1);
            if (func_80071464(o->m_378->m_1E40, &i, &b->m_22, &b->m_30->m_64, b->m_1C, 1,
                              (b->m_20 << 16) | b->m_22, 1, e)) {
                b->m_20 = i;
                b->m_24 = i;
                b->m_26 = b->m_22;
                done = 1;
                b->m_45 = func_8007142C(o->m_378->m_1E40, i)->m_02 == -1;
            }
            i++;
            if (done) {
                break;
            }
        }
    }
}
#else
INCLUDE_ASM("asm/langimg/nonmatchings/chunk_37", func_8005BC94);
#endif

void func_8005BDE4(Own37 *o) {
    Run37 *r = o->m_378;
    Bike37 *b;
    int k;

    if (r->m_00 & 0x102) {
        b = 0;
        if (r->m_1E24[0] >= 0) {
            b = &r->m_2E8[r->m_1E24[0]];
        }
        k = r->m_40[r->m_1E2B[0]];
        if (b->m_00b[1] == 3) {
            if (!D_800CAE90.m_00 || func_8006FD78(&D_800CAE90) || k > 0) {
                func_8006FDAC(&D_800CAE90, &D_800CB0A0);
            }
        }
    }
}

static inline Bike37 *func_8005BEC4_bike(Run37 *r, int k) {
    Bike37 *b = 0;

    if (k >= 0) {
        b = &r->m_2E8[k];
    }
    return b;
}

void func_8005BEC4(Own37 *o) {
    int i;
    Bike37 *b;

    if (o->m_378->m_00 & 0x102) {
        if (D_800CAE90.m_00) {
            for (i = 0; i < 1; i++) {
                b = func_8005BEC4_bike(o->m_378, o->m_378->m_1E2B[i]);
                b->m_00 |= 0x40;
            }
        } else {
            for (i = 0; i < 1; i++) {
                b = func_8005BEC4_bike(o->m_378, o->m_378->m_1E2B[i]);
                b->m_00 &= ~0x40;
            }
        }
    }
    func_80082A8C(D_800C89F4, o);
}

#ifdef NON_MATCHING
// The -1 stored at 0x44: the original loads it again; GCC keeps the one k was compared with in a saved register ($s4)
int func_8005BFEC(Own37 *o, Bike37 *e) {
    int k = e->m_43;

    if (k != -1) {
        int t = e->m_00b[1];
        int j = e->m_41;

        if (t == 4) {
            int a = func_8005C424(o, 6);
            Spr37 *p;

            func_8006ABD4(D_800CB478, k + 3);
            p = func_8006AA30(D_800CB478, o->m_C4[k], a, 0x800000, 0x50, 0xFFFFFF, k + 3);
            if (p) {
                p->m_4A = 0x11;
                p->m_40 = 8;
                p->m_42 = 0;
                p->m_44 = -1;
                p->m_04 = 0;
                p->m_3C = 0x110;
            }
        } else if (t == 3) {
            func_8005C128(o, j, k);
        }
    }
    return 0;
}
#else
INCLUDE_ASM("asm/langimg/nonmatchings/chunk_37", func_8005BFEC);
#endif

void func_8005C0E4(Own37 *o) {
    int i;

    for (i = 2; i >= 0; i--) {
        func_8005C304(o, i);
    }
}

void func_8005C128(Own37 *o, u32 i, int k) {
    Txt37 *t;

    if (i < 3 && k != -1) {
        t = func_800891E8(func_80078FC4(&D_800CBC94, o->m_18)->m_30, o->m_C4[k]);
        o->m_3C4.z = (o->m_3C4.pad * *(int *)((u8 *)&D_800CB400 + (i << 2))) >> 12;
        if (o->m_378->m_00 == 2) {
            o->m_3C4.x = t->m_30 >> 3;
        } else {
            o->m_3C4.x = (t->m_30 - o->m_3C4.z) >> 1;
        }
        o->m_3D4.x = o->m_3C4.x + (o->m_3C4.z >> 1);
        o->m_3CC.z = o->m_3D4.z = o->m_3C4.x + o->m_3C4.z + 2;
        func_80086350(&o->m_3B8[i], &o->m_3BC);
        func_800863CC(&o->m_3B8[i], &o->m_3C4, 1000);
        o->m_3B8[i].m_5A = o->m_C4[k];
        o->m_3B8[i].m_1C.x = o->m_3CC.x;
        o->m_3B8[i].m_1C.y = o->m_3CC.y;
        o->m_3B8[i].m_24.x = o->m_3D4.x;
        o->m_3B8[i].m_24.y = o->m_3D4.y;
        o->m_3B8[i].m_1C.z = o->m_3CC.z;
        o->m_3B8[i].m_1C.pad = o->m_3CC.pad;
        o->m_3B8[i].m_24.z = o->m_3D4.z;
        o->m_3B8[i].m_24.pad = o->m_3D4.pad;
    }
}

void func_8005C304(Own37 *o, u32 i) {
    if (i < 3) {
        func_800863CC(&o->m_3B8[i], &o->m_3BC, 500);
        o->m_3B8[i].m_1C.x = o->m_3B8[i].m_14.x;
        o->m_3B8[i].m_1C.y = o->m_3B8[i].m_14.y;
        o->m_3B8[i].m_24.x = o->m_3CC.x;
        o->m_3B8[i].m_24.y = o->m_3CC.y;
        o->m_3B8[i].m_1C.z = o->m_3B8[i].m_14.z;
        o->m_3B8[i].m_1C.pad = o->m_3B8[i].m_14.pad;
        o->m_3B8[i].m_24.z = o->m_3CC.z;
        o->m_3B8[i].m_24.pad = o->m_3CC.pad;
    }
}

void func_8005C3FC(Own37 *o, int i) {
    o->m_3B8[i].m_5A = -1;
}

int func_8005C424(Own37 *o, int i) {
    int r = 0;

    if (i != -1) {
        r = func_80086A38(D_800C8C0C, o->m_37C[i]);
    }
    return r;
}

int func_8005C46C(Own37 *o, int i) {
    int r = 0;

    switch (i) {
    case 0:
        r = func_8005C424(o, 0x39);
        break;
    case 1:
        r = func_8005C424(o, 0x3A);
        break;
    case 2:
        r = func_8005C424(o, 0x3B);
        break;
    case 3:
        r = func_8005C424(o, 0x3C);
        break;
    case 4:
        r = func_8005C424(o, 0x3D);
        break;
    case 5:
        r = func_8005C424(o, 0x3E);
        break;
    case 6:
        r = func_8005C424(o, 0x3F);
        break;
    case 7:
        r = func_8005C424(o, 0x40);
        break;
    case 8:
        r = func_8005C424(o, 0x41);
        break;
    case 9:
        r = func_8005C424(o, 0x42);
        break;
    case 10:
        r = func_8005C424(o, 0x43);
        break;
    case 11:
        r = func_8005C424(o, 0x44);
        break;
    case 12:
        r = func_8005C424(o, 0x45);
        break;
    case 13:
        r = func_8005C424(o, 0x46);
        break;
    case 14:
        r = func_8005C424(o, 0x47);
        break;
    case 15:
        r = func_8005C424(o, 0x48);
        break;
    case 16:
        r = func_8005C424(o, 0x49);
        break;
    case 17:
        r = func_8005C424(o, 0x4A);
        break;
    }
    return r;
}

void func_8005C594(void) {
    int i;

    if (++D_800CB3C0 == 1) {
        i = 100;
        while (i--) {
        }
        i = 100;
        while (i--) {
        }
    }
}

void func_8005C5D8(Own37 *o, short *v) {
    func_80097E4C(o, v[0], v[1], v[2]);
}

void func_8005C608(void) {
    func_8006C8EC(func_80050E88(D_800D5F38), D_800D5F34, D_800D5F38);
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_37", func_8005C648);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_37", func_8005CA00);

void func_8005CD9C(void) {
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_37", func_8005CDA4);

int func_8005D12C(Own37 *o) {
    func_80044D70(o);
    D_800C8C0C = D_800C9EFC;
    return 1;
}
