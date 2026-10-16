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
// The race's rules (chunk_36's Hold36)
struct Rul37 {
    u8 m_00[0x4E4];
    int m_4E4;
    u8 m_4E8[0x44];
    int m_52C;
    u8 m_530[8];
    int m_538[7];
    int m_554;
    int m_558;
    u8 m_55C[0x18];
    int m_574;
};
struct Run37 {
    u32 m_00;
    int m_04;
    int m_08;
    u8 m_0C[4];
    Rul37 *m_10;
    short m_14; // the laps to run
    u8 m_16[0x2A];
    int m_40[5];
    int m_54[5][8];
    u8 m_F4[0x1F4];
    Bike37 m_2E8[5];
    u8 m_1DF0[0x18];
    int m_1E08;
    u8 m_1E0C[0x18];
    s8 m_1E24[2];
    s8 m_1E26[5];
    s8 m_1E2B[0x15];
    u8 m_1E40[0xE6]; // a list
    short m_1F26;    // its first entry
    u8 m_1F28[0x1C];
    u8 m_1F44;
    u8 m_1F45[5];
    s8 m_1F4A;
};
// A camera, 0x5C bytes (chunk_58's Cam58)
struct Cam37 {
    u8 m_00[8];
    short m_08, m_0A; // its lens: the projection's distance and half width
    u8 m_0C[8];
    SVec37 m_14; // where it looks
    SVec37 m_1C; // from
    SVec37 m_24; // to
    int m_2C;
    int m_30;
    int m_34;
    int m_38, m_3C; // two fonts
    u8 m_40[0x1A];
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
    u8 m_03[5];
    u16 m_08; // its laps
    u8 m_0A[0x46];
    Ent37 *m_50; // the next
};
// What func_800891E8 returns
struct Txt37 {
    u8 m_00[0x30];
    int m_30, m_34; // its width and height
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
    u8 m_78[0x3C];
    int *m_B4;
    u8 m_B8[0xC];
    int m_C4[8];
    u8 m_E4[0x220];
    int m_304;
    void *m_308;
    u8 m_30C[0x6C];
    Run37 *m_378;
    u16 *m_37C;
    u8 m_380[0x18];
    SVec37 *m_398;
    u8 m_39C[0x10];
    int m_3AC;
    int m_3B0, m_3B4;
    struct Cam37 *m_3B8;
    SVec37 m_3BC;
    SVec37 m_3C4;
    SVec37 m_3CC;
    SVec37 m_3D4;
    short m_3DC, m_3DE; // the two fonts' indices
    u8 m_3E0[0xC];
    int m_3EC;
    u8 m_3F0[8];
    int m_3F8[2];
    int m_400[2];
    int m_408[2];
    u8 m_410[0x2C];
    struct C37 *m_43C[2];
    struct C37 *m_444[3];
    int m_450, m_454;
    u8 m_458[0x24];
    void *m_47C;
    u8 m_480[0x18];
    struct Mode37 *m_498;
    u8 m_49C[0x7D0];
    struct Grid37 *m_C6C;
    struct Buf37 *m_C70;
};

