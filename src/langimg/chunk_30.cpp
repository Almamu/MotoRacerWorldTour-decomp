#include "common.h"
#include "psyq.h"

/* The game's code built with GCC 2.91.66: the race's cameras
 * (docs/matching/issue-31-langimg-chunk30.md). */

extern "C" {
struct Vec30 {
    long vx, vy, vz;
};
// A bike's model (chunk_35's Body35)
struct Body30 {
    u8 m_00[0x64];
    Vec30 m_64;   // its position
    SVECTOR m_70; // its angles
    u8 m_78[0xE2];
    short m_15A[4];
};
// A bike (chunk_36's Bike36)
struct Bike30 {
    u32 m_00;
    u8 m_04[0x2C];
    Body30 *m_30;
    u8 m_34[0x2E8];
    void *m_31C; // its view (chunk_17's View17)
    u8 m_320[0x248];
};
// The race's settings
struct Hold30 {
    u8 m_00[0x51C];
    int m_51C[1]; // the fog by setting
};
struct Run30 {
    u8 m_00[0x10];
    Hold30 *m_10;
    u8 m_14[0x2D4];
    Bike30 m_2E8[5];
    u8 m_1DF0[0x34];
    s8 m_1E24[2]; // the racers' bikes
};
// A camera: its matrix and its position
struct Cam30 {
    MATRIX m_00;
    u8 m_20[0xC0];
    Vec30 m_E0; // its position last frame
    Vec30 m_EC; // its speed
    Vec30 m_F8;
};
// The race (chunk_36's Own36)
// A racer's object (0x184 bytes)
struct Racer30 {
    u8 m_00[0x184];
};
struct Own30 {
    u8 m_00[0x18];
    int m_18;
    u8 m_1C[0x340];
    int m_35C;
    u8 m_360[0x18];
    Run30 *m_378;
    u8 m_37C[0xB4];
    int m_430[2]; // the cameras' modes
    s8 m_438[2];
    u8 m_43A[2];
    Cam30 *m_43C[2];
    u8 m_444[0x18];
    struct Path30 *m_45C;
    u8 m_460[4];
    int *m_464;
    u8 m_468[8];
    s8 m_470[2];
    u8 m_472[0x16];
    struct {
        unsigned m_on : 1; // the camera is live
    } m_488[2];
    u8 m_490[0xC];
    Racer30 m_49C[2];
};
struct Ref30 {
    u8 m_00[0x58];
    int m_58;
};
// A camera's path
struct Path30 {
    u8 m_00[0xC];
    Vec30 m_0C;
    u8 m_18[0x50];
    short m_68; // the angle
    short m_6A, m_6C;
    short m_6E;
    short m_70, m_72, m_74;
};

void func_80034190(SVECTOR *a, SVECTOR *b, short *c);
void func_80097F68(MATRIX *m, SVECTOR *r);
MATRIX *func_80098178(MATRIX *d, MATRIX *s);
void func_80098768(MATRIX *m, Vec30 *v, Vec30 *out);
Vec30 *func_800997D0(Vec30 *v, Vec30 *a);

extern short D_800BF3A0[][2]; // sines and cosines by angle (4.12)
extern int D_800CA7D8;        // a racer object, addressed as one la
extern int D_800CA934;
MATRIX *func_80098674(MATRIX *a, MATRIX *b, MATRIX *out); // a product
void func_8009887C(long *in, long *out);
void func_8001D23C(void *r, int a, int b, int c, int d);

extern int D_800CBC94[1];
extern int D_800D6130; // the frame's time
Ref30 *func_80078FC4(void *a, int b);
int func_8004C9D0(Own30 *o, int i);
int func_8004CB5C(Own30 *o, int i);
void func_8004CD5C(Own30 *o, int i);
void func_8004CEFC(Own30 *o, int i);
void func_8004D068(Own30 *o, int i);
void func_8004D300(Own30 *o, int i);
void func_8004D734(Own30 *o, int i);
void func_8004E99C(Own30 *o, int i);
void func_8003425C(void *v, Bike30 *b, Cam30 *c);
Vec30 *func_800998D0(Vec30 *out, Vec30 *a, Vec30 *b);
Vec30 *func_80099718(Vec30 *d, Vec30 *s, int k);
Vec30 *func_80099DCC(Vec30 *d, Vec30 *s, int k);
int func_8009931C(Vec30 *v);

void func_8004D560(Own30 *o, int i);
void func_8004EE10(Own30 *o, int i);
void func_8004F0C4(Own30 *o, int i);
}

