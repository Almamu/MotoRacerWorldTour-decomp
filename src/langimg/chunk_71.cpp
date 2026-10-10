#include "common.h"

/* The memory card menus (docs/matching/issue-72-langimg-chunk71.md) */

extern "C" {
// An entry of 12 bytes
struct E71 {
    int m_00;
    u8 m_04;
    u8 m_05[3];
    short m_08, m_0A;
};

// Five entries and one more
struct Group71 {
    u8 m_00[4];
    E71 m_e[5]; // 0x04
    E71 m_40;
};

// Eight bytes
struct Small71 {
    u8 m_00, m_01, m_02, m_03;
    int m_04;
};

// Something with a table at 0x48
struct Ev71 {
    u8 m_00[0x48];
    u16 *m_48;
};

// Something with a handle at 0x60
struct Snd71 {
    u8 m_00[0x60];
    int m_60;
};

// A menu
struct Menu71 {
    u8 m_00[0xA80];
    Snd71 *m_A80;
    u8 m_A84[0x14];
    u8 *m_A98;
    u8 *m_A9C;
    u8 m_AA0[4];
    u8 *m_AA4;
    u8 m_AA8[8];
    int m_AB0;
};

extern int D_800C9CE0;
extern u8 D_800C9CE8;
extern u8 D_800C9CE9;
extern u16 D_800CBF18;
extern void *D_800D4788[];
void func_8006CB38(int id);
void func_800A0884(u8 *p);
void func_8009F5A8(void);
void func_8009EAEC(int a);
void func_8009E360(int a);
void *func_800A207C(char *name, void *buf);

void func_8009F258(Menu71 *m);
void func_8009F290(Menu71 *m);
void func_8009F558(int a, int b, Ev71 *c);
void func_8009F580(int a, int b, Ev71 *c);
void func_8009F690(void);
void func_8009F6C0(Menu71 *m);
void func_8009F6EC(Menu71 *m, int b);
void func_8009F734(Menu71 *m);
u8 *func_800A006C(u8 *p);
E71 *func_800A00F0(E71 *e);
void func_800A0124(E71 *e);
void func_800A013C(E71 *e);
void func_800A01BC(Group71 *g);
void func_800A01FC(Group71 *g);
void func_800A021C(Group71 *g);
void func_800A0558(u8 *d, u8 *s, int n);
void func_800A0680(void);
int *func_800A080C(int *p);
void func_800A0834(int *p);
Small71 *func_800A084C(Small71 *p);
void func_800A0874(Small71 *p);
int func_800A0CBC(void);
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_71", func_8009F180);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_71", func_8009F1F8);

void func_8009F258(Menu71 *m) {
    if (m->m_A80->m_60) {
        func_8009EAEC(m->m_A80->m_60);
    }
}

void func_8009F290(Menu71 *m) {
    if (m->m_A80->m_60) {
        func_8009E360(m->m_A80->m_60);
    }
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_71", func_8009F2C8);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_71", func_8009F32C);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_71", func_8009F390);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_71", func_8009F3EC);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_71", func_8009F450);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_71", func_8009F4E4);

void func_8009F558(int a, int b, Ev71 *c) {
    D_800C9CE9 = 1;
    func_8009F580(a, b, c);
}

void func_8009F580(int a, int b, Ev71 *c) {
    D_800CBF18 = *c->m_48;
    if (b == 3) {
        D_800C9CE8 = 1;
    }
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_71", func_8009F5A8);

void func_8009F690(void) {
    D_800C9CE9 = 0;
    D_800C9CE8 = 0;
    func_8006CB38(D_800C9CE0);
    D_800C9CE0 = -1;
}

void func_8009F6C0(Menu71 *m) {
    func_800A0884(m->m_A98 + 0xE0);
    func_8009F5A8();
}

void func_8009F6EC(Menu71 *m, int b) {
    u8 *p;

    if (!b) {
        p = m->m_AA4 + m->m_AB0 * 4 + 8;
    } else {
        p = m->m_A98;
    }
    func_800A0884(p + 0xE0);
    func_8009F690();
}

void func_8009F734(Menu71 *m) {
    func_800A0884(m->m_A9C + 0x40);
    func_8009F5A8();
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_71", func_8009F760);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_71", func_8009F82C);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_71", func_8009FAB0);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_71", func_8009FB58);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_71", func_8009FC00);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_71", func_8009FCD8);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_71", func_8009FD60);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_71", func_8009FDE8);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_71", func_8009FE70);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_71", func_8009FFCC);

u8 *func_800A006C(u8 *p) {
    *p = 0;
    return p;
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_71", func_800A0078);

E71 *func_800A00F0(E71 *e) {
    func_800A006C(&e->m_04);
    func_800A0124(e);
    return e;
}

void func_800A0124(E71 *e) {
    e->m_00 = -1;
    e->m_0A = -1;
    e->m_08 = -1;
    e->m_04 = 0;
}

void func_800A013C(E71 *e) {
    e->m_08 = -1;
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_71", func_800A0148);

void func_800A01BC(Group71 *g) {
    int i;

    for (i = 4; i >= 0; i--) {
        func_800A0124(&g->m_e[i]);
    }
}

void func_800A01FC(Group71 *g) {
    func_800A0124(&g->m_40);
}

void func_800A021C(Group71 *g) {
    func_800A01BC(g);
    func_800A01FC(g);
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_71", func_800A0248);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_71", func_800A029C);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_71", func_800A0420);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_71", func_800A048C);

/* n bytes copied backwards. */
void func_800A0558(u8 *d, u8 *s, int n) {
    d += n;
    s += n;
    while (n) {
        *--d = *--s;
        n--;
    }
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_71", func_800A0584);

void func_800A0680(void) {
    D_800D4788[0] = func_800A207C("\\MR3.DAT;1", 0);
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_71", func_800A06AC);

int *func_800A080C(int *p) {
    func_800A0834(p);
    return p;
}

void func_800A0834(int *p) {
    p[0] = 0;
    p[1] = 0;
    p[2] = 0;
    p[3] = 0;
    p[4] = 0;
}

Small71 *func_800A084C(Small71 *p) {
    func_800A0874(p);
    return p;
}

void func_800A0874(Small71 *p) {
    p->m_01 = 0;
    p->m_04 = 0;
    p->m_02 = 0;
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_71", func_800A0884);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_71", func_800A09C0);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_71", func_800A0AE8);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_71", func_800A0C58);

int func_800A0CBC(void) {
    return 1;
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_71", func_800A0CC4);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_71", func_800A0D48);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_71", func_800A0DC4);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_71", func_800A0E58);
