#include "common.h"
#include "langimg/race.h"
#include "langimg/motor.h"
#include "langimg/bike.h"
#include "langimg/cobjet.h"
#include "mulshift.h"

/* The game's code built with GCC 2.91.66: more of the bike
 * (docs/matching/issue-13-langimg-chunk12.md). */

extern "C" {
void func_800297B4(Bike *b, Bike *o, int again);
void func_8002A260(void);
void func_8002A268(Bike *b, Vector3 *v);
void func_8002A394(Bike *b);
void func_8002AF3C(Bike *b);
void func_80031078(Bike *b);
void func_80031138(Bike *b);
void func_80031500(Bike *b);
void func_80098F94(Vector3 *v, int shift);            // normalized
int func_80099C20(Vector3 *a, Vector3 *b, int shift); // a dot product
int func_8009923C(Vector3 *v);
Vector3 *func_80022D20(Vector3 *out, Vector3 *in);
void func_80023140(Vector3 *v, int len, int shift);
}

#define IABS(x) ((x) < 0 ? -(x) : (x))

#ifdef NON_MATCHING
/* The original negates the second dot product in $v0; here it's copied first (one instruction more) */
/* Slows the bike when it runs into the back of another: o ahead, within
 * its width; checked the other way round too, once. */
void func_800297B4(Bike *b, Bike *o, int again) {
    Vector3 d, h, p;
    int s, t;

    if (b->m_52B || b->m_54->m_189 || b->m_58 || b->m_29C <= 0x1000) {
        return;
    }
    func_800998D0(&d, &o->m_pos, &b->m_pos);
    h = o->m_11C;
    h.vy = 0;
    func_80098F94(&h, 12);
    s = func_80099C20(&h, &d, 12);
    if (s < 0) {
        if (o->m_59 && again) {
            func_800297B4(o, b, 0);
        }
        return;
    }
    p.vx = h.vz;
    p.vy = 0;
    p.vz = -h.vx;
    t = func_80099C20(&p, &d, 12);
    if (t < 0) {
        t = -t;
    }
    if (t > 0x1000 && s < t) {
        return;
    }
    b->m_43E += b->m_298 * 3;
    if (b->m_43E > 0x1000) {
        b->m_43E = 0x1000;
    }
    b->m_52B = 1;
}
#else
INCLUDE_ASM("asm/langimg/nonmatchings/chunk_12", func_800297B4);
#endif

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_12", func_8002993C);

void func_8002A260(void) {
}

#ifdef NON_MATCHING
/* MULSHIFT's temporary in $v1, the original's in $v0, and one
 * instruction more */
void func_8002A268(Bike *b, Vector3 *v) {
    int ok = b->m_58 != 1;

    if (b->m_29C > 0x1000) {
        ok = 0;
    }
    if (ok && b->m_3AC) {
        int a = b->m_3AC / 2;

        a <<= 4;

        if (b->m_5CC->m_10 && a) {
            int l = func_8009923C(v);
            Vector3 t, w;

            func_80022D20(&t, v);
            a = MULSHIFT(a, l, 20);
            w = *v;
            if (a) {
                func_80023140(&t, a, 26);
                func_800997D0(&w.vx, &t.vx);
                func_80023140(&w, IABS(l), 23);
            }
            *v = w;
        }
    }
}
#else
INCLUDE_ASM("asm/langimg/nonmatchings/chunk_12", func_8002A268);
#endif

void func_8002A394(Bike *b) {
    b->m_3AC = 0;
    if (b->m_motor->m_20 & 2) {
        func_80031078(b);
    } else {
        func_80031138(b);
    }
    func_80031500(b);
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_12", func_8002A3F0);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_12", func_8002A7A0);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_12", func_8002ABE8);

void func_8002AF3C(Bike *b) {
    b->m_5C8->m_1C = b->m_motor->m_A4;
    b->m_5CC->m_1C = b->m_motor->m_A4;
    b->m_5C8->m_20 = b->m_motor->m_A8;
    b->m_5CC->m_20 = b->m_motor->m_A8;
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_12", func_8002AF8C);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_12", func_8002B40C);
