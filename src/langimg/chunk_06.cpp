#include "common.h"
#include "langimg/race.h"
#include "langimg/ui.h"
#include "gte.h"

/* The game's code built with GCC 2.91.66, -G8, split addresses
 * (docs/matching/issue-7-langimg-chunk06.md). */

extern "C" {
// A sphere: a position and a radius
struct Sphere {
    Vector3 m_pos;
    int m_radius;
};

// What a particle is
struct ParticleDef {
    u8 m_00[0xC];
    int m_gravity; // 0x0C
    int m_drag;
};

// A particle (0x60 bytes)
struct Particle {
    ParticleDef *m_def;
    Vector3 m_pos;  // 0x04
    Vector3 m_prev; // 0x10
    Vector3 m_vel;  // 0x1C
    short m_28;
    short m_life; // 0x2A
    u8 m_2C[0x20];
    short m_alpha; // 0x4C
    short m_4E;
    int m_fade; // 0x50
    u8 m_54[0xC];
};
struct Particles {
    u8 m_00[0x2580];
    int m_2580;
    Particle m_items[100];
    short m_4B04;
    short m_4B06;
    int m_4B08;
    short m_live; // 0x4B0C
    short m_4B0E;
};
extern int D_800D6100; // the frame's time
void func_80099574(Vector3 *v, int drag);
void func_8001DFD8(Racer *r, int dist);
void func_8001F67C(Particles *p);

extern int D_800CA7D0;  // the static racer's users
extern u8 D_800CA7D8[]; // a Racer; its size not known here
extern Camera *D_800C8864;
int func_8009707C(RacePlane *plane, Vector3 *v);
void func_8001E240(Racer *r, int a, int b, int c, int d, int e, int f);
void func_8001E458(Racer *r, int a, int b, int c, int d, int e, int f, Vector3 *tris, int n);
void func_8001D99C(Racer *r);
void func_8001D760(Racer *r, int n0, int n1, int a, int b, int c, int d, int e, int f, int g,
                   int h);
void func_8001D23C(Racer *r, int a, int b, int c, int d);
void func_80096E7C(RacePlane *p); // its constructor
extern short D_800BF3A0[][2];     // sines and cosines by angle (4.12)
void func_8001DA10(Racer *r);
int func_8001DF10(Racer *r, Vector3 *v, int lo, int hi, int *depth);
void func_8001E110(Racer *r);
int func_8001E118(Racer *r, Vector3 *p, int radius);
void func_8001E1C8(Racer *r, Sphere *s, int n, u8 *out, int stride);
void func_8001F090(void);
void func_8001F0CC(void);
void func_8001F10C(Particles *p);
}

static inline void VecSet(Vector3 *v, int x, int y, int z) {
    v->vx = x;
    v->vy = y;
    v->vz = z;
}

#ifdef NON_MATCHING
/* The sine table's two bases: the original keeps the table and its second column in registers, GCC here one plus a direct load (47 off, from one instruction more) */
/* A racer set up: its ranges and arrays, three planes on its own normals,
 * its frame from the angle m_150. */
void func_8001D760(Racer *r, int n0, int n1, int a, int b, int c, int d, int e, int f, int g,
                   int h) {
    RacePlane *p, *q;
    int i, j;

    r->m_168 = a << 12;
    r->m_164 = e;
    r->m_158 = c;
    r->m_17C = c;
    r->m_154 = b - e;
    r->m_178 = b;
    r->m_174 = (d << 12) / 360;
    func_8001D23C(r, a << 12, r->m_174, 0x800, 0);
    r->m_16C = r->m_144;
    func_8001D99C(r);
    r->m_08 = n0;
    r->m_0C = n1;
    if (n0) {
        r->m_00 = new int[n0];
    }
    if (r->m_0C) {
        r->m_04 = new int[r->m_0C];
    }
    r->m_1C = f;
    r->m_20 = g;
    r->m_24 = h;
    func_8001DA10(r);
    q = p = new RacePlane[3];
    i = 2;
    do {
        func_80096E7C(q);
        q++;
    } while (--i != -1);
    r->m_B8 = p;
    for (j = 0; j < 3; j++) {
        r->m_B8[j].m_n = &r->m_94[j];
    }
    VecSet(&r->m_34, -D_800BF3A0[r->m_150 & 0xFFF][1] << 14, 0,
           -D_800BF3A0[r->m_150 & 0xFFF][0] << 14);
    VecSet(&r->m_40, 0, 0, -0x4000000);
    VecSet(&r->m_4C, D_800BF3A0[r->m_150 & 0xFFF][1] << 14, 0,
           -D_800BF3A0[r->m_150 & 0xFFF][0] << 14);
    VecSet(&r->m_70, 0, 0, 0);
    VecSet(&r->m_7C, 0, 0, 0);
    VecSet(&r->m_88, 0, 0, 0);
}
#else
INCLUDE_ASM("asm/langimg/nonmatchings/chunk_06", func_8001D760);
#endif

