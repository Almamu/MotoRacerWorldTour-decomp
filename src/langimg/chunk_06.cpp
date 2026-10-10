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

// A particle (0x60 bytes)
struct Particle {
    u8 m_00[0x2A];
    short m_2A;
    u8 m_2C[0x34];
};
struct Particles {
    u8 m_00[0x2580];
    int m_2580;
    Particle m_items[100];
    short m_4B04;
    short m_4B06;
    int m_4B08;
    short m_4B0C;
    short m_4B0E;
};

extern int D_800CA7D0;  // the static racer's users
extern u8 D_800CA7D8[]; // a Racer; its size not known here
extern Camera *D_800C8864;
int func_8009707C(long *plane, Vector3 *v);
void func_8001D99C(Racer *r);
void func_8001DA10(Racer *r);
int func_8001DF10(Racer *r, Vector3 *v, int lo, int hi, int *depth);
void func_8001E110(Racer *r);
int func_8001E118(Racer *r, Vector3 *p, int radius);
void func_8001E1C8(Racer *r, Sphere *s, int n, u8 *out, int stride);
void func_8001F090(void);
void func_8001F0CC(void);
void func_8001F10C(Particles *p);
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_06", func_8001D760);

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
        int d = func_8009707C(r->m_B8[i], v);

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

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_06", func_8001DFD8);

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

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_06", func_8001E240);

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
    p->m_4B0C = 0;
    p->m_4B0E = 0;
    p->m_4B08 = 0;
    i = 100;
    q = p->m_items;
    do {
        q->m_2A = 0;
        q++;
    } while (--i);
    p->m_2580 = 0;
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_06", func_8001F13C);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_06", func_8001F67C);
