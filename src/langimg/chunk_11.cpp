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
int func_8002E684(Bike *b, Motion *m);
int func_800269F0(Bike *b, int x);
int func_80027098(Bike *b);
int func_800270FC(Bike *b);
void func_800271E0(Bike *b);
void func_80027614(Bike *b);
Vector3 *func_80099D48(Vector3 *v, int shift); // v >> shift
void func_80023004(Vector3 *v, Vector3 n);
void func_80023140(Vector3 *v, int len, int shift);
void func_80027A90(Bike *b);
extern int D_800D49A8;                 // 0 in kilometres
extern int D_800C4D18[], D_800C4D24[]; // two 10-byte texts
void *memcpy(void *d, const void *s, unsigned int n);
extern char D_800C4D30[];
extern int D_800D4798_la __asm__(
    "D_800D4798"); // the text shown, declared small: its address built at each use
int func_800A5DBC(char *buf, int t, int f);
Vector3 *func_800998D0(Vector3 *dst, Vector3 *a, Vector3 *b); /* a - b */
int func_8009931C(Vector3 *v);
void func_80054744(Game *g, char *s, int t, int i, int a, int c, int d);
char *strcpy(char *d, const char *s);
int sprintf(char *s, const char *f, ...);
}

/* The automatic gearbox: the engine speed asked for from the motion (clamped
 * to the top speed while both values at 0x28C are 0x1000), gears changed up
 * or down by the engine speed against the motor's upshift points, or by the
 * motion's flags 0x10 and 0x20 when the bike's automatic flag is off. */
#ifdef NON_MATCHING
// Left: in the kind-3 branch the top speed (the divisor) and the clamped value in other temporaries, and in the change-down test the gear and shift loaded into each other's temporaries (10 off; reading b->m_5CC again for the second flag test took it from 76, and the change-down index written shift first from 12).
void func_80027614(Bike *b) {
    Motion *m = b->m_5D0;
    int sp;

    if (!m->m_10) {
        return;
    }
    if (b->m_28C == 0x1000) {
        int v = func_8002E684(b, m);
        int top = b->m_118;
        int r;

        b->m_E4 = v;
        r = v < -top ? -top : v > top ? top : v;
        b->m_E4 = r;
        sp = r;
    } else {
        sp = func_8002E684(b, m);
    }
    if (b->m_58 == 3) {
        int r;

        if (b->m_E4 < 0) {
            b->m_2BC = 0;
            return;
        }
        {
            int q = (b->m_E4 << 12) / b->m_118;
            short h;

            b->m_2BC = q;
            h = q;
            r = q;
            if (h >= 0) {
                if (h > 0x1000) {
                    r = 0x1000;
                }
            } else {
                r = 0;
            }
        }
        b->m_2BC = r;
        return;
    }
    if (!b->m_149 || b->m_28E == 0x1000 || b->m_motor->m_upshift[b->m_gear] < sp) {
        if (b->m_motor->m_upshift[b->m_gear] < sp && b->m_28E != 0x1000) {
            b->m_28E = 0x1000;
            b->m_2BE = b->m_motor->m_26;
        }
        if (*(int *)&b->m_28C == 0x10001000) {
            func_800271E0(b);
            if (b->m_2BE > b->m_2BC) {
                b->m_2BE = b->m_2BC;
            }
        }
    }
    if (b->m_3F6) {
        if (m->m_10) {
            if (b->m_28C == 0x1000 && b->m_149 &&
                b->m_motor->m_upshift[b->m_gear + b->m_shift] < sp) {
                func_80027098(b);
            }
            if (!b->m_510 || b->m_434 > 400) {
                if (b->m_149 && b->m_2D4 > 1000) {
                    while (b->m_gear + b->m_shift > 0 &&
                           sp < b->m_motor->m_upshift[b->m_gear + b->m_shift - 1]) {
                        func_800270FC(b);
                    }
                } else if (!b->m_149) {
                    if ((b->m_shift + b->m_gear > 0 &&
                         sp < b->m_motor->m_upshift[(b->m_shift - 1) + b->m_gear]) ||
                        b->m_2BC < 0x333 || sp < 0x2000) {
                        func_800270FC(b);
                    }
                }
            }
        }
    } else {
        Motion *a = b->m_5CC;

        if ((a->m_00 & 0x10) && !(b->m_5C8->m_00 & 0x10)) {
            if (b->m_2D8 > 50) {
                func_80027098(b);
            }
            b->m_2D8 = 0;
        } else if ((b->m_5CC->m_00 & 0x20) && !(b->m_5C8->m_00 & 0x20)) {
            if (b->m_2D8 > 50) {
                func_800270FC(b);
            }
            b->m_2D8 = 0;
        } else {
            b->m_2D8 += b->m_298;
        }
    }
    if (b->m_2BC > 0x1000) {
        b->m_2BC = 0x1000;
        b->m_E4 = func_800269F0(b, 0x1000);
    }
    if (b->m_2BC < b->m_motor->m_26) {
        b->m_2BC = b->m_motor->m_26;
    }
}
#else
INCLUDE_ASM("asm/langimg/nonmatchings/chunk_11", func_80027614);
#endif

