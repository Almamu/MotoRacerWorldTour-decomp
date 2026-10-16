#include "common.h"
#include "psyq.h"
#include "gte.h"
#include "mulshift.h"

/* The display: its environments, the vsync and drawsync callbacks (docs/matching/issue-53-langimg-chunk52.md) */

extern "C" {
// The display's state
struct Gfx52 {
    u8 m_00[0x24];
    int m_24; // the buffer's size
    u8 *m_28; // a buffer
    int m_2C; // its largest
    int m_30; // how many entries
    u8 m_34[0x50];
    u8 m_84[4];
    u8 m_88[0x58];
    u8 m_E0[4];
    u8 m_E4[0x44];
    u16 m_128; // the screen's width
    u8 m_12A[2];
    u16 m_12C;
    u16 m_12E;
    u8 m_130[0x10];
    u16 m_140;
    u16 m_142;
    u8 m_144[0x18];
    int m_15C; // drawing to the front buffer
    u16 m_160;
    u8 m_162[2];
    u16 m_164;
    u8 m_166[6];
    u8 m_16C[3];
    u8 m_16F;
    int m_170;
    u8 m_174[0xC];
    u8 m_180;
    u8 m_181[0x0F];
    u8 m_190[0];
};
// Read split: arrays of unknown size, used as x[0]
extern int D_800B886C[]; // the last frame's length
extern int D_800B8870[];
typedef void (*Cb52)(int a);
extern Cb52 D_800B8874[]; // a callback each vsync
extern int D_800B8878[];  // and its argument
void func_80078CEC(void *a, void *b, void *c);
void func_80088FD4(void *o);
void func_800A22D8(void);
void func_800792DC(Gfx52 *g);
int func_80079328(void);
void func_80079350(void);
void func_80079390(void);
void func_800793C0(void);
void func_80079400(void);
void func_80079494(void *a, void *b, void *c);
int func_800794B4(void);
void func_800794BC(struct Gfx52 *g);
void func_80079648(void *o, Cb52 cb, int arg);
// An entry: a rectangle, and whether it's used
struct Ent52 {
    int m_00;
    int m_04;
    int m_08;
    int m_0C;
    u8 m_10[0x38];
    int m_48;
};
struct Vt52 {
    short m_delta;
    short m_index;
    int (*m_func)(void *self, int i);
};
struct Sys52 {
    u8 m_00[0x68];
    Vt52 *m_68;
};
extern Sys52 *D_800C886C[];
// A drawable: its vtable at 0x14
struct VtE52 {
    short m_delta;
    short m_index;
    void *(*m_func)(void *self);
};
struct Drw52 {
    u8 m_00[0x14];
    VtE52 *m_14;
};
// The display with its two buffers' environments
struct Disp52 {
    u8 m_00[0x60];
    Drw52 *m_60; // what's drawn
    u8 m_64[8];
    DRAWENV m_6C[2];
    DISPENV m_124[2];
    int m_14C; // the frames to wait
    int m_150; // the frame's length
    int m_154; // the last VSync's
    int m_158;
    u8 m_15C[0x14];
    int m_170;             // the largest time
    int (*m_174)(void *a); // a callback before drawing
    void *m_178;
    int m_17C;
};
extern u8 *D_800C8C6C, *D_800C8C70; // the primitive buffer's start and end this frame
int func_8007968C(Disp52 *d);
// The ordering table: its entries, and the range drawn to
struct Ot52 {
    u_long *m_ot;
    int m_04;
    int m_08;
};
extern u_long *D_800CBDC0; // the ordering table
extern Ot52 *D_800CBDC4;
extern s8 D_800B8868[];
void *malloc(int n);
int func_800895A0(u8 *p, int n);
int func_80088F34(u8 *p);
Ent52 *func_800891E8(void *l, int i);
void func_800798FC(Gfx52 *g, int a, int b, int c, int d);
int func_800AC110(RECT *r, int x, int y);
int func_800794E8(Gfx52 *g, RECT *r);
int func_800795A0(Gfx52 *g, int n);
int func_800795FC(Gfx52 *g);
int func_80079438(Gfx52 *g);
void func_80079848(Gfx52 *g);
struct Vec52 {
    int x;
    int y;
    int z;
};
// A matrix and its translation
struct Mat52 {
    short m[3][3];
    short pad;
    Vec52 t;
};
// The rotation matrix, as GTE_SET_ROT but through $v0 and $v1 (chunk_56's)
#define GTE_SET_ROT_V(m) \
    __asm__ volatile("lw $2, 0(%0)\n\tlw $3, 4(%0)\n\t" \
                     "ctc2 $2, $0\n\tctc2 $3, $1\n\t" \
                     "lw $2, 8(%0)\n\tlw $3, 12(%0)\n\tctc2 $2, $2\n\t" \
                     "lw $2, 16(%0)\n\tctc2 $3, $3\n\tctc2 $2, $4" \
                     : \
                     : "r"(m) \
                     : "$2", "$3")
extern Mat52 *D_800C8868; // the camera
void func_80098768(Mat52 *m, Vec52 *v, Vec52 *out);
void func_800997D0(Vec52 *v, Vec52 *a);
void func_800985A8(Mat52 *m, Mat52 *out);
void func_80079AE4(Mat52 *m, int scale);
}

