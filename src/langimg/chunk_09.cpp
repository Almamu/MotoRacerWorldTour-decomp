#include "common.h"
#include "langimg/race.h"
#include "langimg/motor.h"
#include "langimg/bike.h"
#include "mulshift.h"

/* The game's code built with GCC 2.91.66
 * (docs/matching/issue-10-langimg-chunk09.md). */

extern "C" {
void func_800990E8(Vector3 *v, int shift);
Vector3 *func_80099D48(Vector3 *v, int shift); // v >> shift
int ratan2(long y, long x);
}

static inline void VecCopy(Vector3 *d, Vector3 *s) {
    int x = s->vx;
    int y = s->vy;
    int z = s->vz;

    d->vx = x;
    d->vy = y;
    d->vz = z;
}

static inline void FrameCopy(Frame *d, Frame *s) {
    d->m_00 = s->m_00;
    d->m_04 = s->m_04;
    VecCopy(&d->m_08, &s->m_08);
}

/* The wheel's speed for an engine speed x in a gear (0 when stopped). */
int func_800236F0(Motor *m, int x, int gear) {
    if (x <= 0) {
        return 0;
    }
    x = MULSHIFT(x, m->m_00, 12);
    x = MULSHIFT(x, m->m_ratio[gear], 12);
    return x * 60 / m->m_34;
}

int func_80023788(Motor *m, int x, int gear) {
    int a = x * m->m_34;
    int b = (m->m_04 << 12) / m->m_ratio[gear];

    return MULSHIFT(a, b, 23);
}

/* Each of the 6 gears' value at 1.0, 0 for the gears it doesn't have. */
void func_800237E8(Motor *m, int *out) {
    int i;

    for (i = 0; i < 6; i++) {
        int v = 0;

        if (i < m->m_gears) {
            v = func_80023788(m, 0x1000, i);
        }
        out[i] = v;
    }
}

/* The engine speeds to shift up at: stepping the engine speed up, the
 * point where the next gear pulls harder than this one, or where this one
 * reaches the top (0xFF0 of it at most). The top is higher in a mode. */
void func_8002385C(Motor *m) {
    int top, i, x, prev, g;
    int *p;

    if (m->m_gears < 2 || !m->m_ratio[0]) {
        return;
    }
    top = m->m_28;
    if (D_800D5FD4 & 4) {
        top += 0xE000;
    }
    for (i = 0; i < 6; i++) {
        m->m_upshift[i] = top;
    }
    prev = 0;
    g = 0;
    p = m->m_upshift;
    for (x = 0; x < top; x += 0x4CC) {
        int w = func_800236F0(m, x, g);
        int found = 0;
        int at = 0;

        if (w >= 0x1000) {
            found = 1;
            at = prev;
            if (func_800236F0(m, at, g) > 0xFF0) {
                at = func_80023788(m, 0xFF0, g);
            }
        } else if (func_8002357C(m, func_800235F8(m, w), g) <
                   func_8002357C(m, func_800235F8(m, func_800236F0(m, x, g + 1)), g + 1)) {
            found = 1;
            at = prev;
        }
        prev = x;
        if (found) {
            *p++ = at;
            if (++g >= m->m_gears - 1) {
                return;
            }
        }
    }
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_09", func_80023A30);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_09", func_80023E48);

Bike *func_80024064(Bike *b) {
    func_80062E40(b);
    b->m_vtable = D_800C4D60;
    func_8006BB70(&b->m_378);
    func_8006BB70(&b->m_49C);
    func_8006BB70(&b->m_4B8);
    func_8006BB70(&b->m_4E0);
    func_8006BB70(&b->m_534);
    func_8001A62C(&b->m_560);
    func_8001A62C(&b->m_580);
    b->m_59 = 1;
    b->m_5A = 0;
    b->m_394 = 0;
    b->m_5C8 = new Motion;
    b->m_5CC = new Motion;
    b->m_5D0 = new Motion;
    b->m_motor = 0;
    func_80024C60(b, b->m_5C8);
    func_80024C60(b, b->m_5CC);
    func_80024C60(b, b->m_5D0);
    b->m_3F6 = 1;
    b->m_F0 = 0;
    b->m_118 = 0xA000;
    b->m_417 = 0;
    b->m_418 = 0;
    b->m_412 = 0;
    b->m_41C = 0;
    b->m_414 = 0;
    b->m_415 = 0;
    b->m_5A8 = 0;
    b->m_5B8 = 0;
    b->m_5C0 = 0;
    return b;
}

/* The bike's top engine speed (higher in a mode, higher again in race
 * state 7) and gearing from its motor. */
