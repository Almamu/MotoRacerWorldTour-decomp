#include "common.h"

/* The game's code built with GCC 2.91.66, -G8, split addresses
 * (docs/matching/issue-66-langimg-chunk65.md). */

extern "C" {
// A vertex, 20 bytes
struct Vtx65 {
    int m_00;
    union {
        int m_04;
        short m_04s[2]; // 1: its depth
    };
    int m_08;
    union {
        int m_0C;
        short m_0Cs[2]; // its screen position
    };
    union {
        int m_10;
        u8 m_10b[4]; // 1 and 3: flags
        s8 m_10c[4];
    };
};
// A camera's projection
struct Proj65 {
    int m_00;
    int m_04;
    int m_08;
    int m_0C;
    int m_10;
    int m_14;
    int m_18;
    int m_1C;
    int m_20;
    int m_24;
    int m_28;
    int m_2C;
    int m_30;
    int m_34;
    int m_38;
    int m_3C;
    int m_40;
    int m_44;
    int m_48;
    int m_4C;
};

// The renderer's state, kept in $t9 by the drawing functions
struct Rnd65 {
    short m_00; // the screen's bounds
    short m_02;
    short m_04;
    short m_06;
    u8 m_08[8];
    struct Vtx65 *m_10; // the next free vertex
    u8 m_14[9];
    s8 m_1D; // the subdivisions left
    u8 m_1E[4];
    short m_22;
};
// A point of the model, 8 bytes
struct Pt65 {
    short m_00[4];
};
// A face, 28 bytes: its points' indices first
struct Face65 {
    int m_00;
    union {
        u16 m_04;
        int m_04w;
    };
    u8 m_08[0x14];
};

// A view's five planes, 60 bytes
struct Plane65 {
    int x, y, z;
};
struct View65 {
    u8 m_00[0x28];
    Plane65 m_28[2][5];
    int m_A0[2];
};

extern short D_800BA884[];
extern s8 D_800C8D5C[]; // by the new vertices: the turns
extern s8 D_800C8D64[]; // and the split
extern s8 D_800C8D6C[]; // the same for four vertices
extern s8 D_800C8D7C[];
extern short D_800BF3A0[][2]; // sines and cosines by angle (chunk_05)

long ratan2(long y, long x);
void func_80092C70(void *o, Face65 *f);

void func_800937F8(void *o, Pt65 *v, Face65 *f, int n);
void func_800938D0(void *o, Pt65 *v, Face65 *f, int n);
void func_800939CC(View65 *w, int i, Vtx65 *v, int d);
void func_80093C80(Proj65 *p);
void func_80093DA0(Vtx65 *a, Vtx65 *b, Vtx65 *c);
void func_80093FFC(Vtx65 *a, Vtx65 *b, Vtx65 *c, Vtx65 *d);
int func_80094368(Vtx65 *a, Vtx65 *b, Vtx65 *c, Vtx65 *d);
Vtx65 *func_800944B8(Vtx65 *a, Vtx65 *b);
void func_80094590(Vtx65 *a, Vtx65 *b, Vtx65 *m);
void func_800946D0(Vtx65 *a, Vtx65 *b, Vtx65 *c, Vtx65 *d);
void func_80094E80(Vtx65 *a, Vtx65 *b);
void func_80094F30(Vtx65 *v, int n);
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_65", func_80093150);

#ifdef NON_MATCHING
// The original steps the face pointer in the loop's delay slot from one face before the first; the rest is registers and the order of the index loads (28 off).
void func_800937F8(void *o, Pt65 *v, Face65 *f, int n) {
    u8 *clip = (u8 *)0x1F800030;

    int i;

    for (i = n; i; i--, f++) {
        int w = f->m_00;
        int i2 = f->m_04;
        int i0 = w & 0xFFFF;
        int i1 = w >> 16;

        ((Pt65 **)0x1F800000)[0] = &v[i0];
        ((Pt65 **)0x1F800000)[1] = &v[i1];
        ((Pt65 **)0x1F800000)[2] = &v[i2];
        if (!(clip[i0] & clip[i1] & clip[i2])) {
            func_80092C70(o, f);
        }
    }
}
#else
INCLUDE_ASM("asm/langimg/nonmatchings/chunk_65", func_800937F8);
#endif

#ifdef NON_MATCHING
// As func_800937F8, with four points (44 off).
void func_800938D0(void *o, Pt65 *v, Face65 *f, int n) {
    u8 *clip = (u8 *)0x1F800030;

    int i;

    for (i = n; i; i--, f++) {
        int w0 = f->m_00;
        int w1 = f->m_04w;
        int i0 = w0 & 0xFFFF;
        int i1 = w0 >> 16;
        int i2 = w1 & 0xFFFF;
        int i3 = w1 >> 16;

        ((Pt65 **)0x1F800000)[0] = &v[i0];
        ((Pt65 **)0x1F800000)[1] = &v[i1];
        ((Pt65 **)0x1F800000)[2] = &v[i2];
        ((Pt65 **)0x1F800000)[3] = &v[i3];
        if (!(clip[i0] & clip[i1] & clip[i2] & clip[i3])) {
            func_80092C70(o, f);
        }
    }
}
#else
INCLUDE_ASM("asm/langimg/nonmatchings/chunk_65", func_800938D0);
#endif

#ifdef NON_MATCHING
// The planes' addresses (the original computes each from the view and i) and registers (114 off). The projection's body is func_80093C80's written out: as an inline function GCC called it.
void func_800939CC(View65 *w, int i, Vtx65 *v, int d) {
    Proj65 q;
    Proj65 *p = &q;
    int a, t, r, k, c;

    p->m_00 = 200;
    p->m_04 = 150;
    p->m_1C = 0x800;
    p->m_20 = 0x37;
    p->m_08 = 0x200;
    p->m_24 = 0x4C;
    p->m_0C = 0x100;
    p->m_34 = 0x2AA;
    p->m_10 = 0x2AA;
    p->m_44 = 0x1000;
    func_80093C80(p);
    p->m_34 = d;
    p->m_08 = v->m_08;
    p->m_0C = v->m_0C;
    a = p->m_20 * p->m_44 / p->m_24;
    p->m_14 = p->m_00;
    p->m_18 = p->m_04;
    p->m_28 = p->m_08;
    p->m_30 = p->m_10;
    p->m_2C = p->m_0C;
    p->m_40 = a;
    t = (p->m_08 << 12) / (D_800BA884[(p->m_10 / 2) & 0xFFF] * 2);
    p->m_3C = t;
    r = ratan2(p->m_0C << 12, t * (a << 1)) * 2;
    w->m_A0[i] = p->m_3C;
    k = (p->m_30 / 2) & 0xFFF;
    c = (D_800BA884[k] << 8) / D_800BA884[(p->m_34 / 2) & 0xFFF];
    w->m_28[i][0].y = 0;
    w->m_28[i][0].x = -D_800BF3A0[k][1] << 14;
    w->m_28[i][0].z = -D_800BF3A0[k][0] << 14;
    w->m_28[i][1].x = 0;
    w->m_28[i][1].y = 0;
    w->m_28[i][1].z = 0xFC000000;
    w->m_28[i][2].y = 0;
    w->m_28[i][2].x = D_800BF3A0[k][1] << 14;
    w->m_28[i][2].z = -D_800BF3A0[k][0] << 14;
    w->m_28[i][3].x = 0;
    w->m_28[i][3].y = -D_800BF3A0[r & 0xFFF][1] << 14;
    w->m_28[i][3].z = -D_800BF3A0[r & 0xFFF][0] << 14;
    w->m_28[i][4].x = 0;
    w->m_28[i][4].y = D_800BF3A0[r & 0xFFF][1] << 14;
    w->m_28[i][4].z = -D_800BF3A0[r & 0xFFF][0] << 14;
    p->m_38 = r;
    p->m_4C = (p->m_40 * p->m_40) >> 16;
    p->m_48 = c;
}
#else
INCLUDE_ASM("asm/langimg/nonmatchings/chunk_65", func_800939CC);
#endif

void func_80093C80(Proj65 *p) {
    int a = p->m_20 * p->m_44 / p->m_24;
    int t;

    p->m_14 = p->m_00;
    p->m_18 = p->m_04;
    p->m_28 = p->m_08;
    p->m_30 = p->m_10;
    p->m_2C = p->m_0C;
    p->m_40 = a;
    t = (p->m_08 << 12) / (D_800BA884[(p->m_10 / 2) & 0xFFF] * 2);
    p->m_3C = t;
    p->m_38 = ratan2(p->m_0C << 12, t * (a << 1)) * 2;
    p->m_4C = (p->m_40 * p->m_40) >> 16;
    p->m_48 = (D_800BA884[(p->m_30 / 2) & 0xFFF] << 8) / D_800BA884[(p->m_34 / 2) & 0xFFF];
}

#ifdef NON_MATCHING
// The original moves c into $a2 again for func_80094368; GCC sees it's still there and drops the move, and sets k to 0 earlier in the prologue.
void func_80093DA0(Vtx65 *a, Vtx65 *b, Vtx65 *c) {
    register Rnd65 *g_rnd65 asm("$25");
    int k;
    Vtx65 *save;
    Vtx65 *ab, *bc, *ca;
    u8 fa, fb, fc;
    int all;
    s8 any;
    int n;

    k = 0;
    save = g_rnd65->m_10;
    g_rnd65->m_1D--;
    fa = a->m_10b[3];
    fb = b->m_10b[3];
    fc = c->m_10b[3];
    all = fc & (fa & fb);
    any = fc | (fa | fb);
    if (all) {
        goto done;
    }
    if (!any && !func_80094368(a, b, c, c)) {
        goto done;
    }
    if (!g_rnd65->m_1D) {
        goto draw;
    }
    ab = func_800944B8(a, b);
    if (ab) {
        k = 1;
    }
    bc = func_800944B8(b, c);
    if (bc) {
        k += 2;
    }
    ca = func_800944B8(c, a);
    if (ca) {
        k += 4;
    }
    if (!k) {
        goto draw;
    }
    k--;
    n = D_800C8D5C[k];
    k = D_800C8D64[k];
    if (n) {
        do {
            Vtx65 *t = a;

            a = b;
            b = c;
            c = t;
            t = ab;
            ab = bc;
            bc = ca;
            ca = t;
        } while (--n);
    }
    switch (k) {
    case 0:
        func_80093DA0(a, ab, c);
        func_80093DA0(ab, b, c);
        goto done;
    case 1:
        func_80093FFC(a, ab, bc, c);
        func_80093DA0(ab, b, bc);
        goto done;
    case 2:
        func_80093DA0(ab, b, bc);
        func_80093DA0(ab, ca, a);
        func_80093DA0(ab, bc, ca);
        func_80093DA0(bc, c, ca);
        goto done;
    }
draw:
    func_800946D0(a, b, c, a);
done:
    g_rnd65->m_10 = save;
    g_rnd65->m_1D++;
}
#else
INCLUDE_ASM("asm/langimg/nonmatchings/chunk_65", func_80093DA0);
#endif

#ifdef NON_MATCHING
// The original moves d into $a3 again for func_80094368; GCC sees it's still there and drops the move.
void func_80093FFC(Vtx65 *a, Vtx65 *b, Vtx65 *c, Vtx65 *d) {
    register Rnd65 *g_rnd65 asm("$25");
    int k;
    Vtx65 *save;
    Vtx65 *ab, *bc, *cd, *da, *m;
    int all;
    s8 any;
    int n;

    k = 0;
    save = g_rnd65->m_10;
    g_rnd65->m_1D--;
    all = d->m_10b[3] & (c->m_10b[3] & (a->m_10b[3] & b->m_10b[3]));
    any = d->m_10b[3] | (c->m_10b[3] | (a->m_10b[3] | b->m_10b[3]));
    if (all) {
        goto done;
    }
    if (!any && !func_80094368(a, b, c, d)) {
        goto done;
    }
    if (!g_rnd65->m_1D) {
        goto draw;
    }
    ab = func_800944B8(a, b);
    if (ab) {
        k = 1;
    }
    bc = func_800944B8(b, c);
    if (bc) {
        k += 2;
    }
    cd = func_800944B8(c, d);
    if (cd) {
        k += 4;
    }
    da = func_800944B8(d, a);
    if (da) {
        k += 8;
    }
    if (!k) {
        goto draw;
    }
    k--;
    n = D_800C8D6C[k];
    k = D_800C8D7C[k];
    if (n) {
        do {
            m = a;
            a = b;
            b = c;
            c = d;
            d = m;
            m = ab;
            ab = bc;
            bc = cd;
            cd = da;
            da = m;
        } while (--n);
    }
    if (k != 2) {
        m = g_rnd65->m_10++;
        func_80094590(a, c, m);
    }
    switch (k) {
    case 0:
        func_80093DA0(m, c, d);
        func_80093FFC(a, ab, m, d);
        func_80093FFC(ab, b, c, m);
        goto done;
    case 1:
        func_80093FFC(a, ab, m, d);
        func_80093FFC(ab, b, bc, m);
        func_80093FFC(m, bc, c, d);
        goto done;
    case 2:
        func_80093FFC(a, ab, cd, d);
        func_80093FFC(ab, b, c, cd);
        goto done;
    case 3:
        func_80093DA0(m, a, ab);
        func_80093DA0(m, d, a);
        func_80093DA0(m, cd, d);
        func_80093FFC(ab, b, bc, m);
        func_80093FFC(m, bc, c, cd);
        goto done;
    case 4:
        func_80093FFC(a, ab, m, da);
        func_80093FFC(ab, b, bc, m);
        func_80093FFC(da, m, cd, d);
        func_80093FFC(m, bc, c, cd);
        goto done;
    }
draw:
    func_800946D0(a, b, c, d);
done:
    g_rnd65->m_10 = save;
    g_rnd65->m_1D++;
}
#else
INCLUDE_ASM("asm/langimg/nonmatchings/chunk_65", func_80093FFC);
#endif

#ifdef NON_MATCHING
// GCC turns the last test into slt/xori; the original branches to a return 1 and a return 0 (7 off).
int func_80094368(Vtx65 *a, Vtx65 *b, Vtx65 *c, Vtx65 *d) {
    register Rnd65 *g_rnd65 asm("$25");
    int lo, hi, lo2, hi2;

    lo = hi = a->m_0Cs[0];
    if (b->m_0Cs[0] < lo) {
        lo = b->m_0Cs[0];
    }
    if (hi < b->m_0Cs[0]) {
        hi = b->m_0Cs[0];
    }
    if (c->m_0Cs[0] < lo) {
        lo = c->m_0Cs[0];
    }
    if (hi < c->m_0Cs[0]) {
        hi = c->m_0Cs[0];
    }
    if (d->m_0Cs[0] < lo) {
        lo = d->m_0Cs[0];
    }
    if (hi < d->m_0Cs[0]) {
        hi = d->m_0Cs[0];
    }
    if (hi >= g_rnd65->m_00 && g_rnd65->m_02 >= lo) {
        lo2 = hi2 = a->m_0Cs[1];
        if (b->m_0Cs[1] < lo2) {
            lo2 = b->m_0Cs[1];
        }
        if (hi2 < b->m_0Cs[1]) {
            hi2 = b->m_0Cs[1];
        }
        if (c->m_0Cs[1] < lo2) {
            lo2 = c->m_0Cs[1];
        }
        if (hi2 < c->m_0Cs[1]) {
            hi2 = c->m_0Cs[1];
        }
        if (d->m_0Cs[1] < lo2) {
            lo2 = d->m_0Cs[1];
        }
        if (hi2 < d->m_0Cs[1]) {
            hi2 = d->m_0Cs[1];
        }
        if (hi2 < g_rnd65->m_04) {
            return 0;
        }
        if (g_rnd65->m_06 < lo2) {
            return 0;
        }
        return 1;
    }
    return 0;
}
#else
INCLUDE_ASM("asm/langimg/nonmatchings/chunk_65", func_80094368);
#endif

#ifdef NON_MATCHING
// The two vertices in swapped registers and the default length set earlier (13 off).
Vtx65 *func_800944B8(Vtx65 *a, Vtx65 *b) {
    register Rnd65 *g_rnd65 asm("$25");
    int d = 0x400;

    if (!a->m_10c[3] && !b->m_10c[3]) {
        int dx = a->m_0Cs[0] - b->m_0Cs[0];
        int dy = a->m_0Cs[1] - b->m_0Cs[1];
        int z = a->m_04s[1];

        if (b->m_04s[1] < z) {
            z = b->m_04s[1];
        }
        if (dx < 0) {
            dx = -dx;
        }
        if (dy < 0) {
            dy = -dy;
        }
        d = dx + dy + (dy >> 1) - (z >> 7);
    }
    if (g_rnd65->m_22 < d) {
        Vtx65 *m = g_rnd65->m_10++;

        func_80094590(a, b, m);
        return m;
    }
    return 0;
}
#else
INCLUDE_ASM("asm/langimg/nonmatchings/chunk_65", func_800944B8);
#endif

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_65", func_80094590);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_65", func_80094670);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_65", func_800946D0);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_65", func_800948EC);