/* The draw area's and the display area's origin and colour from the settings. */
void func_800792DC(Gfx52 *g) {
    u16 x = g->m_160;
    u16 y = g->m_164;
    u8 a = g->m_180;
    u8 r = g->m_16C[0];
    u8 gr = g->m_16C[1];
    u8 b = g->m_16C[2];

    g->m_140 = x;
    g->m_12C = x;
    g->m_142 = y;
    g->m_12E = y;
    g->m_E0[0] = a;
    g->m_84[0] = a;
    g->m_84[1] = r;
    g->m_84[2] = gr;
    g->m_84[3] = b;
    g->m_E0[1] = r;
    g->m_E0[2] = gr;
    g->m_E0[3] = b;
}

int func_80079328(void) {
    func_80079400();
    ResetGraph(3);
    return 1;
}

/* Each vsync: the frame's work, then the user's callback. */
void func_80079350(void) {
    func_800A22D8();
    if (D_800B8874[0]) {
        D_800B8874[0](D_800B8878[0]);
    }
}

/* When drawing ends: how long the frame took. */
void func_80079390(void) {
    D_800B886C[0] = VSync(1) - D_800B8870[0];
}

void func_800793C0(void) {
    EnterCriticalSection();
    VSyncCallback(func_80079350);
    DrawSyncCallback(func_80079390);
    ExitCriticalSection();
}

void func_80079400(void) {
    EnterCriticalSection();
    VSyncCallback(0);
    DrawSyncCallback(0);
    ExitCriticalSection();
}

int func_80079438(Gfx52 *g) {
    int r;
    int ok = func_800895A0(g->m_28 + g->m_24 * D_800B8868[0], g->m_24);

    r = 0;
    if (ok) {
        r = func_80088F34((u8 *)g + 0x30) != 0;
    }
    return r;
}

void func_80079494(void *a, void *b, void *c) {
    func_80078CEC(a, b, c);
}

int func_800794B4(void) {
    return 1;
}

void func_800794BC(Gfx52 *g) {
    func_80079848(g);
    func_80088FD4((u8 *)g + 0x30);
}

/* The screen cleared, or r; the line at 510 copied to 511. */
int func_800794E8(Gfx52 *g, RECT *r) {
    int ok = 1;

    DrawSync(0);
    if (!r) {
        RECT a;

        a.x = 0;
        a.y = 0;
        a.w = g->m_128;
        a.h = 0x200;
        ClearImage(&a, 0, 0, 0);
        a.x = 0;
        a.y = 0x1FE;
        a.w = g->m_128;
        a.h = 1;
        func_800AC110(&a, 0, 0x1FF);
    } else {
        ClearImage(r, 0, 0, 0);
    }
    DrawSync(0);
    return ok;
}

int func_800795A0(Gfx52 *g, int n) {
    if (g->m_2C < n) {
        u8 *p = (u8 *)malloc(n * 2);

        if (p) {
            g->m_28 = p;
            g->m_24 = n;
        }
    }
    g->m_170 = 0;
    return 1;
}

int func_800795FC(Gfx52 *g) {
    DrawSync(0);
    if (g->m_28) {
        free(g->m_28);
        g->m_28 = 0;
    }
    g->m_24 = 0;
    return 1;
}

void func_80079648(void *o, Cb52 cb, int arg) {
    EnterCriticalSection();
    D_800B8874[0] = cb;
    D_800B8878[0] = arg;
    ExitCriticalSection();
}

#ifdef NON_MATCHING
// The primitives' size: the original loads the buffer's end (D_800C8C70) before its start, its lui in the branch's delay slot; GCC loads the start first and leaves a nop (32 off, all of it after that point).
int func_8007968C(Disp52 *d) {
    int ok;
    int n;
    Drw52 *o;

    DrawSync(0);
    ok = 1;
    if (d->m_17C) {
        n = d->m_14C == ok ? 0 : d->m_14C;
    } else {
        n = 0;
    }
    n = VSync(n);
    d->m_154 = n;
    d->m_150 = d->m_14C * 312;
    if (d->m_150 < n) {
        d->m_150 = (n + 311) / 312 * 312;
    }
    d->m_158 = D_800B886C[0];
    PutDrawEnv(&d->m_6C[D_800B8868[0]]);
    PutDispEnv(&d->m_124[D_800B8868[0]]);
    o = d->m_60;
    if (d->m_174) {
        ok = d->m_174(d->m_178);
    }
    if (ok && o) {
        int t = D_800C8C70 - D_800C8C6C;
        VtE52 *v;

        if (d->m_170 < t) {
            d->m_170 = t;
        }
        v = &o->m_14[7];
        DrawOTag((u_long *)v->m_func((u8 *)o + v->m_delta));
    }
    D_800B8868[0] ^= 1;
    return 1;
}
#else
INCLUDE_ASM("asm/langimg/nonmatchings/chunk_52", func_8007968C);
#endif

