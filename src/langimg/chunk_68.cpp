#include "common.h"
#include "psyq.h"
#include "mulshift.h"

/* The vectors' operators (docs/matching/issue-69-langimg-chunk68.md) */

extern "C" {
// A vector (as include/langimg/cobjet.h's, whose callers need some of these
// declared void)
struct Vector3 {
    long vx, vy, vz;
};

// Something with a table of states at 0xF4
struct Laps68 {
    u8 m_00[0xC0];
    int m_C0;
};
struct Sub68 {
    u8 m_00[0x18F];
    u8 m_18F;
    u8 m_190[4];
    Laps68 *m_194;
};
struct Tab68 {
    u8 m_00[0x48];
    int *m_48;
    u8 m_4C[4];
    int m_50;
};
struct Obj68 {
    u8 m_00[0x50];
    int m_50;
};
struct Snd68 {
    u8 m_00[4];
    Sub68 *m_04;
    u8 m_08[0xA0];
    int m_A8;
    int m_AC;
    int m_B0;
    int m_B4;
    u8 m_B8[0x20];
    Obj68 *m_D8[2];
    int m_E0[2];
    u8 m_E8[0xC];
    int m_F4[9];
    u8 m_118[0x2048];
    Tab68 *m_2160;
};
struct Dst68 {
    u8 m_00[0x114];
    int m_114[2];
    int m_11C[2];
    int m_124[2];
};
struct Pair68 {
    u8 m_00[0x18];
    int m_18[2];
};
struct Src68 {
    u8 m_00[8];
    Pair68 m_08;
};
// What func_800AE8A8 returns
struct Opt68 {
    int m_00;
    s8 m_04[2];
};
// The callback's key: a slot, 1 or 2, and the menu
struct Key68b {
    int m_00;
    struct Menu68 *m_04;
};
// The same object as Snd68, as func_8009A0B0 draws it: a player's HUD
struct Flag68 {
    u8 m_00[4];
    int m_04;
};
struct Val68 {
    u8 m_00[8];
    int m_08;
};
struct Lbl68 {
    u8 m_00[8];
    short m_08;
};
struct Txt68 {
    u8 m_00[0xC];
    char *m_0C;
};
struct Cnt68 {
    u8 m_00[0x48];
    int *m_48;
};
struct Flags68 {
    Flag68 *m_00;
    Flag68 *m_04;
};
struct Hud68 {
    int m_00[14];
    u8 m_38[0x18];
    int m_50;
    int m_54;
    int m_58;
    int m_5C;
    Val68 *m_60[20]; // ten per player
    Lbl68 *m_B0[2];
    Txt68 *m_B8[2];
    Flag68 *m_C0[2];
    Flags68 m_C8[2];
    Cnt68 *m_D8[2];
    int m_E0[2];
    int m_E8;
    int m_EC;
    int m_F0;
    int m_F4[2];
};
// Which of the HUD's values goes in each of its ten slots
struct Layout68 {
    u8 m_00[8];
    int m_08[14];
    u8 m_40[4];
    int m_44[20]; // m_44[17] and m_44[19] also flags
};

struct Hold68 {
    char *m_00; // a name
    u8 m_04[0x5C];
    Snd68 *m_60;
};
struct Menu68 {
    u8 m_00[0xA80];
    Hold68 *m_A80;
    Hold68 *m_A84;
    u8 m_A88[8];
    int m_A90;
    u8 m_A94[4];
    Dst68 *m_A98;
    Src68 *m_A9C;
};
struct Key68 {
    u8 m_00[8];
    s8 m_08; // '1' to '9'
};

void func_8009A0B0(Hud68 *s, Menu68 *m);
int func_800A60AC(const char *a, const char *b);
void func_800B031C(int i, int c);
int func_800B0264(int i);
int sprintf(char *buf, const char *fmt, ...);
extern char D_800C92B0[];
extern char D_800C92C0[];
extern Layout68 *D_800C9290[];

Vector3 *func_8009964C(Vector3 *v, int k);
Vector3 *func_80099690(Vector3 *v, int k);
Vector3 *func_800996D4(Vector3 *d, int k, Vector3 *s);
Vector3 *func_80099718(Vector3 *d, Vector3 *s, int k);
Vector3 *func_8009975C(Vector3 *d, Vector3 *s, int k);
Vector3 *func_800997A4(Vector3 *d, Vector3 *s);
Vector3 *func_800997D0(Vector3 *v, Vector3 *a);
Vector3 *func_80099808(Vector3 *v, int k);
Vector3 *func_80099834(Vector3 *v, Vector3 *a);
Vector3 *func_8009986C(Vector3 *v, int k);
Vector3 *func_80099898(Vector3 *d, Vector3 *a, Vector3 *b);
Vector3 *func_800998D0(Vector3 *d, Vector3 *a, Vector3 *b);
Vector3 *func_80099B60(Vector3 *d, Vector3 *a, Vector3 *b, int sh);
Vector3 *func_80099D48(Vector3 *v, int k);
Vector3 *func_80099D74(Vector3 *v, int k);
Vector3 *func_80099DA0(Vector3 *d, Vector3 *s, int k);
Vector3 *func_80099DCC(Vector3 *d, Vector3 *s, int k);
int func_80099DF8(Vector3 *a, Vector3 *b);
int func_80099E3C(Vector3 *a, Vector3 *b);
SVECTOR *func_80099E84(SVECTOR *v, SVECTOR *a);
SVECTOR *func_80099EBC(SVECTOR *d, SVECTOR *a, SVECTOR *b);
SVECTOR *func_80099EF4(SVECTOR *d, SVECTOR *a, SVECTOR *b);
void func_8009A740(Menu68 *m, int a, Key68 *k);
void func_8009A84C(Menu68 *m);
void func_800A712C(void);
void func_800A195C(void);
void func_8009FE70(void);
void func_800A1B4C(void);
int func_80078FC4(int *t, int b);
void func_80045A7C(int *a, int i);
extern int D_800CBC94[];
extern int D_800CABC0;
extern int D_800C886C;

Vector3 *func_80099574(Vector3 *v, int k);
Vector3 *func_800994F0(Vector3 *v, int k, int sh);
Vector3 *func_800995C4(Vector3 *v, int k);
int func_80099C20(Vector3 *a, Vector3 *b, int sh);
int func_80099B88(Vector3 *a, Vector3 *b);
Vector3 *func_80099CB0(Vector3 *d, Vector3 *a, Vector3 *b);
u32 func_800993C8(Vector3 *v);
u32 func_80099454(Vector3 *v, int sh);
void func_8009A93C(Menu68 *m, int b);
int func_8009A9A4(int a, int b, int c, int d, int e);
void func_80099F2C(void);
typedef void (*Cb68)(int *v, int a, Key68b *k);
void func_8003EC6C(Menu68 *m, int a, Cb68 cb);
Opt68 *func_800AE8A8(void);
int func_80097A68(int x, int sh, int n);
extern int D_800CC030[];
Vector3 *func_80099A38(Vector3 *d, Vector3 *a, Vector3 *b, int sh);
Vector3 *func_80099908(Vector3 *d, Vector3 *a, Vector3 *b);
void func_80099F88(int *d);
void func_800990E8(Vector3 *v, int sh);
int func_8009931C(Vector3 *v);
int func_8009923C(Vector3 *v);
int func_80097AC8(u32 x);
int func_80097B7C(u32 lo, u32 hi);
void func_8009A524(int *v, int a, Key68b *k);
void func_8009A61C(Menu68 *m);
void func_8009A764(Menu68 *m, int b);
void func_8009A888(Menu68 *m);
}

