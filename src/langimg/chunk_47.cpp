#include "common.h"
#include "mulshift.h"
#include "psyq.h"

/* Lists, a table of entries, and their counts (docs/matching/issue-48-langimg-chunk47.md) */

extern "C" {
// A 20-byte element of a list's array
struct Elem47 {
    u8 m_00[0x14];
};
struct List47 {
    int m_00;
    int m_04;
    int m_08; // the count
    Elem47 *m_0C;
};
// A singly linked node and its key
struct Node47 {
    Node47 *m_00;
    int m_04;
};
struct Vec47 {
    int vx, vy, vz;
};
struct Obj47 {
    int m_00;
    int m_04;
    u8 m_08[0x28]; // a sound
    int m_30;
    u8 m_34[0x18];
    Vec47 m_4C;
    u8 m_58[8];
    int m_60; // with m_64.vx, the list's head (func_80070E20)
    Vec47 m_64;
    u8 m_70[0x18];
    Vec47 m_88;
    u8 m_94[0xC];
    Vec47 m_A0;
    u8 m_AC[0x34];
    int m_E0;
    int m_E4;
    int m_E8;
    int m_EC;
    int m_F0;
    int m_F4[8];
    int m_114;
};
// The 124-byte entries at D_800CB5E0
struct Ent47 {
    u8 m_00[0xC];
    void *m_0C; // the first part's vtable
    u8 m_10[0x30];
    u8 m_40[0xC]; // the second part
    void *m_4C;   // its vtable
    u8 m_50[0x2C];
};

// A position, an angle (12 bits) and a length
struct Ang47 {
    int m_00;
    int m_04;
    u16 m_08;
    short m_0A;
};
struct Pos47 {
    int m_00;
    int m_04;
    int m_08;
};
struct SinCos47 {
    short m_00;
    short m_02;
};
struct Cam47 {
    u8 m_00[0x3C];
};
// What D_800D11D0 holds, as far as it's used here
struct World47 {
    u8 m_00[0x1C0C];
    Cam47 m_1C0C[3];
    u8 m_1CC0[0x10];
    Cam47 *m_1CD0;
};
extern SinCos47 D_800BF3A0[];
extern int D_800C838C;
extern short D_800D2EC4[];
extern s8 D_800C7F2D;
extern s8 D_800C8388;
extern int D_800C83C0;
extern short D_800C7F18;
extern int D_800CB5E0; // the five entries (built with la)
#define ENTS47 ((Ent47 *)&D_800CB5E0)
extern World47 D_800D11D0;
extern int D_800CB5D8;
int func_80096900(void *p);
void func_80096918(void *p, int a);
void func_8006F7D4(void);
void func_800145A8(void *p);
void func_8006DF90(void);
void func_8001480C(void *p);
void func_8006F1E0(Ent47 *e);
void func_8006F270(Ent47 *e);
void func_8006FE64(Obj47 *o, int a);
int func_80096884(void *c);
void func_8009682C(void *c);
void func_8009674C(void *c, int a, int b, int d, int e, int f);
void func_800966DC(void *c);
void func_8006FA30(int a, int b);
void func_8006DFB4(void);
void func_80013450(Cam47 *c, int a, int b, int d, int e);
void func_80015730(void);
void func_80015764(void);
void func_800121C0(int a);
void __builtin_delete(void *p);

void func_8006F7D4(void);
void func_8006F968(int i, int a, int b, int d, int e);
void func_8006F9BC(int mode);
short func_8006FAF8(int a, int b);
Obj47 *func_8006FC70(Obj47 *o);
void func_8006FCAC(Obj47 *o, int flags);
void func_8006FCF8(Obj47 *o);
void func_8006FD40(Obj47 *o);
void func_8006FF0C(Obj47 *o);
int func_80070CCC(Ang47 *a, Pos47 *p);
void func_80070D54(Ang47 *a, int *out);
void func_8006FE64(Obj47 *o, int a);
void func_8006FA30(int ch, int vol);
Obj47 *func_8006FDAC(Obj47 *o, Obj47 *src);
void func_80070C10(Ang47 *a, Pos47 *f, Pos47 *b);
void func_8006F88C(int i, u8 *x, int d);
void func_80096C14(void *d, void *s);
void func_800153FC(int v);
void func_80012120(void *c, int v);
void func_8006F21C(Ent47 *e);
// Five positions, the newest last, and the differences between them
struct Hist47 {
    Vec47 m_00;
    Vec47 m_0C;
    Vec47 m_18;
    Vec47 m_24;
    Vec47 m_30;
};
void func_80099898(Vec47 *d, Vec47 *a, Vec47 *b);
void func_800998D0(Vec47 *d, Vec47 *a, Vec47 *b);
void func_80070A40(Hist47 *h, Vec47 *v);
// A replay frame: a value, a position and an angle
struct Frame47 {
    int m_00;
    Vec47 m_04;
    SVECTOR m_10;
};
// The bit stream at an object's 0x08: a bit written or read, then a value
// in one of the widths listed (the list ends 0x20, -1)
void func_80096ACC(void *s, int n, int bit);
void func_80096CA8(void *s, int v, ...);
int func_80096B74(void *s, int n);
int func_80096D84(void *s, ...);
void func_8006FF78(Obj47 *o, Frame47 *f);
void func_80070140(Obj47 *o, Frame47 *f);
void func_80070B2C(Hist47 *h, Vec47 *v);
void func_8006FB74(void);
void func_80013CFC(World47 *w);
void func_8006E054(void *p);
extern int D_800CB5DC;
extern int D_800C83D8; // the entries' two vtables (built with la)
extern int D_800C8400;
void func_8006F29C(Ent47 *e, u8 *x);

void func_8006F7A0(void);
void func_8006F824(int i);
void func_8006F858(int i, void *x);
short func_8006FADC(int i);
void func_8006FB3C(void);
int func_8006FD78(Obj47 *o);
int func_8006FD98(int *q);
void func_8006FE5C(int *p);
void func_8006FF44(Obj47 *o);
Elem47 *func_80070D98(List47 *l, int i);
Elem47 *func_80070DB0(List47 *l);
Elem47 *func_80070DD0(List47 *l);
int func_80070DF4(Obj47 *o, int key, Node47 *n);
int func_80070E20(Obj47 *o, int key);
}

