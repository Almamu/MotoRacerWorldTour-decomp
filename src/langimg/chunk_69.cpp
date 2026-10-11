#include "common.h"

struct Vec69 {
    int x;
    int y;
    int z;
};

// Eleven bytes, copied as a block
struct Name69 {
    char c[11];
};

struct Draw69 {
    u8 m_00[0x187];
    Name69 m_187;
};

// What a view's m_60 points to
struct Scr69 {
    u8 m_00[4];
    Draw69 *m_04;
    Name69 m_08;
    u8 m_13[5];
    int m_18;
    u8 m_1C[0x21B8];
    int m_21D4;
    int m_21D8;
    int m_21DC;
};

struct View69 {
    u8 m_00[0x60];
    Scr69 *m_60;
};

struct Part69 {
    int m_00;
    int m_04;
    int m_08;
    int m_0C;
    int m_10;
};

struct Pad69 {
    u8 m_00[0x3C];
    Part69 m_3C[3];
    u8 m_78[4];
    int m_7C;
};

struct Mdl69 {
    u8 m_00[0x14];
    Vec69 m_14;
};

struct Obj69b {
    u8 m_00[0x34];
    Mdl69 *m_34;
};

struct Run69 {
    u8 m_00[0x28];
    Obj69b *m_28;
    u8 m_2C[0x1C];
    int *m_48;
    int m_4C;
    int m_50;
};

// The game's object
struct Game69 {
    u8 m_00[0x170];
    int m_170;
    int m_174;
    u8 m_178[0x908];
    View69 *m_A80;
    View69 *m_A84;
    u8 m_A88[8];
    int m_A90; // the mode
    int m_A94; // flags
    Pad69 *m_A98;
};

// chunk_58's buffer
struct Buf69 {
    void *m_00;
    int m_04;
    int m_08;
};

extern int D_800BC884;
extern int D_800C94C8;
extern int D_800CC1F0[];
extern s8 D_800B8868;

extern "C" {
void func_8003B7B0(Game69 *o);
void func_8003CD30(Game69 *o);
Buf69 *func_80086E68(Buf69 *b);
void func_80086E7C(Buf69 *b, int f);
void func_80086F14(Buf69 *b, void *p, int n);
void func_80087468(Buf69 *b, int a, int c, int d, int e, int f);
void func_8009B17C(Scr69 *s, Game69 *o);
void func_8009D7BC(Scr69 *s);
void func_8009E01C(Scr69 *s, int *a, int b, int c, int d);
void func_800A67E8(int a);
void func_8009B838(Game69 *o, int f);
void func_8009B8BC(Game69 *o);
void func_8009B8F8(Game69 *o, int a, Run69 *r);
void func_8009C944(Game69 *o, int s);
void func_8009C964(Game69 *o, int s);
void func_8009C984(Game69 *o, int s);
void func_8009CC18(Game69 *o);
void func_8009CC38(Game69 *o);
void func_8009CCEC(Game69 *o);
void func_8009CD24(Game69 *o);
void func_8009CEAC(Game69 *o, int s);
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_69", func_8009B17C);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_69", func_8009B5E8);

/* The name copied to the screen's drawing, unless f. */
void func_8009B838(Game69 *o, int f) {
    View69 *v;
    Scr69 *sc;
    Draw69 *d;

    if (o->m_A90 == 1 || o->m_A90 == 4) {
        v = o->m_A84;
    } else {
        v = o->m_A80;
    }
    sc = v->m_60;
    d = sc->m_04;
    if (!f) {
        d->m_187 = sc->m_08;
    }
}

void func_8009B8BC(Game69 *o) {
    if (o->m_A80->m_60) {
        func_8009B17C(o->m_A80->m_60, o);
    }
}

static inline void VecCopyL69(Vec69 *d, Vec69 *s) {
    int x = s->x;
    int y = s->y;
    int z = s->z;

    d->x = x;
    d->y = y;
    d->z = z;
}

void func_8009B8F8(Game69 *o, int a, Run69 *r) {
    int f = (*r->m_48 << 12) / (r->m_50 - r->m_4C);
    Obj69b *t = r->m_28;
    Scr69 *sc = o->m_A80->m_60;
    Vec69 v;

    VecCopyL69(&v, &t->m_34->m_14);
    v.x = f * 3234 / 4096 - 1617;
    t->m_34->m_14.x = v.x;
    t->m_34->m_14.y = v.y;
    t->m_34->m_14.z = v.z;
    sc->m_18 = 1;
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_69", func_8009B9B4);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_69", func_8009BDB8);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_69", func_8009C3BC);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_69", func_8009C534);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_69", func_8009C694);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_69", func_8009C84C);

void func_8009C944(Game69 *o, int s) {
    Scr69 *sc = o->m_A80->m_60;

    if (s == 2) {
        sc->m_21D8 = 1;
    }
}

void func_8009C964(Game69 *o, int s) {
    Scr69 *sc = o->m_A80->m_60;

    if (s == 2) {
        sc->m_21DC = 1;
    }
}

void func_8009C984(Game69 *o, int s) {
    Scr69 *sc = o->m_A80->m_60;

    if (s == 2) {
        sc->m_21D4 = 1;
    }
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_69", func_8009C9A4);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_69", func_8009CB04);

void func_8009CC18(Game69 *o) {
    o->m_170 = 20000;
    o->m_174 = 0;
    o->m_A94 &= ~0x40;
}

void func_8009CC38(Game69 *o) {
    if (!o->m_A90) {
        int a = D_800CC1F0[0];
        char *p = new char[0x7000];
        Buf69 b;

        func_80086E68(&b);
        func_80086F14(&b, p, 0x7000);
        func_80087468(&b, a, 1, 0, D_800B8868 << 8, 0);
        if (p) {
            delete[] p;
        }
        func_80086E7C(&b, 2);
    }
    func_8003CD30(o);
}

void func_8009CCEC(Game69 *o) {
    func_8003B7B0(o);
    o->m_170 = -1;
    o->m_174 = 0;
    func_800A67E8(1);
}

void func_8009CD24(Game69 *o) {
    Scr69 *sc = o->m_A80->m_60;

    func_8009D7BC(sc);
    func_8009E01C(sc, &D_800C94C8, 0, D_800BC884, 0x15AC);
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_69", func_8009CD78);

void func_8009CEAC(Game69 *o, int s) {
    Pad69 *p = o->m_A98;
    u32 i;

    if (s == 2) {
        p->m_7C = 0;
        for (i = 0; i < 3; i++) {
            p->m_3C[i].m_00 = 0;
            p->m_3C[i].m_04 = 0;
            p->m_3C[i].m_08 = 0;
            p->m_3C[i].m_0C = -1;
            p->m_3C[i].m_10 = -1;
        }
    }
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_69", func_8009CF14);
