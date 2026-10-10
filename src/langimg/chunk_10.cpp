#include "common.h"
#include "langimg/race.h"
#include "langimg/motor.h"
#include "langimg/bike.h"
#include "mulshift.h"

/* The game's code built with GCC 2.91.66: more of the bike
 * (docs/matching/issue-11-langimg-chunk10.md). */

extern "C" {
// Something placed: its position at 4
struct Placed {
    int m_00;
    Vector3 m_pos;
};

void func_80026364(Bike *b);
void func_80026450(Bike *b, SVECTOR *v);
void func_800264B0(Bike *b);
void func_8002659C(Bike *b);
void func_80026648(Bike *b, Placed *p);
int func_80026720(Bike *b);
int func_8002675C(Bike *b, int x);
int func_800269C4(Bike *b, int x);
int func_800269F0(Bike *b, int x);
void func_80026FA0(Bike *b);
int func_80027098(Bike *b);
int func_800270FC(Bike *b);
int func_800271BC(Bike *b);
void func_800271D0(Bike *b);
void func_800271E0(Bike *b);
int func_8002E684(Bike *b, int a);
void func_8002E548(Bike *b);
void func_800630D8(Bike *b);
Vector3 *func_80099D48(Vector3 *v, int shift); // v >> shift
Vector3 *func_800995C4(Vector3 *v, int a);     // v * a, 4.12
}

static inline void SVecZero(SVECTOR *v) {
    v->vx = 0;
    v->vy = 0;
    v->vz = 0;
}

static inline void VecCopy(Vector3 *d, Vector3 *s) {
    d->vx = s->vx;
    d->vy = s->vy;
    d->vz = s->vz;
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_10", func_80025614);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_10", func_80026164);

#ifdef NON_MATCHING
/* A first draft: the original moves b to $a2 and keeps m_F0 and m_F2 in
 * registers as both shorts and u16s; registers and layout differ (59 off) */
void func_80026364(Bike *b) {
    int d = 0;
    short f0;

    b->m_EC += b->m_298;
    f0 = b->m_F0;
    if (b->m_F0 > 0) {
        short f2 = b->m_F2;

        if (b->m_F2) {
            int r = (b->m_290 << 13) / 4096;

            if (b->m_F2 > 0) {
                if (r < b->m_F2) {
                    d = r << 4;
                    b->m_F2 = f2 - r;
                    b->m_394 += d;
                } else {
                    d = b->m_F2 << 4;
                    b->m_F2 = 0;
                    b->m_394 += d;
                }
            } else if (b->m_F2 < 0) {
                r = -r;
                if (b->m_F2 < r) {
                    d = r << 4;
                    b->m_F2 = f2 - r;
                    b->m_394 += d;
                } else {
                    d = b->m_F2 << 4;
                    b->m_F2 = 0;
                    b->m_394 += d;
                }
            }
        }
        if (f0 > 0) {
            b->m_F0 = f0 - b->m_298;
            if (b->m_F0 <= 0) {
                b->m_F0 = 0;
            }
        }
    }
    b->m_3AC += d;
}
#else
INCLUDE_ASM("asm/langimg/nonmatchings/chunk_10", func_80026364);
#endif

void func_80026450(Bike *b, SVECTOR *v) {
    b->m_54->m_188 = 1;
    b->m_3F5 = 1;
    b->m_2E0 = 0;
    SVecZero(&b->m_54->m_304);
    if (v) {
        b->m_54->m_304 = *v;
    }
    b->m_E8 = 0;
    b->m_43E = 0;
}

void func_800264B0(Bike *b) {
    int v, w;

    if (b->m_2E4 >= 0x334) {
        b->m_2E4 -= 0x20;
        if (b->m_2E4 < 0x333) {
            b->m_2E4 = 0x333;
        }
    }
    if (b->m_130 > b->m_12E) {
        b->m_130 -= 0x80;
        if (b->m_130 < b->m_12E) {
            b->m_130 = b->m_12E;
        }
    }
    if (b->m_132 > b->m_12E) {
        b->m_132 -= 0x80;
        if (b->m_132 < b->m_12E) {
            b->m_132 = b->m_12E;
        }
    }
    w = b->m_134;
    v = w - w / 16;
    b->m_134 = v;
    if (v > 0) {
        v -= 0x400;
        b->m_134 = v;
        if (v < 0) {
            b->m_134 = 0;
        }
    } else if (v < 0) {
        v += 0x400;
        b->m_134 = v;
        if (v > 0) {
            b->m_134 = 0;
        }
    }
    b->m_43E = 0;
}