// A square's 64 bits, as the game's asm macro: two nops before the mflo
#define SQR64(lo, hi, x) \
    __asm__ volatile("mult %2, %2\n\t" \
                     "nop\n\t" \
                     "nop\n\t" \
                     "mflo %0\n\t" \
                     "mfhi %1" \
                     : "=r"(lo), "=r"(hi) \
                     : "r"(x))

// The GTE's count of leading zeros (or ones)
#define GTE_LZC(r, x) \
    __asm__ volatile("mtc2 %1, $30\n\t" \
                     "nop\n\t" \
                     "nop\n\t" \
                     "mfc2 %0, $31" \
                     : "=r"(r) \
                     : "r"(x))

// The game's abs, as a macro: sra, xor, subu where GCC's builtin branches
#define ABS(x) (((x) ^ ((x) >> 31)) - ((x) >> 31))

// A value shifted left by sh and divided by n, through func_80097A68
// when the shift would overflow
static inline int ScaleDiv(int x, int sh, int n, int lim) {
    if (ABS(x) < lim) {
        return (x << sh) / n;
    }
    return func_80097A68(x, sh, n);
}

#ifdef NON_MATCHING
// Registers: the original copies each value before its abs, and computes
// the limit after the first load
/* The vector scaled to a length of 1 << sh. */
void func_800990E8(Vector3 *v, int sh) {
    int n = func_8009931C(v);
    int lim;
    int x;
    if (n < 0) {
        int vx, vy, vz;

        n = (u32)n >> 1;
        vx = v->vx >> 1;
        vy = v->vy >> 1;
        vz = v->vz >> 1;
        v->vx = vx;
        v->vy = vy;
        v->vz = vz;
    }
    if (n) {
        x = v->vx;
        lim = 1 << (30 - sh);
        v->vx = ScaleDiv(x, sh, n, lim);
        v->vy = ScaleDiv(v->vy, sh, n, lim);
        v->vz = ScaleDiv(v->vz, sh, n, lim);
    }
}
#else
INCLUDE_ASM("asm/langimg/nonmatchings/chunk_68", func_800990E8);
#endif

