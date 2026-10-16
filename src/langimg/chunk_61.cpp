#include "common.h"
#include "psyq.h"

struct Vec61 {
    int x;
    int y;
    int z;
};

// A colour, or its word
union Col61 {
    int w;
    u8 c[4];
};

// A layer: its scroll, and four colours faded from one set to another
struct Zone61 {
    int m_00; // 0 off, 1 fixed, or fading
    u8 m_04[4];
    int m_08;
    int m_0C;
    int m_10;
    int m_14;
    int m_18;
    int m_1C;
    u8 m_20[4];
    Col61 m_24[4]; // the colours
    Col61 m_34[4]; // from
    Col61 m_44[4]; // to
    int m_54;      // how long
    int m_58;      // how far, 16.16
    u8 m_5C[4];
    int m_60;
    int m_64;
    int m_68;
    int m_6C;
};

struct Plane61 {
    u8 m_00[0xC];
    Vec61 m_0C; // its position
    u8 m_18[0x14];
    Vec61 m_2C;
    int m_38;
    Vec61 m_3C;
    int m_48;
    u8 m_4C[8];
    struct Plane61 *m_54; // the next
    int m_58;             // flags: 1 easing in, 4 the bike's flag
    int m_5C;             // who it doesn't apply to
    short m_60;           // the camera's mode
    short m_62;           // how long it eases in
    short m_64;
    short m_66;
    short m_68; // the angle it got to
    short m_6A, m_6C;
    short m_6E; // the lens's limit
    short m_70;
    short m_72, m_74;
    short m_76; // either plane will do
};
// A camera: its matrix and where it looks from (chunk_29's Ply29)
struct Cam61 {
    MATRIX m_00;
    u8 m_20[0xD8];
    Vec61 m_F8;
};
struct Bk61 {
    u8 m_00[0x325];
    u8 m_325;
};
struct Game61 {
    u8 m_00[0x49C];
    u8 m_49C[4];
};

struct List61 {
    u8 m_00[4];
    Plane61 *m_04;
};

// A rectangle and its flags
struct Rect61 {
    u16 m_00;
    u16 m_02;
    u16 m_04;
    u16 m_06;
    int m_08;
    u8 m_0C[0xC];
    int m_18;
};

// A section's point (20 bytes): at 0x10 the ids of its two textures, 7 signed
// bits each, read as shifts: bits 15-21 for even laps, 22-28 for odd ones
// (0x3F: none)
struct Pt61 {
    u8 m_00[0x10];
    u32 m_10;
};
// A track's section (0x68 bytes, chunk_48's Ent48): its points
struct Sec61 {
    u8 m_00[0xC];
    Pt61 *m_0C;
    u8 m_10[0x58];
};
struct Track61 {
    Sec61 *m_00;
};
// A bike as func_8008C500 reads it (chunk_29's Bk29)
struct Rider61 {
    u8 m_00[0x20];
    short m_20; // its section, or -1
    short m_22; // its point
    u8 m_24[0x1C];
    u8 m_40; // its lap
};
// The textures loaded: the current one at 8, the table at 0xC
struct Tex61 {
    u8 m_00[8];
    void *m_08;
    void **m_0C;
};

// Six bytes in eight
struct Six61 {
    int m_00;
    u16 m_04;
    u16 m_06;
};

extern int D_800D6108; // frames a second
extern int D_800D6128; // the frame's length
extern int D_800CBDCC;
extern int D_800CBDD4;
extern int D_800CBDE4;
extern int D_800CBDE8;
extern int D_800CBDEC;
extern int D_800CBDF0;
extern int D_800CBDF4;