static inline void VecZero(Vec47 *v) {
    v->vx = 0;
    v->vy = 0;
    v->vz = 0;
}

static inline void SVecZero(SVECTOR *v) {
    v->vx = 0;
    v->vy = 0;
    v->vz = 0;
}

static inline void VecCopyL(Vec47 *d, Vec47 *s) {
    int x = s->vx;
    int y = s->vy;
    int z = s->vz;

    d->vx = x;
    d->vy = y;
    d->vz = z;
}

static inline void VecCopy(Vec47 *d, Vec47 *s) {
    d->vx = s->vx;
    d->vy = s->vy;
    d->vz = s->vz;
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_47", func_8006F29C);

void func_8006F7A0(void) {
    func_8006F7D4();
    func_800145A8(&D_800D11D0);
    func_8006DF90();
}

void func_8006F7D4(void) {
    u32 i;

    for (i = 0; i < 5; i++) {
        func_8006F270(ENTS47 + i);
    }
    func_8006DFB4();
}

void func_8006F824(int i) {
    func_8006F1E0(&ENTS47[i]);
}

void func_8006F858(int i, void *x) {
    // x goes on in $a1 untouched
    ((void (*)(Ent47 *, void *))func_8006F270)(&ENTS47[i], x);
}

void func_8006F88C(int i, u8 *x, int d) {
    int v = 0x40;

    if (D_800C7F2D) {
        v = *(int *)((i << 2) + (u8 *)&D_800C838C);
    }
    D_800D2EC4[0] = v;
    if (((s8 *)x)[0x185]) {
        func_8006F858(i, x);
    }
    if (d <= 0x95FFF && !D_800C8388) {
        func_8006F29C(&ENTS47[i], x);
    } else {
        func_8006F21C(&ENTS47[i]);
    }
}

void func_8006F968(int i, int a, int b, int d, int e) {
    World47 *w = &D_800D11D0;
    Cam47 *c = &w->m_1C0C[i];

    func_80013450(c, a, b, d, e);
    w->m_1CD0 = c;
}

void func_8006F9BC(int mode) {
    switch (mode) {
    case 0:
        func_80015730();
        func_800121C0(0);
        break;
    case 1:
        func_80015764();
        func_800121C0(1);
        break;
    case 2:
        func_80015764();
        func_800121C0(1);
        break;
    }
}

/* Sets one of the volumes (0 to 63): 5 the master, 6 the CD's, the others
 * a channel's. */
void func_8006FA30(int ch, int vol) {
    int v;

    if (vol >= 0) {
        if (vol < 0x40) {
            v = vol;
        } else {
            v = 0x3F;
        }
    } else {
        v = 0;
    }
    if (ch == 5) {
        SpuSetCommonMasterVolume((short)(v << 6), (short)(v << 6));
    } else if (ch == 6) {
        func_800153FC(v * 2);
    } else {
        func_80012120(*(void **)((ch << 2) + (u8 *)&D_800C83C0), v * 2);
    }
    *(short *)((ch << 1) + (u8 *)&D_800C7F18) = v;
}

short func_8006FADC(int i) {
    i <<= 1;
    return *(short *)((u8 *)&D_800C7F18 + i);
}

short func_8006FAF8(int a, int b) {
    func_8006FA30(a, func_8006FADC(a) + b);
    return func_8006FADC(a);
}

void func_8006FB3C(void) {
    if (--D_800CB5D8 == 0) {
        func_8001480C(&D_800D11D0);
    }
}

/* The static objects' construction, by their first users: D_800D11D0 (its
 * arrays' elements have empty constructors), then the five entries. */
/* The static objects' construction, by their first users: D_800D11D0 (its
 * arrays' elements have empty constructors), then the five entries. */
void func_8006FB74(void) {
    int i;
    Ent47 *e;

    if (++D_800CB5D8 == 1) {
        World47 *w = &D_800D11D0;
        int j;
        int k;

        u8 *q = (u8 *)w;

        j = 63;
        do {
            q += 4;
        } while (--j != -1);
        k = 1;
        do {
            q += 4;
        } while (--k != -1);
        func_80013CFC(w);
    }
    if (++D_800CB5DC == 1) {
        e = ENTS47;
        i = 4;
        do {
            func_8006E054(e);
            e->m_0C = &D_800C83D8;
            func_8006E054(e->m_40);
            e->m_4C = &D_800C8400;
            func_8006F1E0(e);
            e++;
        } while (--i != -1);
    }
}

Obj47 *func_8006FC70(Obj47 *o) {
    func_800966DC(o->m_08);
    func_8006FE64(o, 1);
    o->m_00 = 0;
    return o;
}

void func_8006FCAC(Obj47 *o, int flags) {
    func_8006FD40(o);
    func_8009682C(o->m_08);
    if (flags & 1) {
        __builtin_delete(o);
    }
}

void func_8006FCF8(Obj47 *o) {
    void *c = o->m_08;

    if (!func_80096884(c)) {
        func_8009674C(c, 0x2800, 0, 0, 0, 0);
    }
}

void func_8006FD40(Obj47 *o) {
    void *c = o->m_08;

    if (func_80096884(c)) {
        func_8009682C(c);
    }
}

int func_8006FD78(Obj47 *o) {
    return func_80096900(o->m_08) < 0x1C;
}

int func_8006FD98(int *q) {
    return q[1] < q[0] - 1;
}

Obj47 *func_8006FDAC(Obj47 *o, Obj47 *src) {
    int i;

    if (func_80096884(o->m_08) && func_80096884(src->m_08)) {
        func_80096C14(o->m_08, src->m_08);
        o->m_00 = src->m_00;
        o->m_F0 = src->m_F0;
        for (i = 0; i < 8; i++) {
            o->m_F4[i] = src->m_F4[i];
        }
        func_8006FF44(o);
    }
    return o;
}

void func_8006FE5C(int *p) {
    *p = 0;
}

void func_8006FE64(Obj47 *o, int a) {
    Vec47 z;
    int i;

    o->m_30 = 0;
    o->m_04 = 0;
    o->m_E4 = 0;
    o->m_E8 = 0;
    o->m_E0 = 0;
    o->m_EC = 0;
    VecZero(&z);
    VecCopy(&o->m_64, &z);
    VecCopyL(&o->m_4C, &o->m_64);
    VecZero(&z);
    VecCopy(&o->m_A0, &z);
    VecCopyL(&o->m_88, &o->m_A0);
    if (a) {
        o->m_F0 = -1;
        for (i = 0; i < 8; i++) {
            o->m_114 = -1;
        }
    }
}

void func_8006FF0C(Obj47 *o) {
    func_8006FE64(o, 1);
    o->m_00 = 0;
    func_80096918(o->m_08, 2);
}

void func_8006FF44(Obj47 *o) {
    func_8006FE64(o, 0);
    func_80096918(o->m_08, 1);
}

/* A frame written: each part a bit (present or not), then its values. */
void func_8006FF78(Obj47 *o, Frame47 *f) {
    void *s = o->m_08;
    int has;

    has = f->m_00 != 0;
    func_80096ACC(s, 1, has);
    if (has) {
        func_80096CA8(s, f->m_00, 4, 7, 0x20, -1);
    }
    has = (f->m_04.vx | f->m_04.vy | f->m_04.vz | f->m_10.vx | f->m_10.vy | f->m_10.vz) != 0;
    func_80096ACC(s, 1, has);
    if (has) {
        func_80096CA8(s, f->m_04.vx, 4, 7, 10, 0x20, -1);
        func_80096CA8(s, f->m_04.vy, 4, 7, 10, 0x20, -1);
        func_80096CA8(s, f->m_04.vz, 4, 7, 10, 0x20, -1);
        func_80096CA8(s, f->m_10.vx, 3, 5, 7, 9, 0x20, -1);
        func_80096CA8(s, f->m_10.vy, 3, 5, 7, 9, 0x20, -1);
        func_80096CA8(s, f->m_10.vz, 3, 5, 7, 9, 0x20, -1);
    }
    o->m_00++;
}

/* A frame read back, its absent parts zero. */
void func_80070140(Obj47 *o, Frame47 *f) {
    if (func_80096B74(o->m_08, 1)) {
        f->m_00 = func_80096D84(o->m_08, 4, 7, 0x20, -1);
    } else {
        f->m_00 = 0;
    }
    if (func_80096B74(o->m_08, 1)) {
        f->m_04.vx = func_80096D84(o->m_08, 4, 7, 10, 0x20, -1);
        f->m_04.vy = func_80096D84(o->m_08, 4, 7, 10, 0x20, -1);
        f->m_04.vz = func_80096D84(o->m_08, 4, 7, 10, 0x20, -1);
        f->m_10.vx = func_80096D84(o->m_08, 3, 5, 7, 9, 0x20, -1);
        f->m_10.vy = func_80096D84(o->m_08, 3, 5, 7, 9, 0x20, -1);
        f->m_10.vz = func_80096D84(o->m_08, 3, 5, 7, 9, 0x20, -1);
    } else {
        {
            Vec47 v;

            VecZero(&v);
            VecCopyL(&f->m_04, &v);
        }
        {
            SVECTOR sv;

            SVecZero(&sv);
            f->m_10 = sv;
        }
    }
    o->m_04++;
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_47", func_80070314);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_47", func_8007057C);

void func_80070A40(Hist47 *h, Vec47 *v) {
    Vec47 t;

    VecCopyL(&h->m_24, &h->m_30);
    VecCopyL(&h->m_0C, &h->m_18);
    VecCopyL(&h->m_00, v);
    func_80099898(&t, &h->m_00, &h->m_0C);
    VecCopyL(&h->m_18, &t);
    func_80099898(&t, &h->m_18, &h->m_24);
    VecCopyL(&h->m_30, &t);
}

void func_80070B2C(Hist47 *h, Vec47 *v) {
    Vec47 t;

    VecCopyL(&h->m_24, &h->m_30);
    VecCopyL(&h->m_0C, &h->m_18);
    VecCopyL(&h->m_30, v);
    func_800998D0(&t, &h->m_30, &h->m_24);
    VecCopyL(&h->m_18, &t);
    func_800998D0(&t, &h->m_18, &h->m_0C);
    VecCopyL(&h->m_00, &t);
}

#ifdef NON_MATCHING
// Registers and the order of the stores (the entry's two loads as in func_80070CCC)
/* The points ahead of and behind a, at its length along its angle. */
void func_80070C10(Ang47 *a, Pos47 *f, Pos47 *b) {
    Vec47 v;
    int s = D_800BF3A0[(a->m_08 + 0x400) & 0xFFF].m_02;
    int c = D_800BF3A0[(a->m_08 + 0x400) & 0xFFF].m_00;

    v.vx = (s * a->m_0A) >> 6;
    v.vy = 0;
    v.vz = (c * a->m_0A) >> 6;
    if (f) {
        f->m_04 = 0;
        f->m_00 = a->m_00 + v.vx;
        f->m_08 = a->m_04 + v.vz;
    }
    if (b) {
        b->m_04 = 0;
        b->m_00 = a->m_00 - v.vx;
        b->m_08 = a->m_04 - v.vz;
    }
}
#else
INCLUDE_ASM("asm/langimg/nonmatchings/chunk_47", func_80070C10);
#endif

/* How far p is ahead of a, along a's angle (4.12). */
int func_80070CCC(Ang47 *a, Pos47 *p) {
    int dx = p->m_00 - a->m_00;
    int dz = p->m_08 - a->m_04;
    int s = D_800BF3A0[a->m_08 & 0xFFF].m_02;
    int c = D_800BF3A0[a->m_08 & 0xFFF].m_00;

    return MULSHIFT(dx, s, 12) + MULSHIFT(dz, c, 12);
}

/* The angle's sine and cosine, and 0 between. */
void func_80070D54(Ang47 *a, int *out) {
    out[0] = D_800BF3A0[a->m_08 & 0xFFF].m_02;
    out[1] = 0;
    out[2] = D_800BF3A0[a->m_08 & 0xFFF].m_00;
}

Elem47 *func_80070D98(List47 *l, int i) {
    return &l->m_0C[i];
}

Elem47 *func_80070DB0(List47 *l) {
    return func_80070D98(l, 0);
}

Elem47 *func_80070DD0(List47 *l) {
    return func_80070D98(l, l->m_08 - 1);
}

/* Whether key is in the list from n. */
/* Whether key is in the list from n. */
int func_80070DF4(Obj47 *o, int key, Node47 *n) {
    int found = 0;

next:
    if (n) {
        found = n->m_04 == key;
        n = n->m_00;
        if (!found) {
            goto next;
        }
    }
    return found;
}

int func_80070E20(Obj47 *o, int key) {
    return func_80070DF4(o, key, (Node47 *)&o->m_60);
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_47", func_80070E40);
