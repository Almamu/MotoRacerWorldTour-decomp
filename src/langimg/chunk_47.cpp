#include "common.h"

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
    u8 m_00[8];
    u8 m_08[0x58];
    Node47 m_60; // the list's head
};
// The 124-byte entries at D_800CB5E0
struct Ent47 {
    u8 m_00[0x7C];
};

extern short D_800C7F18[];
extern Ent47 D_800CB5E0[];
extern u8 D_800D11D0[];
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
    func_800145A8(D_800D11D0);
    func_8006DF90();
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_47", func_8006F7D4);

void func_8006F824(int i) {
    func_8006F1E0(&D_800CB5E0[i]);
}

void func_8006F858(int i) {
    func_8006F270(&D_800CB5E0[i]);
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_47", func_8006F88C);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_47", func_8006F968);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_47", func_8006F9BC);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_47", func_8006FA30);

short func_8006FADC(int i) {
    i <<= 1;
    return *(short *)((u8 *)D_800C7F18 + i);
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_47", func_8006FAF8);

void func_8006FB3C(void) {
    if (--D_800CB5D8 == 0) {
        func_8001480C(D_800D11D0);
    }
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_47", func_8006FB74);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_47", func_8006FC70);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_47", func_8006FCAC);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_47", func_8006FCF8);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_47", func_8006FD40);

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

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_47", func_8006FF0C);

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

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_47", func_80070CCC);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_47", func_80070D54);

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
