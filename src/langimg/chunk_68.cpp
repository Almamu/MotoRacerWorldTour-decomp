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
struct Sub68 {
    u8 m_00[0x18F];
    u8 m_18F;
};
struct Tab68 {
    u8 m_00[0x48];
    u8 *m_48;
};
struct Snd68 {
    u8 m_00[4];
    Sub68 *m_04;
    u8 m_08[0xEC];
    int m_F4[9];
    u8 m_118[0x2048];
    Tab68 *m_2160;
};
struct Hold68 {
    u8 m_00[0x60];
    Snd68 *m_60;
};
struct Menu68 {
    u8 m_00[0xA80];
    Hold68 *m_A80;
    Hold68 *m_A84;
    u8 m_A88[8];
    int m_A90;
};
struct Key68 {
    u8 m_00[8];
    s8 m_08; // '1' to '9'
};

void func_80099A38(Vector3 *v);
void func_8009A0B0(Snd68 *s, Menu68 *m);

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
Vector3 *func_80099B60(Vector3 *v);
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
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_68", func_800990E8);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_68", func_8009923C);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_68", func_8009931C);

#ifdef NON_MATCHING
/* The original's 64-bit products read mflo then mfhi with two nops after each mult: an asm macro, not GCC's long long */
/* The squared length, or 0xFFFFFFFF past 32 bits. */
u32 func_800993C8(Vector3 *v) {
    unsigned long long s = (long long)v->vx * v->vx;

    s += (long long)v->vy * v->vy;
    s += (long long)v->vz * v->vz;
    if (s >> 32) {
        return -1;
    }
    return s;
}
#else
INCLUDE_ASM("asm/langimg/nonmatchings/chunk_68", func_800993C8);
#endif

#ifdef NON_MATCHING
/* The original's 64-bit products read mflo then mfhi with two nops after each mult: an asm macro, not GCC's long long */
/* The squared length shifted right by sh, or 0xFFFFFFFF past 32 bits. */
u32 func_80099454(Vector3 *v, int sh) {
    unsigned long long s = (long long)v->vx * v->vx;
    u32 lo;
    u32 hi;

    s += (long long)v->vy * v->vy;
    s += (long long)v->vz * v->vz;
    lo = s;
    hi = s >> 32;
    lo = (lo >> sh) | (hi << (32 - sh));
    hi >>= sh;
    if (hi) {
        return -1;
    }
    return lo;
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

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_68", func_80099908);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_68", func_80099A38);

Vector3 *func_80099B60(Vector3 *v) {
    func_80099A38(v);
    return v;
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

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_68", func_80099F88);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_68", func_8009A0B0);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_68", func_8009A524);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_68", func_8009A61C);

void func_8009A740(Menu68 *m, int a, Key68 *k) {
    m->m_A80->m_60->m_F4[k->m_08 - 0x31] = 5;
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_68", func_8009A764);

void func_8009A84C(Menu68 *m) {
    if (m->m_A80->m_60) {
        func_8009A0B0(m->m_A80->m_60, m);
    }
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_68", func_8009A888);

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