// The run's bike k, or 0
static inline Bike30 *Bike30At(Run30 *r, int k) {
    Bike30 *b = 0;

    if (k >= 0) {
        b = &r->m_2E8[k];
    }
    return b;
}

static inline void VecCopyL30(Vec30 *d, Vec30 *s) {
    int x = s->vx;
    int y = s->vy;
    int z = s->vz;

    d->vx = x;
    d->vy = y;
    d->vz = z;
}

static inline void SetVec30(Vec30 *v, int x, int y, int z) {
    v->vx = x;
    v->vy = y;
    v->vz = z;
}

// The camera's matrix: the transpose of r, its translation cleared
static inline void func_8004D560_set(Cam30 *c, MATRIX *r) {
    MATRIX t;

    func_80098178(&t, r);
    c->m_00 = t;
    c->m_00.t[0] = c->m_00.t[1] = c->m_00.t[2] = 0;
}

// The offset (0, 0x1000, 0) turned by a matrix, moved by t and added to pos
static inline void func_8004D560_offset(MATRIX *m, Vec30 *t, Vec30 *pos) {
    Vec30 res, w;

    SetVec30(&w, 0, 0x1000, 0);
    func_80098768(m, &w, &res);
    func_800997D0(&res, t);
    func_800997D0(pos, &res);
}

void func_8004D560(Own30 *o, int i) {
    int k = o->m_470[i];
    Body30 *m = 0;
    Bike30 *b = Bike30At(o->m_378, o->m_378->m_1E24[k]);
    Cam30 *c;

    if (b && (b->m_00 & 0x7E) == 0x42) {
        m = b->m_30;
    }
    c = o->m_43C[i];
    if (m) {
        SVECTOR a, d;
        MATRIX r;

        a = m->m_70;
        func_80034190(&a, &d, m->m_15A);
        func_80097F68(&r, &a);
        func_8004D560_set(c, &r);
        VecCopyL30(&c->m_F8, &m->m_64);
        {
            MATRIX t;

            func_80097F68(&t, &d);
            t.t[0] = t.t[1] = t.t[2] = 0;
            func_8004D560_offset(&t, (Vec30 *)t.t, &c->m_F8);
        }
    }
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_30", func_8004D734);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_30", func_8004E99C);

// A turn about z by an angle (4.12), from the sine table
static inline void RotZ30(MATRIX *m, int a) {
    int c = D_800BF3A0[a & 0xFFF][1];
    int s = D_800BF3A0[a & 0xFFF][0];

    m->m[2][2] = 0x1000;
    m->m[2][0] = 0;
    m->m[0][2] = 0;
    m->m[2][1] = 0;
    m->m[1][2] = 0;
    m->m[1][1] = c;
    m->m[0][0] = c;
    m->m[0][1] = -s;
    m->m[1][0] = s;
}

// A turn about y by an angle (4.12), from the sine table
static inline void RotY30(MATRIX *m, int a) {
    int c = D_800BF3A0[a & 0xFFF][1];
    int s = D_800BF3A0[a & 0xFFF][0];

    m->m[1][1] = 0x1000;
    m->m[1][0] = 0;
    m->m[0][1] = 0;
    m->m[2][1] = 0;
    m->m[1][2] = 0;
    m->m[0][2] = s;
    m->m[2][2] = c;
    m->m[0][0] = c;
    m->m[2][0] = -s;
}

static inline void SetAng30(SVECTOR *a, int y) {
    a->vx = 0;
    a->vz = 0;
    a->vy = y;
}

static inline void Move30(Cam30 *c, MATRIX *out, MATRIX *r) {
    func_8009887C(c->m_00.t, out->t);
    func_800997D0((Vec30 *)out->t, (Vec30 *)r->t);
}

