#include "common.h"
#include "psyq.h"

/* The vectors' operators (docs/matching/issue-69-langimg-chunk68.md) */

extern "C" {
// A vector (as include/langimg/cobjet.h's, whose callers need some of these
// declared void)
struct Vector3 {
    long vx, vy, vz;
};

// Something with a table of states at 0xF4
struct Snd68 {
    u8 m_00[0xF4];
    int m_F4[9];
};
struct Hold68 {
    u8 m_00[0x60];
    Snd68 *m_60;
};
struct Menu68 {
    u8 m_00[0xA80];
    Hold68 *m_A80;
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
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_68", func_800990E8);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_68", func_8009923C);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_68", func_8009931C);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_68", func_800993C8);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_68", func_80099454);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_68", func_800994F0);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_68", func_80099574);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_68", func_800995C4);

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

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_68", func_80099B88);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_68", func_80099C20);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_68", func_80099CB0);

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

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_68", func_80099F2C);

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

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_68", func_8009A93C);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_68", func_8009A9A4);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_68", func_8009AA2C);