extern int D_800CB3C0;
// The display's mode: its top five bits
struct Mode37 {
    u32 m_lo : 27;
    u32 m_hi : 5;
};
// What func_8008280C returns: its flags, and the same as a word
struct Pic37 {
    u8 m_00[8];
    int m_08;
    u16 m_0C;
};
extern int D_800D5E70;
extern int D_800C6AC8;
extern int D_800D5F10;
extern int D_800D5F6C;
extern int D_800D4898;
extern int D_800CBD50;
struct Sel37 {
    u8 m_00[4];
    int m_04;
};
Sel37 *func_800A1504(void);
void func_800A1268(void *p);
void func_800A021C(void *p);
void func_80048CF4(Own37 *o, void *a, void *b, int c);
Pic37 *func_8008280C(int l, int a, int b, int c);
void func_8008422C(Pic37 *p);
int func_8005C648(Own37 *o);
extern int D_800C6AB0[]; // "n_motoX"
extern int D_800CBC94;
extern int D_800CB400;   // a table of ints, declared small
extern int D_800CBD58[]; // the fonts
extern u8 *D_800CC088;
extern int D_800D49A4;
extern int D_800D5F40;
int func_800803C4(int font, int s);
void func_8005CA00(Own37 *o);
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
void func_8005CD9C(Own37 *o);
// The race's settings (what func_8005CDA4 is given)
struct Cfg37 {
    u8 m_00[4];
    int m_04, m_08, m_0C;
};
// One of chunk_51's objects (0x194 bytes)
struct C37 {
    u8 m_00[0x140];
    int m_140, m_144;
    u8 m_148[8];
    int m_150;
    u8 m_154[0x40];
};
// What the race's 0xC70 points to
struct Buf37 {
    u8 m_00[0x28];
    u8 *m_28, *m_2C, *m_30;
};
struct Pool37 {
    u8 m_00[4];
    int m_04, m_08;
};
extern Pool37 *D_800C5F28;
extern void *D_800C5E10;
extern int *D_800CB2F4, *D_800CB2F8;
extern int D_800C6518[], D_800C6534[], D_800C6550[], D_800C656C[], D_800C6588[], D_800C65A4[],
    D_800C65C0[], D_800C65DC[], D_800C65F8[], D_800C6630[], D_800C6668[], D_800C6684[],
    D_800C66A0[], D_800C66BC[];
C37 *func_80078244(C37 *o);
void func_800783A8(C37 *o, int *src, int *t1, int *t2, int i);
int func_80020298(void *p, void *mem, u32 size);
void func_8006BE7C(void *c, int a, int b, int d, void *e, int f);
void func_8006CA78(int a);
int func_8005CDA4(Own37 *o, Cfg37 *c);
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

// The laps to run times the riders (one fewer when a rider is out)
static inline void Laps37(Run37 *r) {
    int n = r->m_04;

    if (r->m_00 != 2 && r->m_10->m_4E4) {
        n--;
    }
    r->m_14 *= n;
}

#ifdef NON_MATCHING
// 3 off: in the laps product the original copies the run ($a0 to $a2, in the first test's delay slot) and reads and writes the laps through the copy; here GCC uses $a0 throughout.
int func_8005C648(Own37 *o) {
    int r0 = 0;
    int i, j, k;
    Run37 *r;

    o->m_378->m_1E08 = 1;
    o->m_498->m_hi = 0;
    if (o->m_378->m_00 & 0xA8) {
        o->m_498->m_hi = 7;
    }
    func_800A021C(&D_800D5E70);
    func_80048CF4(o, &D_800C6AC8, &D_800D5F10, -1);
    if (D_800D5F6C == 2) {
        o->m_304 = 1;
    } else {
        if (D_800D5F40 != 8 || !func_800A1504()->m_04) {
            func_800A1268(&D_800D4898);
        }
        func_8005B788(o);
        r0 = 1;
    }
    o->m_378->m_10->m_574 = func_8005C46C(o, D_800D5F38);
    for (i = 1; i >= 0; i--) {
        for (j = 0; j < 9; j++) {
            Pic37 *e = func_8008280C(D_800CBD50, o->m_378->m_00, j, i);

            if (e) {
                if (D_800D49A4 == 1 && o->m_378->m_00 == 8) {
                    int f = e->m_0C;

                    f &= ~4;
                    f &= ~8;
                    f &= ~0x10;
                    f &= ~1;
                    f &= ~2;
                    e->m_0C = f;
                    e->m_08 = (short)f;
                }
                if (o->m_378->m_04 == 1 || (o->m_378->m_00 & 2)) {
                    int f = e->m_0C;

                    f &= ~0x80;
                    f &= ~0x100;
                    e->m_0C = f;
                    e->m_08 = (short)f;
                }
                if (D_800D5F40 == 2) {
                    int f = e->m_0C;

                    f &= ~1;
                    f &= ~2;
                    e->m_0C = f;
                    e->m_08 = (short)f;
                }
                func_8008422C(e);
            }
        }
    }
    if (D_800D5F38 == 2 && o->m_378->m_00 == 2) {
        o->m_378->m_10->m_4E4 = 0;
    }
    o->m_378->m_14 = 0;
    r = o->m_378;
    if (r->m_1F4A > 0) {
        Ent37 *h = func_8007142C(r->m_1E40, r->m_1F26);
        Ent37 *e = h;

        do {
            o->m_378->m_14 += e->m_08;
            e = e->m_50;
        } while (e != h);
        r = o->m_378;
        Laps37(r);
        r = o->m_378;
    }
    {
        Bike37 *b;

        k = 4;
        b = &r->m_2E8[4];
        for (; k >= 0; k--, b--) {
            b->m_44 = k;
        }
    }
    return r0;
}
#else
INCLUDE_ASM("asm/langimg/nonmatchings/chunk_37", func_8005C648);
#endif