/* The racer's arrays freed. */
void func_8001D99C(Racer *r) {
    if (r->m_00) {
        delete[] r->m_00;
        r->m_00 = 0;
    }
    if (r->m_04) {
        delete[] r->m_04;
        r->m_04 = 0;
    }
    if (r->m_B8) {
        delete[] r->m_B8;
        r->m_B8 = 0;
    }
}

void func_8001DA10(Racer *r) {
    if (r->m_08) {
        memset(r->m_00, 0, r->m_08 * 4);
    }
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_06", func_8001DA44);

/* Whether v is inside the racer's three planes; its depth past the
 * second. */
int func_8001DF10(Racer *r, Vector3 *v, int lo, int hi, int *depth) {
    int ok = 1;
    int i;

    for (i = 0; i < 3; i++) {
        int d = func_8009707C(&r->m_B8[i], v);

        if (lo < d) {
            ok = 0;
            break;
        }
        if (i == 1) {
            *depth = -d;
            if (hi < -d) {
                ok = 0;
                break;
            }
        }
    }
    return ok;
}

/* The racer's distance (or its own), and its planes' normals as the
 * light matrix. */
void func_8001DFD8(Racer *r, int dist) {
    MATRIX m;

    r->m_13C = 1;
    r->m_140 = dist ? dist >> 8 : r->m_15C >> 8;
    m.m[0][0] = r->m_B8[0].m_n->vx >> 14;
    m.m[0][1] = r->m_B8[0].m_n->vy >> 14;
    m.m[0][2] = r->m_B8[0].m_n->vz >> 14;
    m.m[1][0] = r->m_B8[1].m_n->vx >> 14;
    m.m[1][1] = r->m_B8[1].m_n->vy >> 14;
    m.m[1][2] = r->m_B8[1].m_n->vz >> 14;
    m.m[2][0] = r->m_B8[2].m_n->vx >> 14;
    m.m[2][1] = r->m_B8[2].m_n->vy >> 14;
    m.m[2][2] = r->m_B8[2].m_n->vz >> 14;
    GTE_SET_LIGHT_M(&m);
}

void func_8001E110(Racer *r) {
    r->m_13C = 0;
}

/* Whether a sphere is in front of the camera, in the light matrix's
 * frame. */
int func_8001E118(Racer *r, Vector3 *p, int radius) {
    int x = p->vx;
    int y = p->vy;
    int z = p->vz;
    int ok;

    x -= D_800C8864->m_pos.vx;
    y -= D_800C8864->m_pos.vy;
    z -= D_800C8864->m_pos.vz;
    x >>= 8;
    y >>= 8;
    z >>= 8;
    GTE_SET_IR(x, y, z);
    GTE_MVMVA_LIR();
    GTE_GET_MAC(x, y, z);
    radius >>= 8;
    ok = x < radius && y < radius && z < radius;
    if (r->m_140 >= 0) {
        int v = 0;

        if (ok) {
            v = -y < r->m_140 + radius;
        }
        ok = v;
    }
    return ok;
}

/* func_8001E118 for n spheres, stride bytes apart. */
void func_8001E1C8(Racer *r, Sphere *s, int n, u8 *out, int stride) {
    for (; n; n--) {
        *out++ = func_8001E118(r, &s->m_pos, s->m_radius);
        s = (Sphere *)((u8 *)s + stride);
    }
}

/* The racer's outline as six triangles on the ground, scaled down by
 * m_164, handed to func_8001E458 with the other arguments. */
void func_8001E240(Racer *r, int a, int b, int c, int d, int e, int f) {
    Vector3 t[6][3];
    int i = 18;

    while (i--) {
    }
    t[0][0].vx = r->m_pts[4].vx / r->m_164;
    t[0][0].vz = r->m_pts[4].vz / r->m_164;
    t[0][1].vx = r->m_pts[8].vx / r->m_164;
    t[0][1].vz = r->m_pts[8].vz / r->m_164;
    t[0][2].vx = r->m_pts[5].vx / r->m_164;
    t[0][2].vz = r->m_pts[5].vz / r->m_164;
    t[1][0].vx = r->m_pts[4].vx / r->m_164;
    t[1][0].vz = r->m_pts[4].vz / r->m_164;
    t[1][1].vx = r->m_pts[7].vx / r->m_164;
    t[1][1].vz = r->m_pts[7].vz / r->m_164;
    t[1][2].vx = r->m_pts[8].vx / r->m_164;
    t[1][2].vz = r->m_pts[8].vz / r->m_164;
    t[2][0].vx = r->m_pts[1].vx / r->m_164;
    t[2][0].vz = r->m_pts[1].vz / r->m_164;
    t[2][1].vx = r->m_pts[8].vx / r->m_164;
    t[2][1].vz = r->m_pts[8].vz / r->m_164;
    t[2][2].vx = r->m_pts[7].vx / r->m_164;
    t[2][2].vz = r->m_pts[7].vz / r->m_164;
    t[3][0].vx = r->m_pts[1].vx / r->m_164;
    t[3][0].vz = r->m_pts[1].vz / r->m_164;
    t[3][1].vx = r->m_pts[7].vx / r->m_164;
    t[3][1].vz = r->m_pts[7].vz / r->m_164;
    t[3][2].vx = r->m_pts[0].vx / r->m_164;
    t[3][2].vz = r->m_pts[0].vz / r->m_164;
    t[4][0].vx = r->m_pts[1].vx / r->m_164;
    t[4][0].vz = r->m_pts[1].vz / r->m_164;
    t[4][1].vx = r->m_pts[0].vx / r->m_164;
    t[4][1].vz = r->m_pts[0].vz / r->m_164;
    t[4][2].vx = r->m_pts[2].vx / r->m_164;
    t[4][2].vz = r->m_pts[2].vz / r->m_164;
    t[5][0].vx = r->m_pts[1].vx / r->m_164;
    t[5][0].vz = r->m_pts[1].vz / r->m_164;
    t[5][1].vx = r->m_pts[2].vx / r->m_164;
    t[5][1].vz = r->m_pts[2].vz / r->m_164;
    t[5][2].vx = r->m_pts[3].vx / r->m_164;
    t[5][2].vz = r->m_pts[3].vz / r->m_164;
    func_8001E458(r, a, b, c, d, e, f, &t[0][0], 6);
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_06", func_8001E458);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_06", func_8001EAF4);

/* The static racer's last user gone: destroyed. */
void func_8001F090(void) {
    if (--D_800CA7D0 == 0) {
        func_8001D180((Racer *)D_800CA7D8, 2);
    }
}

/* The static racer's first user: set up. */
void func_8001F0CC(void) {
    if (++D_800CA7D0 == 1) {
        func_8001D108((Racer *)D_800CA7D8);
    }
}

void func_8001F10C(Particles *p) {
    Particle *q;
    int i;

    p->m_4B04 = 0;
    p->m_live = 0;
    p->m_4B0E = 0;
    p->m_4B08 = 0;
    i = 100;
    q = p->m_items;
    do {
        q->m_life = 0;
        q++;
    } while (--i);
    p->m_2580 = 0;
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_06", func_8001F13C);

#ifdef NON_MATCHING
/* Registers (23 off): the position, the definition and the speed in other temporaries ($a1, $a3, $t0, $t1 and $a2 for the speed in the original) */
/* The particles' frame: moved, slowed, aged and faded; the live ones
 * counted. */
void func_8001F67C(Particles *ps) {
    int i = 100;
    Particle *p = ps->m_items;
    int dt = (D_800D6100 << 12) / 1000;
    int live = 0;

    do {
        int life = p->m_life;

        if (life) {
            if (dt < life) {
                int x = p->m_pos.vx;
                int y = p->m_pos.vy;
                int z = p->m_pos.vz;
                ParticleDef *d = p->m_def;

                p->m_prev.vx = x;
                p->m_prev.vy = y;
                p->m_prev.vz = z;
                {
                    int g = d->m_gravity * dt;
                    int vx = p->m_vel.vx;
                    int vy = p->m_vel.vy;
                    int vz = p->m_vel.vz;

                    p->m_pos.vx = x + vx;
                    p->m_pos.vy = y + vy;
                    p->m_pos.vz = z + vz;
                    p->m_vel.vy = vy - (g >> 12);
                }
                func_80099574(&p->m_vel, d->m_drag);
                live++;
                p->m_alpha = 0x1000 - ((life * p->m_fade) >> 6);
                life -= dt;
            } else {
                life = 0;
            }
            p->m_life = life;
        }
        p++;
    } while (--i);
    ps->m_live = live;
}
#else
INCLUDE_ASM("asm/langimg/nonmatchings/chunk_06", func_8001F67C);
#endif
