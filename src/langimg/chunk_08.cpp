#include "common.h"
#include "langimg/race.h"
#include "mulshift.h"

/* The game's code built with GCC 2.91.66
 * (docs/matching/issue-9-langimg-chunk08.md). */

extern "C" {
// A motor's curves (fields named by use)
struct Motor {
    u8 m_00[0x10];
    int m_10, m_14; // 0x10: below m_3C, a line: m_10 + x * m_14
    int m_18, m_1C; // 0x18: above
    u8 m_20[6];
    short m_26; // 0x26: the lowest x
    u8 m_28[0xC];
    int m_34;
    u8 m_38[4];
    int m_3C;
    u8 m_40[0x22];
    short m_62;
    u8 m_64[8];
    int m_6C[1];
};

void func_80022CCC(void);
void func_80022CD4(MATRIX *a, SVECTOR *v);
void func_80022D04(SVECTOR *out, Vector3 *in);
Vector3 *func_80022D20(Vector3 *out, Vector3 *in);
void func_80022D44(Vector3 *v, int shift, int a, int b);
int func_80022FA4(Vector3 *a, Vector3 *b, int s);
void func_80023004(Vector3 *v, Vector3 n);
void func_8002309C(Vector3 *v, Vector3 n);
void func_80023140(Vector3 *v, int len, int shift);
int func_8002357C(Motor *m, int x, int i);
u32 func_800235F8(Motor *m, int x);
int func_80097A68(int a, int shift, int b); // (a << shift) / b
int func_8009931C(Vector3 *v);              // its length
void func_800994F0(Vector3 *v, int a, int shift);
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_08", func_80021154);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_08", func_80022454);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_08", func_80022A68);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_08", func_80022BA8);

void func_80022CCC(void) {
}

void func_80022CD4(MATRIX *a, SVECTOR *v) {
    func_80097E4C(a, v->vx, v->vy, v->vz);
}

void func_80022D04(SVECTOR *out, Vector3 *in) {
    short *s = (short *)in;
    int x = s[0];
    int y = s[2];
    int z = s[4];

    out->vx = x;
    out->vy = y;
    out->vz = z;
}

/* The vector turned a quarter about y, in the plane. */
Vector3 *func_80022D20(Vector3 *out, Vector3 *in) {
    int z = in->vz;

    out->vy = 0;
    out->vx = z;
    out->vz = -in->vx;
    return out;
}

void func_80022D44(Vector3 *v, int shift, int a, int b) {
    Vector3 t;
    int one;

    func_80022D20(&t, v);
    one = 1 << shift;
    func_80023140(&t, one, shift);
    func_800994F0(&t, a << (shift - b), shift);
    func_800997D0(&v->vx, &t.vx);
    func_80023140(v, one, shift);
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_08", func_80022DE4);

/* The cross product's y, in fixed point with s fraction bits. */
int func_80022FA4(Vector3 *a, Vector3 *b, int s) {
    return MULSHIFT(a->vz, b->vx, s) - MULSHIFT(a->vx, b->vz, s);
}

/* v's y on the plane through 0 with normal n, 4.12. */
void func_80023004(Vector3 *v, Vector3 n) {
    int y = 0;

    if (n.vy) {
        int a = MULSHIFT(v->vx, n.vx, 12);

        y = a + MULSHIFT(v->vz, n.vz, 12);
        y = -((y << 12) / n.vy);
    }
    v->vy = y;
}

#ifdef NON_MATCHING
/* Registers: n.vz goes to the asm directly, the original copies it first (21 off) */
/* As func_80023004, with 26 fraction bits. */
void func_8002309C(Vector3 *v, Vector3 n) {
    int y = 0;

    if (n.vy) {
        int a = MULSHIFT(v->vx, n.vx, 26);

        y = a + MULSHIFT(v->vz, n.vz, 26);
        y = -func_80097A68(y, 26, n.vy);
    }
    v->vy = y;
}
#else
INCLUDE_ASM("asm/langimg/nonmatchings/chunk_08", func_8002309C);
#endif

/* v scaled to the length len. */
void func_80023140(Vector3 *v, int len, int shift) {
    int l = func_8009931C(v);

    if (l) {
        int f = func_80097A68(len, shift, l);

        v->vx = MULSHIFT(v->vx, f, shift);
        v->vy = MULSHIFT(v->vy, f, shift);
        v->vz = MULSHIFT(v->vz, f, shift);
    }
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_08", func_8002320C);

#ifdef NON_MATCHING
/* Scheduling: the original sets up the constants first and has two nops before the mult */
int func_8002357C(Motor *m, int x, int i) {
    int t = 0xE66000 / m->m_62;

    t = MULSHIFT(m->m_6C[i], t, 12);
    return MULSHIFT(x, t, 24);
}
#else
INCLUDE_ASM("asm/langimg/nonmatchings/chunk_08", func_8002357C);
#endif

#ifdef NON_MATCHING
/* Registers and scheduling (58 off) */
u32 func_800235F8(Motor *m, int x) {
    int a, b, y;

    if (x < m->m_26) {
        x = m->m_26;
    }
    x = MULSHIFT(x, m->m_34, 12);
    a = x;
    if (a < m->m_3C) {
        y = m->m_10;
        b = m->m_14;
    } else {
        y = m->m_18;
        b = m->m_1C;
    }
    y += MULSHIFT(a, b, 12);
    x = MULSHIFT(x << 12, 0x1AC, 12);
    return (u32)MULSHIFT(y << 12, 0x80000000u / x, 12) >> 7;
}
#else
INCLUDE_ASM("asm/langimg/nonmatchings/chunk_08", func_800235F8);
#endif
