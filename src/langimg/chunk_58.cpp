#include "common.h"
#include "psyq.h"
#include "langimg/ui.h"

// Four shorts (2-byte aligned: copied with lwl/lwr)
struct SVec58 {
    short x;
    short y;
    short z;
    short pad;
};

// The game's settings (chunk_23's Config)
struct Cfg58 {
    u8 m_00[0x84];
    int m_84;
    int m_88;
    u8 m_8C[0x1F0];
    int m_27C;
    int m_280;
    int m_284;
};

// A camera's target
struct Cam58 {
    short m_00;
    short m_02;
    u8 m_04[4];
    short m_08;
    short m_0A;
    SVec58 m_0C; // where it is
    SVec58 m_14; // where it looks
    SVec58 m_1C; // from
    SVec58 m_24; // to
    u8 m_2C[0x14];
    SVec58 m_40; // from
    SVec58 m_48; // to
    int m_50;    // when it started
    int m_54;    // how long it takes
    short m_58;  // how far along, in 4096ths
};

// The start's lights (0x34 bytes): their centre, corner and size, the
// lamps' kinds and levels, the step, its progress, start and length
struct Set58 {
    short m_00, m_02;
    short m_04, m_06;
    short m_08;
    short m_0A;
    int m_0C; // the images: off, then the lamps' (indexed by their kinds)
    int m_10;
    int m_14;
    s8 m_18[6]; // the lamps' kinds
    u8 m_1E[6]; // and levels
    short m_24;
    u8 m_26[2];
    int m_28;
    int m_2C;
    int m_30;
};
// The race (chunk_36's Own36) and a bike (chunk_36's Bike36)
struct Bike58 {
    u8 m_00[0x320];
    s8 m_320;
    u8 m_321[0x247];
};
struct Run58 {
    u8 m_00[0x2E8];
    Bike58 m_2E8[5];
};
struct Own58 {
    u8 m_00[0x378];
    Run58 *m_378;
    u8 m_37C[0xF4];
    s8 m_470[2];
};
struct Gfx58 {
    u8 m_00[0x58];
    int m_58;
};

// A point and two values
struct Pt58 {
    short m_00;
    short m_02;
    u8 m_04[0x20];
    int m_24;
    int m_28;
};

// A buffer: its memory, its size, whether it owns it
struct Buf58 {
    void *m_00;
    int m_04;
    int m_08;
};

struct Ent58 {
    int m_00;
    u8 m_04[0xC];
};

extern Cfg58 D_800CC030;
extern short D_800C8BAC; // the steps' lengths
extern Own58 *D_800C5E14;
extern Gfx58 *D_800C886C;
extern "C" int func_8006CA84(int id, int a);
extern int D_800CBD30;
extern int D_800CBD34;
extern int D_800CBD3C;
extern int D_800CBD44;
extern int D_800CBCE0;
extern int D_800C8A7C;
extern int D_800CBD68; // five Ent58s, declared small: its address is one `la`
extern int D_800D60EC;

extern "C" {
void func_80019F0C(void *r, void *def);
void func_80085258(void);
void func_80085888(Set58 *c, int b);
void func_80086350(Cam58 *c, SVec58 *v);
void func_800863CC(Cam58 *c, SVec58 *v, int a);
void func_80086424(Cam58 *c);
void func_800869E4(void);
int func_80086A38(Buf58 *b, int i);
void func_80086A50(Pt58 *c, int a, int b);
Buf58 *func_80086E68(Buf58 *b);
void func_80086E7C(Buf58 *b, int f);
void func_80086EC0(Buf58 *b);
void func_80086F14(Buf58 *b, void *p, int n);
void func_80086F20(Buf58 *b, int n);
}

