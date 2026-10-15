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
void func_8002434C(Bike *b);
void func_80025174(Bike *b);
void func_80024D0C(Bike *b);
void func_80097F68(MATRIX *m, SVECTOR *r);
void func_80022DE4(Vector3 *v, int shift, int a, int as, int b, int bs, int c, int cs);
Vector3 *func_80099D74(Vector3 *v, int shift); // v << shift
void func_80030CFC(Bike *b);
void func_80062FB4(Bike *b);
void func_8002E7E4(Bike *b, int v);
void func_8006BB9C(AnimChan *c, int v);
void func_80024824(Bike *b);
void func_80026648(Bike *b, Motion *m);
void func_8002AF3C(Bike *b);
void func_80027EE0(Bike *b);
void func_80024D0C(Bike *b);
void func_80033280(Bike *b);
void func_80033D1C(MATRIX *m, SVECTOR *rot); // a rotation matrix
Vector3 *func_800997A4(Vector3 *a, Vector3 *b);
Vector3 *func_80099B60(Vector3 *out, Vector3 *a, Vector3 *b, int shift); // a cross product
Vector3 *func_80022D20(Vector3 *out, Vector3 *in);
// A run's measures: times to two speeds, the time between two speeds, times
// to two distances, the top speed (0x3C bytes)
struct Stats09 {
    int m_00; // a speed
    int m_04; // the time to it
    int m_08;
    int m_0C;
    int m_10, m_14; // a range of speeds
    int m_18;       // the time spent in it
    int m_1C;       // a distance
    int m_20;       // the time to it
    int m_24;       // the speed there
    int m_28;
    int m_2C;
    int m_30;
    int m_34; // the top speed
    int m_38; // when
};
extern int D_800D49A8;
int func_800A6850(int x);
int func_80023A30(void *x, int *spd, int dt, int n, Stats09 *s);
}

#define IABS(x) ((x) < 0 ? -(x) : (x))

static inline void VecCopy(Vector3 *d, Vector3 *s) {
    int x = s->vx;
    int y = s->vy;
    int z = s->vz;

    d->vx = x;
    d->vy = y;
    d->vz = z;
}

static inline void VecZero(Vector3 *v) {
    v->vx = 0;
    v->vy = 0;
    v->vz = 0;
}

// chunk_15's func_80030C98: the speed and its fractions
static inline void SetSpeed09(Bike *b, short v) {
    b->m_298 = v;
    b->m_290 = (b->m_298 << 12) / 1000;
    b->m_294 = (b->m_298 << 13) / 1000;
}

static inline void SetVec(Vector3 *v, int x, int y, int z) {
    v->vx = x;
    v->vy = y;
    v->vz = z;
}

static inline void SetTrans(MATRIX *m, Vector3 *v) {
    int x = v->vx;
    int y = v->vy;
    int z = v->vz;

    m->t[0] = x;
    m->t[1] = y;
    m->t[2] = z;
}

static inline void MatCopy(MATRIX *d, MATRIX *s) {
    int *q = (int *)s;
    int *p = (int *)d;
    int a = q[0];
    int b = q[1];
    int c = q[2];

    p[0] = a;
    p[1] = b;
    p[2] = c;
    a = q[3];
    b = q[4];
    p[3] = a;
    p[4] = b;
    a = q[5];
    b = q[6];
    c = q[7];
    p[5] = a;
    p[6] = b;
    p[7] = c;
}

