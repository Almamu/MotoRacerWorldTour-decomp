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

// A record (0x198 bytes)
struct Draw69 {
    u8 m_00[0x170];
    int m_170;
    int m_174;
    u8 m_178[4];
    Name69 m_17C; // the name before
    Name69 m_187; // the name
    u8 m_192[2];
    int *m_194;
};

// An item with flags at 4 (chunk_23's NamedEntry)
struct Flag69 {
    u8 m_00[4];
    int m_04;
};
// An object holding an item at 0x28
struct Hold69 {
    u8 m_00[0x28];
    Flag69 *m_28;
};
// An item with a short at 8
struct Sh69 {
    u8 m_00[8];
    short m_08;
};
struct Lay69 {
    u8 m_00[8];
    Sh69 *m_08;
    u8 m_0C[8];
    Sh69 *m_14;
};
// What a view's m_60 points to
// A word with a 4-bit field at bit 16
struct Bits69 {
    unsigned m_lo : 16;
    unsigned m_16 : 4;
};

struct Scr69 {
    u8 m_00[4];
    Draw69 *m_04;
    Name69 m_08;
    u8 m_13;
    short m_14;
    u8 m_16[2];
    int m_18;
    u8 m_1C[0x14];
    struct Text69 *m_30;
    u8 m_34[0x1C];
    struct Text69 *m_50;
    u8 m_54[8];
    struct Run69 *m_5C[8];
    u8 m_7C[0x14];
    struct Text69 *m_90;
    u8 m_94[4];
    struct Bits69 *m_98;
    u8 m_9C[8];
    Flag69 *m_A4;
    u8 m_A8[0x94];
    int m_13C;
    int m_140;
    u8 m_144[0x207C];
    Hold69 *m_21C0;
    Hold69 *m_21C4;
    Flag69 *m_21C8;
    Flag69 *m_21CC;
    short m_21D0;
    u8 m_21D2[2];
    int m_21D4;
    int m_21D8;
    int m_21DC;
    int m_21E0;
};

