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
    u8 m_13;
    short m_14;
    u8 m_16[2];
    int m_18;
    u8 m_1C[0x120];
    int m_13C;
    int m_140;
    u8 m_144[0x2090];
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
    u8 m_80[0x60];
    u8 m_E0[0x4C];
    int m_12C;
    u8 m_130[4];
    int m_134;
    u8 m_138[0x18];
    int m_150;
};

struct Rec69 {
    int m_00;
    u8 m_04[8];
    int m_0C;
    short *m_10;
    u8 m_14[0x30];
    int m_44;
    int m_48;
};

struct Hdr69 {
    u8 m_00[8];
    Rec69 m_08;
};

// What func_8009E0A0 returns
struct Save69 {
    u8 m_00[4];
    u8 m_04[0xFC];
    int m_100;
    int m_104;
};

// chunk_52's display object
struct Gfx69 {
    u8 m_00[0x160];
    int m_160;
    int m_164;
};

struct Trk69 {
    u8 m_00[0x18];
    int m_18;
};

struct Lvl69 {
    u8 m_00[4];
    Trk69 *m_04;
};

struct Tab69 {
    int m_00[3];
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
    Hdr69 *m_A9C;
};

// chunk_58's buffer
struct Buf69 {
    void *m_00;
    int m_04;
    int m_08;
};

extern void *D_800BC884;
extern Tab69 D_800C933C[];
extern Lvl69 *D_800C6710;
extern short *D_800D5F34;
extern int D_800D5F38;
extern Gfx69 *D_800C886C;
extern int D_800D4898;
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
void func_8009E01C(Scr69 *s, int *a, int b, void *c, int d);
void func_8003B600(Game69 *o, u8 *p, int n, int a, int b, int c);
void func_8004ADB0(void);
void func_8004AFBC(void);
void func_8006CA84(int a, int b);
void func_800792DC(Gfx69 *g);
void func_8009C3BC(View69 *v, int a);
void func_8009D804(Scr69 *s);
Save69 *func_8009E0A0(Scr69 *s);
void func_800A0884(void *p);
Name69 *func_800A09C0(int *p);
void func_800A6788(int a, int b);
void func_8009C84C(Game69 *o, int f);
void func_8009CB04(Game69 *o);
void func_8009CD78(Game69 *o);
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

void func_8009C84C(Game69 *o, int f) {
    View69 *v;
    Scr69 *sc;
    Rec69 *q;

    if (o->m_A90 == 1 || o->m_A90 == 4) {
        v = o->m_A84;
    } else {
        v = o->m_A80;
    }
    q = &o->m_A9C->m_08;
    sc = v->m_60;
    func_8009C3BC(v, 0);
    if (!f) {
        Name69 *d;

        sc->m_04->m_187.c[9] = q->m_44;
        sc->m_04->m_187.c[10] = q->m_48;
        d = func_800A09C0(&D_800D4898);
        *d = sc->m_04->m_187;
        sc->m_04 = 0;
        func_800A6788(11, 1);
    }
}

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

#ifdef NON_MATCHING
// The record's address: the original keeps m_A9C + 8 in one saved register; GCC keeps both
void func_8009CB04(Game69 *o) {
    Rec69 *q = &o->m_A9C->m_08;
    Scr69 *sc = o->m_A80->m_60;
    Pad69 *p = o->m_A98;

    func_8003B7B0(o);
    if (p->m_150 != 5) {
        func_8004ADB0();
    }
    func_8004AFBC();
    if (sc) {
        Tab69 t = D_800C933C[0];

        q->m_00 = sc->m_140 = D_800D5F38;
        sc->m_13C = -1;
        q->m_0C = t.m_00[D_800C6710->m_04[D_800D5F38].m_18 - 1];
        q->m_00 = sc->m_140 = D_800D5F38;
        q->m_10 = D_800D5F34 + q->m_0C;
    }
}
#else
INCLUDE_ASM("asm/langimg/nonmatchings/chunk_69", func_8009CB04);
#endif

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

#ifdef NON_MATCHING
// The flags' register at the end: $v0 and $v1 swap
void func_8009CD78(Game69 *o) {
    View69 *v;
    Scr69 *sc;
    Pad69 *p;

    if (o->m_A90 == 1 || o->m_A90 == 4) {
        v = o->m_A84;
    } else {
        v = o->m_A80;
    }
    sc = v->m_60;
    p = o->m_A98;
    if (sc->m_14) {
        Gfx69 *g;

        memcpy(D_800BC884, func_8009E0A0(sc), 0x15AC);
        func_8003B600(o, func_8009E0A0(sc)->m_04, 0x154, -1, 1, 1);
        g = D_800C886C;
        g->m_160 = func_8009E0A0(sc)->m_100;
        g->m_164 = func_8009E0A0(sc)->m_104;
        func_800792DC(g);
        func_800A0884(p->m_E0);
    }
    func_8009D804(sc);
    p->m_134 = 0;
    p->m_12C = 0;
    func_800A6788(11, 1);
    func_8003CD30(o);
    o->m_A94 |= 0x40;
    func_8006CA84(12, 0x7F);
}
#else
INCLUDE_ASM("asm/langimg/nonmatchings/chunk_69", func_8009CD78);
#endif

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
