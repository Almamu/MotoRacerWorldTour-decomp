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

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_16", func_80032A14);

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
