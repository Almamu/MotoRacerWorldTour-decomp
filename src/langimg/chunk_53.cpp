#include "common.h"
#include "gte.h"
#include "mulshift.h"
#include "langimg/cobjet.h"

/* The game's code built with GCC 2.91.66, mostly GTE code marked
 * hand-written (docs/matching/issue-54-langimg-chunk53.md). */

extern "C" {
struct Vec53 {
    int x, y, z;
};
// A model's data: its count at 0xA (a power of two), its codes at 0xC
struct Data53 {
    u8 m_00[0xA];
    u8 m_0A;
    u8 m_0B;
    int m_0C;
    int m_10;
    u8 m_14[0xC];
    int m_20;
};
// The ordering table's
struct Ot53 {
    int m_00;
    int m_04;
    int m_08;
};
// A model's description
struct Desc53 {
    u8 m_00[4];
    short m_04;
    u8 m_06; // flags: 2, 4
    u8 m_07[0x11];
    int m_18;
    int m_1C;
    u8 m_20[8];
    Data53 *m_28;
};
// A model to draw
struct Obj53 {
    short m_00;
    u8 m_02[2];
    Desc53 *m_04;
    int m_08;
    u8 m_0C[4];
    u16 m_10[1]; // its codes: a kind in the low 6 bits, a count above
    u8 m_12[6];
    int m_18;
    int m_1C;
};

extern Camera *D_800C8864;
extern int D_800C8904;
void func_8007ED28(MATRIX *e, Vec53 *v, int a, int b, int c);
void func_8007C1B8(MATRIX *e, int a);
int SetSp(int sp);
void func_8007C780(Obj53 *o);
void func_8007BFB0(Obj53 *o);
void func_8007BD1C(int a, int b, int c);
extern int D_800CA7D8;
extern int *D_800C8C70; // the next free GPU packet
extern u32 *D_800CBDC0; // the ordering table
extern Ot53 *D_800CBDC4;
typedef void (*Draw53)(int a, int b, int n, int c);
extern Draw53 D_800C896C[];
void func_8001DFD8(int *a, int b);
void func_8001E1C8(int *a, int b, int c, void *d, int e);
void func_8001E110(int *a);
void ClearOTagR(int *ot, int n);

void func_8007C428(Obj53 *o, MATRIX *e, int d);
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_53", func_8007B3C0);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_53", func_8007B664);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_53", func_8007B870);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_53", func_8007BB24);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_53", func_8007BD1C);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_53", func_8007BFB0);

// The scratchpad's matrix: the camera's view times a model's
#define SCRATCH_MAT53 ((MATRIX *)0x1F8003E0)

#ifdef NON_MATCHING
// The original drops the scratchpad matrix's address ($s2) after the third MULSHIFT and sets the rotation through two fresh copies of it ($t2, $t1) with $v0/$v1; GCC keeps it in $s2, and the camera and the matrix argument are in swapped saved registers (68 off).
void func_8007C1B8(MATRIX *e, int scale) {
    Camera *c = D_800C8864;
    MATRIX *sm = SCRATCH_MAT53;
    Vec53 d;
    int x, y, z;

    func_80098674(&c->m_view, e, sm);
    {
        Vec53 *pa = (Vec53 *)e->t;
        Vec53 *pb = (Vec53 *)c->m_view.t;
        int ax = pa->x;
        int bx = pb->x;
        int ay = pa->y;
        int az = pa->z;
        int by = pb->y;

        d.x = ax - bx;
        d.y = ay - by;
        d.z = az - pb->z;
    }
    func_8009887C((long *)&d, SCRATCH_MAT53->t);
    if (scale == 0x80000) {
        x = SCRATCH_MAT53->t[0] >> 5;
        y = SCRATCH_MAT53->t[1] >> 5;
        z = SCRATCH_MAT53->t[2] >> 5;
    } else {
        x = MULSHIFT(sm->t[0], scale, 24);
        y = MULSHIFT(sm->t[1], scale, 24);
        z = MULSHIFT(sm->t[2], scale, 24);
    }
    GTE_CTC2(((int *)sm)[0], 0);
    GTE_CTC2(((int *)sm)[1], 1);
    GTE_CTC2(((int *)sm)[2], 2);
    GTE_CTC2(((int *)sm)[3], 3);
    GTE_CTC2(((int *)sm)[4], 4);
    GTE_SET_TRANS(x, y, z);
}
#else
INCLUDE_ASM("asm/langimg/nonmatchings/chunk_53", func_8007C1B8);
#endif