void func_80024168(Bike *b) {
    Motor *m = b->m_motor;

    b->m_118 = m->m_28;
    if (D_800D5FD4 & 4) {
        b->m_118 = m->m_28 + 0xE000;
        if (D_800C5E14 && D_800C5E14->m_378->m_10->m_state == 7) {
            b->m_118 = m->m_28 + 0x1E000;
        }
    }
    b->m_58 = b->m_motor->m_24;
    if (b->m_58 == 3) {
        b->m_2B8 = b->m_118;
    } else {
        b->m_2B8 = func_80023788(b->m_motor, 0x1000, b->m_motor->m_gears - 1);
    }
    b->m_2B8 = b->m_118;
    b->m_2C4 = MULSHIFT(b->m_motor->m_150, b->m_motor->m_148 * 10, 12);
    b->m_gear = 0;
    b->m_2BC = b->m_2BE = b->m_motor->m_26;
}

void func_800242A4(Bike *b, int flags) {
    b->m_vtable = D_800C4D60;
    if (b->m_5C8) {
        delete b->m_5C8;
        b->m_5C8 = 0;
    }
    if (b->m_5CC) {
        delete b->m_5CC;
        b->m_5CC = 0;
    }
    if (b->m_5D0) {
        delete b->m_5D0;
        b->m_5D0 = 0;
    }
    func_8001A63C(&b->m_580, 2);
    func_8001A63C(&b->m_560, 2);
    func_80062EEC(b, flags);
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_09", func_8002434C);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_09", func_80024584);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_09", func_80024824);

static inline void VecZero(Vector3 *v) {
    v->vx = 0;
    v->vy = 0;
    v->vz = 0;
}

void func_80024C60(Bike *b, Motion *m) {
    m->m_00 = 0;
    VecZero(&m->m_04);
    m->m_10 = 1;
    m->m_14 = 1;
    m->m_18 = 1;
    m->m_20 = 0;
    m->m_1C = 0;
}

void func_80024C90(Bike *b) {
    FrameCopy(&b->m_560, b->m_22C);
    FrameCopy(&b->m_580, b->m_230);
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_09", func_80024D0C);

#define IABS(x) ((x) < 0 ? -(x) : (x))

#ifdef NON_MATCHING
/* Registers, and the original compares with 0x3243 in a register (47 off) */
/* The bike's heading on the ground as an angle (2pi = 0x6488 << 4); kept
 * when it has turned by more than 64 since, the difference wrapped. */
void func_80025074(Bike *b) {
    Vector3 v = b->m_330;
    int a, d;

    v.vy = 0;
    func_800990E8(&v, 26);
    func_80099D48(&v, 14);
    a = MULSHIFT(ratan2(v.vx, v.vz), 0x6488, 12) << 4;
    d = (a - b->m_394) >> 4;
    if (IABS(d) > 0x3243) {
        if (d > 0) {
            d -= 0x6486;
        } else if (d < 0) {
            d += 0x6486;
        }
    }
    if (IABS(d) >= 0x41) {
        b->m_394 = a;
        b->m_398 = a;
    }
}
#else
INCLUDE_ASM("asm/langimg/nonmatchings/chunk_09", func_80025074);
#endif

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_09", func_80025174);

/* The frame's end: the motions shifted along, the oldest cleared for the
 * next frame and started from the last. */
void func_800253FC(Bike *b) {
    Motion *t;

    if (b->m_5D0->m_04.vy < -0x20000) {
        b->m_5D0->m_04.vy = -0x20000;
    }
    t = b->m_5C8;
    b->m_5C8 = b->m_5CC;
    b->m_5CC = b->m_5D0;
    b->m_5D0 = t;
    func_80024C60(b, t);
    VecCopy(&b->m_5D0->m_04, &b->m_5CC->m_04);
    b->m_5D0->m_1C = b->m_5CC->m_1C;
    b->m_5D0->m_20 = b->m_5CC->m_20;
    VecCopy(&b->m_3DC, &b->m_234);
    VecCopy(&b->m_3E8, &b->m_240);
    func_80033720(b);
}

#ifdef NON_MATCHING
/* The original multiplies by -196 with mult; GCC here uses shifts and adds */
void func_800254F0(Bike *b) {
    int d;

    if (b->m_5CC->m_10) {
        b->m_2F4.vy += b->m_motor->m_148 * -196 / 10;
        return;
    }
    d = -b->m_motor->m_A0 * b->m_motor->m_148 / 4096;
    if (b->m_58) {
        int st = D_800C5E14->m_378->m_10->m_state;

        if (st != 6 && st != 5) {
            if (b->m_410) {
                d = d * 80 / 100;
            } else {
                d = d * 112 / 100;
            }
        }
    }
    b->m_2F4.vy += d;
}
#else
INCLUDE_ASM("asm/langimg/nonmatchings/chunk_09", func_800254F0);
#endif
