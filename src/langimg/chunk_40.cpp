#include "common.h"
#include "langimg/cobjet.h"

// A frame's texture coordinates (chunk_39's Anim39)
struct Anim40 {
    u8 m_00[0x10];
};

struct Vec40 {
    int x;
    int y;
    int z;
};

// A state (chunk_41's St41): its kind first
struct St40 {
    int *m_00;
};

// A bike's model object's base class (chunk_41's Obj41)
struct Obj40 {
    u8 m_00[4];
    int m_04; // Cobjet's flags
    u8 m_08[0x48];
    void *m_50; // the vtable
    int m_54;
    s8 m_58;
    u8 m_59;
    u8 m_5A;
    u8 m_5B;
    u8 m_5C;
    u8 m_5D;
    u8 m_5E;
    u8 m_5F;
    u8 m_60;
    u8 m_61;
    u8 m_62[2];
    Vec40 m_64;
    short m_70[3];
    u8 m_76[2];
    Vec40 m_78;
    Vec40 m_84;
    u8 m_90[0xC];
    Vec40 m_9C;
    Vec40 m_A8;
    Vec40 m_B4;
    Vec40 m_C0;
    int m_CC;
    int m_D0;
    int m_D4;
    int m_D8;
    int m_DC;
    int m_E0;
    int m_E4;
    int m_E8;
    int m_EC;
    short m_F0;
    short m_F2;
    int m_F4;
    int m_F8;
    Vec40 m_FC;
    int m_108;
    int m_10C;
    int m_110;
    int m_114;
    int m_118;
    Vec40 m_11C;
    int m_128;
    u8 m_12C;
    u8 m_12D;
    short m_12E;
    short m_130;
    short m_132;
    int m_134;
    Vec40 m_138;
    int m_144;
    u8 m_148;
    u8 m_149;
    u8 m_14A;
    u8 m_14B;
    u8 m_14C;
    u8 m_14D;
    u8 m_14E;
    u8 m_14F;
    u8 m_150;
    u8 m_151[3];
    int m_154;
    u8 m_158;
    u8 m_159;
    short m_15A;
    int m_15C;
    int m_160;
    Vec40 m_164;
    int m_170;
    Vec40 m_174;
    Vec40 m_180;
    Vec40 m_18C;
    int m_198;
    Vec40 m_19C;
    Vec40 m_1A8;
    u8 m_1B4[0x6C];
    St40 *m_220;
    St40 *m_224;
    St40 *m_228;
    St40 *m_22C;
    St40 *m_230;
};

// What a player's m_0C points to
struct Model40 {
    u8 m_00[0x114];
    int m_114[1]; // the parts' numbers
};

// A player (0x568 bytes)
struct Ply40 {
    u8 m_00[0xC];
    Model40 *m_0C;
    u8 m_10[0x20];
    Obj40 *m_30;
    u8 m_34[0x15C];
    u8 m_190[0x174];
    u8 m_304[0x14];
    Cobjet *m_318;
    u8 m_31C[4];
    u8 m_320;
    u8 m_321;
    u8 m_322;
    u8 m_323;
    u8 m_324[0x54];
    Ply40 *m_378; // the players
    u8 m_37C[0x5C];
    int m_3D8;
    u8 m_3DC[0xC];
    int m_3E8; // bits waiting
    u8 m_3EC[0x17C];
};

// A track's segment: its length
struct Seg40 {
    int m_00;
    u8 m_04[0x10];
};
struct Trk40 {
    u8 m_00[0x28];
    Seg40 *m_28;
};
// The lists to sort: their words and how many, in pairs
extern int *D_800C75D4;
extern int D_800C75D8;
extern short D_800C7644; // three tables of speeds, by kind
extern short D_800C7650;
extern short D_800C765C;
extern int D_800C766C; // the vtable
extern int D_800CB418; // the sorts done once
extern int D_800D6100;
extern int D_800D6130;

