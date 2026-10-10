#include "common.h"
#include "mulshift.h"

/* Lists, a table of entries, and their counts (docs/matching/issue-48-langimg-chunk47.md) */

extern "C" {
// A 20-byte element of a list's array
struct Elem47 {
    u8 m_00[0x14];
};
struct List47 {
    int m_00;
    int m_04;
    int m_08; // the count
    Elem47 *m_0C;
};
// A singly linked node and its key
struct Node47 {
    Node47 *m_00;
    int m_04;
};
struct Obj47 {
    int m_00;
    int m_04;
    u8 m_08[0x58]; // a sound
    Node47 m_60;   // the list's head
};
// The 124-byte entries at D_800CB5E0
struct Ent47 {
    u8 m_00[0x7C];
};

// A position and an angle (12 bits)
struct Ang47 {
    int m_00;
    int m_04;
    u16 m_08;
};
struct Pos47 {
    int m_00;
    int m_04;
    int m_08;
};
struct SinCos47 {
    short m_00;
    short m_02;
};
struct Cam47 {
    u8 m_00[0x3C];
};
// What D_800D11D0 holds, as far as it's used here
struct World47 {
    u8 m_00[0x1C0C];
    Cam47 m_1C0C[3];
    u8 m_1CC0[0x10];
    Cam47 *m_1CD0;
};
extern SinCos47 D_800BF3A0[];
extern short D_800C7F18[];
extern int D_800CB5E0; // the five entries (built with la)
#define ENTS47 ((Ent47 *)&D_800CB5E0)
extern World47 D_800D11D0;
extern int D_800CB5D8;
int func_80096900(void *p);
void func_80096918(void *p, int a);
void func_8006F7D4(void);
void func_800145A8(void *p);
void func_8006DF90(void);
void func_8001480C(void *p);
void func_8006F1E0(Ent47 *e);
void func_8006F270(Ent47 *e);
void func_8006FE64(Obj47 *o, int a);
int func_80096884(void *c);
void func_8009682C(void *c);
void func_8009674C(void *c, int a, int b, int d, int e, int f);
void func_800966DC(void *c);
void func_8006FA30(int a, int b);
void func_8006DFB4(void);
void func_80013450(Cam47 *c, int a, int b, int d, int e);
void func_80015730(void);
void func_80015764(void);
void func_800121C0(int a);
void __builtin_delete(void *p);

void func_8006F7D4(void);
void func_8006F968(int i, int a, int b, int d, int e);
void func_8006F9BC(int mode);
short func_8006FAF8(int a, int b);
Obj47 *func_8006FC70(Obj47 *o);
void func_8006FCAC(Obj47 *o, int flags);
void func_8006FCF8(Obj47 *o);
void func_8006FD40(Obj47 *o);
void func_8006FF0C(Obj47 *o);
int func_80070CCC(Ang47 *a, Pos47 *p);
void func_80070D54(Ang47 *a, int *out);

void func_8006F7A0(void);
void func_8006F824(int i);
void func_8006F858(int i);
short func_8006FADC(int i);
void func_8006FB3C(void);
int func_8006FD78(Obj47 *o);
int func_8006FD98(int *q);
void func_8006FE5C(int *p);
void func_8006FF44(Obj47 *o);
Elem47 *func_80070D98(List47 *l, int i);
Elem47 *func_80070DB0(List47 *l);
Elem47 *func_80070DD0(List47 *l);
int func_80070DF4(Obj47 *o, int key, Node47 *n);
int func_80070E20(Obj47 *o, int key);
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_47", func_8006F29C);

void func_8006F7A0(void) {
    func_8006F7D4();
    func_800145A8(&D_800D11D0);
    func_8006DF90();
}

void func_8006F7D4(void) {
    u32 i;

    for (i = 0; i < 5; i++) {
        func_8006F270(ENTS47 + i);
    }
    func_8006DFB4();
}

void func_8006F824(int i) {
    func_8006F1E0(&ENTS47[i]);
}

void func_8006F858(int i) {
    func_8006F270(&ENTS47[i]);
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_47", func_8006F88C);

void func_8006F968(int i, int a, int b, int d, int e) {
    World47 *w = &D_800D11D0;
    Cam47 *c = &w->m_1C0C[i];

    func_80013450(c, a, b, d, e);
    w->m_1CD0 = c;
}

void func_8006F9BC(int mode) {
    switch (mode) {
    case 0:
        func_80015730();
        func_800121C0(0);
        break;
    case 1:
        func_80015764();
        func_800121C0(1);
        break;
    case 2:
        func_80015764();
        func_800121C0(1);
        break;
    }
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_47", func_8006FA30);

short func_8006FADC(int i) {
    i <<= 1;
    return *(short *)((u8 *)D_800C7F18 + i);
}

short func_8006FAF8(int a, int b) {
    func_8006FA30(a, func_8006FADC(a) + b);
    return func_8006FADC(a);
}

void func_8006FB3C(void) {
    if (--D_800CB5D8 == 0) {
        func_8001480C(&D_800D11D0);
    }
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_47", func_8006FB74);

Obj47 *func_8006FC70(Obj47 *o) {
    func_800966DC(o->m_08);
    func_8006FE64(o, 1);
    o->m_00 = 0;
    return o;
}

void func_8006FCAC(Obj47 *o, int flags) {
    func_8006FD40(o);
    func_8009682C(o->m_08);
    if (flags & 1) {
        __builtin_delete(o);
    }
}

void func_8006FCF8(Obj47 *o) {
    void *c = o->m_08;

    if (!func_80096884(c)) {
        func_8009674C(c, 0x2800, 0, 0, 0, 0);
    }
}

void func_8006FD40(Obj47 *o) {
    void *c = o->m_08;

    if (func_80096884(c)) {
        func_8009682C(c);
    }
}

int func_8006FD78(Obj47 *o) {
    return func_80096900(o->m_08) < 0x1C;
}

int func_8006FD98(int *q) {
    return q[1] < q[0] - 1;
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_47", func_8006FDAC);

void func_8006FE5C(int *p) {
    *p = 0;
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_47", func_8006FE64);

void func_8006FF0C(Obj47 *o) {
    func_8006FE64(o, 1);
    o->m_00 = 0;
    func_80096918(o->m_08, 2);
}

void func_8006FF44(Obj47 *o) {
    func_8006FE64(o, 0);
    func_80096918(o->m_08, 1);
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_47", func_8006FF78);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_47", func_80070140);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_47", func_80070314);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_47", func_8007057C);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_47", func_80070A40);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_47", func_80070B2C);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_47", func_80070C10);

#ifdef NON_MATCHING
// The original computes the entry's address twice (t + i and i + t); ours once
/* How far p is ahead of a, along a's angle (4.12). */
int func_80070CCC(Ang47 *a, Pos47 *p) {
    SinCos47 *t = D_800BF3A0;
    int dx = p->m_00 - a->m_00;
    int dz = p->m_08 - a->m_04;
    int s = t[a->m_08 & 0xFFF].m_02;
    int c = t[a->m_08 & 0xFFF].m_00;

    return MULSHIFT(dx, s, 12) + MULSHIFT(dz, c, 12);
}
#else
INCLUDE_ASM("asm/langimg/nonmatchings/chunk_47", func_80070CCC);
#endif

/* The angle's sine and cosine, and 0 between. */
void func_80070D54(Ang47 *a, int *out) {
    out[0] = D_800BF3A0[a->m_08 & 0xFFF].m_02;
    out[1] = 0;
    out[2] = D_800BF3A0[a->m_08 & 0xFFF].m_00;
}

Elem47 *func_80070D98(List47 *l, int i) {
    return &l->m_0C[i];
}

Elem47 *func_80070DB0(List47 *l) {
    return func_80070D98(l, 0);
}

Elem47 *func_80070DD0(List47 *l) {
    return func_80070D98(l, l->m_08 - 1);
}

/* Whether key is in the list from n. */
/* Whether key is in the list from n. */
int func_80070DF4(Obj47 *o, int key, Node47 *n) {
    int found = 0;

next:
    if (n) {
        found = n->m_04 == key;
        n = n->m_00;
        if (!found) {
            goto next;
        }
    }
    return found;
}

int func_80070E20(Obj47 *o, int key) {
    return func_80070DF4(o, key, &o->m_60);
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_47", func_80070E40);