void func_8007C354(int *model, MATRIX *e) {
    Obj53 *o = (Obj53 *)model;
    int sp;

    if (o->m_04->m_06 & 4) {
        Vec53 v;

        v.x = e->t[0];
        v.y = e->t[1];
        v.z = e->t[2];

        func_8007ED28(e, &v, o->m_04->m_18, o->m_04->m_28->m_20, o->m_04->m_04);
    }
    func_8007C1B8(e, o->m_08);
    sp = SetSp(0x1F8003F0);
    if (o->m_04->m_06 & 2) {
        D_800C8904 = 0;
        func_8007C780(o);
    } else {
        func_8007BFB0(o);
    }
    SetSp(sp);
}

void func_8007C428(Obj53 *o, MATRIX *e, int d) {
    int z3, z4, k, z;

    GTE_GET_ZSF(z3, z4);
    func_8007C1B8(e, d);
    k = (d >> 8) * D_800C8864->m_lens->m_14;
    z = D_800C8864->m_lens->m_1C << 16;
    GTE_SET_ZSF(z / (k * 3), z / (k * 4));
    func_8007BD1C(o->m_1C, o->m_18, o->m_00);
    GTE_SET_ZSF(z3, z4);
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_53", func_8007C4EC);

#ifdef NON_MATCHING
// Registers: the ordering table's count and pointer swapped between $s0 and $s1, the function table's address built in another register and the codes' pointer set earlier; the flow and the GTE reads are the original's (76 off, most of it shifted by one instruction).
void func_8007C780(Obj53 *o) {
    int z3, z4, a, b, sh, n, m, c, k;
    Desc53 *d;
    u16 *p;
    int *ot;

    GTE_GET_ZSF(z3, z4);
    d = o->m_04;
    a = d->m_1C;
    b = d->m_18;
    p = o->m_10;
    func_8001DFD8(&D_800CA7D8, -1);
    func_8001E1C8(&D_800CA7D8, d->m_28->m_10, d->m_28->m_0B, (void *)0x1F800008, 16);
    func_8001E110(&D_800CA7D8);
    n = d->m_28->m_0A;
    sh = 0;
    while (n) {
        n >>= 1;
        sh++;
    }
    m = 4 << sh;
    ot = D_800C8C70;
    *(int *)0x1F800000 = sh + 2;
    D_800C8C70 = ot + m * 4;
    *(int **)0x1F800004 = ot;
    ClearOTagR(ot, m * 4);
    {
        u32 *e = D_800CBDC0 + (D_800CBDC4->m_04 + D_800CBDC4->m_08);

        *ot = e[-6];
        e[-6] = (u32)(ot + m * 4 - 1) & 0xFFFFFF;
    }
    k = 25;
    c = d->m_28->m_0C;
    while ((n = *p++)) {
        Draw53 f = D_800C896C[n & 0x3F];

        n >>= 6;
        if (f) {
            f(a, b, n, c);
        }
        a += n * 28;
        c += n * 2;
        if (!--k) {
            break;
        }
    }
    GTE_SET_ZSF(z3, z4);
}
#else
INCLUDE_ASM("asm/langimg/nonmatchings/chunk_53", func_8007C780);
#endif

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_53", func_8007C978);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_53", func_8007CC3C);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_53", func_8007CEB4);
