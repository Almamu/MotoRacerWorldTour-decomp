#include "common.h"
#include "langimg/race.h"
#include "langimg/motor.h"
#include "langimg/bike.h"

/* The game's code built with GCC 2.91.66: more of the bike
 * (docs/matching/issue-17-langimg-chunk16.md). */

extern "C" {
void func_8002E548(Bike *b);
void func_800630D8(Bike *b);
void func_80063848(Bike *b, Bike *s);
void func_80098418(MATRIX *m, SVECTOR *angles);
Vector3 *func_80099D74(Vector3 *v, int shift);

void func_800990E8(Vector3 *v, int sh);
int func_80099C20(Vector3 *a, Vector3 *b, int shift); // a dot product
int func_8006BBC4(AnimChan *c, int dt);
int abs(int x);
int func_80032A14(Bike *b);
void func_80033280(Bike *b);
void func_800333F8(Bike *b, Vector3 *p, SVECTOR *r);
int func_800334B0(Bike *b);
void func_800334E8(Bike *b, Bike *s);
}

static inline void VecCopyL(Vector3 *d, Vector3 *s) {
    int x = s->vx;
    int y = s->vy;
    int z = s->vz;

    d->vx = x;
    d->vy = y;
    d->vz = z;
}

// The link copied member by member
static inline void LinkCopy(BikeLink *d, BikeLink *s) {
    d->m_00 = s->m_00;
    d->m_04 = s->m_04;
    d->m_08 = s->m_08;
    d->m_0C = s->m_0C;
    d->m_10 = s->m_10;
    VecCopyL(&d->m_14, &s->m_14);
    d->m_20 = s->m_20;
    d->m_24 = s->m_24;
    d->m_28 = s->m_28;
    VecCopyL(&d->m_2C, &s->m_2C);
    d->m_38 = s->m_38;
    d->m_3C = s->m_3C;
    d->m_40 = s->m_40;
    d->m_44 = s->m_44;
    d->m_48 = s->m_48;
    d->m_4C = s->m_4C;
    d->m_50 = s->m_50;
    d->m_54 = s->m_54;
    d->m_58 = s->m_58;
    d->m_5C = s->m_5C;
    d->m_60 = s->m_60;
    d->m_64 = s->m_64;
    d->m_68 = s->m_68;
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_16", func_80031500);

#ifdef NON_MATCHING
/* The shape is the original's (the speed ratio clamped into a copy, the
 * state byte read once); left: the motor kept in a second register for its
 * high end in the original (a copy GCC doesn't make), the power's clamp, and
 * two instructions fewer here that shift the rest (157 off) */
/* The engine sound channel's range from the speed and the motor, its
 * target set by the bike's state; the wheelie and slide flags at 0x4D8 and
 * 0x4D9, the flag 0x4DA when one ends. */
int func_80032A14(Bike *b) {
    int s = b->m_29C / (b->m_118 / 4096);
    int r = s < 0 ? 0 : (s > 0x1000 ? 0x1000 : s);
    int t = r;
    int lo, hi, f, v;

    lo = 0;
    hi = 0x1000;
    if (b->m_58 == 2) {
        Motor *m = b->m_motor;

        lo = m->m_13A;
        if (m->m_16C) {
            int k = m->m_185[m->m_170].m_00;

            if (k == 1) {
                lo += 0x199;
            } else if (k == 2) {
                lo += 0x333;
            }
        }
        hi = m->m_13C;
    } else if (b->m_58 == 1) {
        Motor *m = b->m_motor;

        lo = m->m_13A;
        if (m->m_16C) {
            int k = m->m_185[m->m_170].m_00;

            if (k == 1) {
                lo += 0xA3;
            } else if (k == 2) {
                lo += 0x147;
            }
        }
        if (!b->m_4D9) {
            int d = (m->m_13C - lo) * t / 4096;
            int q = (b->m_46C << 12) / m->m_120;

            if (q < -0x1000) {
                q = -0x1000;
            } else if (q > 0x1000) {
                q = 0x1000;
            }
            lo += d * abs(q) / 4096;
        }
        hi = m->m_13C;
    } else if (b->m_58 == 0) {
        Motor *m = b->m_motor;

        if (m->m_20 & 1) {
            int tgt = 0;
            int st = (s8)b->m_48C;

            if (st == 3) {
                tgt = 0x4CC;
            } else if (st) {
                tgt = 0xCCC;
            }
            b->m_494 += (tgt - b->m_494) / 4;
            if (tgt < b->m_494) {
                b->m_494 -= 2;
                if (b->m_494 < tgt) {
                    b->m_494 = tgt;
                }
            } else if (b->m_494 < tgt) {
                b->m_494 += 2;
                if (tgt < b->m_494) {
                    b->m_494 = tgt;
                }
            }
            hi = b->m_494;
            lo = hi;
        } else {
            if ((b->m_14F & 2) || (b->m_14F & 1)) {
                hi = r;
                if (r < 0x800) {
                    hi = 0x800;
                } else if (m->m_13C < hi) {
                    hi = m->m_13C;
                }
            } else if (D_800C5E14->m_378->m_10->m_state == 7 && b->m_F0 > 0 && b->m_F2) {
                hi = r;
                if (r < 0x800) {
                    hi = 0x800;
                } else if (m->m_13C < hi) {
                    hi = m->m_13C;
                }
            }
            lo = m->m_13A;
        }
    }
    if ((b->m_motor->m_20 & 4) && r > 0x1000) {
        b->m_47C -= b->m_298;
        if (b->m_47C <= 0) {
            b->m_47C = (b->m_pos.vx + b->m_pos.vz) % 1000;
            if (!b->m_478 && (b->m_pos.vy & 1)) {
                b->m_478 = 1;
            } else {
                b->m_478 = 0;
            }
        }
    } else {
        b->m_478 = 0;
    }
    if (b->m_58 == 1) {
        if (b->m_14A) {
            b->m_4D9 = 1;
        } else if (b->m_4D9) {
            Vector3 w;

            w.vy = 0;
            w.vx = b->m_2A0.vz;
            w.vz = -b->m_2A0.vx;
            func_800990E8(&w, 17);
            if (abs(func_80099C20(&b->m_330, &w, 17) >> 14) < 0x100) {
                b->m_4D9 = 0;
            }
        }
    } else if (b->m_118 / 2 < b->m_29C && b->m_14A) {
        if (abs(b->m_39C) >= 0xCCD && !b->m_2DD) {
            b->m_4D9 = 1;
        }
    } else if (!b->m_14A) {
        if (b->m_4D9 && b->m_118 / 3 < b->m_29C) {
            b->m_4DA = 1;
        }
        b->m_4D9 = 0;
    }
    if (b->m_58 == 0) {
        if (b->m_118 / 3 < b->m_29C && b->m_2DF) {
            if (abs(b->m_39C) >= 0x99A && !b->m_2E1) {
                b->m_4D8 = 1;
                b->m_4D4 = 0;
            }
        } else if (!b->m_2DF) {
            if (b->m_4D8) {
                b->m_4DA = 1;
            }
            b->m_4D8 = 0;
        }
        if (b->m_4D8) {
            b->m_4D4 += b->m_298;
            if (b->m_4D4 >= 0x1C3) {
                b->m_4D8 = 0;
                b->m_4DA = 1;
            }
        }
    } else if (b->m_58 != 1) {
        Motion *mo = b->m_5CC;

        if (mo->m_10) {
            if (b->m_29C > 0x400 && b->m_2DF && abs(b->m_39C) >= 0x334) {
                b->m_4D8 = 1;
            } else if (!(mo->m_00 & 0x80) || !b->m_149) {
                if (b->m_4D8) {
                    b->m_4D8 = 0;
                }
            }
        } else {
            b->m_4D8 = 0;
        }
    }
    f = 0;
    if ((b->m_14F & 2) || (b->m_14F & 1)) {
        if (b->m_480 >= 0x97) {
            f = 1;
        }
        b->m_480 += b->m_298;
    } else {
        b->m_480 = 0;
    }
    if (D_800C5E14->m_378->m_10->m_state == 7 && b->m_F0 > 0 && b->m_F2) {
        f = 1;
    }
    if (b->m_478 || (*(u32 *)&b->m_4D8 & 0xFFFFFF) || (s8)b->m_2E3) {
        f = 1;
    }
    b->m_454 = 0;
    if (f) {
        b->m_454 = 1;
        b->m_4B8.m_04 = hi;
        if (b->m_58 == 0) {
            v = *(u16 *)&b->m_4D8 ? 0x333 : 0x666;
        } else if (b->m_58 == 1) {
            v = b->m_4D9 ? 0x4CC : 0x333;
        } else if (b->m_58 == 2) {
            v = 0x333;
        } else {
            v = 0x400;
        }
    } else {
        b->m_4B8.m_04 = lo;
        if (b->m_58 == 0) {
            v = 0x266;
        } else if (b->m_58 == 2) {
            v = 0x51E;
        } else if (b->m_58 == 1) {
            v = 0x2E1;
        } else {
            v = 0x400;
        }
    }
    b->m_4B8.m_08 = v;
    if (b->m_4B8.m_04 < lo) {
        b->m_4B8.m_04 = lo;
    }
    if (hi < b->m_4B8.m_04) {
        b->m_4B8.m_04 = hi;
    }
    b->m_4B8.m_0C = 0x800;
    func_8006BBC4(&b->m_4B8, b->m_298);
    return b->m_4B8.m_00;
}
#else
INCLUDE_ASM("asm/langimg/nonmatchings/chunk_16", func_80032A14);
#endif

void func_80033280(Bike *b) {
    if (!b->m_58 && b->m_motor->m_16C && b->m_29C > 0x3000) {
        int t = b->m_504 += b->m_298;
        int k = b->m_motor->m_185[b->m_motor->m_170].m_00;

        if (k == 0) {
            if (t <= 59999) {
                b->m_500 = 0x1000;
            } else if (t <= 119999) {
                b->m_500 = 0x1000 - ((t / 60 - 1000) << 13) / 1000;
            } else {
                b->m_500 = -0x1000;
            }
        } else if (k == 2) {
            if (t > 119999) {
                b->m_500 = 0x1000;
            } else {
                b->m_500 = ((t / 60) << 12) / 1000 - 0x1000;
            }
        } else {
            b->m_500 = 0;
        }
    }
}

void func_800333F8(Bike *b, Vector3 *p, SVECTOR *r) {
    u16 e;

    VecCopyL(&b->m_pos, p);
    *(SVECTOR *)&b->m_rx = *r;
    func_80024584(b);
    func_8002E548(b);
    e = b->m_motor->m_26;
    b->m_gear = 0;
    b->m_clutch = 2;
    b->m_3F4 = 1;
    b->m_61 = 1;
    b->m_110 = 0;
    b->m_F4 = 0;
    b->m_2BC = e;
    func_800630D8(b);
    b->m_40C = 1;
    b->m_2C0 = 0;
    b->m_2F0 = 0x1000;
}

int func_800334B0(Bike *b) {
    if (b->m_58 == 3) {
        return 0;
    }
    return b->m_29C > b->m_motor->m_upshift[b->m_gear];
}

void func_800334E8(Bike *b, Bike *s) {
    SVECTOR r, a;

    VecCopyL(&b->m_pos, &s->m_pos);
    func_80098418(s->m_34, &a);
    r = a;
    *(SVECTOR *)&b->m_rx = r;
    LinkCopy(&b->m_1B4, &s->m_1B4);
    func_80024584(b);
    VecCopyL(&b->m_78, &s->m_78);
    func_80099D74(&b->m_78, 5);
    VecCopyL(&b->m_5C8->m_04, &b->m_78);
    func_80063848(b, s);
    b->m_61 = 1;
}
