#include "common.h"
#include "langimg/cobjet.h"

/* (docs/matching/issue-46-langimg-chunk45.md) */

extern "C" {
// An animation channel (0x1C bytes)
struct AnimChan {
    int m_00, m_04;
    int m_08, m_0C; // 0x3AE, 0x333 to start with
    int m_10;
    int m_14, m_18;
};

// An object with two flags at 0x48
struct Flagged {
    u8 m_00[0x48];
    int m_48;
    int m_4C;
};

// A list's node
struct Node45 {
    u8 m_00[8];
    Node45 *m_next; // 0x08
    u8 m_0C[0x1C];
    u8 m_28;
};

// A table of entries with a cursor
struct Table45 {
    u32 m_00;
    int m_04;
    int m_08;
    int m_items[0x100]; // 0x0C
    u32 m_40C;          // the cursor
    u32 m_410;          // the count
    u8 m_414[2];
    s8 m_416;
};

extern u8 D_800C7F2D;
extern int D_800C7F28;
extern int D_800D11D0[]; // a sound channel set
extern int D_800D6130;
void func_8001480C(int *a);
void func_80014774(int *a);
void func_800146EC(int *a);
void func_80015438(int a);
void func_80013F38(int *a, int b);

int func_8006BB48(Flagged *o);
int func_8006BB5C(Flagged *o);
int func_8006BB68(void);
AnimChan *func_8006BB70(AnimChan *c);
void func_8006BB9C(AnimChan *c, int a);
int *func_8006BFC0(Table45 *t);
int func_8006C064(Table45 *t, short s);
void func_8006C750(void);
void func_8006C77C(void);
void func_8006C7A0(void);
void func_8006CA50(void);
void func_8006CA78(u8 c);
void func_8006CD90(Vector3 *v);
void func_8006CE08(Vector3 *v, int a, int b, int c);
int func_8006CE18(Node45 *l);
void func_8006CEAC(Node45 *l);
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_45", func_8006B3B0);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_45", func_8006B500);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_45", func_8006B570);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_45", func_8006B658);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_45", func_8006B854);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_45", func_8006B914);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_45", func_8006B9B0);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_45", func_8006B9F8);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_45", func_8006BA80);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_45", func_8006BABC);

int func_8006BB48(Flagged *o) {
    return o->m_48 != -1;
}

int func_8006BB5C(Flagged *o) {
    return o->m_4C != 0;
}

int func_8006BB68(void) {
    return 1;
}

/* The channel's constructor. */
AnimChan *func_8006BB70(AnimChan *c) {
    func_8006BB9C(c, 0);
    return c;
}

void func_8006BB9C(AnimChan *c, int a) {
    c->m_00 = a;
    c->m_04 = a;
    c->m_10 = a;
    c->m_14 = 0;
    c->m_18 = 0;
    c->m_08 = 0x3AE;
    c->m_0C = 0x333;
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_45", func_8006BBC4);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_45", func_8006BD78);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_45", func_8006BDDC);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_45", func_8006BE10);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_45", func_8006BE7C);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_45", func_8006BECC);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_45", func_8006BF4C);

/* The entry at the cursor, or 0 past the end. */
int *func_8006BFC0(Table45 *t) {
    int *r = 0;

    if (t->m_40C < t->m_410) {
        r = &t->m_items[t->m_40C];
    }
    return r;
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_45", func_8006BFEC);

int func_8006C064(Table45 *t, short s) {
    if (t->m_00 >= 8000) {
        return 0;
    }
    t->m_416 = s;
    t->m_08 = 0;
    return 1;
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_45", func_8006C094);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_45", func_8006C110);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_45", func_8006C140);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_45", func_8006C330);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_45", func_8006C4A0);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_45", func_8006C5D8);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_45", func_8006C644);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_45", func_8006C694);

void func_8006C750(void) {
    func_800146EC(D_800D11D0);
    func_80015438(5);
}

void func_8006C77C(void) {
    func_8001480C(D_800D11D0);
}

void func_8006C7A0(void) {
    func_80013F38(D_800D11D0, D_800D6130);
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_45", func_8006C7CC);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_45", func_8006C82C);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_45", func_8006C85C);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_45", func_8006C8EC);

void func_8006CA50(void) {
    D_800C7F28 = 0;
    func_80014774(D_800D11D0);
}

void func_8006CA78(u8 c) {
    D_800C7F2D = c;
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_45", func_8006CA84);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_45", func_8006CB38);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_45", func_8006CB68);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_45", func_8006CC40);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_45", func_8006CD00);

void func_8006CD90(Vector3 *v) {
    v->vx = 0;
    v->vy = 0;
    v->vz = 0;
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_45", func_8006CDA0);

void func_8006CE08(Vector3 *v, int a, int b, int c) {
    v->vx = a;
    v->vy = b;
    v->vz = c;
}

int func_8006CE18(Node45 *l) {
    return l->m_next != 0;
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_45", func_8006CE24);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_45", func_8006CE68);

void func_8006CEAC(Node45 *l) {
    Node45 *p;

    for (p = l->m_next; p; p = p->m_next) {
        p->m_28 = 2;
    }
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_45", func_8006CED8);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_45", func_8006CF48);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_45", func_8006CF8C);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_45", func_8006CFD0);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_45", func_8006D0BC);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_45", func_8006D12C);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_45", func_8006D18C);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_45", func_8006D1EC);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_45", func_8006D230);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_45", func_8006D274);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_45", func_8006D2E0);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_45", func_8006D314);