#ifdef NON_MATCHING
// The 64-bit sum's halves: registers (the products are the game's asm macro)
/* The length: a 32-bit square root, the square shifted down to fit. */
int func_8009923C(Vector3 *v) {
    int n = 0;
    int z;
    u32 l0, h0, l1, h1, l2, h2;
    u32 sl, sh, tl, th;

    SQR64(l0, h0, v->vx);
    SQR64(l1, h1, v->vy);
    sl = l0 + l1;
    sh = h0 + h1;
    sh += sl < l0;
    SQR64(l2, h2, v->vz);
    tl = sl + l2;
    th = sh + h2;
    th += tl < sl;
    if (th) {
        GTE_LZC(z, th);
        n = (33 - z) & ~1;
        tl = (tl >> n) | (th << (32 - n));
        n >>= 1;
    }
    return func_80097AC8(tl) << n;
}
#else
INCLUDE_ASM("asm/langimg/nonmatchings/chunk_68", func_8009923C);
#endif

#ifdef NON_MATCHING
// The 64-bit sum's halves: registers (the products are the game's asm macro)
/* The length: the square root of the 64-bit square. */
int func_8009931C(Vector3 *v) {
    u32 l0, h0, l1, h1, l2, h2;
    u32 sl, sh, tl, th;

    SQR64(l0, h0, v->vx);
    SQR64(l1, h1, v->vy);
    sl = l0 + l1;
    sh = h0 + h1;
    sh += sl < l0;
    SQR64(l2, h2, v->vz);
    tl = sl + l2;
    th = sh + h2;
    th += tl < sl;
    if (th) {
        return func_80097B7C(tl, th);
    }
    return func_80097AC8(tl);
}
#else
INCLUDE_ASM("asm/langimg/nonmatchings/chunk_68", func_8009931C);
#endif

#ifdef NON_MATCHING
/* The squared length, or 0xFFFFFFFF past 32 bits. */
u32 func_800993C8(Vector3 *v) {
    u32 l0, h0, l1, h1, l2, h2;
    u32 sl, sh, tl, th;

    SQR64(l0, h0, v->vx);
    SQR64(l1, h1, v->vy);
    sl = l0 + l1;
    sh = h0 + h1;
    sh += sl < l0;
    SQR64(l2, h2, v->vz);
    tl = sl + l2;
    th = sh + h2;
    th += tl < sl;
    if (th) {
        tl = -1;
    }
    return tl;
}
#else
INCLUDE_ASM("asm/langimg/nonmatchings/chunk_68", func_800993C8);
#endif

#ifdef NON_MATCHING
/* The squared length shifted right by n, or 0xFFFFFFFF past 32 bits. */
u32 func_80099454(Vector3 *v, int n) {
    u32 l0, h0, l1, h1, l2, h2;
    u32 sl, sh, tl, th;

    SQR64(l0, h0, v->vx);
    SQR64(l1, h1, v->vy);
    sl = l0 + l1;
    sh = h0 + h1;
    sh += sl < l0;
    SQR64(l2, h2, v->vz);
    tl = sl + l2;
    th = sh + h2;
    th += tl < sl;
    tl = (tl >> n) | (th << (32 - n));
    th >>= n;
    if (th) {
        tl = -1;
    }
    return tl;
}
#else
INCLUDE_ASM("asm/langimg/nonmatchings/chunk_68", func_80099454);
#endif

