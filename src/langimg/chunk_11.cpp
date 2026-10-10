#include "common.h"
#include "langimg/race.h"
#include "langimg/motor.h"
#include "langimg/bike.h"
#include "mulshift.h"

/* The game's code built with GCC 2.91.66: more of the bike
 * (docs/matching/issue-12-langimg-chunk11.md). */

extern "C" {
void func_800295D4(Bike *b);
void func_80027EE0(Bike *b);
extern int D_800D5F40;
extern int D_800D5F30;
void func_80029248(Bike *b, int x, int y);
int func_8002E684(Bike *b, int a);
void func_80099D48(Vector3 *v, int shift);
void func_80023004(Vector3 *v, Vector3 n);
void func_80023140(Vector3 *v, int len, int shift);
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_11", func_80027614);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_11", func_80027A90);

/* The frame's ground and clutch flags from the motion, and m_2E4 (a
 * temperature-like value, 0x333 to 0x1000) raised by the engine near its
 * top speed and lowered with time. */
void func_80027EE0(Bike *b) {
    int d;

    b->m_2DC = b->m_149;
    b->m_2DD = b->m_14A;
    b->m_2E1 = b->m_2DF;
    if ((b->m_5CC->m_00 & 3) == 1) {
        if (!b->m_149 && !b->m_28E) {
            b->m_2BE = b->m_2BC;
        }
        b->m_149 = 1;
    } else {
        b->m_149 = 0;
    }
    b->m_148 = b->m_149;
    if (b->m_5CC->m_00 & 2) {
        b->m_14A = 1;
        b->m_42C += b->m_298;
    } else {
        b->m_14A = 0;
        b->m_42C = 0;
    }
    b->m_2DF = b->m_5CC->m_bytes[0] >> 7;
    if ((b->m_5CC->m_00 & 3) != 1) {
        b->m_2DF = 0;
    }
    d = 0;
    if (b->m_2DF && b->m_2E4 >= 0xCCD) {
        b->m_2DF = 0;
    }
    if (b->m_58 != 3) {
        int st = D_800C5E14->m_378->m_10->m_state;

        if (st != 6) {
            if (b->m_2DF) {
                if (!b->m_43E) {
                    if (b->m_58) {
                        d = b->m_298 * 3 / 2;
                    } else if (st == 7) {
                        d = b->m_298 * 2 / 3;
                    } else {
                        d = b->m_298;
                    }
                }
            } else if ((b->m_29C < 0x1000 || (b->m_149 && b->m_gear >= b->m_motor->m_gears - 2)) &&
                       b->m_2BC >= 0xCCD) {
                int t = 0x1000 - ((0x1000 - b->m_2BC) << 12) / 0x334;

                t = t * t / 4096;
                if (t > 0x800) {
                    t = 0x800;
                }
                d = t * b->m_298 / 4096;
            } else if (b->m_2BC >= 0xFE8) {
                d = b->m_298;
            }
            if (D_800D5FD4 & 4) {
                d = d * 7 / 10;
            } else if (D_800D5F40 == 1) {
                d = d * 9 / 10;
            } else if (!D_800D5F30 || D_800D5F40 == 4) {
                d = d * 8 / 10;
            }
            b->m_2E4 += d;
        }
    }
    if (b->m_43E) {
        b->m_2E4 -= b->m_298;
    } else if (b->m_149) {
        b->m_2E4 -= b->m_298 / 4;
    } else {
        b->m_2E4 -= b->m_298 / 2;
    }
    if (b->m_2E4 >= 0xCCD) {
        b->m_2DF = 0;
    }
    if (b->m_2E4 >= 0x1000) {
        b->m_2E8 = 1;
    } else if (b->m_2E4 < 0xCCC) {
        b->m_2E8 = 0;
    }
    {
        int v = b->m_2E4;
        int r;

        if (v < 0x333) {
            r = 0x333;
        } else if (v <= 0x1000) {
            r = v;
        } else {
            r = 0x1000;
        }
        b->m_2E4 = r;
    }
    if (b->m_2DF) {
        if (!b->m_5CC->m_14) {
            b->m_2E0 = 1;
        }
    } else if (b->m_5CC->m_14) {
        b->m_2E0 = 0;
    }
    if (!b->m_5C8->m_10) {
        b->m_2DF = 0;
        b->m_2E0 = 0;
    }
    if (!b->m_2DF && b->m_58 == 3) {
        b->m_2DE = b->m_5CC->m_bytes[0] >> 7;
    }
    if (b->m_14A && b->m_29C < 0x200) {
        b->m_40C = 1;
    } else if (b->m_149) {
        b->m_40C = 0;
    }
    if (b->m_58 == 3) {
        b->m_40C = 0;
    }
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_11", func_800283D0);

static inline void VecCopy(Vector3 *d, Vector3 *s) {
    d->vx = s->vx;
    d->vy = s->vy;
    d->vz = s->vz;
}

#ifdef NON_MATCHING
/* The first test's layout, and the original keeps a branch where GCC here sets the flag with sltu */
/* The engine's force: on the ground, along the heading on the ground's
 * plane, less as the speed nears the top; otherwise the motor's lift. */
void func_80029248(Bike *b, int x, int y) {
    int f = 0;
    Vector3 dir, n;
    Motion *m;

    if (b->m_14A || !b->m_149) {
        f = 1;
        m = b->m_5CC;
    } else {
        m = b->m_5CC;
        if (m->m_18) {
            f = 1;
        }
    }
    if (m->m_10) {
        int v = func_8002E684(b, 0);
        int max = b->m_118;
        int r;

        b->m_E4 = v;
        if (v < -max) {
            r = -max;
        } else if (v <= max) {
            r = v;
        } else {
            r = max;
        }
        b->m_E4 = r;
    }
    b->m_2C0 = 0;
    if (!b->m_5CC->m_10 || !f) {
        return;
    }
    if ((b->m_40C || (b->m_5CC->m_00 & 2)) && !(*(int *)b->m_52C & 0xFFFF0000)) {
        Motor *m = b->m_motor;
        int v = m->m_154;

        if (b->m_40C) {
            int lo = m->m_158;

            if (v < lo) {
                v = lo;
            }
        } else {
            int lo = m->m_158;

            v = MULSHIFT(v - lo, (b->m_29C << 12) / b->m_118, 12) + lo;
        }
        b->m_308 += v;
        return;
    }
    if (b->m_2DF) {
        f = b->m_motor->m_50;
    } else if (b->m_5CC->m_00 & 1) {
        f = b->m_motor->m_4C;
        if (y) {
            f = f * x / 127;
        }
    } else {
        if (!b->m_52C[2]) {
            return;
        }
        f = 600;
        if (b->m_5CC->m_00 & 2) {
            b->m_30C += 3000;
        }
    }
    dir = b->m_330;
    if (b->m_5CC->m_18) {
        VecCopy(&n, &b->m_260);
    } else if (b->m_5CC->m_14) {
        VecCopy(&n, &b->m_254);
    }
    func_80099D48(&dir, 14);
    func_80023004(&dir, n);
    {
        int r = MULSHIFT(b->m_29C / (b->m_118 / 4096), 0xCCC, 12);

        b->m_2C0 = f = MULSHIFT(f, 0x1000 - r, 12);
        func_80023140(&dir, f, 12);
    }
    func_800997D0(&b->m_2F4.vx, &dir.vx);
}
#else
INCLUDE_ASM("asm/langimg/nonmatchings/chunk_11", func_80029248);
#endif

/* Drag: the speed squared times the motor's drag (5/3 of it in a mode),
 * less while m_43E counts down; a fixed one in one case. */
void func_800295D4(Bike *b) {
    if (b->m_29C > 0x1000) {
        int k = b->m_motor->m_160;
        int d;

        if (D_800D5FD4 & 4) {
            k = k * 5 / 3;
        }
        d = MULSHIFT(MULSHIFT(b->m_29C, b->m_29C, 12), k, 12) / 4096;
        if (d) {
            if (b->m_43E && b->m_2DF) {
                d = d * ((0x1000 - b->m_43E) * 2 / 3 + 0x555) / 4096;
            }
            if (!b->m_5CC->m_10 && b->m_410) {
                d = MULSHIFT(MULSHIFT(b->m_29C, b->m_29C, 12), 0x5000, 12) / 4096;
            }
        }
        b->m_308 += d;
    }
    if (b->m_43E) {
        b->m_43E -= b->m_298;
        if (b->m_43E < 0) {
            b->m_43E = 0;
        }
    }
}