extern short D_800CBDC8; // the lens's start
extern short D_800CBDCA; // the lens
extern int D_800CBDD0;   // frames since the camera changed
// Vectors kept as three small words each (read through $gp one by one)
extern int D_800CBDD8, D_800CBDDC, D_800CBDE0; // last frame's
extern int D_800CBDF8, D_800CBDFC, D_800CBE00; // its move
extern int D_800CBE08, D_800CBE0C, D_800CBE10;
extern int D_800CBE18, D_800CBE1C, D_800CBE20;
extern int D_800CBE28, D_800CBE2C, D_800CBE30;
extern int D_800CBE38, D_800CBE3C, D_800CBE40;
extern int D_800CBE48, D_800CBE4C, D_800CBE50; // where the camera looks from
#define VEC61(a) ((Vec61 *)&a)
extern short D_800BF3A0[][2];
extern char D_800CA7D8[];
extern int D_800CA940;
extern Game61 *D_800C5E14;

extern "C" {
int ratan2(long y, long x);
void func_8008BA50(void *tex);
void *func_8008C500(Tex61 *o, int a, int b, Rider61 *r, Track61 *t);
Vec61 *func_8009964C(Vec61 *v, int k);
Vec61 *func_80099718(Vec61 *d, Vec61 *s, int k);
Vec61 *func_80099834(Vec61 *v, Vec61 *a);
Vec61 *func_80099908(Vec61 *d, Vec61 *a, Vec61 *b);
void func_80098F94(Vec61 *v, int shift);
Vec61 *func_80099D48(Vec61 *v, int shift);
void func_80098E9C(Vec61 *v);
int func_80097AC8(int x);
void func_800980F4(MATRIX *m);
MATRIX *func_80098674(MATRIX *a, MATRIX *b, MATRIX *out);
void func_8009887C(long *in, long *out);
void func_8001D23C(void *r, int a, int b, int c, int d);
void func_8008BCB0(Plane61 *o, Cam61 *c, void *m, Bk61 *b, Vec61 *v, Game61 *g);
int func_80099B88(Vec61 *a, Vec61 *b);
int func_8008B998(Plane61 *o, Vec61 *v);
Vec61 *func_800998D0(Vec61 *d, Vec61 *a, Vec61 *b);
Vec61 *func_80099898(Vec61 *d, Vec61 *a, Vec61 *b);
Vec61 *func_80099DA0(Vec61 *d, Vec61 *s, int k);
Vec61 *func_80099690(Vec61 *v, int k);
u32 func_8009923C(Vec61 *v);
Plane61 *func_8008C678(List61 *l, int a, Vec61 *v, int b);
void func_8008CE34(Zone61 *z);
void func_8008CF58(Zone61 *z);
void func_8008C78C(void);
void func_8008C7E8(Zone61 *z, int a, int b, int c, int d);
void func_8008C808(Zone61 *z, int a, int *b, int *c, int *d, int *e);
void func_8008C83C(Zone61 *z, int *a, int *b, int *c, int *d);
Rect61 *func_8008D05C(Rect61 *r, int a, int *b, u16 x, u16 y, u16 w, u16 h);
void func_8008D0A4(Rect61 *r, u16 x, u16 y, u16 w, u16 h);
void func_8008D0CC(Six61 *d, Six61 *s, int n);
void func_8008D0FC(Six61 *d, int n);
void func_8008D120(int *d, int *s, int n);
void func_8008D148(int *d, int n);
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_61", func_8008B208);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_61", func_8008B364);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_61", func_8008B500);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_61", func_8008B65C);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_61", func_8008B7F8);

#ifdef NON_MATCHING
// The second tests' branches: the original branches to 1 on the last test, ours to 0
/* Whether v is in front of both planes, or of either. */
int func_8008B998(Plane61 *o, Vec61 *v) {
    if (o->m_76 == 0) {
        if (func_80099B88(&o->m_2C, v) + o->m_38 >= 0 &&
            func_80099B88(&o->m_3C, v) + o->m_48 >= 0) {
            return 1;
        }
    } else {
        if (func_80099B88(&o->m_2C, v) + o->m_38 >= 0) {
            return 1;
        }
        if (func_80099B88(&o->m_3C, v) + o->m_48 >= 0) {
            return 1;
        }
    }
    return 0;
}
#else
INCLUDE_ASM("asm/langimg/nonmatchings/chunk_61", func_8008B998);
#endif

static inline void SetVec61(Vec61 *v, int x, int y, int z) {
    v->x = x;
    v->y = y;
    v->z = z;
}