void func_8002659C(Bike *b) {
    b->m_E8 = 0;
    func_80024584(b);
    func_8002E548(b);
    b->m_2BC = b->m_motor->m_26;
    b->m_gear = 0;
    b->m_clutch = 2;
    b->m_F0 = 0;
    b->m_F2 = 0;
    b->m_3F4 = 1;
    b->m_3F5 = 0;
    b->m_110 = 0;
    b->m_F4 = 0;
    func_800630D8(b);
    b->m_40C = 1;
    b->m_2C0 = 0;
    b->m_2F0 = 0x1000;
    b->m_4D9 = 0;
    b->m_4D8 = 0;
    b->m_4DA = 0;
    b->m_52C[0] = 0;
    b->m_52C[1] = 0;
    b->m_52C[2] = 0;
    b->m_52C[3] = 0;
    b->m_54->m_564 = 1;
}

/* The bike's two ends: its position less and plus its heading, scaled to
 * the motor's length. */
void func_80026648(Bike *b, Placed *p) {
    Vector3 v, w;

    v = b->m_330;
    func_80099D48(&v, 9);
    func_800995C4(&v, b->m_motor->m_14E);
    func_800998D0(&w, &p->m_pos, &v);
    VecCopy(&b->m_240, &w);
    func_80099898(&w, &p->m_pos, &v);
    VecCopy(&b->m_234, &w);
}

int func_80026720(Bike *b) {
    return func_8002357C(b->m_motor, func_8002675C(b, b->m_2BC), b->m_gear);
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_10", func_8002675C);

int func_800269C4(Bike *b, int x) {
    return func_800236F0(b->m_motor, x, b->m_gear);
}

int func_800269F0(Bike *b, int x) {
    return func_80023788(b->m_motor, x, b->m_gear);
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_10", func_80026A1C);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_10", func_80026BCC);

#ifdef NON_MATCHING
/* A first draft: GCC here puts state 2 before states 3-4, and loads the
 * constants in other registers (56 off) */
void func_80026FA0(Bike *b) {
    int st = b->m_clutch;

    if (st == 1) {
        b->m_clutch = 0;
        if (b->m_28E != 0x1000) {
            return;
        }
        if (b->m_28C >= 0x1000) {
            goto done;
        }
        b->m_28C = b->m_28E;
    } else if ((u32)(st - 3) < 2) {
        b->m_gear += b->m_shift;
        b->m_shift = 0;
        b->m_clutch = 1;
        b->m_2D0 = 0;
        b->m_28E = 0x1000;
        b->m_28C = 0x1000;
    } else {
        if (st == 2 && b->m_shift) {
            b->m_shift = 0;
        }
        return;
    }
    {
        int v = func_8002E684(b, 0);
        int max = b->m_118;

        b->m_E4 = v;
        if (v < -max) {
            v = -max;
        } else if (v <= max) {
        } else {
            v = max;
        }
        b->m_E4 = v;
    }
done:
    func_800271E0(b);
}
#else
INCLUDE_ASM("asm/langimg/nonmatchings/chunk_10", func_80026FA0);
#endif

/* Up a gear, if there's one. */
int func_80027098(Bike *b) {
    if (b->m_gear + b->m_shift < b->m_motor->m_gears - 1) {
        if ((u32)(b->m_clutch - 3) >= 2) {
            b->m_clutch = 3;
            b->m_2D0 = 0;
            b->m_2D4 = 0;
        }
        b->m_shift++;
        return 1;
    }
    return 0;
}

/* Down a gear, unless that would over-rev the engine; into neutral from
 * first. */
int func_800270FC(Bike *b) {
    int cur = b->m_gear + b->m_shift;

    if (cur > 0) {
        if (!b->m_3F6) {
            int g = cur - 1;

            if (func_800236F0(b->m_motor, func_8002E684(b, 0), g) >= 0x1000) {
                return 0;
            }
        }
        if ((u32)(b->m_clutch - 3) >= 2) {
            b->m_clutch = 4;
            b->m_2D0 = 0;
        }
        b->m_shift--;
        return 1;
    }
    if (b->m_gear == 0) {
        b->m_clutch = 2;
        b->m_2D0 = 0;
        return 1;
    }
    return 0;
}

int func_800271BC(Bike *b) {
    return b->m_clutch == 2;
}

void func_800271D0(Bike *b) {
    b->m_clutch = 1;
    b->m_2D0 = 0;
}

#ifdef NON_MATCHING
/* The original reads m_2BC twice, as a short and as a u16 (15 off) */
/* The engine speed from the speed asked for, clamped to the motor's range;
 * m_2BE follows it down. */
void func_800271E0(Bike *b) {
    short e;

    b->m_2BC = func_800269C4(b, b->m_E4);
    if (b->m_2BC < b->m_motor->m_26) {
        b->m_2BC = b->m_motor->m_26;
    }
    e = b->m_2BC;
    if (b->m_2BC > 0x1000) {
        b->m_2BC = 0x1000;
        e = 0x1000;
    }
    if (e < b->m_2BE) {
        b->m_2BE = e;
    }
}
#else
INCLUDE_ASM("asm/langimg/nonmatchings/chunk_10", func_800271E0);
#endif

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_10", func_8002726C);