Vector3 *func_800994F0(Vector3 *v, int k, int sh) {
    v->vx = MULSHIFT(v->vx, k, sh);
    v->vy = MULSHIFT(v->vy, k, sh);
    v->vz = MULSHIFT(v->vz, k, sh);
    return v;
}

Vector3 *func_80099574(Vector3 *v, int k) {
    v->vx = (v->vx * k) >> 12;
    v->vy = (v->vy * k) >> 12;
    v->vz = (v->vz * k) >> 12;
    return v;
}

Vector3 *func_800995C4(Vector3 *v, int k) {
    v->vx = MULSHIFT(v->vx, k, 12);
    v->vy = MULSHIFT(v->vy, k, 12);
    v->vz = MULSHIFT(v->vz, k, 12);
    return v;
}

Vector3 *func_8009964C(Vector3 *v, int k) {
    v->vx *= k;
    v->vy *= k;
    v->vz *= k;
    return v;
}

Vector3 *func_80099690(Vector3 *v, int k) {
    int x = v->vx / k;
    int y = v->vy / k;
    int z = v->vz / k;

    v->vx = x;
    v->vy = y;
    v->vz = z;
    return v;
}

Vector3 *func_800996D4(Vector3 *d, int k, Vector3 *s) {
    d->vx = k * s->vx;
    d->vy = k * s->vy;
    d->vz = k * s->vz;
    return d;
}

Vector3 *func_80099718(Vector3 *d, Vector3 *s, int k) {
    d->vx = k * s->vx;
    d->vy = k * s->vy;
    d->vz = k * s->vz;
    return d;
}

Vector3 *func_8009975C(Vector3 *d, Vector3 *s, int k) {
    d->vx = s->vx / k;
    d->vy = s->vy / k;
    d->vz = s->vz / k;
    return d;
}

Vector3 *func_800997A4(Vector3 *d, Vector3 *s) {
    long x = s->vx;
    long y = s->vy;
    long z = s->vz;

    x = -x;
    y = -y;
    z = -z;
    d->vx = x;
    d->vy = y;
    d->vz = z;
    return d;
}

Vector3 *func_800997D0(Vector3 *v, Vector3 *a) {
    long x = v->vx;
    long y = v->vy;
    long z = v->vz;

    x += a->vx;
    y += a->vy;
    z += a->vz;
    v->vx = x;
    v->vy = y;
    v->vz = z;
    return v;
}

Vector3 *func_80099808(Vector3 *v, int k) {
    int x = v->vx + k;
    int y = v->vy + k;
    int z = v->vz + k;

    v->vx = x;
    v->vy = y;
    v->vz = z;
    return v;
}

Vector3 *func_80099834(Vector3 *v, Vector3 *a) {
    long x = v->vx;
    long y = v->vy;
    long z = v->vz;

    x -= a->vx;
    y -= a->vy;
    z -= a->vz;
    v->vx = x;
    v->vy = y;
    v->vz = z;
    return v;
}

Vector3 *func_8009986C(Vector3 *v, int k) {
    int x = v->vx - k;
    int y = v->vy - k;
    int z = v->vz - k;

    v->vx = x;
    v->vy = y;
    v->vz = z;
    return v;
}

Vector3 *func_80099898(Vector3 *d, Vector3 *a, Vector3 *b) {
    long x = a->vx;
    long y = a->vy;
    long z = a->vz;

    x += b->vx;
    y += b->vy;
    z += b->vz;
    d->vx = x;
    d->vy = y;
    d->vz = z;
    return d;
}

Vector3 *func_800998D0(Vector3 *d, Vector3 *a, Vector3 *b) {
    long x = a->vx;
    long y = a->vy;
    long z = a->vz;

    x -= b->vx;
    y -= b->vy;
    z -= b->vz;
    d->vx = x;
    d->vy = y;
    d->vz = z;
    return d;
}

/* The cross product (4.12). */
Vector3 *func_80099908(Vector3 *d, Vector3 *a, Vector3 *b) {
    d->vx = MULSHIFT(a->vy, b->vz, 12) - MULSHIFT(a->vz, b->vy, 12);
    d->vy = MULSHIFT(a->vz, b->vx, 12) - MULSHIFT(a->vx, b->vz, 12);
    d->vz = MULSHIFT(a->vx, b->vy, 12) - MULSHIFT(a->vy, b->vx, 12);
    return d;
}

