#include "common.h"
#include "psyq.h"
#include "gte.h"

/* The game's code built with GCC 2.91.66 (docs/matching/issue-55-langimg-chunk54.md). */

extern "C" {
struct Vec54 {
    long vx, vy, vz;
};
// A texture's corners (u and v at 0 and 1, 0xA and 0xB)
struct Tex54 {
    u8 m_00, m_01;
    u8 m_02[8];
    u8 m_0A, m_0B;
};
// A sprite facing the camera: its matrix at 0x18
struct Spr54 {
    u8 m_00[0x14];
    MATRIX *m_14; // the camera's
    MATRIX m_18;
};

extern Tex54 *D_800CBCA4;
extern Vec54 D_800CBCA8;
Vec54 *func_800998D0(Vec54 *d, Vec54 *a, Vec54 *b); // a - b
void func_800990E8(Vec54 *v, int sh);
Vec54 *func_80099908(Vec54 *d, Vec54 *a, Vec54 *b); // a cross product
void func_80098E9C(Vec54 *v);
void func_80098768(MATRIX *m, Vec54 *v, Vec54 *out);
Vec54 *func_800997D0(Vec54 *v, Vec54 *a);
MATRIX *func_800985A8(MATRIX *m, MATRIX *out); // returns out

extern u8 *D_800C8C70; // the end of the primitives built this frame

void func_8007F000(Spr54 *o);
void func_8007F21C(u8 *p, u32 c);
}

static inline void VecCopyL54(Vec54 *d, Vec54 *s) {
    int x = s->vx;
    int y = s->vy;
    int z = s->vz;

    d->vx = x;
    d->vy = y;
    d->vz = z;
}

static inline void SetVec54(Vec54 *v, int x, int y, int z) {
    v->vx = x;
    v->vy = y;
    v->vz = z;
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_54", func_8007D130);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_54", func_8007D434);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_54", func_8007D638);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_54", func_8007D8B4);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_54", func_8007DBB8);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_54", func_8007DE6C);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_54", func_8007E18C);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_54", func_8007E408);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_54", func_8007E744);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_54", func_8007E9E4);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_54", func_8007ED28);

#ifdef NON_MATCHING
// Scheduling of the first copy (the camera's position): the original loads the camera pointer before taking the copy's address and loads D_800CBCA8's address after the three loads (6 off).
void func_8007F000(Spr54 *o) {
    Tex54 *t = D_800CBCA4;

    if (t) {
        MATRIX m;
        Vec54 d, e, c, a, b;
        MATRIX *cam;
        int du, dv, x0, x1, x2, y0, y1, y2;
        Vec54 *tp;
        MATRIX *r;

        {
            int x = o->m_14->t[0];
            int y = o->m_14->t[1];
            int z = o->m_14->t[2];

            a.vx = x;
            a.vy = y;
            a.vz = z;
        }
        func_800998D0(&b, &a, &D_800CBCA8);
        VecCopyL54(&c, &b);
        func_800990E8(&c, 12);
        SetVec54(&b, 0, -0x1000, 0);
        func_80099908(&d, &b, &c);
        func_80098E9C(&d);
        func_80099908(&e, &c, &d);
        m.m[0][0] = d.vx;
        m.m[0][1] = d.vy;
        m.m[0][2] = d.vz;
        m.m[1][0] = e.vx;
        m.m[1][1] = e.vy;
        m.m[1][2] = e.vz;
        m.m[2][0] = 0;
        m.m[2][1] = 0;
        m.m[2][2] = 0;
        cam = o->m_14;
        tp = (Vec54 *)o->m_18.t;
        r = &o->m_18;
        func_80098768(&m, (Vec54 *)cam->t, tp);
        func_800997D0(tp, (Vec54 *)m.t);
        func_800985A8(cam, r);
        du = t->m_0A - t->m_00;
        x0 = o->m_18.m[0][0] * du;
        x1 = o->m_18.m[0][1] * du;
        x2 = o->m_18.m[0][2] * du;
        dv = t->m_0B - t->m_01;
        y0 = o->m_18.m[1][0] * dv;
        y1 = o->m_18.m[1][1] * dv;
        y2 = o->m_18.m[1][2] * dv;
        o->m_18.m[0][0] = x0 >> 5;
        o->m_18.m[0][1] = x1 >> 5;
        o->m_18.m[0][2] = x2 >> 5;
        o->m_18.m[1][0] = y0 >> 5;
        o->m_18.m[1][1] = y1 >> 5;
        o->m_18.m[1][2] = y2 >> 5;
        {
            int u0 = t->m_00;
            int u1 = t->m_0A;
            int v0 = t->m_01;
            int v1 = t->m_0B;

            r->t[2] = 0;
            r->t[0] = (u0 + u1) * 8;
            r->t[1] = (v0 + v1) * 8;
        }
    }
}
#else
INCLUDE_ASM("asm/langimg/nonmatchings/chunk_54", func_8007F000);
#endif

#ifdef NON_MATCHING
// Registers: the original copies the primitive pointer to $a2 and builds the colour in $a0 (the pointer's argument register); here the colour goes to the colour argument's $a1 (7 off).
void func_8007F21C(u8 *prim, u32 c) {
    u8 *p = prim;
    u8 *end = D_800C8C70;
    int z = 0;

    GTE_MTC2(z, 8);
    c = ((c >> 2) & 0x1F) | ((c >> 5) & 0x3E0) | ((c >> 8) & 0x7C00);
    while (p < end) {
        int n = ((s8 *)p)[3];

        GTE_LWC2(6, 4, p);
        GTE_MTC2(c, 28);
        GTE_DPCL();
        GTE_SWC2(22, 4, p);
        p += n * 4 + 4;
    }
}
#else
INCLUDE_ASM("asm/langimg/nonmatchings/chunk_54", func_8007F21C);
#endif