#ifdef NON_MATCHING
// The race display's layout, written in full: the original keeps the first loop's counter in a saved register shared with the second loop ($s2) and loads D_800CC088 before the first store; here the first counter is a temporary and the text's height is reloaded in another order (165 off).
void func_8005CA00(Own37 *o) {
    int i, j, s;
    Txt37 *t = func_800891E8(func_80078FC4(&D_800CBC94, o->m_18)->m_30, o->m_C4[0]);
    u8 *g = D_800CC088;

    o->m_3B0 = 0x800000;
    if (D_800D5F40 == 4 || D_800D5F40 == 2 || !D_800D5F40) {
        o->m_3B4 = 0x30;
    } else {
        o->m_3B4 = 0x20;
    }
    for (i = 2; i >= 0; i--) {
        (&D_800CB400)[i] = (o->m_3B8[i].m_08 << 12) / -o->m_3B8[i].m_0A;
    }
    if (o->m_378->m_00 == 2) {
        o->m_3C4.pad = t->m_34 >> 1;
        o->m_3BC.pad = 4;
        o->m_3C4.y = t->m_34 >> 2;
        o->m_3C4.x = 0;
        o->m_3BC.z = 0;
        o->m_3BC.x = 0;
        o->m_3BC.y = t->m_34 >> 1;
        o->m_3C4.z = (o->m_3C4.pad << 13) / 3 >> 12;
    } else if (o->m_378->m_00 & 0xA8) {
        if (D_800D49A4 == 1) {
            if (!D_800D5F40) {
                o->m_3AC = 0x64;
            } else {
                o->m_3AC = 0x54;
            }
            o->m_3C4.pad = t->m_34 >> 1;
            o->m_3BC.pad = 4;
            o->m_3C4.y = t->m_34 >> 2;
            o->m_3BC.y = t->m_34 >> 1;
            o->m_3BC.z = 0;
            o->m_3BC.x = t->m_30 >> 1;
        } else {
            o->m_3AC = 0x54;
            o->m_3C4.y = 8;
            o->m_3BC.pad = 2;
            o->m_3C4.pad = ((t->m_34 * 3) << 12 >> 14) - 8;
            o->m_3B4 = 0x800000;
            o->m_3BC.y = t->m_34 >> 1;
            o->m_3B0 = (g[4] - g[0]) >> 1;
            o->m_3BC.z = 0;
            o->m_3BC.x = t->m_30 >> 1;
        }
    } else {
        o->m_3AC = 0x49;
        o->m_3C4.y = 0;
        o->m_3BC.pad = 4;
        o->m_3C4.pad = t->m_34 >> 1;
        o->m_3BC.y = t->m_34 >> 1;
        o->m_3BC.z = 0;
        o->m_3BC.x = t->m_30 >> 1;
    }
    o->m_3DC = 2;
    o->m_3DE = 2;
    s = func_8005C424(o, 0x37);
    o->m_3CC.x = -func_800803C4(D_800CBD58[o->m_3DC], s);
    o->m_3CC.y = o->m_3D4.y = o->m_3C4.y + o->m_3C4.pad + 2;
    o->m_3D4.pad = o->m_3C4.y;
    o->m_3CC.pad = -(*(u8 *)D_800CBD58[o->m_3DE] * 2);
    for (j = 2; j >= 0; j--) {
        int id;

        o->m_3B8[j].m_38 = D_800CBD58[o->m_3DC];
        o->m_3B8[j].m_3C = D_800CBD58[o->m_3DE];
        o->m_3B8[j].m_30 = s;
        o->m_3B8[j].m_2C = 0;
        if (j >= 3) {
            id = 0x36;
        } else if (j >= 2) {
            id = 0x35;
        } else if (j > 0) {
            id = 0x34;
        } else {
            id = 0x33;
        }
        o->m_3B8[j].m_34 = func_8005C424(o, id);
    }
}
#else
INCLUDE_ASM("asm/langimg/nonmatchings/chunk_37", func_8005CA00);
#endif