// Where the camera looks from, set
static inline void SetLook61(Vec61 *s) {
    int x = s->x;
    int y = s->y;
    int z = s->z;

    D_800CBE48 = x;
    D_800CBE4C = y;
    D_800CBE50 = z;
}

static inline void VecCopyL61(Vec61 *d, Vec61 *s) {
    int x = s->x;
    int y = s->y;
    int z = s->z;

    d->x = x;
    d->y = y;
    d->z = z;
}

/* A plane entered: its easing in set up from the camera's move and where it
 * looks from, or the camera put there at once. */
void func_8008BA50(void *p) {
    Plane61 *o = (Plane61 *)p;
    Vec61 r;

    D_800CBDD0 = 0;
    D_800CBDC8 = D_800CBDCA;
    if (o->m_58 & 1) {
        Vec61 b, a, c, d, e, f;
        int n = o->m_62;
        int n2 = n * n;
        int n3 = n2 * n;
        Vec61 *pb = &b;

        o->m_58 |= 0x20;
        func_80099718(&a, VEC61(D_800CBDF8), n);
        func_80099DA0(&c, VEC61(D_800CBE48), 1);
        func_80099898(pb, &a, &c);
        func_80099DA0(&d, &o->m_0C, 1);
        func_800998D0(&r, pb, &d);
        VecCopyL61(VEC61(D_800CBE08), &r);
        func_80099690(VEC61(D_800CBE08), n3 >> 8);
        func_80099718(&a, &o->m_0C, 3);
        func_80099718(&e, VEC61(D_800CBDF8), o->m_62);
        func_80099DA0(&c, &e, 1);
        func_800998D0(pb, &a, &c);
        func_80099718(&f, VEC61(D_800CBE48), 3);
        func_800998D0(&r, pb, &f);
        VecCopyL61(VEC61(D_800CBE18), &r);
        func_80099690(VEC61(D_800CBE18), n2);
        VecCopyL61(VEC61(D_800CBE28), VEC61(D_800CBDF8));
        VecCopyL61(VEC61(D_800CBE38), VEC61(D_800CBE48));
    } else {
        SetVec61(&r, 0, 0, 0);
        D_800CBDCA = o->m_6E;
        o->m_58 &= ~0x20;
        VecCopyL61(VEC61(D_800CBDF8), &r);
        VecCopyL61(VEC61(D_800CBE48), &o->m_0C);
    }
}

// And read
static inline void GetLook61(int *d) {
    int x = D_800CBE48;
    int y = D_800CBE4C;
    int z = D_800CBE50;

    d[0] = x;
    d[1] = y;
    d[2] = z;
}

static inline void RotX61(MATRIX *m, int c, int s) {
    m->m[0][0] = 0x1000;
    m->m[1][0] = 0;
    m->m[0][1] = 0;
    m->m[2][0] = 0;
    m->m[0][2] = 0;
    m->m[2][2] = c;
    m->m[1][1] = c;
    m->m[1][2] = -s;
    m->m[2][1] = s;
}

static inline void RotY61(MATRIX *m, int a) {
    int cs = D_800BF3A0[a & 0xFFF][1];
    int sn = D_800BF3A0[a & 0xFFF][0];

    m->m[0][2] = sn;
    m->m[1][1] = 0x1000;
    m->m[1][0] = 0;
    m->m[0][1] = 0;
    m->m[2][1] = 0;
    m->m[1][2] = 0;
    m->m[2][2] = cs;
    m->m[0][0] = cs;
    m->m[2][0] = -sn;
}

static inline void RotZ61(MATRIX *m, int a) {
    int cs = D_800BF3A0[a & 0xFFF][1];
    int sn = D_800BF3A0[a & 0xFFF][0];

    m->m[2][2] = 0x1000;
    m->m[2][0] = 0;
    m->m[0][2] = 0;
    m->m[2][1] = 0;
    m->m[1][2] = 0;
    m->m[1][1] = cs;
    m->m[0][0] = cs;
    m->m[0][1] = -sn;
    m->m[1][0] = sn;
}