void func_80085258(void) {
    int i = 5;
    Ent58 *e = (Ent58 *)&D_800CBD68;

    for (; i != 0; i--) {
        e->m_00 |= 0xF0;
        e++;
    }
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_58", func_80085284);

#ifdef NON_MATCHING
// The stores' order after the memset
void func_80085888(Set58 *c, int b) {
    memset(c, 0, sizeof(Set58));
    c->m_0C = D_800CC030.m_27C;
    c->m_10 = D_800CC030.m_280;
    c->m_14 = D_800CC030.m_284;
    c->m_08 = 150;
    c->m_0A = 50;
    c->m_2C = b;
    c->m_24 = 0;
    c->m_30 = D_800C8BAC;
}
#else
INCLUDE_ASM("asm/langimg/nonmatchings/chunk_58", func_80085888);
#endif

/* The start's lights stepped at time now: their lamps lit one by one, then the
 * go; their size grows and shrinks. */
#ifdef NON_MATCHING
// Written in full, the switch's jump table and bodies as the original's; the size's store in the first branch merged by GCC into the second's tail (0x80 and 50 in other registers there), the bike's and the run's loads in another order and the clamp laid out the other way round, which shifts the rest (65 off).
extern "C" void func_80085900(Set58 *c, int now) {
    Own58 *o = D_800C5E14;
    Bike58 *b = 0;
    int k = o->m_470[0];
    int t, v;
    int a, n;

    if (k >= 0) {
        b = &o->m_378->m_2E8[k];
    }
    if (D_800C886C->m_58 == 2) {
        c->m_00 = 0x80;
        c->m_02 = 0x80;
    } else {
        c->m_00 = b->m_320 ? 0x80 : 0x100;
        c->m_02 = 50;
    }
    if (c->m_28 == 0x1000) {
        c->m_2C = now;
        if (++c->m_24 >= 12) {
            c->m_24 = 11;
        }
        c->m_30 = (&D_800C8BAC)[c->m_24];
    }
    t = ((now - c->m_2C) << 12) / c->m_30;
    c->m_28 = t;
    if (t < 0) {
        t = 0;
    } else if (t > 0x1000) {
        t = 0x1000;
    }
    c->m_28 = t;
    a = -1;
    n = -1;
    switch (c->m_24) {
    case 0:
        c->m_1E[0] = 0xFF;
        c->m_1E[1] = 0xFF;
        c->m_1E[2] = 0xFF;
        c->m_1E[3] = 0xFF;
        c->m_1E[4] = 0xFF;
        c->m_1E[5] = 0xFF;
        c->m_18[0] = 0;
        c->m_18[1] = 0;
        c->m_18[2] = 0;
        c->m_18[3] = 0;
        c->m_18[4] = 0;
        c->m_18[5] = 0;
        v = c->m_28;
        goto size;
    case 2:
        c->m_18[0] = 1;
        c->m_1E[0] = c->m_28 * 255 >> 12;
        if (!c->m_28) {
            a = 0x42;
            n = 0x25;
        }
        break;
    case 4:
        c->m_18[1] = 1;
        c->m_1E[1] = c->m_28 * 255 >> 12;
        if (!c->m_28) {
            a = 0x42;
            n = 0x26;
        }
        break;
    case 6:
        c->m_18[2] = 1;
        c->m_1E[2] = c->m_28 * 255 >> 12;
        if (!c->m_28) {
            a = 0x42;
            n = 0x27;
        }
        break;
    case 8:
        c->m_18[3] = c->m_18[4] = c->m_18[5] = 2;
        v = c->m_28 * 255 >> 12;
        c->m_1E[2] = c->m_1E[1] = c->m_1E[0] = ~v;
        c->m_1E[5] = c->m_1E[4] = c->m_1E[3] = v;
        if (!c->m_28) {
            a = 0x43;
            n = 0x28;
        }
        break;
    case 10:
        v = 0x1000 - c->m_28;
    size:
        c->m_08 = (u32)(v * 75) >> 11;
        c->m_0A = (u32)(v * 25) >> 11;
        break;
    }
    func_8006CA84(a, 127);
    func_8006CA84(n, 127);
    c->m_04 = c->m_00 - c->m_08 / 2;
    c->m_06 = c->m_02 - c->m_0A / 2;
}
#else
INCLUDE_ASM("asm/langimg/nonmatchings/chunk_58", func_80085900);
#endif

extern s8 D_800B8868;    // the buffer drawn into
extern u8 D_800C885C;    // the image's mode
extern u8 D_800C885D;    // and level
extern u32 D_800C8BC4[]; // colours
struct Opts58 {
    u8 m_00[0x16A0];
    int m_16A0;
};
extern Opts58 *D_800BC884;
extern "C" {
void func_8009574C(UiScreen *s, RECT *r);
void func_80077BE4(int img, int a, int x, int y);
void func_80085C28(Set58 *o);
}

// A draw area packet for a rectangle, in the buffer being drawn
#define SET_AREA58(p, x, y, w, h) \
    do { \
        int bank; \
\
        (p)[0] = 0x02000000; \
        bank = D_800B8868 << 8; \
        (p)[1] = 0xE3000000 | ((x) & 0x3FF) | ((((y) + bank) & 0x3FF) << 10); \
        (p)[2] = 0xE4000000 | (((x) + (w)) & 0x3FF) | ((((y) + (h) + bank) & 0x3FF) << 10); \
    } while (0)

#ifdef NON_MATCHING
// The start lights' packets and sprites in the original's order and shape, the constants in its saved registers; left: the original reloads the packet pointer before each link (GCC keeps it in a register, not treating the packets' stores as aliasing it), the draw areas' two words or'ed in another order, and the images' base and 5 in swapped saved registers (424 off, 196 with stack offsets and branch targets left out).
void func_80085C28(Set58 *o) {
    if (o->m_24 != 11) {
        RECT r;
        u_long *p;
        int *img;

        func_8009574C(D_800C8D90, &r);
        r.h--;
        r.w--;
        p = (u_long *)D_800C8C70;
        SET_AREA58(p, r.x, r.y, r.w, r.h);
        ADD_PRIM(D_800CBDC0 + 1, p);
        D_800C8C70 = (u8 *)(p + 3);
        D_800C885C = 5;
        img = &o->m_0C;
        D_800C885D = o->m_1E[3];
        func_80077BE4(img[o->m_18[3]], 0x10, o->m_00 - 0x20, o->m_02 - 1);
        D_800C885C = 5;
        D_800C885D = o->m_1E[4];
        func_80077BE4(img[o->m_18[4]], 0x10, o->m_00, o->m_02 - 1);
        D_800C885C = 5;
        D_800C885D = o->m_1E[5];
        func_80077BE4(img[o->m_18[5]], 0x10, o->m_00 + 0x20, o->m_02 - 1);
        D_800C885C = 0;
        D_800C885D = 0xFF - o->m_1E[3];
        func_80077BE4(o->m_0C, 0x10, o->m_00 - 0x20, o->m_02 - 1);
        D_800C885C = 0;
        D_800C885D = 0xFF - o->m_1E[4];
        func_80077BE4(o->m_0C, 0x10, o->m_00, o->m_02 - 1);
        D_800C885C = 0;
        D_800C885D = 0xFF - o->m_1E[5];
        func_80077BE4(o->m_0C, 0x10, o->m_00 + 0x20, o->m_02 - 1);
        D_800C885C = 5;
        D_800C885D = o->m_1E[0];
        func_80077BE4(img[o->m_18[0]], 0x210, o->m_00 - 0x20, o->m_02 + 1);
        D_800C885C = 5;
        D_800C885D = o->m_1E[1];
        func_80077BE4(img[o->m_18[1]], 0x210, o->m_00, o->m_02 + 1);
        D_800C885C = 5;
        D_800C885D = o->m_1E[2];
        func_80077BE4(img[o->m_18[2]], 0x210, o->m_00 + 0x20, o->m_02 + 1);
        D_800C885C = 0;
        D_800C885D = 0xFF - o->m_1E[0];
        func_80077BE4(o->m_0C, 0x210, o->m_00 - 0x20, o->m_02 + 1);
        D_800C885C = 0;
        D_800C885D = 0xFF - o->m_1E[1];
        func_80077BE4(o->m_0C, 0x210, o->m_00, o->m_02 + 1);
        D_800C885C = 0;
        D_800C885D = 0xFF - o->m_1E[2];
        func_80077BE4(o->m_0C, 0x210, o->m_00 + 0x20, o->m_02 + 1);

        // A grey bar over the lights
        {
            int x = o->m_04;
            int w = o->m_08;
            int y = o->m_02;
            u_long a, b, c, d;

            a = ((x + 1) & 0xFFFF) | ((y - 20) << 16);
            b = ((x + w - 1) & 0xFFFF) | ((y - 20) << 16);
            c = ((x + 1) & 0xFFFF) | ((y - 16) << 16);
            d = ((x + w - 1) & 0xFFFF) | ((y - 16) << 16);
            p = (u_long *)D_800C8C70;
            p[0] = 0x05000000;
            p[1] = 0x28404040;
            p[2] = a;
            p[3] = b;
            p[4] = c;
            p[5] = d;
        }
        ADD_PRIM(D_800CBDC0 + 1, D_800C8C70);

        // The box's outline: three sides as a polyline, then the fourth
        {
            u_long *q;

            p = (u_long *)D_800C8C70;
            q = p + 6;
            D_800C8C70 = (u8 *)q;
            p[6] = 0x06000000;
            q[6] = 0x55555555;
            q[1] = 0x4CFFFFFF;
            q[2] = (u16)o->m_04 | (o->m_06 << 16);
            q[3] = ((o->m_04 + o->m_08) & 0xFFFF) | (o->m_06 << 16);
            q[4] = ((o->m_04 + o->m_08) & 0xFFFF) | ((o->m_06 + o->m_0A) << 16);
            q[5] = (u16)o->m_04 | ((o->m_06 + o->m_0A) << 16);
        }
        ADD_PRIM(D_800CBDC0 + 1, D_800C8C70);
        {
            u_long *q;

            p = (u_long *)D_800C8C70;
            q = p + 7;
            D_800C8C70 = (u8 *)q;
            p[7] = 0x03000000;
            q[1] = 0x40FFFFFF;
            q[2] = (u16)o->m_04 | ((o->m_06 + o->m_0A) << 16);
            q[3] = (u16)o->m_04 | (o->m_06 << 16);
        }
        ADD_PRIM(D_800CBDC0 + 1, D_800C8C70);

        // The box, in the player's colour
        p = (u_long *)D_800C8C70;
        p[4] = 0x05000000;
        p += 4;
        D_800C8C70 = (u8 *)p;
        p[1] = D_800C8BC4[D_800BC884->m_16A0] | 0x28000000;
        p[2] = (u16)o->m_04 | (o->m_06 << 16);
        p[3] = ((o->m_04 + o->m_08) & 0xFFFF) | (o->m_06 << 16);
        p[4] = (u16)o->m_04 | ((o->m_06 + o->m_0A) << 16);
        p[5] = ((o->m_04 + o->m_08) & 0xFFFF) | ((o->m_06 + o->m_0A) << 16);
        ADD_PRIM(D_800CBDC0 + 1, D_800C8C70);

        // Drawing kept to the box
        {
            u_long *q;

            p = (u_long *)D_800C8C70;
            q = p + 6;
            p[6] = 0x02000000;
            D_800C8C70 = (u8 *)q;
            SET_AREA58(q, o->m_04, o->m_06, o->m_08, o->m_0A);
            ADD_PRIM(D_800CBDC0 + 1, q);
            D_800C8C70 = (u8 *)(q + 3);
        }
    }
}
#else
INCLUDE_ASM("asm/langimg/nonmatchings/chunk_58", func_80085C28);
#endif

void func_80086350(Cam58 *c, SVec58 *v) {
    c->m_40 = *v;
    c->m_0C = *v;
    c->m_48 = *v;
    c->m_58 = 0x1000;
}

void func_800863CC(Cam58 *c, SVec58 *v, int a) {
    c->m_40 = c->m_0C;
    c->m_48 = *v;
    c->m_50 = D_800D60EC;
    c->m_54 = a;
    c->m_58 = 0;
}

#ifdef NON_MATCHING
// Registers: the products and the stores interleave differently
/* The camera moved along: both pairs interpolated by the time elapsed. */
void func_80086424(Cam58 *c) {
    int t = D_800D60EC - c->m_50;
    int n;
    int r = 0;
    int f;
    int d0, d1, d2, d3, d4, d5, d6, d7;

    if (t >= 0) {
        n = c->m_54;
        r = n < t ? n : t;
    } else {
        n = c->m_54;
    }
    f = (r << 12) / n;
    d0 = (c->m_48.x - c->m_40.x) * (short)f;
    d1 = (c->m_48.y - c->m_40.y) * (short)f;
    d2 = (c->m_48.z - c->m_40.z) * (short)f;
    d3 = (c->m_48.pad - c->m_40.pad) * (short)f;
    d4 = (c->m_24.x - c->m_1C.x) * (short)f;
    d5 = (c->m_24.y - c->m_1C.y) * (short)f;
    d6 = (c->m_24.z - c->m_1C.z) * (short)f;
    d7 = (c->m_24.pad - c->m_1C.pad) * (short)f;
    c->m_58 = f;
    c->m_0C.x = c->m_40.x + (d0 >> 12);
    c->m_0C.y = c->m_40.y + (d1 >> 12);
    c->m_0C.z = c->m_40.z + (d2 >> 12);
    c->m_0C.pad = c->m_40.pad + (d3 >> 12);
    c->m_14.x = c->m_1C.x + (d4 >> 12);
    c->m_14.y = c->m_1C.y + (d5 >> 12);
    c->m_14.z = c->m_1C.z + (d6 >> 12);
    c->m_14.pad = c->m_1C.pad + (d7 >> 12);
}
#else
INCLUDE_ASM("asm/langimg/nonmatchings/chunk_58", func_80086424);
#endif

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_58", func_800865B4);

void func_800869E4(void) {
    int *w = &D_800CBD30;

    D_800CBD30 = 0;
    D_800CBD34 = 0;
    w[2] = -1;
    D_800CBD3C = 0;
    w[4] = -1;
    D_800CBD44 = 0;
    func_80019F0C(&D_800CBCE0, &D_800C8A7C);
}

int func_80086A38(Buf58 *b, int i) {
    return ((int *)b->m_08)[i];
}

void func_80086A50(Pt58 *c, int a, int b) {
    c->m_00 = a;
    c->m_02 = b;
    c->m_24 = D_800CC030.m_84;
    c->m_28 = D_800CC030.m_88;
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_58", func_80086A78);

Buf58 *func_80086E68(Buf58 *b) {
    b->m_00 = 0;
    b->m_04 = 0;
    b->m_08 = 0;
    return b;
}

void func_80086E7C(Buf58 *b, int f) {
    func_80086EC0(b);
    if (f & 1) {
        operator delete(b);
    }
}

/* The memory freed if it's the buffer's own. */
void func_80086EC0(Buf58 *b) {
    if (b->m_08 && b->m_00) {
        free(b->m_00);
        b->m_00 = 0;
    }
    b->m_04 = 0;
    b->m_08 = 0;
}

void func_80086F14(Buf58 *b, void *p, int n) {
    b->m_00 = p;
    b->m_04 = n;
}

void func_80086F20(Buf58 *b, int n) {
    b->m_00 = malloc(n);
    b->m_04 = n;
    b->m_08 = 1;
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_58", func_80086F64);