void func_8005CD9C(Own37 *o) {
}

#ifdef NON_MATCHING
// The race set up, written in full (the chunk's -fmove-all-movables keeps the loop's 4 in $s7 as the original): left, the third mode's two arms, where the original loads D_800C656C in each and GCC shares it (134 off, most of it a shift).
int func_8005CDA4(Own37 *o, Cfg37 *c) {
    int i, f;

    o->m_378->m_00 = c->m_04;
    o->m_378->m_08 = c->m_0C;
    o->m_378->m_04 = c->m_08;
    for (i = 0; i < 2; i++) {
        o->m_43C[i] = func_80078244((C37 *)operator new(0x194));
    }
    for (i = 0; i < 3; i++) {
        o->m_444[i] = func_80078244((C37 *)operator new(0x194));
    }
    f = 0;
    if (o->m_378->m_00 & 0xA8) {
        f = !D_800D49A4;
    }
    if (o->m_378->m_10->m_52C == 5) {
        if (f) {
            D_800CB2F8 = D_800C66A0;
            D_800CB2F4 = D_800C66BC;
        } else {
            D_800CB2F8 = D_800C65C0;
            D_800CB2F4 = D_800C65DC;
        }
    } else if (o->m_378->m_10->m_52C == 6) {
        if (f) {
            D_800CB2F8 = D_800C6668;
            D_800CB2F4 = D_800C6684;
        } else {
            D_800CB2F8 = D_800C6588;
            D_800CB2F4 = D_800C65A4;
        }
    } else if ((u32)(o->m_378->m_08 - 5) < 2) {
        if (f) {
            D_800CB2F8 = D_800C6630;
            D_800CB2F4 = D_800C656C;
        } else {
            D_800CB2F8 = D_800C6550;
            D_800CB2F4 = D_800C656C;
        }
    } else {
        if (f) {
            D_800CB2F8 = D_800C65F8;
        } else {
            D_800CB2F8 = D_800C6518;
        }
        D_800CB2F4 = D_800C6534;
    }
    for (i = 0; i < 2; i++) {
        C37 *p = o->m_43C[i];

        func_800783A8(p, o->m_378->m_10->m_538, D_800CB2F4, D_800CB2F8, 4);
        o->m_450 = o->m_378->m_10->m_554;
        o->m_454 = o->m_378->m_10->m_558;
        o->m_400[i] = p->m_140;
        o->m_408[i] = p->m_144;
        o->m_3F8[i] = -p->m_150;
    }
    func_8005CD9C(o);
    o->m_C70->m_30 = new u8[0x12C];
    o->m_C70->m_2C = new u8[0xAF0];
    o->m_C70->m_28 = new u8[0x14];
    if (!(o->m_378->m_00 & 0xA8)) {
        func_80020298(D_800C5E10, o->m_47C, D_800C5F28->m_04 << 3);
    }
    if (o->m_378->m_00 & 0x54) {
        func_8006BE7C(o->m_308, 0x3000, o->m_B4[0], o->m_B4[1] << 1,
                      (u8 *)o->m_47C + (D_800C5F28->m_04 << 3), D_800C5F28->m_08 << 3);
    }
    func_8006CA78((o->m_378->m_00 & 0xA8) != 0);
    return 1;
}
#else
INCLUDE_ASM("asm/langimg/nonmatchings/chunk_37", func_8005CDA4);
#endif

int func_8005D12C(Own37 *o) {
    func_80044D70(o);
    D_800C8C0C = D_800C9EFC;
    return 1;
}