static inline void VecCopyF(Vector3 *d, Vector3 *s) {
    d->vx = s->vx;
    d->vy = s->vy;
    d->vz = s->vz;
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

#ifdef NON_MATCHING
/* Registers: the top and the previous speed swap their saved registers (11 off) */
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
#else
INCLUDE_ASM("asm/langimg/nonmatchings/chunk_09", func_8002385C);
#endif

int func_80023A30(void *x, int *spd, int dt, int n, Stats09 *s) {
    int prev = 0;
    int t = 0;
    int dist = 0;
    int prevd = 0;
    int i;

    s->m_04 = 0;
    s->m_0C = 0;
    s->m_20 = 0;
    s->m_24 = 0;
    s->m_2C = 0;
    s->m_30 = 0;
    s->m_18 = 0;
    s->m_38 = 0;
    s->m_34 = 0;
    for (i = 0; i < n; i++) {
        int v = spd[i];
        int k, mph;

        dist += v * dt / 1000;
        k = func_800A6850(v);
        mph = D_800D49A8;
        if (!s->m_04 && k >= s->m_00) {
            int a = (v - prev) * 1000 / dt;
            int to;

            s->m_04 = t;
            if (mph) {
                to = s->m_00 * 40960 / 36;
            } else {
                to = s->m_00 * 155648 / 85;
            }
            s->m_04 -= (v - to) * 1000 / a;
        }
        if (!s->m_0C && k >= s->m_08) {
            int a = (v - prev) * 1000 / dt;
            int to;

            s->m_0C = t;
            if (mph) {
                to = s->m_08 * 40960 / 36;
            } else {
                to = s->m_08 * 155648 / 85;
            }
            s->m_0C -= (v - to) * 1000 / a;
        }
        if (k >= s->m_10 && k < s->m_14) {
            s->m_18 += dt;
        }
        if (s->m_20 <= 0 && dist / 4096 >= s->m_1C) {
            int a = (dist - prevd) * 1000 / dt;

            s->m_20 = t;
            s->m_24 = v;
            s->m_20 = t - (dist - (s->m_1C << 12)) * 1000 / a;
        }
        if (s->m_28 && s->m_2C <= 0 && dist / 4096 >= s->m_28) {
            int a = (dist - prevd) * 1000 / dt;

            s->m_2C = t;
            s->m_30 = v;
            s->m_2C = t - (dist - (s->m_28 << 12)) * 1000 / a;
        }
        if (s->m_34 < v) {
            s->m_34 = v;
            s->m_38 = t;
        }
        t += dt;
        prev = v;
        prevd = dist;
    }
    return 1;
}

/* The speed after each of n steps of dt from a standstill, full throttle
 * and shifting up at the upshift points: the motor's force less the drag
 * (the speed squared) and rolling resistance, over the mass. Returns the
 * last. */
int func_80023E48(Motor *m, int *out, int dt, int n) {
    int top = m->m_28;
    int i, g, rpm, v;

    if (D_800D5FD4 & 4) {
        top += 0xE000;
    }
    i = 0;
    g = 0;
    rpm = 0;
    v = 0;
    for (; i < n; i++) {
        int f = func_8002357C(m, func_800235F8(m, rpm), g);
        int d = MULSHIFT(MULSHIFT(v, v, 12), m->m_160, 12) / 4096 + m->m_15A;

        v += ((((f - d) * dt) << 12) / 1000) / m->m_148;
        if (v > top) {
            v = top;
        }
        rpm = func_800236F0(m, v, g);
        if (rpm > 0x1000 || v >= m->m_upshift[g]) {
            if (g >= m->m_gears - 1) {
                if (rpm > 0x1000) {
                    rpm = 0x1000;
                    v = func_80023788(m, 0x1000, g);
                }
            } else {
                g++;
                rpm = func_800236F0(m, v, g);
            }
        }
        out[i] = v;
    }
    return v;
}

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

#ifdef NON_MATCHING
/* The matrix as an inline function (its locals recomputed), the angles through int parameters, the transform through an inline taking &w and the copies all loads first: 17 off (from 151), $v0 and $v1 swapped in three places */
/* The bike's matrix from its three angles (y, then x, then z) and its
 * position: its heading the matrix's z (4.26), its side and up from it. */
// A matrix's translation
static inline long *MatTrans09(MATRIX *m) {
    return m->t;
}

// out = m * v, translation included
static inline void Transform09(MATRIX *m, Vector3 *v, Vector3 *out) {
    func_80098768(m, &v->vx, &out->vx);
    func_800997D0(&out->vx, m->t);
}

static inline void SetVec09(Vector3 *v, int x, int y, int z) {
    v->vx = x;
    v->vy = y;
    v->vz = z;
}

// A turn about y by ang into m (its translation cleared)
static inline void RotY09(MATRIX *m, SVECTOR *r, int ang) {
    r->vx = 0;
    r->vy = ang;
    r->vz = 0;
    func_80033D1C(m, r);
    m->t[0] = m->t[1] = m->t[2] = 0;
}

// A turn about x by ang into m (its translation cleared)
static inline void RotX09(MATRIX *m, SVECTOR *r, int ang) {
    r->vy = 0;
    r->vz = 0;
    r->vx = ang;
    func_80033D1C(m, r);
    m->t[0] = m->t[1] = m->t[2] = 0;
}

// A turn about z by ang into m (its translation cleared)
static inline void RotZ09(MATRIX *m, SVECTOR *r, int ang) {
    r->vx = 0;
    r->vy = 0;
    r->vz = ang;
    func_80033D1C(m, r);
    m->t[0] = m->t[1] = m->t[2] = 0;
}

// The bike's matrix from its three angles: an inline function's locals, so
// their addresses are computed anew for each call as in the original
static inline void BikeMatrix09(Bike *b) {
    MATRIX a, m, my;
    SVECTOR ry;
    MATRIX mx;
    SVECTOR rx;
    MATRIX mz;
    SVECTOR rz;

    RotY09(&my, &ry, b->m_ry);
    RotX09(&mx, &rx, b->m_rx);
    func_80098674(&my, &mx, &m);
    func_8009887C(mx.t, m.t);
    func_800997D0(MatTrans09(&m), my.t);
    RotZ09(&mz, &rz, -b->m_rz);
    func_80098674(&m, &mz, &a);
    func_8009887C(mz.t, a.t);
    func_800997D0(a.t, MatTrans09(&m));
    b->m_mat = a;
}

void func_8002434C(Bike *b) {
    BikeMatrix09(b);
    {
        Vector3 w, u;

        SetVec09(&u, 0, 0, 0x4000000);
        Transform09(&b->m_mat, &u, &w);
        VecCopy(&b->m_330, &w);
        VecCopy(&b->m_33C, &b->m_330);
        VecCopy(&b->m_360, &b->m_33C);
        func_80022D20(&u, &b->m_33C);
        func_800997A4(&w, &u);
        func_80099B60(&u, &w, &b->m_33C, 26);
        VecCopy(&b->m_348, &u);
        func_800990E8(&b->m_348, 26);
        VecCopy(&b->m_354, &b->m_330);
    }
}
#else
INCLUDE_ASM("asm/langimg/nonmatchings/chunk_09", func_8002434C);
#endif

#ifdef NON_MATCHING
/* The matrix copy's source and destination swap registers (26 off) */
/* The bike placed at its position: its motions there (in 1/32), still;
 * its matrix, ends and contact points; its angles as 4.12 radians; its
 * model's matrix. */
void func_80024584(Bike *b) {
    int x, y, z;

    b->m_F8 = 0;
    VecZero(&b->m_2A0);
    VecCopy(&b->m_2AC, &b->m_2A0);
    b->m_5A4 = 0;
    b->m_2E4 = 0x333;
    VecCopy(&b->m_78, &b->m_pos);
    VecCopy(&b->m_5CC->m_04, &b->m_pos);
    func_80099D74(&b->m_5CC->m_04, 5);
    VecCopy(&b->m_5C8->m_04, &b->m_5CC->m_04);
    func_8002434C(b);
    func_80030CFC(b);
    func_80026648(b, b->m_5CC);
    VecCopy(&b->m_3C4, &b->m_234);
    VecCopy(&b->m_3D0, &b->m_240);
    b->m_250 = b->m_240.vy;
    b->m_24C = b->m_234.vy;
    VecCopy(&b->m_9C, &b->m_240);
    VecCopy(&b->m_B4, &b->m_234);
    func_80099D48(&b->m_9C, 5);
    func_80099D48(&b->m_B4, 5);
    func_8002AF3C(b);
    x = MULSHIFT((int)b->m_rx, 0x6488, 12);
    b->m_3B0 = x;
    y = MULSHIFT((int)b->m_ry, 0x6488, 12) << 4;
    b->m_394 = y;
    z = MULSHIFT((int)b->m_rz, 0x6488, 12);
    b->m_39C = z;
    b->m_3A0 = z;
    b->m_398 = y;
    b->m_3B4 = x;
    b->m_560.m_00 = 0;
    b->m_580.m_00 = 0;
    MatCopy(b->m_34, &b->m_mat);
    SetTrans(b->m_34, &b->m_pos);
}
#else
INCLUDE_ASM("asm/langimg/nonmatchings/chunk_09", func_80024584);
#endif

#ifdef NON_MATCHING
// Scheduling only: the original stores the speed (50) and its fractions 0xCC and 0x199 after the vector at 0x3E8 is zeroed, in source order; GCC loads the constants earlier and interleaves the stores (18 off).
void func_80024824(Bike *b) {
    func_80062FB4(b);
    b->m_3FC = 0;
    b->m_440 = 0;
    b->m_394 = 0;
    b->m_398 = 0;
    b->m_3B0 = 0;
    b->m_3B4 = 0;
    b->m_39C = 0;
    b->m_3A0 = 0;
    b->m_2F0 = 0x1000;
    b->m_gear = 0;
    b->m_28E = 0;
    b->m_2B8 = b->m_118;
    if (b->m_motor) {
        b->m_2BC = b->m_2BE = b->m_motor->m_26;
    }
    b->m_clutch = 2;
    b->m_2D0 = 10000;
    b->m_2D4 = 10000;
    b->m_2D8 = 10000;
    b->m_shift = 0;
    b->m_3F7 = 0;
    b->m_2E2 = 0;
    b->m_2EC = 0;
    b->m_428 = 0;
    b->m_2DC = 0;
    b->m_2DD = 0;
    b->m_2E1 = 0;
    b->m_42C = 0;
    b->m_430 = 0;
    b->m_434 = 0;
    b->m_438 = 0;
    b->m_43C = 0;
    b->m_411 = 1;
    b->m_28C = 0x1000;
    VecZero(&b->m_360);
    VecZero(&b->m_36C);
    VecZero(&b->m_330);
    VecZero(&b->m_33C);
    SetVec(&b->m_348, 0, 0x4000000, 0);
    VecZero(&b->m_354);
    b->m_3A5 = 0;
    b->m_3A8 = 0;
    b->m_3A4 = 0;
    b->m_3AC = 0;
    b->m_2C0 = 0;
    b->m_29C = 0;
    VecZero(&b->m_2F4);
    VecZero(&b->m_300);
    VecZero(&b->m_30C);
    VecZero(&b->m_318);
    VecZero(&b->m_2A0);
    VecZero(&b->m_2AC);
    func_8002E7E4(b, 0);
    b->m_324 = 0;
    b->m_32C = 0;
    SetVec(&b->m_3B8, 0, 0x1000, 0);
    VecZero(&b->m_234);
    VecZero(&b->m_240);
    VecZero(&b->m_3C4);
    VecZero(&b->m_3D0);
    VecZero(&b->m_3DC);
    VecZero(&b->m_3E8);
    SetSpeed09(b, 50);
    b->m_250 = 0;
    b->m_24C = 0;
    b->m_2E4 = 0x333;
    b->m_2E8 = 0;
    b->m_EC = 10000;
    b->m_2DE = 0;
    b->m_2DF = 0;
    b->m_2E0 = 0;
    VecZero(&b->m_354);
    VecZero((Vector3 *)&b->m_400);
    b->m_3F4 = 1;
    b->m_3F5 = 0;
    SetVec(&b->m_254, 0, 0x1000, 0);
    SetVec(&b->m_260, 0, 0x1000, 0);
    b->m_40D = 0;
    b->m_40E = 0;
    b->m_40F = 0;
    b->m_420 = 0;
    b->m_424 = 0;
    b->m_416 = 0;
    b->m_40C = 0;
    b->m_3F8 = 0;
    b->m_42A = 0;
    b->m_29A = 0;
    func_80030CFC(b);
    b->m_444 = 0;
    b->m_448 = 0;
    b->m_44C = 0;
    b->m_450 = 0;
    b->m_454 = 0;
    b->m_458 = 0;
    b->m_528 = 1;
    b->m_529 = 0;
    b->m_52A = 0;
    b->m_530 = 0;
    b->m_52C[0] = 0;
    b->m_52C[1] = 0;
    b->m_52C[2] = 0;
    b->m_52C[3] = 0;
    b->m_550 = 0;
    b->m_554 = 0;
    b->m_55C = 0;
    b->m_558 = 0;
    func_8006BB9C(&b->m_534, 0x1000);
    b->m_43D = 0;
    func_8006BB9C(&b->m_378, 0);
    func_8006BB9C(&b->m_49C, 0);
    b->m_48C = 0;
    b->m_48D = 0;
    b->m_48E = 0;
    b->m_490 = 0;
    b->m_494 = 0;
    b->m_498 = 0;
    b->m_4DC = 0;
    b->m_4FC = 0;
    func_8006BB9C(&b->m_4E0, 0);
    b->m_508 = 0;
    b->m_50C = 0;
    b->m_510 = 0;
    b->m_514 = 0;
    func_8006BB9C(&b->m_4B8, 0);
    b->m_4D4 = 1000;
    b->m_4D8 = 0;
    b->m_4D9 = 0;
    b->m_4DA = 0;
    b->m_410 = 0;
    b->m_518 = 0;
    VecZero(&b->m_51C);
    b->m_2E3 = 0;
    b->m_4DB = 1;
    b->m_43E = 0;
    b->m_52B = 0;
    b->m_500 = 0;
    b->m_504 = 0;
    b->m_41C = 0;
    b->m_5AC = 0;
    b->m_5B0 = 0;
    b->m_5BC = 0;
    b->m_5B4 = 0;
    b->m_5C4 = 0;
    b->m_5A4 = 0;
    func_80024C60(b, b->m_5C8);
    func_80024C60(b, b->m_5CC);
    func_80024C60(b, b->m_5D0);
}
#else
INCLUDE_ASM("asm/langimg/nonmatchings/chunk_09", func_80024824);
#endif

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

#ifdef NON_MATCHING
/* A first draft: right in shape, but registers differ throughout (the bike in $s1, the original's in $s2) and the matrix's column is read through a pointer there */
/* The bike's angles from its 4.12 radians; its heading from its matrix,
 * or (on the ground, under way, not turning too far) turned towards its
 * yaw; its side and up from the heading. */
void func_80024D0C(Bike *b) {
    int d, ad;

    b->m_rx = (b->m_3B0 << 12) / 0x6488;
    b->m_ry = (((b->m_394 >> 4) + b->m_F8) << 12) / 0x6488;
    b->m_rz = (b->m_39C << 12) / 0x6488;
    if (!b->m_58 && !b->m_F8) {
        d = b->m_394 - b->m_398;
        ad = IABS(d);
        if (ad > 0x3243F) {
            if (d > 0) {
                d -= 0x6487E;
            } else if (d < 0) {
                d += 0x6487E;
            } else {
                goto same;
            }
            ad = IABS(d);
        }
    same:
        if (b->m_F0 > 500 || b->m_14F || b->m_29C < 0x1000 || ad >= 0x3334 || b->m_2E0) {
            b->m_330.vx = b->m_mat.m[0][2];
            b->m_330.vy = b->m_mat.m[1][2];
            b->m_330.vz = b->m_mat.m[2][2];
            func_80099D74(&b->m_330, 14);
        } else {
            int dx = b->m_3B0 - b->m_3B4;
            int r;

            if (dx < -0x4CC) {
                r = -0x4CC;
            } else if (dx <= 0x4CC) {
                r = dx;
            } else {
                r = 0x4CC;
            }
            func_80022DE4(&b->m_330, 26, r, 12, d, 16, b->m_3A0 - b->m_39C, 12);
        }
        VecCopy(&b->m_33C, &b->m_330);
        if (ad > 0x200) {
            func_80025074(b);
        }
    } else {
        MATRIX m;
        struct {
            SVECTOR r;
            Vector3 t;
        } p;

        p.r.vx = b->m_rx;
        p.r.vy = b->m_ry;
        p.r.vz = -b->m_rz;
        func_80097F68(&m, &p.r);
        p.t.vx = 0;
        p.t.vy = 0;
        p.t.vz = 0;
        m.t[0] = 0;
        m.t[1] = 0;
        m.t[2] = 0;
        b->m_330.vx = b->m_mat.m[0][2];
        b->m_330.vy = b->m_mat.m[1][2];
        b->m_330.vz = b->m_mat.m[2][2];
        func_80099D74(&b->m_330, 14);
        b->m_33C.vx = m.m[0][2];
        b->m_33C.vy = m.m[1][2];
        b->m_33C.vz = m.m[2][2];
        func_80099D74(&b->m_33C, 14);
    }
    if ((u8)(b->m_58 - 1) >= 2) {
        Vector3 w, u;

        func_80022D20(&u, &b->m_33C);
        func_800997A4(&w, &u);
        func_80099B60(&u, &w, &b->m_33C, 26);
        VecCopy(&b->m_348, &u);
        func_800990E8(&b->m_348, 26);
    }
    b->m_3B4 = b->m_3B0;
    b->m_398 = b->m_394 + (b->m_F8 << 4);
    b->m_3A0 = b->m_39C;
}
#else
INCLUDE_ASM("asm/langimg/nonmatchings/chunk_09", func_80024D0C);
#endif

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

/* The bike's frame: in a mode, the lean (m_418) stepped by the motion's
 * flags 4 and 8 once per press, at low speed; for kind 3 bikes, m_41C set
 * to +-0x2AA by flags 0x20 and 0x10 once per press; the forces cleared,
 * the frame's steps run, m_14C set from flags 4 and 8. */
void func_80025174(Bike *b) {
    int f;

    if (!(D_800D5FD4 & 8)) {
        b->m_418 = 0;
    }
    if (b->m_29C < 0x1000 && ((f = b->m_5CC->m_00) & 0xA3) == 0xA2) {
        if (D_800D5FD4 & 8) {
            if (f & 4) {
                if (!b->m_412) {
                    b->m_417 = 1;
                    if (b->m_418 < 0x249) {
                        b->m_418 += 0x80;
                    }
                    b->m_412 = 1;
                }
            } else if (f & 8) {
                if (!b->m_412) {
                    b->m_417 = 1;
                    if (b->m_418 >= -0x248) {
                        b->m_418 -= 0x80;
                    }
                    b->m_412 = 1;
                }
            } else {
                b->m_412 = 0;
            }
            {
                int r;
                int v = b->m_418;

                if (v < -0x2C9) {
                    r = -0x2C9;
                } else if (v <= 0x2C9) {
                    r = v;
                } else {
                    r = 0x2C9;
                }
                b->m_418 = r;
            }
        }
    } else {
        b->m_412 = 0;
        if (b->m_58 == 3) {
            int g = b->m_5CC->m_00;

            if (g & 0x20) {
                if (!b->m_414) {
                    if (b->m_41C < 0) {
                        b->m_41C = 0;
                    } else if (b->m_41C == 0) {
                        b->m_41C = 0x2AA;
                    }
                }
                b->m_414 = 1;
            } else if (g & 0x10) {
                if (!b->m_414) {
                    if (b->m_41C > 0) {
                        b->m_41C = 0;
                    } else if (b->m_41C == 0) {
                        b->m_41C = -0x2AA;
                    }
                }
                b->m_414 = 1;
            } else {
                b->m_414 = 0;
            }
        }
    }
    VecZero(&b->m_2F4);
    VecZero(&b->m_300);
    VecZero(&b->m_30C);
    VecZero(&b->m_318);
    func_80027EE0(b);
    func_80024D0C(b);
    func_80033280(b);
    {
        u8 v = b->m_5F;

        b->m_5B = 0;
        b->m_5C = 0;
        b->m_5D = 0;
        b->m_5E = 0;
        b->m_5F = 0;
        b->m_60 = v;
    }
    {
        int h = b->m_5CC->m_00;

        b->m_14C = 0;
        b->m_3F7 = 0;
        if (h & 0xC) {
            b->m_3F7 = 1;
            if (h & 4) {
                b->m_14C = -1;
            } else if (h & 8) {
                b->m_14C = 1;
            }
        }
    }
    func_80024C90(b);
}

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
