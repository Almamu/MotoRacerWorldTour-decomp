#include "common.h"

/* The sound entries' classes and their manager (docs/matching/issue-47-langimg-chunk46.md) */

extern "C" {
struct VtEntry46 {
    short m_delta;
    short m_index;
    void (*m_func)(void *self);
};
// A sound: its vtable at 0x0C
struct Snd46 {
    int m_00;
    int m_04; // a voice, or -1
    u8 m_08;
    u8 m_09;
    u8 m_0A[2];
    VtEntry46 *m_0C;
};
// An entry (124 bytes, chunk_47's Ent47): two sounds
struct Ent46 {
    Snd46 m_00;
    u8 m_10[0x30];
    Snd46 m_40;
    u8 m_50[0x20];
    u8 m_70;
    u8 m_71[7];
    int m_78;
};
// The manager's channels, 0x4C0 bytes each
struct Chan46 {
    u8 m_00[0x4C0];
};
struct Mgr46 {
    Chan46 m_00[1];
};

extern Mgr46 *D_800C7F28;
extern int D_800C7F90;
extern u8 D_800D11D0[];
extern u8 D_800C8428[]; // Snd46's vtable
void func_8006D1EC(Mgr46 *m);
void func_8006D230(Mgr46 *m);
void func_8006D18C(Mgr46 *m, u8 *w);
void func_8006D314(Mgr46 *m, int a);
void func_8006D388(Mgr46 *m, int a);
void func_8006D12C(Chan46 *c, int b);
void func_8006E9DC(Ent46 *e);
void func_8006E328(Snd46 *s);
void func_8006E378(Snd46 *s);
void func_80014B74(u8 *w, int v);

void func_8006D3E0(Mgr46 *m, int i, int b);
void func_8006DF68(void);
void func_8006DF90(void);
void func_8006DFB4(void);
void func_8006DFD8(int a, int b);
void func_8006E004(int a);
void func_8006E02C(int a);
Snd46 *func_8006E054(Snd46 *s);
void func_8006E088(Snd46 *s);
void func_8006E0C0(Snd46 *s);
void func_8006E0FC(Snd46 *s);
void func_8006EA48(Snd46 *s);
void func_8006F1E0(Ent46 *e);
void func_8006F270(Ent46 *e);
}

#define VCALL46(p, i) ((p)->m_0C[i].m_func((char *)(p) + (p)->m_0C[i].m_delta))

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_46", func_8006D388);

void func_8006D3E0(Mgr46 *m, int i, int b) {
    D_800C7F90 = i;
    func_8006D12C(&m->m_00[i], b);
    D_800C7F90 = -1;
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_46", func_8006D420);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_46", func_8006D4B0);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_46", func_8006D6C8);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_46", func_8006D748);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_46", func_8006D7E4);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_46", func_8006D844);

void func_8006DF68(void) {
    func_8006D18C(D_800C7F28, D_800D11D0);
}

void func_8006DF90(void) {
    func_8006D1EC(D_800C7F28);
}

void func_8006DFB4(void) {
    func_8006D230(D_800C7F28);
}

void func_8006DFD8(int a, int b) {
    func_8006D3E0(D_800C7F28, a, b);
}

void func_8006E004(int a) {
    func_8006D314(D_800C7F28, a);
}

void func_8006E02C(int a) {
    func_8006D388(D_800C7F28, a);
}

Snd46 *func_8006E054(Snd46 *s) {
    s->m_0C = (VtEntry46 *)D_800C8428;
    func_8006E088(s);
    return s;
}

void func_8006E088(Snd46 *s) {
    s->m_04 = -1;
    VCALL46(s, 2);
}

void func_8006E0C0(Snd46 *s) {
    s->m_00 = 0;
    s->m_09 = 0;
    s->m_08 = 0;
    VCALL46(s, 3);
}

void func_8006E0FC(Snd46 *s) {
    if (s->m_04 != -1) {
        func_80014B74(D_800D11D0, s->m_04);
        s->m_04 = -1;
    }
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_46", func_8006E144);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_46", func_8006E328);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_46", func_8006E378);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_46", func_8006E3C8);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_46", func_8006E474);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_46", func_8006E9DC);

void func_8006EA48(Snd46 *s) {
    func_8006E0C0(s);
    VCALL46(s, 3);
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_46", func_8006EA88);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_46", func_8006EB54);

void func_8006F1E0(Ent46 *e) {
    func_8006E9DC(e);
    func_8006E328(&e->m_40);
    e->m_70 = 1;
    e->m_78 = -1;
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_46", func_8006F21C);

void func_8006F270(Ent46 *e) {
    func_8006EA48(&e->m_00);
    func_8006E378(&e->m_40);
}