/* The cross product, with sh bits of fraction. */
Vector3 *func_80099A38(Vector3 *d, Vector3 *a, Vector3 *b, int sh) {
    d->vx = MULSHIFT(a->vy, b->vz, sh) - MULSHIFT(a->vz, b->vy, sh);
    d->vy = MULSHIFT(a->vz, b->vx, sh) - MULSHIFT(a->vx, b->vz, sh);
    d->vz = MULSHIFT(a->vx, b->vy, sh) - MULSHIFT(a->vy, b->vx, sh);
    return d;
}

Vector3 *func_80099B60(Vector3 *d, Vector3 *a, Vector3 *b, int sh) {
    func_80099A38(d, a, b, sh);
    return d;
}

/* The dot product (4.12). */
int func_80099B88(Vector3 *a, Vector3 *b) {
    int r = MULSHIFT(a->vx, b->vx, 12) + MULSHIFT(a->vy, b->vy, 12);

    r += MULSHIFT(a->vz, b->vz, 12);
    return r;
}

/* The dot product, with sh bits of fraction. */
int func_80099C20(Vector3 *a, Vector3 *b, int sh) {
    return MULSHIFT(a->vx, b->vx, sh) + MULSHIFT(a->vy, b->vy, sh) + MULSHIFT(a->vz, b->vz, sh);
}

/* The cross product. */
Vector3 *func_80099CB0(Vector3 *d, Vector3 *a, Vector3 *b) {
    d->vx = a->vy * b->vz - a->vz * b->vy;
    d->vy = a->vz * b->vx - a->vx * b->vz;
    d->vz = a->vx * b->vy - a->vy * b->vx;
    return d;
}

Vector3 *func_80099D48(Vector3 *v, int k) {
    int x = v->vx >> k;
    int y = v->vy >> k;
    int z = v->vz >> k;

    v->vx = x;
    v->vy = y;
    v->vz = z;
    return v;
}

Vector3 *func_80099D74(Vector3 *v, int k) {
    int x = v->vx << k;
    int y = v->vy << k;
    int z = v->vz << k;

    v->vx = x;
    v->vy = y;
    v->vz = z;
    return v;
}

Vector3 *func_80099DA0(Vector3 *d, Vector3 *s, int k) {
    long x = s->vx;
    long y = s->vy;
    long z = s->vz;

    x <<= k;
    y <<= k;
    z <<= k;
    d->vx = x;
    d->vy = y;
    d->vz = z;
    return d;
}

Vector3 *func_80099DCC(Vector3 *d, Vector3 *s, int k) {
    long x = s->vx;
    long y = s->vy;
    long z = s->vz;

    x >>= k;
    y >>= k;
    z >>= k;
    d->vx = x;
    d->vy = y;
    d->vz = z;
    return d;
}

int func_80099DF8(Vector3 *a, Vector3 *b) {
    return a->vx == b->vx && a->vy == b->vy && a->vz == b->vz;
}

int func_80099E3C(Vector3 *a, Vector3 *b) {
    return a->vx != b->vx || a->vy != b->vy || a->vz != b->vz;
}

SVECTOR *func_80099E84(SVECTOR *v, SVECTOR *a) {
    int x = v->vx;
    int y = v->vy;
    int z = v->vz;

    x += a->vx;
    y += a->vy;
    z += a->vz;
    v->vx = x;
    v->vy = y;
    v->vz = z;
    return v;
}

SVECTOR *func_80099EBC(SVECTOR *d, SVECTOR *a, SVECTOR *b) {
    int x = a->vx;
    int y = a->vy;
    int z = a->vz;

    x += b->vx;
    y += b->vy;
    z += b->vz;
    d->vx = x;
    d->vy = y;
    d->vz = z;
    return d;
}

SVECTOR *func_80099EF4(SVECTOR *d, SVECTOR *a, SVECTOR *b) {
    int x = a->vx;
    int y = a->vy;
    int z = a->vz;

    x -= b->vx;
    y -= b->vy;
    z -= b->vz;
    d->vx = x;
    d->vy = y;
    d->vz = z;
    return d;
}

/* The game's start: the libraries, the cards, then the main loop. */
void func_80099F2C(void) {
    int i;

    func_800A712C();
    i = 0;
    func_800A195C();
    func_8009FE70();
    func_800A1B4C();
    D_800C886C = func_80078FC4(D_800CBC94, 0);
    for (;;) {
        func_80045A7C(&D_800CABC0, i++);
    }
}

