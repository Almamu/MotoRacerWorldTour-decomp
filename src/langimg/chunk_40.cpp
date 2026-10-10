#include "common.h"
#include "langimg/cobjet.h"

// A frame's texture coordinates (chunk_39's Anim39)
struct Anim40 {
    u8 m_00[0x10];
};

// What a player's m_0C points to
struct Model40 {
    u8 m_00[0x114];
    int m_114[1]; // the parts' numbers
};

// A player (0x568 bytes)
struct Ply40 {
    u8 m_00[0xC];
    Model40 *m_0C;
    u8 m_10[0x20];
    u8 *m_30;
    u8 m_34[0x15C];
    u8 m_190[0x174];
    u8 m_304[0x14];
    Cobjet *m_318;
    u8 m_31C[4];
    u8 m_320;
    u8 m_321;
    u8 m_322;
    u8 m_323;
    u8 m_324[0x54];
    Ply40 *m_378; // the players
    u8 m_37C[0x5C];
    int m_3D8;
    u8 m_3DC[0xC];
    int m_3E8; // bits waiting
    u8 m_3EC[0x17C];
};

extern "C" {
void func_8006139C(Anim40 *a, int f);
void func_80034D60(u8 *a, u8 *b, int c, int d, Ply40 *p, u8 *e);
void func_80061484(Anim40 *a, int f, int g);
void func_800614C0(Ply40 *p, int i);
void func_80061510(Ply40 *p, Cobjet *o);
void func_80061540(Cobjet *o, int n, int *parts);
void func_800623DC(Ply40 *p);
void func_800627B8(Ply40 *p);
void func_800627C0(Ply40 *p, int b);
int func_800627D8(Ply40 *p);
int func_800627E4(Ply40 *p);
}

/* Two animations' frames set. */
void func_80061484(Anim40 *a, int f, int g) {
    func_8006139C(a, f);
    func_8006139C(a + 1, g);
}

void func_800614C0(Ply40 *p, int i) {
    func_80061510(p, p->m_378[i].m_318);
}

void func_80061510(Ply40 *p, Cobjet *o) {
    func_80061540(o, 2, p->m_378->m_0C->m_114);
}

/* An object's n parts set from a list. */
void func_80061540(Cobjet *o, int n, int *parts) {
    int i;

    if (func_800178DC(o, n)) {
        for (i = 0; i < n; i++) {
            o->m_38[i] = parts[i];
        }
        o->m_04 &= ~0x12;
    }
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_40", func_800615C4);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_40", func_800618BC);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_40", func_80062098);

void func_800623DC(Ply40 *p) {
    u8 *q;

    p->m_318 = 0;
    p->m_321 = p->m_320;
    p->m_320 = 0;
    p->m_323 = p->m_322;
    p->m_322 = 0;
    q = p->m_30;
    func_80034D60(p->m_190, q + 0x11C, *(int *)(q + 0x220), *(s8 *)(q + 0x158), p, p->m_304);
    p->m_3D8 = 0;
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_40", func_80062440);

void func_800627B8(Ply40 *p) {
    p->m_3E8 = 0;
}

void func_800627C0(Ply40 *p, int b) {
    p->m_3E8 |= 1 << b;
}

int func_800627D8(Ply40 *p) {
    return p->m_3E8 != 0;
}

/* The first bit waiting, cleared with the others; -1 if none. It tests
 * bit 0 every time round: the original's. */
int func_800627E4(Ply40 *p) {
    int r = -1;
    int i;

    if (p->m_3E8) {
        for (i = 0; i < 8; i++) {
            if (p->m_3E8 & 1) {
                r = i;
                p->m_3E8 = 0;
                break;
            }
        }
    }
    return r;
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_40", func_80062828);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_40", func_80062CF4);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_40", func_80062DB4);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_40", func_80062E40);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_40", func_80062EEC);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_40", func_80062FB4);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_40", func_800630D8);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_40", func_800631A4);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_40", func_80063250);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_40", func_80063398);