void func_80079848(Gfx52 *g) {
    int i;

    for (i = 0; i < g->m_30; i++) {
        Ent52 *e = func_800891E8(&g->m_30, i);

        if (e->m_48) {
            Sys52 *y = D_800C886C[0];

            y->m_68[14].m_func((char *)y + y->m_68[14].m_delta, i);
            {
                int a0 = e->m_00, a1 = e->m_04, a2 = e->m_08, a3 = e->m_0C;

                func_800798FC(g, a0, a1, a2, a3);
            }
        }
    }
}

// Links packet p in at ordering table entry ot (ui.h's ADD_PRIM)
#define ADD_PRIM52(ot, p) \
    do { \
        u_long _l, _p; \
        __asm__ volatile("lwl %0, 2(%2)\n\tsll %1, %3, 8\n\tswl %0, 2(%3)\n\tswl %1, 2(%2)" \
                         : "=&r"(_l), "=&r"(_p) \
                         : "r"(ot), "r"(p)); \
    } while (0)
#define OT_LAST52 (D_800CBDC0 + (D_800CBDC4->m_04 + D_800CBDC4->m_08 - 1))

/* The drawing area set: its corners (in the buffer drawn to, unless 0x15C is set) as two
 * packets at the ordering table's end. */
#ifdef NON_MATCHING
// The globals' addresses: the original builds each high half once (D_800C8C70, D_800CBDC0, D_800CBDC4 kept in $a3, $t1, $t0) and computes the ordering table's index before scaling; GCC builds them again at each use and folds the -1 into the address (127 off).
void func_800798FC(Gfx52 *g, int x, int y, int w, int h) {
    int x1 = x + w - 1;
    int y1 = y + h - 1;
    int buf = D_800B8868[0];
    u_long *p;

    if (!g->m_15C) {
        p = (u_long *)D_800C8C70;
        p[0] = 0x01000000;
        p[1] = 0xE3000000 | (x & 0x3FF) | (((y + (buf << 8)) & 0x3FF) << 10);
        ADD_PRIM52(OT_LAST52, D_800C8C70);
        p = (u_long *)(D_800C8C70 += 8);
        p[0] = 0x01000000;
        p[1] = 0xE4000000 | (x1 & 0x3FF) | (((y1 + (buf << 8)) & 0x3FF) << 10);
        ADD_PRIM52(OT_LAST52, D_800C8C70);
        D_800C8C70 += 8;
    } else {
        p = (u_long *)D_800C8C70;
        p[0] = 0x01000000;
        p[1] = 0xE3000000 | (x & 0x3FF) | ((y & 0x3FF) << 10);
        ADD_PRIM52(OT_LAST52, D_800C8C70);
        p = (u_long *)(D_800C8C70 += 8);
        p[0] = 0x01000000;
        p[1] = 0xE4000000 | (x1 & 0x3FF) | ((y1 & 0x3FF) << 10);
        ADD_PRIM52(OT_LAST52, D_800C8C70);
        D_800C8C70 += 8;
    }
}
#else
INCLUDE_ASM("asm/langimg/nonmatchings/chunk_52", func_800798FC);
#endif

#ifdef NON_MATCHING
// Registers: the camera and the result's translation swap $s0 and $s1 (9 off)
/* The GTE's matrix: the camera's, or m's through it; the translation scaled (1.0 is 0x100000). */
void func_80079AE4(Mat52 *m, int scale) {
    Mat52 t;
    Mat52 *s;
    int x;
    int y;
    int z;

    if (m) {
        Mat52 *c = D_800C8868;

        s = &t;
        func_80098768(c, &m->t, &s->t);
        func_800997D0(&s->t, &c->t);
        func_800985A8(m, s);
    } else {
        s = D_800C8868;
        GTE_SET_ROT_V(s);
    }
    if (scale == 0x100000) {
        x = s->t.x >> 4;
        y = s->t.y >> 4;
        z = s->t.z >> 4;
    } else {
        x = MULSHIFT(s->t.x, scale, 24);
        y = MULSHIFT(s->t.y, scale, 24);
        z = MULSHIFT(s->t.z, scale, 24);
    }
    GTE_SET_TRANS(x, y, z);
}
#else
INCLUDE_ASM("asm/langimg/nonmatchings/chunk_52", func_80079AE4);
#endif

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_52", func_80079C50);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_52", func_80079DC0);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_52", func_8007A198);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_52", func_8007A6C4);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_52", func_8007A884);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_52", func_8007AA74);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_52", func_8007AC90);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_52", func_8007AED0);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_52", func_8007B164);