extern Cobjet *CobjetCtor40(Cobjet *o) asm("__6Cobjet");
extern void CobjetDtor40(Cobjet *o, int f) asm("_._6Cobjet");

extern "C" {
void func_8001A63C(void *p, int f);
void func_8001D07C(void *p);
void qsort(void *base, int n, int size, int (*cmp)(int *, int *));
int func_8006095C(int *a, int *b);
void func_8006348C(Obj40 *o, int *a, int *b);
int func_80063A30(Obj40 *o);
Vector3 *func_80099718(Vector3 *d, Vector3 *s, int k);
Vector3 *func_800998D0(Vector3 *d, Vector3 *a, Vector3 *b);
Vector3 *func_80099DCC(Vector3 *d, Vector3 *s, int k);
int func_80062CF4(Ply40 *a, Ply40 *b, Trk40 *t, int w);
void func_80062DB4(void);
Obj40 *func_80062E40(Obj40 *o);
void func_80062EEC(Obj40 *o, int f);
void func_80062FB4(Obj40 *o);
void func_800630D8(Obj40 *o);
void func_800631A4(Obj40 *o);
void func_80063250(Obj40 *o);
void func_80063398(Obj40 *o);
void func_8006139C(Anim40 *a, int f);
void func_80034D60(u8 *a, u8 *b, int c, int d, Ply40 *p, u8 *e);
void func_80061484(Anim40 *a, int f, int g);
void func_800614C0(Ply40 *p, int i);
void func_80061510(Ply40 *p, Cobjet *o);
void func_80061540(Cobjet *o, int n, int *parts);
void func_800623DC(Ply40 *p);
void func_800627B8(Ply40 *p);
void func_800627C0(Ply40 *p, int b);
int func_800627D8(Ply40 *p);
int func_800627E4(Ply40 *p);
}

static inline void VecSet40(Vec40 *v, int x, int y, int z) {
    v->x = x;
    v->y = y;
    v->z = z;
}

static inline void VecZero40(Vec40 *v) {
    v->z = 0;
    v->y = 0;
    v->x = 0;
}

static inline void SVecZero40(short *v) {
    v[2] = 0;
    v[1] = 0;
    v[0] = 0;
}

static inline void VecCopyL40(Vec40 *d, Vec40 *s) {
    int x = s->x;
    int y = s->y;
    int z = s->z;

    d->x = x;
    d->y = y;
    d->z = z;
}

/* Two animations' frames set. */
void func_80061484(Anim40 *a, int f, int g) {
    func_8006139C(a, f);
    func_8006139C(a + 1, g);
}

void func_800614C0(Ply40 *p, int i) {
    func_80061510(p, p->m_378[i].m_318);
}

void func_80061510(Ply40 *p, Cobjet *o) {
    func_80061540(o, 2, p->m_378->m_0C->m_114);
}

/* An object's n parts set from a list. */
void func_80061540(Cobjet *o, int n, int *parts) {
    int i;

    if (func_800178DC(o, n)) {
        for (i = 0; i < n; i++) {
            o->m_38[i] = parts[i];
        }
        o->m_04 &= ~0x12;
    }
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_40", func_800615C4);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_40", func_800618BC);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_40", func_80062098);

