#include "common.h"

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
    u8 m_58[4];
    int m_5C; // who it doesn't apply to
    u8 m_60[0x16];
    short m_76; // either plane will do
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

extern "C" {
int func_80099B88(Vec61 *a, Vec61 *b);
int func_8008B998(Plane61 *o, Vec61 *v);
Vec61 *func_800998D0(Vec61 *d, Vec61 *a, Vec61 *b);
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

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_61", func_8008BA50);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_61", func_8008BCB0);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_61", func_8008C500);

#ifdef NON_MATCHING
// The tests' order and registers: the original computes 1 << b into a saved register and tests the zone's mask first
/* The nearest zone around v that applies to b, else the nearest. */
Plane61 *func_8008C678(List61 *l, int a, Vec61 *v, int b) {
    u32 best = 0x7FFFFFFF;
    u32 any = 0x7FFFFFFF;
    Plane61 *r = 0;
    Plane61 *ra = 0;
    Plane61 *p;
    Vec61 t;
    u32 d;
    int m = 1 << b;

    for (p = l->m_04; p; p = p->m_54) {
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
#else
INCLUDE_ASM("asm/langimg/nonmatchings/chunk_61", func_8008C678);
#endif

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

#ifdef NON_MATCHING
// The scroll step's registers (the shift in $a0, the sums in $a1)
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
    z->m_14 += z->m_0C << s;
    z->m_10 += z->m_08 << s;
    z->m_10 &= w - 1;
    z->m_14 %= h;
}
#else
INCLUDE_ASM("asm/langimg/nonmatchings/chunk_61", func_8008CE34);
#endif

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