// The camera turned by r: its matrix and translation
static inline void Apply61(Cam61 *c, MATRIX *r) {
    MATRIX t;

    func_80098674(r, &c->m_00, &t);
    func_8009887C(c->m_00.t, t.t);
    func_800997D0((Vec61 *)t.t, (Vec61 *)r->t);
    c->m_00 = t;
}

#ifdef NON_MATCHING
// In the original's shape (its frame and stack slots too): the lens's two stores and their jumps laid out in another order (a one-instruction shift through the middle), the struct copies' temporaries one register up ($t5-$t7 for $t4-$t6) and the angle in $a2 for $a1 (368 off, 119 with the stack offsets and branch targets left out).
void func_8008BCB0(Plane61 *o, Cam61 *c, void *m, Bk61 *b, Vec61 *v, Game61 *g) {
    Vec61 old = *VEC61(D_800CBE48);
    int f;

    SetLook61(&o->m_0C);
    if (o->m_58 & 1) {
        if (D_800CBDD0 < o->m_62) {
            Vec61 a, t;
            int n2 = D_800CBDD0 * D_800CBDD0;

            a.x = D_800CBE08;
            a.z = D_800CBE10;
            a.y = D_800CBE0C;
            func_8009964C(&a, n2 * D_800CBDD0 >> 8);
            func_80099718(&t, VEC61(D_800CBE18), n2);
            func_800997D0(&a, &t);
            func_80099718(&t, VEC61(D_800CBE28), D_800CBDD0);
            func_800997D0(&a, &t);
            func_800997D0(&a, VEC61(D_800CBE38));
            D_800CBE48 = a.x;
            D_800CBE4C = a.y;
            D_800CBE50 = a.z;
        } else {
            o->m_58 &= ~0x20;
        }
    }
    GetLook61((int *)&c->m_F8);
    D_800CBDF8 = D_800CBE48;
    D_800CBDFC = D_800CBE4C;
    D_800CBE00 = D_800CBE50;
    func_80099834(VEC61(D_800CBDF8), VEC61(D_800CBDD8));
    D_800CBDD8 = D_800CBE48;
    D_800CBDDC = D_800CBE4C;
    D_800CBDE0 = D_800CBE50;
    if (o->m_60 == 0 || o->m_60 == 4) {
        Vec61 d = *v;
        int ang;

        func_80099834(&d, VEC61(D_800CBE48));
        ang = ratan2(0x5000, func_8009923C(&d));
        if (o->m_58 & 1) {
            if (D_800CBDD0 < o->m_62) {
                ang = (ang * D_800CBDD0 + D_800CBDCA * (o->m_62 - D_800CBDD0)) / o->m_62;
            } else {
                ang = D_800CBDCA;
            }
        } else if (o->m_60 == 4) {
            ang = D_800CBDCA + (ang - D_800CBDCA) / o->m_66;
        }
        if (o->m_6E < ang) {
            D_800CBDCA = o->m_6E;
        } else {
            D_800CBDCA = ang;
        }
    } else if (o->m_58 & 1) {
        if (o->m_6E < D_800CBDCA || o->m_62 < D_800CBDD0) {
            D_800CBDCA = o->m_6E;
        } else {
            D_800CBDCA = (o->m_6E * D_800CBDD0 + D_800CBDC8 * (o->m_62 - D_800CBDD0)) / o->m_62;
        }
    } else {
        D_800CBDCA = o->m_6E;
    }
    if (D_800CBDCA < 100) {
        D_800CBDCA = 100;
    }
    switch (o->m_60) {
    case 0:
    case 1:
    case 4: {
        Vec61 d = *v;
        Vec61 x, up, one;

        d.y += 0x1000;
        func_80099834(&d, &c->m_F8);
        SetVec61(&up, 0, 0x1000, 0);
        func_80099908(&x, &up, &d);
        func_80099908(&up, &d, &x);
        func_80098F94(&x, 13);
        func_80098F94(&up, 13);
        func_80098F94(&d, 13);
        SetVec61(&one, 1, 1, 1);
        func_800997D0(&x, &one);
        SetVec61(&one, 1, 1, 1);
        func_800997D0(&up, &one);
        SetVec61(&one, 1, 1, 1);
        func_800997D0(&d, &one);
        func_80099D48(&x, 1);
        func_80099D48(&up, 1);
        func_80099D48(&d, 1);
        c->m_00.m[0][0] = x.x;
        c->m_00.m[1][0] = x.y;
        c->m_00.m[2][0] = x.z;
        c->m_00.m[0][1] = up.x;
        c->m_00.m[1][1] = up.y;
        c->m_00.m[2][1] = up.z;
        c->m_00.m[0][2] = d.x;
        c->m_00.m[1][2] = d.y;
        c->m_00.m[2][2] = d.z;
        func_800980F4(&c->m_00);
        break;
    }
    case 2: {
        Vec61 d = *v;
        MATRIX r;
        int span, len;

        d.y += 0x1000;
        func_80099834(&d, &c->m_F8);
        func_80098E9C(&d);
        span = o->m_6A - o->m_6C;
        len = func_80097AC8(d.x * d.x + d.z * d.z);
        if (len) {
            int ang, y;

            ang = o->m_6C + (span * (D_800BF3A0[(D_800CBDD0 * o->m_64) & 0xFFF][0] + 0x1000) >> 13);
            RotX61(&r, len, d.y);
            o->m_68 = ang & 0xFFF;
            RotY61(&c->m_00, ang & 0xFFF);
            Apply61(c, &r);
            if (!span) {
                y = o->m_74;
            } else {
                y = (o->m_74 - o->m_72) * (ang - o->m_6C) / span + o->m_72;
            }
            RotZ61(&r, y);
            Apply61(c, &r);
        }
        break;
    }
    }
    c->m_00.t[0] = c->m_00.t[1] = c->m_00.t[2] = 0;
    f = D_800CA940 + D_800CA940 / 2;
    func_8001D23C(D_800CA7D8, f, D_800CBDCA, 0x800, 0);
    func_8001D23C(D_800C5E14->m_49C, f, D_800CBDCA, 0x800, 0);
    D_800CBDD0++;
    if (o->m_58 & 4) {
        b->m_325 = 1;
    } else {
        b->m_325 = 0;
    }
}
#else
INCLUDE_ASM("asm/langimg/nonmatchings/chunk_61", func_8008BCB0);
#endif