/* The settings, copied out of D_800CC030. */
void func_80099F88(int *d) {
    d[2] = D_800CC030[59];
    d[3] = D_800CC030[59];
    d[0] = D_800CC030[60];
    d[1] = D_800CC030[60];
    d[4] = D_800CC030[66];
    d[5] = D_800CC030[65];
    d[6] = D_800CC030[67];
    d[7] = D_800CC030[68];
    d[10] = D_800CC030[71];
    d[11] = D_800CC030[72];
    d[8] = D_800CC030[73];
    d[9] = D_800CC030[74];
    d[12] = D_800CC030[70];
    d[13] = D_800CC030[69];
    d[14] = D_800CC030[85];
    d[15] = D_800CC030[86];
    d[16] = D_800CC030[87];
    d[17] = D_800CC030[88];
    d[18] = D_800CC030[89];
    d[19] = D_800CC030[90];
    d[20] = D_800CC030[91];
    d[21] = D_800CC030[92];
    d[22] = D_800CC030[93];
    d[23] = D_800CC030[94];
}

#ifdef NON_MATCHING
// Registers: the original compares with 4, 7 and ~2 through $t6, the
// reload register, which ours keeps in others
/* The two players' HUD, each frame. */
void func_8009A0B0(Hud68 *s, Menu68 *m) {
    Hold68 *h = m->m_A80;
    int *col;
    int *sel;
    Snd68 *t;
    Layout68 *l;
    int i;
    int j;
    u32 k;
    int found;

    if (func_800A60AC(h->m_00, D_800C92B0)) {
        return;
    }
    col = m->m_A98->m_124;
    sel = m->m_A9C->m_08.m_18;
    t = h->m_60;
    for (i = 0; i < 2; i++) {
        sprintf(s->m_B8[i]->m_0C, D_800C92C0, *s->m_D8[i]->m_48 + 1);
        if (t->m_F4[i] > 0) {
            func_800B031C(i, col[i] * 0xFF01);
            t->m_F4[i]--;
        } else {
            func_800B031C(i, 0);
        }
        s->m_C0[i]->m_04 |= 2;
        if (s->m_E0[i] == 4) {
            s->m_B0[i]->m_08 = s->m_E8;
            l = D_800C9290[sel[i]];
            for (j = 0; j < 10; j++) {
                s->m_60[i * 10 + j]->m_08 = 0;
                for (k = 0; k < 14; k++) {
                    if (l->m_08[k] == j) {
                        s->m_60[i * 10 + j]->m_08 = s->m_00[k];
                        break;
                    }
                }
            }
        } else if (s->m_E0[i] == 7) {
            s->m_B0[i]->m_08 = s->m_EC;
            l = D_800C9290[sel[i]];
            for (j = 0; j < 10; j++) {
                s->m_60[i * 10 + j]->m_08 = 0;
                found = 0;
                if (j == 3) {
                    if (l->m_44[17] == 2) {
                        s->m_60[i * 10 + 2]->m_08 = s->m_50;
                        s->m_60[i * 10 + 3]->m_08 = s->m_54;
                        found = 1;
                    } else if (l->m_44[19] == 2) {
                        s->m_60[i * 10 + 2]->m_08 = s->m_58;
                        s->m_60[i * 10 + 3]->m_08 = s->m_5C;
                        found = 1;
                    }
                }
                if (!found) {
                    for (k = 0; k < 20; k++) {
                        if (l->m_44[k] == j) {
                            s->m_60[i * 10 + j]->m_08 = s->m_00[k];
                            break;
                        }
                    }
                }
            }
        } else {
            s->m_B0[i]->m_08 = s->m_F0;
            s->m_C0[i]->m_04 &= ~2;
            for (j = 0; j < 10; j++) {
                s->m_60[i * 10 + j]->m_08 = 0;
            }
        }
        if (func_800B0264(i)) {
            s->m_C8[i].m_00->m_04 |= 2;
            s->m_C8[i].m_04->m_04 |= 2;
        } else {
            s->m_C8[i].m_00->m_04 &= ~2;
            s->m_C8[i].m_04->m_04 &= ~2;
        }
    }
}
#else
INCLUDE_ASM("asm/langimg/nonmatchings/chunk_68", func_8009A0B0);
#endif