struct View69 {
    char *m_00; // its name
    u8 m_04[0x30];
    int m_34;
    u8 m_38[0x14];
    Lay69 *m_4C;
    u8 m_50[0x10];
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
    int m_80[18];
    int m_C8, m_CC;
    u8 m_D0[0x10];
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

// A list of 24-byte entries, and a position in one
struct Ent69 {
    u8 m_00[0x10];
    int m_10;
    u8 m_14[4];
};
struct List69 {
    Ent69 *m_00;
};
struct Pos69 {
    int m_00;
    int m_04;
};
struct Text69 {
    u8 m_00[0xC];
    char *m_0C;
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
// The game's flash (chunk_45's)
struct Flash69 {
    u8 m_00[0x34];
    int m_34, m_38, m_3C, m_40; // colours
    u8 m_44[0x10];
    int m_54, m_58; // how long, since when
    u8 m_5C[0x3C];
};
struct Game69 {
    u8 m_00[0xD8];
    Flash69 m_D8;
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
extern int D_800D5F34_ asm("D_800D5F34"); // also read here as a number
extern int D_800D5F50;
extern Tab69 D_800C9330;
extern int D_800D5F38;
extern Gfx69 *D_800C886C;
extern int D_800D4898;
extern char D_800C9328[];
extern char D_800C9348[];
extern char D_800C9354[];
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
int func_8006CA84(int id, int a); // returns a handle (chunk_71)
void func_800792DC(Gfx69 *g);
void func_8009C3BC(View69 *v, int a);
void *func_8003AB24(void *s, int g, int a, int b, int c, int d, int e);
void func_8009D804(Scr69 *s);
Save69 *func_8009E0A0(Scr69 *s);
void func_800A0884(void *p);
Name69 *func_800A09C0(int *p);
void func_800A6788(int a, int b);
void func_8009C84C(Game69 *o, int f);
int func_800A60AC(const char *a, const char *b);
void func_8009BDB8(Game69 *o);
void func_8009C694(Game69 *o);
void func_8003E5B0(Game69 *o);
List69 *func_800A14CC(void);
Pos69 *func_800A1504(void);
Text69 *func_80039CE4(View69 *v, char *name);
int sprintf(char *buf, const char *fmt, ...);
void func_8009C534(Game69 *o);
void func_8009C9A4(Game69 *o);
void func_8009CB04(Game69 *o);
void func_8009CD78(Game69 *o);
void func_800A67E8(int a);
void func_8009B838(Game69 *o, int f);
void func_8009B8BC(Game69 *o);
void func_8009B8F8(Game69 *o, int a, Run69 *r);
void func_8009B5E8(Game69 *o);
void func_8009C944(Game69 *o, int s);
void func_8009C964(Game69 *o, int s);
// A script's item: its code at 8
struct Key69 {
    u8 m_00[8];
    u16 m_08;
};
// A script's context: the game at 4
struct Ctx69 {
    u8 m_00[4];
    Game69 *m_04;
};
struct Who69 {
    u8 m_00[0xBC];
    int m_BC;
};
extern int D_800C9364; // the cheats' list (declared small: its address is one la)
extern int D_800C94C4;
extern int D_800D5FD4;
int func_800A68BC(int a, char *s, int b, int c);
void func_8009CF14(Key69 *it, Who69 *w, Ctx69 *c);
void func_8009C984(Game69 *o, int s);
void func_8009CC18(Game69 *o);
void func_8009CC38(Game69 *o);
void func_8009CCEC(Game69 *o);
void func_8009CD24(Game69 *o);
void func_8009CEAC(Game69 *o, int s);
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_69", func_8009B17C);

#ifdef NON_MATCHING
// Registers only: in the loop the table's value and the name's byte come out in other temporaries ($a2/$v1 where the original has $v1/$a2 and $a3/$t0), 10 off.
void func_8009B5E8(Game69 *o) {
    Scr69 *s = o->m_A80->m_60;
    Draw69 *d = s->m_04;
    int k = 0;
    int i;

    if (d->m_174 == 5) {
        s->m_30->m_0C[0] = 0;
        s->m_50->m_0C[0] = 0;
        s->m_90->m_0C[0] = 0;
        s->m_98->m_16 = 0;
        s->m_A4->m_04 &= ~2;
    } else {
        s->m_98->m_16 = 1;
        s->m_A4->m_04 |= 2;
    }
    for (i = 0; i < 6; i++) {
        s->m_5C[k]->m_50 = d->m_194[i] - 1;
        *s->m_5C[k]->m_48 = (u8)d->m_187.c[i];
        func_8009B8F8(o, 3, s->m_5C[k]);
        k++;
    }
    s->m_5C[k]->m_50 = d->m_194[6] - 1;
    *s->m_5C[k]->m_48 = (u8)d->m_187.c[6];
    func_8009B8F8(o, 3, s->m_5C[k]);
    k++;
    s->m_5C[k]->m_50 = d->m_194[7] - 1;
    *s->m_5C[k]->m_48 = (u8)d->m_187.c[7];
    func_8009B8F8(o, 3, s->m_5C[k]);
    s->m_08 = d->m_187;
    s->m_18 = 1;
}
#else
INCLUDE_ASM("asm/langimg/nonmatchings/chunk_69", func_8009B5E8);
#endif

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

/* The view's four items shown (flag 2) or hidden, and its layout's two
 * values set to match. */
void func_8009C3BC(View69 *v, int on) {
    Scr69 *s = v->m_60;

    if (on) {
        s->m_21C0->m_28->m_04 |= 2;
        s->m_21C4->m_28->m_04 |= 2;
        s->m_21C8->m_04 |= 2;
        s->m_21CC->m_04 |= 2;
        v->m_4C->m_14->m_08 = 0;
        v->m_4C->m_08->m_08 = 2;
        func_8003AB24(v, 0, 3, 0, 1, -1, 0);
    } else {
        s->m_21C0->m_28->m_04 &= ~2;
        s->m_21C4->m_28->m_04 &= ~2;
        s->m_21C8->m_04 &= ~2;
        s->m_21CC->m_04 &= ~2;
        v->m_4C->m_14->m_08 = s->m_21D0;
        v->m_4C->m_08->m_08 = 0;
    }
}

void func_8009C534(Game69 *o) {
    View69 *v = o->m_A80;
    Scr69 *sc = v->m_60;

    if (func_800A60AC(v->m_00, D_800C9328)) {
        return;
    }
    if (sc->m_21E0) {
        if (sc->m_21D8) {
            Scr69 *s2 = v->m_60;
            Rec69 *q = &o->m_A9C->m_08;

            s2->m_04->m_187 = s2->m_04->m_17C;
            q->m_44 = (u8)s2->m_04->m_187.c[9];
            q->m_48 = (u8)s2->m_04->m_187.c[10];
            func_8009BDB8(o);
            func_8009C3BC(v, 0);
            s2->m_21E0 = 0;
        } else if (sc->m_21DC) {
            func_8009C3BC(v, 0);
            sc->m_21E0 = 0;
        }
        func_8003E5B0(o);
    } else if (sc->m_21D4) {
        func_8009C3BC(v, 1);
        sc->m_21E0 = 1;
        func_8003E5B0(o);
    }
    sc->m_21D4 = 0;
    sc->m_21D8 = 0;
    sc->m_21DC = 0;
}

/* The view's record picked by the mode, the track's laps and the
 * player, its name the saved one; then the view's items hidden. */
void func_8009C694(Game69 *o) {
    View69 *v = o->m_A80;
    Rec69 *q = &o->m_A9C->m_08;
    Scr69 *s = v->m_60;
    Tab69 t = D_800C9330;

    if (!s->m_04) {
        Draw69 *d = *(Draw69 **)s->m_00;
        int k = t.m_00[D_800C6710->m_04[D_800D5F38].m_18 - 1];

        *(int *)&s->m_14 = k;
        d += D_800D5F50 + D_800D5F34_ * 8 + k * 16;
        s->m_04 = d;
        d->m_187 = *func_800A09C0(&D_800D4898);
        q->m_44 = (u8)s->m_04->m_187.c[9];
        q->m_48 = (u8)s->m_04->m_187.c[10];
        func_800A6788(3, 1);
        d->m_170 = 1;
        *(int *)&s->m_21D0 = v->m_4C->m_14->m_08;
    }
    s->m_21D4 = 0;
    s->m_21D8 = 0;
    s->m_21DC = 0;
    s->m_21E0 = 0;
    func_8009C3BC(v, 0);
    func_8009BDB8(o);
}

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

#ifdef NON_MATCHING
// The record's address, as func_8009CB04: GCC keeps m_A9C and m_A9C + 8
void func_8009C9A4(Game69 *o) {
    Rec69 *q = &o->m_A9C->m_08;
    View69 *v = o->m_A80;
    Scr69 *sc = v->m_60;
    Pad69 *p = o->m_A98;

    func_8003B7B0(o);
    if (p->m_150 != 5) {
        func_8004ADB0();
    }
    func_8004AFBC();
    if (sc) {
        Tab69 t = D_800C933C[0];
        List69 *l;
        Pos69 *ps;
        Ent69 *e;

        q->m_00 = sc->m_140 = D_800D5F38;
        sc->m_13C = -1;
        q->m_0C = t.m_00[D_800C6710->m_04[D_800D5F38].m_18 - 1];
        l = func_800A14CC();
        ps = func_800A1504();
        e = l->m_00 + ps->m_00;
        sprintf(func_80039CE4(v, D_800C9348)->m_0C, D_800C9354, ps->m_04 + 1, e->m_10);
        q->m_10 = D_800D5F34 + q->m_0C;
    }
}
#else
INCLUDE_ASM("asm/langimg/nonmatchings/chunk_69", func_8009C9A4);
#endif

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

/* A script's cheat: its code looked up in D_800C9364's list, then the
 * matching effect (or a debug flag toggled), and a flash. */
void func_8009CF14(Key69 *it, Who69 *w, Ctx69 *c) {
    Game69 *o = c->m_04;
    View69 *v;
    Pad69 *p;
    int k;

    if (o->m_A90 == 1 || o->m_A90 == 4) {
        v = o->m_A84;
    } else {
        v = o->m_A80;
    }
    p = o->m_A98;
    k = func_800A68BC(it->m_08, (char *)&D_800C9364, D_800C94C4, -1);
    if (k != -1) {
        switch (k) {
        case 5: {
            int i;

            for (i = 0; i < 18; i++) {
                p->m_80[i] = 1;
            }
            break;
        }
        case 6:
            p->m_C8 = 1;
            p->m_CC = 1;
            break;
        case 8: {
            u32 i;

            for (i = 0; i < 3; i++) {
                p->m_3C[i].m_00 = 0;
                p->m_3C[i].m_04 = 0;
                p->m_3C[i].m_08 = 0;
                p->m_3C[i].m_0C = 0;
                p->m_3C[i].m_10 = 0;
            }
        }
        case 7:
            p->m_7C = 1;
            break;
        case 9:
            o->m_A94 |= 4;
            w->m_BC = 1;
            break;
        default:
            D_800D5FD4 ^= 1 << k;
            break;
        }
    }
    if (v->m_34 && k != -1) {
        int lo = 0xDFDFDF;
        int hi = 0xFFFFFF;
        Flash69 *f = &o->m_D8;

        o->m_D8.m_38 = hi;
        o->m_D8.m_3C = hi;
        o->m_D8.m_34 = lo;
        o->m_D8.m_40 = lo;
        f->m_54 = 500;
        f->m_58 = 0;
        func_8006CA84(6, 127);
    }
}