void func_800623DC(Ply40 *p) {
    u8 *q;

    p->m_318 = 0;
    p->m_321 = p->m_320;
    p->m_320 = 0;
    p->m_323 = p->m_322;
    p->m_322 = 0;
    q = (u8 *)p->m_30;
    func_80034D60(p->m_190, q + 0x11C, *(int *)(q + 0x220), *(s8 *)(q + 0x158), p, p->m_304);
    p->m_3D8 = 0;
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_40", func_80062440);

void func_800627B8(Ply40 *p) {
    p->m_3E8 = 0;
}

void func_800627C0(Ply40 *p, int b) {
    p->m_3E8 |= 1 << b;
}

int func_800627D8(Ply40 *p) {
    return p->m_3E8 != 0;
}

/* The first bit waiting, cleared with the others; -1 if none. It tests
 * bit 0 every time round: the original's. */
int func_800627E4(Ply40 *p) {
    int r = -1;
    int i;

    if (p->m_3E8) {
        for (i = 0; i < 8; i++) {
            if (p->m_3E8 & 1) {
                r = i;
                p->m_3E8 = 0;
                break;
            }
        }
    }
    return r;
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_40", func_80062828);

/* Whether b is within w of a, on the same segment of the track. */
int func_80062CF4(Ply40 *a, Ply40 *b, Trk40 *t, int w) {
    int sa;
    int pa;
    int sb;
    int pb;
    int len;
    int d;
    int r = 0;
    Obj40 *ob = b->m_30;

    func_8006348C(a->m_30, &sa, &pa);
    func_8006348C(ob, &sb, &pb);
    len = t->m_28[sa].m_00;
    d = (pa - w / 2 + len) % len;
    if (sa == sb && pb >= d) {
        r = pb < d + w;
    }
    return r;
}

/* The four lists sorted, the first time. */
void func_80062DB4(void) {
    u32 i;

    if (++D_800CB418 == 1) {
        for (i = 0; i < 4; i++) {
            qsort((&D_800C75D4)[i * 2], (&D_800C75D8)[i * 2], 4, func_8006095C);
        }
    }
}

/* The constructor. */
Obj40 *func_80062E40(Obj40 *o) {
    CobjetCtor40((Cobjet *)o);
    o->m_50 = &D_800C766C;
    o->m_5A = 1;
    o->m_118 = 0x1E000;
    o->m_59 = 0;
    o->m_54 = 0;
    o->m_F0 = 0;
    o->m_F2 = 0;
    o->m_108 = 0;
    o->m_230 = 0;
    o->m_22C = 0;
    o->m_228 = 0;
    o->m_224 = 0;
    o->m_220 = 0;
    o->m_15A = 0;
    o->m_04 |= 0x1000000;
    VecZero40(&o->m_64);
    SVecZero40(o->m_70);
    func_80062FB4(o);
    return o;
}

/* The destructor: the five states freed. */
void func_80062EEC(Obj40 *o, int f) {
    o->m_50 = &D_800C766C;
    if (o->m_220) {
        func_8001A63C(o->m_220, 3);
        o->m_220 = 0;
    }
    if (o->m_224) {
        func_8001A63C(o->m_224, 3);
        o->m_224 = 0;
    }
    if (o->m_228) {
        func_8001A63C(o->m_228, 3);
        o->m_228 = 0;
    }
    if (o->m_22C) {
        func_8001A63C(o->m_22C, 3);
        o->m_22C = 0;
    }
    if (o->m_230) {
        func_8001A63C(o->m_230, 3);
        o->m_230 = 0;
    }
    CobjetDtor40((Cobjet *)o, f);
}

#ifdef NON_MATCHING
// The first stores: the original sets the constant 10000 in $v0 and the first vector's address after
/* Everything moving reset. */
void func_80062FB4(Obj40 *o) {
    o->m_EC = o->m_E8 = 10000;
    o->m_108 = 0;
    o->m_F0 = 0;
    VecZero40(&o->m_78);
    VecZero40(&o->m_9C);
    VecZero40(&o->m_B4);
    VecSet40(&o->m_FC, 0, 0x1000, 0);
    VecSet40(&o->m_138, 0, 0x1000, 0);
    o->m_158 = 3;
    o->m_160 = 0;
    o->m_15C = 0;
    o->m_154 = 0;
    o->m_14F = 0;
    o->m_144 = 0;
    o->m_14D = 0;
    o->m_14E = 0;
    VecZero40(&o->m_164);
    VecZero40(&o->m_174);
    VecZero40(&o->m_180);
    VecZero40(&o->m_18C);
    VecZero40(&o->m_19C);
    VecZero40(&o->m_1A8);
    o->m_198 = 0;
    o->m_170 = 0;
    o->m_61 = 0;
    func_800630D8(o);
    func_8001D07C(o->m_1B4);
}
#else
INCLUDE_ASM("asm/langimg/nonmatchings/chunk_40", func_80062FB4);
#endif

#ifdef NON_MATCHING
// The stores' order around the constants (0x199 twice, 3)
void func_800630D8(Obj40 *o) {
    o->m_F2 = 0;
    o->m_D4 = 0;
    o->m_D8 = 0;
    o->m_DC = 0;
    o->m_E0 = 0;
    o->m_E4 = 0;
    o->m_10C = 0;
    o->m_110 = 0;
    VecZero40(&o->m_11C);
    o->m_12E = 0x199;
    o->m_158 = 3;
    o->m_130 = o->m_134 = 0x199;
    o->m_128 = 0;
    o->m_F4 = 0;
    o->m_14F = 0;
    o->m_12C = 0;
    o->m_154 = 0;
    o->m_CC = 0;
    o->m_D0 = 0;
    o->m_F8 = 0;
    o->m_149 = 0;
    o->m_148 = 0;
    o->m_14A = 1;
    o->m_14C = 0;
    VecZero40(&o->m_84);
    func_800631A4(o);
    o->m_60 = o->m_5F;
    o->m_5C = 0;
    o->m_5D = 0;
    o->m_5E = 0;
    o->m_5F = 0;
}
#else
INCLUDE_ASM("asm/langimg/nonmatchings/chunk_40", func_800630D8);
#endif

/* The current values kept as the last ones. */
void func_800631A4(Obj40 *o) {
    VecCopyL40(&o->m_A8, &o->m_9C);
    VecCopyL40(&o->m_C0, &o->m_B4);
    o->m_114 = o->m_110;
    o->m_12D = o->m_12C;
    o->m_14B = o->m_14A;
    o->m_159 = o->m_158;
    if (o->m_230 && o->m_230->m_00) {
        o->m_150 = func_80063A30(o);
    } else {
        o->m_150 = 0;
    }
}

void func_80063250(Obj40 *o) {
    int v;
    int i;
    short *t;
    int s;

    o->m_F4 = (o->m_110 - o->m_114) / D_800D6100;
    if (o->m_110 <= o->m_114) {
        o->m_14A = 1;
        o->m_149 = 0;
        o->m_148 = 0;
    } else {
        o->m_14A = 0;
        o->m_149 = 1;
        o->m_148 = 1;
    }
    v = o->m_110 / (o->m_118 / 4096);
    if (v >= 0x1000) {
        v = 0xFFF;
    }
    i = 1;
    if (o->m_58 == 0) {
        t = &D_800C7644;
    } else if (o->m_58 == 1) {
        t = &D_800C7650;
    } else {
        t = &D_800C765C;
    }
    while (*t < v) {
        t++;
        i++;
    }
    o->m_12C = i;
    s = v * *t / 4096;
    o->m_130 = s;
    o->m_132 = o->m_130 = o->m_12E + (0x1000 - o->m_12E) * o->m_130 / 4096;
}

#ifdef NON_MATCHING
// The last copy: $v0 and $v1 swap
void func_80063398(Obj40 *o) {
    Vector3 c;
    Vector3 b;
    Vector3 a;
    Vector3 *pa = &a;
    Vector3 *pb = &b;

    func_800998D0(pa, (Vector3 *)&o->m_64, (Vector3 *)&o->m_78);
    func_80099718(pb, pa, D_800D6130 >> 6);
    func_80099DCC(&c, pb, 6);
    VecCopyL40(&o->m_84, (Vec40 *)&c);
}
#else
INCLUDE_ASM("asm/langimg/nonmatchings/chunk_40", func_80063398);
#endif
