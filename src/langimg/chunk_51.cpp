#include "common.h"
#include "psyq.h"
#include "langimg/cobjet.h"

/* (docs/matching/issue-52-langimg-chunk51.md) */

extern "C" {
// An object with a part at 0x30
struct A51 {
    u8 m_00[4];
    int m_04;
    u8 m_08[4];
    int m_0C, m_10, m_14, m_18;
    u8 m_1C[0xC];
    void *m_28;
    u8 m_2C[4];
    u8 m_30[0x10];
};

// An object with a vtable at 0x34
struct B51 {
    int m_00;
    u8 m_04[0x1C];
    int m_20;
    u8 m_24[0x10];
    void *m_vt; // 0x34
    int m_38, m_3C, m_40;
    u8 m_44[4];
    int m_48;
};

// An object with an animation channel at 0x160
struct C51 {
    u8 m_00[0x154];
    int m_154;
    u8 m_158[8];
    u8 m_160[0x1C];
};

struct D51 {
    u8 m_00[0x14];
    int m_14;
};

// A one-slot table
struct Slot51 {
    int m_a[1];
};

// Something with a pointer to a thing with a value at 4
struct Val51 {
    int m_00;
    int m_04;
};
struct Ref51 {
    Val51 *m_00;
};

extern int D_800CBC90;
extern Slot51 D_800CBC94;
extern char D_800C8824[];
void *__builtin_new(unsigned int n);
void __builtin_delete(void *p);
void func_80088FD4(void *p);
void func_80087EB0(void *p);
void func_80088A08(void *p, int a, int b);
void *func_80076588(void *p);
void *func_800774B8(void *p);
void func_80074510(void *p);
void *func_80074534(void *p);
void func_8006BB70(void *p);
void func_80078280(C51 *o);

void *func_80077490(void);
B51 *func_800774E4(B51 *o);
void func_80077520(B51 *o);
void *func_80077BA0(void);
void func_80077BC8(SVECTOR *d, Vector3 *s);
C51 *func_80078244(C51 *o);
int func_80078A90(A51 *o, int a, int b, int c, int d);
int func_80078AD0(A51 *o);
void func_80078B58(A51 *o);
int func_80078B78(void);
int func_80078B80(void);
int func_80078B88(void);
int func_80078B90(void);
int func_80078B98(void);
int func_80078C6C(A51 *o);
void func_80078CCC(A51 *o);
Slot51 *func_80078F10(Slot51 *t);
void func_80078F34(Slot51 *t, int flags);
int func_80078F5C(Slot51 *t, int x);
int func_80078F90(Slot51 *t, int x);
int func_80078FC4(Ref51 *r, int b);
Val51 *func_80078FE8(Ref51 *r, int b);
void func_80078FFC(void);
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_51", func_800773E8);

void *func_80077490(void) {
    return func_80076588(__builtin_new(0x18));
}

void *func_800774B8(void *p) {
    D51 *o = (D51 *)p;

    func_80074510(o);
    o->m_14 = 0;
    return o;
}

B51 *func_800774E4(B51 *o) {
    func_80074534(o);
    o->m_vt = D_800C8824;
    func_80077520(o);
    return o;
}

void func_80077520(B51 *o) {
    o->m_00 = 2;
    o->m_38 = -1;
    o->m_20 = 0;
    o->m_40 = 0;
    o->m_3C = 0;
    o->m_48 = 0;
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_51", func_80077544);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_51", func_8007759C);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_51", func_800776F0);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_51", func_80077844);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_51", func_8007792C);

void *func_80077BA0(void) {
    return func_800774B8(__builtin_new(0x18));
}

void func_80077BC8(SVECTOR *d, Vector3 *s) {
    short x = s->vx;
    short y = s->vy;
    short z = s->vz;

    d->vx = x;
    d->vy = y;
    d->vz = z;
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_51", func_80077BE4);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_51", func_80077EE0);

C51 *func_80078244(C51 *o) {
    func_8006BB70(o->m_160);
    func_80078280(o);
    o->m_154 = 3;
    return o;
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_51", func_80078280);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_51", func_800783A8);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_51", func_80078458);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_51", func_8007857C);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_51", func_800788D8);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_51", func_800789C4);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_51", func_80078A34);

int func_80078A90(A51 *o, int a, int b, int c, int d) {
    o->m_0C = b;
    o->m_10 = c;
    o->m_18 = a;
    o->m_14 = d;
    func_80088A08(o->m_30, b, c);
    return 1;
}

int func_80078AD0(A51 *o) {
    if (o->m_28) {
        free(o->m_28);
        o->m_28 = 0;
    }
    return 1;
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_51", func_80078B10);

void func_80078B58(A51 *o) {
    func_80088FD4(o->m_30);
}

int func_80078B78(void) {
    return 0;
}

int func_80078B80(void) {
    return 0;
}

int func_80078B88(void) {
    return 0;
}

int func_80078B90(void) {
    return 0;
}

int func_80078B98(void) {
    return 0;
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_51", func_80078BA0);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_51", func_80078C28);

int func_80078C6C(A51 *o) {
    o->m_04 = 0;
    return 1;
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_51", func_80078C78);

void func_80078CCC(A51 *o) {
    func_80087EB0(o->m_30);
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_51", func_80078CEC);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_51", func_80078DA8);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_51", func_80078E00);

Slot51 *func_80078F10(Slot51 *t) {
    int i;

    for (i = 0; i >= 0; i--) {
        t->m_a[i] = 0;
    }
    return t;
}

void func_80078F34(Slot51 *t, int flags) {
    if (flags & 1) {
        __builtin_delete(t);
    }
}

/* x put in the first free slot; its index, or -1. */
int func_80078F5C(Slot51 *t, int x) {
    int i;

    if (x) {
        for (i = 0; i < 1; i++) {
            if (!t->m_a[i]) {
                t->m_a[i] = x;
                return i;
            }
        }
    }
    return -1;
}

int func_80078F90(Slot51 *t, int x) {
    int i;

    if (x) {
        for (i = 0; i < 1; i++) {
            if (t->m_a[i] == x) {
                return i;
            }
        }
    }
    return -1;
}

int func_80078FC4(Ref51 *r, int b) {
    int v = 0;

    if (!b && r->m_00) {
        v = r->m_00->m_04;
    }
    return v;
}

Val51 *func_80078FE8(Ref51 *r, int b) {
    Val51 *v = 0;

    if (!b) {
        v = r->m_00;
    }
    return v;
}

void func_80078FFC(void) {
    if (--D_800CBC90 == 0) {
        func_80078F34(&D_800CBC94, 2);
    }
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_51", func_80079038);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_51", func_80079078);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_51", func_800790DC);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_51", func_80079124);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_51", func_80079174);

INCLUDE_RODATA("asm/langimg/nonmatchings/chunk_51", D_800B77E0);