void *func_8008C500(Tex61 *o, int a, int b, Rider61 *r, Track61 *t) {
    int lap, odd, k;

    if (r->m_20 == -1) {
        goto none;
    }
    lap = (s8)r->m_40;
    odd = lap >= 0 ? lap % 2 : 0;
    if (!odd) {
        u32 w = t->m_00[r->m_20].m_0C[r->m_22].m_10;

        k = (int)(w << 10) >> 25;
    } else {
        u32 w = t->m_00[r->m_20].m_0C[r->m_22].m_10;

        k = (int)(w << 3) >> 25;
        if ((k & 0x3F) != 0x3F) {
            goto found;
        }
        k = (int)(w << 10) >> 25;
    }
    if ((k & 0x3F) == 0x3F) {
        goto none;
    }
found:
    if (o->m_08 != o->m_0C[k]) {
        func_8008BA50(o->m_0C[k]);
    }
    o->m_08 = o->m_0C[k];
    return o->m_0C[k];
none:
    return 0;
}

/* The nearest zone around v that applies to b, else the nearest. */
Plane61 *func_8008C678(List61 *l, int a, Vec61 *v, int b) {
    u32 best = 0x7FFFFFFF;
    u32 any = 0x7FFFFFFF;
    Plane61 *r = 0;
    Plane61 *ra = 0;
    Plane61 *p;
    Vec61 t;
    u32 d;

    for (p = l->m_04; p; p = p->m_54) {
        int m = 1 << b;

        func_800998D0(&t, v, &p->m_0C);
        d = func_8009923C(&t);
        if (!(p->m_5C & m) && func_8008B998(p, v) == 1 && d < best) {
            best = d;
            r = p;
        }
        if (d < any) {
            any = d;
            ra = p;
        }
    }
    if (!r) {
        r = ra;
    }
    return r;
}