/* A slot's choice changed: the values swapped to match. */
void func_8009A524(int *v, int a, Key68b *k) {
    Menu68 *m = k->m_04;
    Hold68 *h;
    Src68 *src;
    Pair68 *q;
    Snd68 *s;
    Dst68 *d;
    int n;
    int i;
    int x;
    if ((m->m_A90 == 1) || (m->m_A90 == 4)) {
        h = m->m_A84;
    } else {
        h = m->m_A80;
    }
    src = m->m_A9C;
    n = k->m_00;
    s = h->m_60;
    q = &src->m_08;
    i = n - 1;
    d = m->m_A98;
    if (s->m_E0[i] != 7) {
        d->m_114[i] = src->m_08.m_18[i];
    } else {
        d->m_114[n + 1] = src->m_08.m_18[i];
    }
    x = *v;
    s->m_E0[i] = x;
    if (x != 7) {
        q->m_18[i] = d->m_114[i];
        s->m_D8[i]->m_50 = 7;
    } else {
        q->m_18[i] = d->m_114[i + 2];
        s->m_D8[i]->m_50 = 6;
    }
}

void func_8009A61C(Menu68 *m) {
    Dst68 *d = m->m_A98;
    Src68 *src = m->m_A9C;
    Snd68 *s = m->m_A80->m_60;
    Pair68 *q = &src->m_08;
    Opt68 *o = func_800AE8A8();
    int n = o->m_00;
    int i;

    if (n >= 3) {
        n = 2;
    }
    q->m_18[0] = d->m_114[0];
    q->m_18[1] = d->m_114[1];
    for (i = 0; i < n; i++) {
        s->m_E0[i] = o->m_04[i];
        if (o->m_04[i] != 7) {
            src->m_08.m_18[i] = d->m_114[i];
        } else {
            src->m_08.m_18[i] = d->m_11C[i];
        }
    }
    func_8003EC6C(m, 0, func_8009A524);
    func_8003EC6C(m, 1, func_8009A524);
}

void func_8009A740(Menu68 *m, int a, Key68 *k) {
    m->m_A80->m_60->m_F4[k->m_08 - 0x31] = 5;
}

void func_8009A764(Menu68 *m, int b) {
    Hold68 *h;
    int i;

    if (m->m_A90 == 1 || m->m_A90 == 4) {
        h = m->m_A84;
    } else {
        h = m->m_A80;
    }
    func_8003EC6C(m, 0, 0);
    func_8003EC6C(m, 1, 0);
    if (b) {
        Dst68 *d = m->m_A98;
        Src68 *src = m->m_A9C;
        Snd68 *s = h->m_60;

        for (i = 0; i < 2; i++) {
            if (s->m_E0[i] != 7) {
                d->m_114[i] = src->m_08.m_18[i];
            } else {
                d->m_11C[i] = src->m_08.m_18[i];
            }
        }
    }
}

void func_8009A84C(Menu68 *m) {
    if (m->m_A80->m_60) {
        func_8009A0B0((Hud68 *)m->m_A80->m_60, m);
    }
}

void func_8009A888(Menu68 *m) {
    Snd68 *s = m->m_A80->m_60;
    Sub68 *p = s->m_04;
    int i;
    int j;

    s->m_2160->m_50 = p->m_194->m_C0;
    *s->m_2160->m_48 = p->m_18F + 1;
    s->m_A8 = 0;
    s->m_AC = 0;
    s->m_B0 = 0x7FFFFFFF;
    s->m_B4 = 0x7FFFFFFF;
    for (i = 0; i < p->m_194->m_C0; i++) {
        for (j = 0; j < 3; j++) {
            s->m_A8 = 0x1068;
            s->m_AC = 0x1388;
            s->m_B0 = 0;
            s->m_B4 = 0;
        }
    }
}

void func_8009A93C(Menu68 *m, int b) {
    Hold68 *h;
    Snd68 *s;
    Sub68 *p;

    if (m->m_A90 == 1 || m->m_A90 == 4) {
        h = m->m_A84;
    } else {
        h = m->m_A80;
    }
    s = h->m_60;
    p = s->m_04;
    if (b) {
        p->m_18F = *s->m_2160->m_48 - 1;
    }
}

/* A cubic ease: from d at a = b to e at a = c. */
int func_8009A9A4(int a, int b, int c, int d, int e) {
    int t = ((a - b) << 12) / (c - b);
    int k = e - d;
    int v;

    v = (-k * t + 0x800) / 4096 + k;
    v = (v * t + 0x800) / 4096 + k;
    return (v * t + 0x800) / 4096 + d;
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_68", func_8009AA2C);