void func_8004EE10(Own30 *o, int i) {
    int k = o->m_470[i];
    Body30 *m = 0;
    Bike30 *b = Bike30At(o->m_378, o->m_378->m_1E24[k]);

    if (b && (b->m_00 & 0x7E) == 0x42) {
        m = b->m_30;
    }
    if (m) {
        Path30 *p = o->m_45C;

        if (p) {
            union {
                Vec30 v;
                SVECTOR a;
            } u;
            MATRIX r, out;
            Cam30 *c = o->m_43C[i];
            int lo = p->m_6C;
            int span = p->m_6A - lo;
            int y, sn, cs, f;

            u.v = p->m_0C;
            VecCopyL30(&c->m_F8, &u.v);
            SetAng30(&u.a, p->m_68);
            RotY30(&c->m_00, u.a.vy);
            if (!span) {
                y = p->m_74;
            } else {
                y = (p->m_74 - p->m_72) * (u.a.vy - lo) / span + p->m_72;
            }
            RotZ30(&r, y);
            func_80098674(&r, &c->m_00, &out);
            Move30(c, &out, &r);
            c->m_00 = out;
            f = p->m_6E;
            if (f < 100) {
                f = 100;
            }
            func_8001D23C(&D_800CA7D8, D_800CA934, f, 0x800, 0);
            func_8001D23C(&o->m_49C[0], D_800CA934, f, 0x800, 0);
        }
    }
}

// The fog set on the world and the racer's view
static inline void Fog30(Own30 *o, int i, int far, int fog) {
    func_8001D23C(&D_800CA7D8, far, fog, 0x800, 0);
    func_8001D23C(&o->m_49C[i], far, fog, 0x800, 0);
}

#ifdef NON_MATCHING
// The switch and its calls are the original's; left: the speed's three vectors. The original puts the last one lowest in the frame (0x18) and recomputes its address, reusing far's and fog's registers for the time and the first vector; declared last here it is kept in a saved register, and declared first the cases' delay slots fill differently (58 off).
void func_8004F0C4(Own30 *o, int i) {
    Cam30 *c = o->m_43C[i];
    int mode = o->m_430[i];

    o->m_488[i].m_on = func_8004C9D0(o, i);
    if (o->m_488[i].m_on) {
        int far, fog;

        VecCopyL30(&c->m_E0, &c->m_F8);
        fog = (o->m_378->m_10->m_51C[func_80078FC4(D_800CBC94, o->m_18)->m_58] << 12) / 360;
        far = D_800CA934;
    again:
        switch (o->m_430[i]) {
        case 1:
            if (o->m_35C) {
                break;
            }
            Fog30(o, i, far, fog);
            func_8004D734(o, i);
            break;
        case 7:
            if (o->m_35C) {
                break;
            }
            {
                Bike30 *b = Bike30At(o->m_378, o->m_470[i]);

                func_8003425C(b->m_31C, b, c);
            }
            break;
        case 8:
            if (o->m_35C) {
                break;
            }
            Fog30(o, i, far, fog);
            func_8004D560(o, i);
            break;
        case 5:
            if (o->m_35C) {
                break;
            }
            if (!func_8004CB5C(o, i)) {
                goto again;
            }
            break;
        case 3:
            if (!o->m_464[i]) {
                break;
            }
            Fog30(o, i, far, fog);
            func_8004CD5C(o, i);
            break;
        case 4:
            Fog30(o, i, far, fog);
            func_8004CEFC(o, i);
            break;
        case 0:
            Fog30(o, i, far, fog);
            func_8004D068(o, i);
            break;
        case 9:
            Fog30(o, i, far, fog);
            func_8004D300(o, i);
            break;
        case 2:
            if (o->m_35C) {
                break;
            }
            Fog30(o, i, far, fog);
            func_8004E99C(o, i);
            break;
        case 6:
            Fog30(o, i, far, fog);
            func_8004EE10(o, i);
            break;
        }
        {
            Vec30 a, b, d;
            int t = D_800D6130;
            int len;

            func_800998D0(&a, &c->m_F8, &c->m_E0);
            func_80099718(&b, &a, t >> 6);
            func_80099DCC(&d, &b, 6);
            len = func_8009931C(&d);
            if (o->m_438[i] || mode != o->m_430[i] || len > 0xC8000) {
                VecCopyL30(&c->m_E0, &c->m_F8);
                if (o->m_438[i] > 0) {
                    o->m_438[i]--;
                }
            } else {
                VecCopyL30(&c->m_EC, &d);
            }
        }
    }
}
#else
INCLUDE_ASM("asm/langimg/nonmatchings/chunk_30", func_8004F0C4);
#endif