void func_8008C78C(void) {
    D_800CBDD4++;
    D_800CBDF4++;
    D_800CBDCC++;
    D_800CBDE4++;
    D_800CBDE8++;
    D_800CBDEC++;
    D_800CBDF0++;
}

void func_8008C7E8(Zone61 *z, int a, int b, int c, int d) {
    z->m_60 = a;
    z->m_64 = b;
    z->m_68 = c;
    z->m_00 = 1;
    z->m_6C = d;
}

void func_8008C808(Zone61 *z, int a, int *b, int *c, int *d, int *e) {
    z->m_24[0].w = *b;
    z->m_24[1].w = *c;
    z->m_24[2].w = *d;
    z->m_24[3].w = *e;
    z->m_00 = a;
}

void func_8008C83C(Zone61 *z, int *a, int *b, int *c, int *d) {
    z->m_44[0].w = *a;
    z->m_44[1].w = *b;
    z->m_44[2].w = *c;
    z->m_44[3].w = *d;
    z->m_34[0].w = z->m_24[0].w;
    z->m_34[1].w = z->m_24[1].w;
    z->m_34[2].w = z->m_24[2].w;
    z->m_34[3].w = z->m_24[3].w;
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_61", func_8008C884);

/* A frame: the colours faded, the scroll moved and wrapped. */
void func_8008CE34(Zone61 *z) {
    int w;
    int h;
    int s;

    if (z->m_00 == 0) {
        return;
    }
    if (z->m_00 == 1) {
        if (!z->m_60 || !z->m_64 || !z->m_68 || !z->m_6C) {
            return;
        }
        w = 0x80;
        h = 0x80;
    } else {
        func_8008CF58(z);
        w = z->m_18 * 2;
        h = z->m_1C * 20 / 16;
    }
    s = 16 / (D_800D6108 / 60);
    z->m_10 += z->m_08 << s;
    z->m_14 += z->m_0C << s;
    z->m_10 &= w - 1;
    z->m_14 %= h;
}

/* The colours faded from one set to the other. */
void func_8008CF58(Zone61 *z) {
    int i;
    int f;

    if ((z->m_58 >> 16) < z->m_54) {
        f = z->m_58 / z->m_54;
        for (i = 0; i < 4; i++) {
            z->m_24[i].c[0] = z->m_34[i].c[0] + ((z->m_44[i].c[0] - z->m_34[i].c[0]) * f >> 16);
            z->m_24[i].c[1] = z->m_34[i].c[1] + ((z->m_44[i].c[1] - z->m_34[i].c[1]) * f >> 16);
            z->m_24[i].c[2] = z->m_34[i].c[2] + ((z->m_44[i].c[2] - z->m_34[i].c[2]) * f >> 16);
        }
        z->m_58 += D_800D6128 << 16;
    }
}

Rect61 *func_8008D05C(Rect61 *r, int a, int *b, u16 x, u16 y, u16 w, u16 h) {
    r->m_08 = *b;
    r->m_18 = a;
    func_8008D0A4(r, x, y, w, h);
    return r;
}

void func_8008D0A4(Rect61 *r, u16 x, u16 y, u16 w, u16 h) {
    r->m_00 = x;
    r->m_02 = y;
    r->m_04 = w;
    r->m_06 = h;
    r->m_18 |= 0x18000000;
}

void func_8008D0CC(Six61 *d, Six61 *s, int n) {
    for (; n != 0; n--) {
        int w = s->m_00;
        u16 h = s->m_04;

        d->m_00 = w;
        d->m_04 = h;
        d++;
        s++;
    }
}

void func_8008D0FC(Six61 *d, int n) {
    for (; n != 0; n--) {
        d->m_00 = 0;
        d->m_04 = 0;
        d++;
    }
}

void func_8008D120(int *d, int *s, int n) {
    for (; n != 0; n--) {
        *d++ = *s++;
    }
}

void func_8008D148(int *d, int n) {
    for (; n != 0; n--) {
        *d++ = 0;
    }
}