/* The speed and distance timers: the time to 100 km/h (or 60 mph) and the
 * time over the distance at 0x18FFFF, each shown once. */
#ifdef NON_MATCHING
// The original keeps both stores to 0x5AC (the frame's time added, then the excess taken off), where GCC drops the first as dead, and it takes the number buffer's address after the text's copy (23 off).
void func_80027A90(Bike *b) {
    int v, top, km;

    if (b->m_58) {
        return;
    }
    v = func_8002E684(b, 0) * 36 / 10;
    top = 0x64000;
    km = !D_800D49A8;
    if (km) {
        top = 0x608F5;
    }
    if (v < 0x19A) {
        b->m_5AC = 0;
        b->m_5B0 = 0;
        b->m_5BC = 0;
        b->m_5B4 = 0;
        b->m_5C4 = 0;
    } else {
        if (!b->m_149 || b->m_14F) {
            b->m_5B0 = 1;
            b->m_5C4 = 1;
        }
        if (v < top) {
            if (!b->m_5B0) {
                b->m_5AC += b->m_298;
            }
        } else if (!b->m_5B0) {
            int over = v - top;
            int rate = (v - b->m_5A4) * 1000 / b->m_298;

            b->m_5B0 = 1;
            b->m_5AC += b->m_298;
            b->m_5AC -= over * 1000 / rate;
            b->m_5A8 = b->m_5AC;
            if (D_800C5E14 && !D_800C5E14->m_304) {
                char buf[0x20];
                char num[0x10];

                if (km) {
                    memcpy(buf, D_800C4D18, 10);
                } else {
                    memcpy(buf, D_800C4D24, 10);
                }
                if (func_800A5DBC(num, b->m_5A8, 4)) {
                    char *n = num;

                    if ((num[0] == '0' || num[0] == ' ') && num[1] == '0') {
                        n = &num[3];
                    }
                    strcpy(&buf[9], n);
                    if (D_800C5E14 && b->m_54->m_43 != -1) {
                        func_80054744(D_800C5E14, buf, 4000, b->m_54->m_43, 1, 0xFFFF00, -1);
                    }
                }
            }
        }
        if (!b->m_5C4) {
            Vector3 d;
            int l;

            func_800998D0(&d, &b->m_5CC->m_04, &b->m_5C8->m_04);
            func_80099D48(&d, 5);
            l = func_8009931C(&d);
            if (!b->m_5C4) {
                b->m_5B4 += l;
            }
        }
        if (b->m_5B4 <= 0x18FFFF) {
            b->m_5BC += b->m_298;
        } else if (!b->m_5C4) {
            int sp = func_8002E684(b, 0);
            int t = b->m_5BC;

            b->m_5C0 = sp;
            b->m_5C4 = 1;
            b->m_5B8 = t;
            if ((u8)b->m_58 < 2 && D_800C5E14 && !D_800C5E14->m_304) {
                sprintf((char *)&D_800D4798_la, D_800C4D30, t / 1000, t % 1000 / 10,
                        sp * 36 / 40960);
                if (D_800C5E14 && b->m_54->m_43 != -1) {
                    func_80054744(D_800C5E14, (char *)&D_800D4798_la, 4000, b->m_54->m_43, 1,
                                  0xFFFF00, -1);
                }
            }
        }
    }
    b->m_5A4 = v;
}
#else
INCLUDE_ASM("asm/langimg/nonmatchings/chunk_11", func_80027A90);
#endif

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
        b->m_300.vz += v;
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
            b->m_30C.vx += 3000;
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
        b->m_300.vz += d;
    }
    if (b->m_43E) {
        b->m_43E -= b->m_298;
        if (b->m_43E < 0) {
            b->m_43E = 0;
        }
    }
}
