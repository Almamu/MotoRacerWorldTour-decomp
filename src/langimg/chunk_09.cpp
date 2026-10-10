#include "common.h"
#include "langimg/race.h"
#include "langimg/motor.h"
#include "mulshift.h"

/* The game's code built with GCC 2.91.66
 * (docs/matching/issue-10-langimg-chunk09.md). */

extern "C" {
// A body's motion (0x24 bytes)
struct Motion {
    int m_00;
    Vector3 m_04;
    int m_10, m_14, m_18;
    int m_1C, m_20;
};

// A position and its frame (0x20 bytes)
struct Frame {
    int m_00, m_04;
    Vector3 m_08;
    u8 m_14[0xC];
};

// An animation channel (0x1C bytes)
struct AnimChan {
    u8 m_00[0x1C];
};

// A bike (0x5D4 bytes); its base class is func_80062E40's
struct Bike {
    u8 m_pad0[0x50];
    void *m_vtable;
    u8 m_pad54[0x4];
    s8 m_58; // the motor's kind
    u8 m_59;
    u8 m_5A;
    u8 m_pad5B[0x95];
    short m_F0;
    u8 m_padF2[0x26];
    int m_118; // the top engine speed
    u8 m_pad11C[0x110];
    Frame *m_22C;
    Frame *m_230;
    Vector3 m_234;
    Vector3 m_240;
    u8 m_pad24C[0x6C];
    int m_2B8;
    short m_2BC;
    short m_2BE;
    u8 m_pad2C0[0x4];
    int m_2C4;
    u8 m_pad2C8[0x30];
    int m_2F8;
    u8 m_pad2FC[0x34];
    Vector3 m_330; // its heading
    u8 m_pad33C[0x3C];
    AnimChan m_378;
    int m_394; // its angle
    int m_398;
    u8 m_pad39C[0x40];
    Vector3 m_3DC;
    Vector3 m_3E8;
    u8 m_pad3F4[0x2];
    u8 m_3F6;
    u8 m_pad3F7[0x3];
    short m_3FA;
    u8 m_pad3FC[0x14];
    s8 m_410;
    u8 m_pad411[0x1];
    u8 m_412;
    u8 m_pad413[0x1];
    u8 m_414;
    u8 m_415;
    u8 m_pad416[0x1];
    u8 m_417;
    int m_418;
    int m_41C;
    u8 m_pad420[0x7C];
    AnimChan m_49C;
    AnimChan m_4B8;
    u8 m_pad4D4[0xC];
    AnimChan m_4E0;
    u8 m_pad4FC[0x38];
    AnimChan m_534;
    u8 m_pad550[0x10];
    Frame m_560;
    Frame m_580;
    Motor *m_motor;
    u8 m_pad5A4[0x4];
    int m_5A8;
    u8 m_pad5AC[0xC];
    int m_5B8;
    u8 m_pad5BC[0x4];
    int m_5C0;
    u8 m_pad5C4[0x4];
    Motion *m_5C8; // the last three frames' motion
    Motion *m_5CC;
    Motion *m_5D0;
};

// The race's state, as far as it's read here
struct RaceState {
    u8 m_00[0x52C];
    int m_state; // 0x52C
};
struct RaceHolder {
    u8 m_00[0x10];
    RaceState *m_10;
};
struct Game {
    u8 m_00[0x378];
    RaceHolder *m_378;
};
extern Game *D_800C5E14;
extern int D_800D5FD4;
extern u8 D_800C4D60[]; // the bike's vtable

Bike *func_80024064(Bike *b);
void func_80024168(Bike *b);
void func_800242A4(Bike *b, int flags);
void func_80024C60(Bike *b, Motion *m);
void func_80024C90(Bike *b);
void func_800253FC(Bike *b);
void func_800254F0(Bike *b);
void func_80062E40(Bike *b);
void func_80062EEC(Bike *b, int flags);
void func_8006BB70(AnimChan *c);
Frame *func_8001A62C(Frame *f);
void func_8001A63C(Frame *f, int flags);
void func_80033720(Bike *b);
void func_80025074(Bike *b);
void func_800990E8(Vector3 *v, int shift);
void func_80099D48(Vector3 *v, int shift);
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

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_09", func_8002385C);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_09", func_80023A30);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_09", func_80023E48);

#ifdef NON_MATCHING
/* The vtable's address goes through $v1 in the original, $v0 here (3 off) */
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
#else
INCLUDE_ASM("asm/langimg/nonmatchings/chunk_09", func_80024064);
#endif

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
    b->m_3FA = 0;
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
        b->m_2F8 += b->m_motor->m_148 * -196 / 10;
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
    b->m_2F8 += d;
}
#else
INCLUDE_ASM("asm/langimg/nonmatchings/chunk_09", func_800254F0);
#endif