#ifdef NON_MATCHING
// The original copies each end's last three words as a block ($t2-$t4) into two of the four vertices (37 off).
void func_80094E80(Vtx65 *a, Vtx65 *b) {
    Vtx65 q[4];

    q[0].m_04 = a->m_04 + 0xA000000;
    q[0].m_08 = a->m_08;
    q[0].m_0C = a->m_0C - 0x10000;
    q[0].m_10 = a->m_10;
    q[1].m_04 = b->m_04 + 0xA000000;
    q[1].m_08 = b->m_08;
    q[1].m_0C = b->m_0C - 0x10000;
    q[1].m_10 = b->m_10;
    q[2].m_04 = q[1].m_04;
    q[2].m_08 = q[1].m_08;
    q[2].m_0C = b->m_0C + 0x10000;
    q[2].m_10 = q[1].m_10;
    q[3].m_04 = q[0].m_04;
    q[3].m_08 = q[0].m_08;
    q[3].m_0C = a->m_0C + 0x10000;
    q[3].m_10 = q[0].m_10;
    func_800946D0(&q[0], &q[1], &q[2], &q[3]);
}
#else
INCLUDE_ASM("asm/langimg/nonmatchings/chunk_65", func_80094E80);
#endif

void func_80094F30(Vtx65 *v, int n) {
    Vtx65 *p = v;

    n--;
    do {
        if (!(p[0].m_10b[1] | p[1].m_10b[1])) {
            func_80094E80(p, p + 1);
        }
        p++;
    } while (--n);
    if (!(v->m_10b[1] | p->m_10b[1])) {
        func_80094E80(v, p);
    }
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_65", func_80094FD4);
