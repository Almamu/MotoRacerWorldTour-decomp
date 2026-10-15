#include "common.h"
#include "psyq.h"

/* The memory card menus (docs/matching/issue-72-langimg-chunk71.md) */

extern "C" {
// An entry of 12 bytes
struct E71 {
    int m_00;
    char m_name[4];
    short m_08, m_0A;
};

// Five entries and one more
struct Group71 {
    int m_00;
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

// A sprite drawn in pairs of frames
struct Spr71 {
    int m_a[18]; // 0x00
    int m_c[18]; // 0x48
    int m_b[18]; // 0x90
    int m_d[18]; // 0xD8
    u8 m_120[0xC];
    int m_12C, m_130, m_134, m_138;
    int m_13C; // the frame drawn
    int m_140; // the frame to draw
};

// Something with a sprite at 0x60
struct Snd71 {
    u8 m_00[0x60];
    Spr71 *m_60;
};

// A menu
struct Menu71 {
    u8 m_00[0x150];
    int m_150;
    u8 m_154[0x24];
    int m_178;
    u8 m_17C[0x904];
    Snd71 *m_A80;
    Snd71 *m_A84;
    u8 m_A88[8];
    int m_A90;
    int m_A94; // flags
    u8 *m_A98;
    u8 *m_A9C;
    u8 m_AA0[4];
    u8 *m_AA4;
    u8 m_AA8[8];
    int m_AB0;
};

// A sound option's values
struct Opt71 {
    int m_00[2];
    int m_08;
    u8 m_0C[0xF0];
    int m_FC;  // -10 to 20
    int m_100; // 0 to 40
    u8 m_104[0x40];
    int m_144, m_148;
};

// What a menu's callbacks get
struct Ctx71 {
    int m_00;
    Menu71 *m_menu;
};

// A key's event
struct Key71 {
    int m_code; // 0xFE: pressed
};

// The sound's settings
struct Snd886C {
    u8 m_00[0x160];
    int m_160, m_164;
};

// Three blocks of five words
struct Three71 {
    u8 m_00[0x3C];
    int m_3C[3][5];
    int m_78; // the current one
};

// A name, 11 bytes (chunk_38's Name38)
struct Cell71 {
    s8 m_00[11];
};
// A track (chunk_69's)
struct Trk71 {
    u8 m_00[0x18];
    int m_18;
};
struct Lvl71 {
    int m_00; // how many tracks
    Trk71 *m_04;
};
// The cards' state
struct Card71 {
    int m_00;
    Three71 m_04;
    u8 m_80[0x94];
    int m_114;
    u8 m_118[0x3C];
    int m_154;
    u32 m_b0 : 1;
    u32 m_b1 : 1;
    u32 m_b2 : 1;
    u32 m_b3 : 1;
    u32 m_b4 : 1;
    u32 m_b5 : 26;
    u32 m_b31 : 1; // 0x158
    Cell71 m_15C[48];
    Cell71 m_36C[11][16];
    u8 m_AFC[0xAB0];
    int m_15AC;
    u8 m_15B0[0x28];
    Group71 m_15D8;
    u8 m_1624[4];
    int m_1628;
    u8 m_162C[0x70];
    int m_169C;
    int m_16A0;
    int m_16A4;
    int m_16A8;
    u8 m_16AC[0xC];
    int m_16B8;
    u8 m_16BC[0x10];
    int m_16CC;
    u8 m_16D0[4];
    int m_16D4;
    u8 m_16D8[0x58];
    int m_1730;
    u8 m_1734[8];
    int m_173C, m_1740;
};

extern int D_800C9CE0;
extern s8 D_800C9CE8;
extern s8 D_800C9CE9;
extern short D_800CBF18;
extern void *D_800D4788[];
void func_8006CB38(int id);
void func_800A0884(u8 *p);
void func_8009F5A8(void);
void func_8009EAEC(Spr71 *s);
void func_8009E360(Spr71 *s);
void *func_800A207C(char *name, void *buf);

void func_8009F258(Menu71 *m);
void func_8009F290(Menu71 *m);
void func_8009F558(int a, int b, Ev71 *c);
void func_8009F580(int a, int b, Ev71 *c);
void func_8009F690(void);
void func_8009F6C0(Menu71 *m);
void func_8009F6EC(Menu71 *m, int b);
void func_8009F734(Menu71 *m);
char *func_800A006C(char *p);
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
extern Snd886C *D_800C886C;
extern char D_800C9CD8[];
extern int D_800BC884;
void func_800792DC(Snd886C *g);
void func_8009E0AC(Spr71 *s);
void func_800A4244(void);
int func_800AFB98(int a);
int func_800A41BC(void);
void func_800A4608(int a);
void func_8003B7B0(Menu71 *m);
void func_8009E01C(Spr71 *a, char *b, int c, int d, int e);
void func_8009E0E8(Spr71 *s);
void func_800A0AE8(Three71 *t);

void func_8009F180(Menu71 *m);
void func_8009F1F8(Menu71 *m);
void func_8009F2C8(Key71 *k, int b, Ctx71 *c);
void func_8009F32C(Key71 *k, int b, Ctx71 *c);
void func_8009F390(Key71 *k, int b, Ctx71 *c);
void func_8009F3EC(Key71 *k, int b, Ctx71 *c);
void func_8009F4E4(Menu71 *m, int b);
int func_800A0078(char *d, char *s);
Group71 *func_800A0148(Group71 *g);
void func_800A0248(Group71 *g);
int func_800A0420(Group71 *g, u32 a, char *name, int d, int e);
Three71 *func_800A0C58(Three71 *t);

struct Pos71 {
    int m_00, m_04;
    int m_08[3];
};
int func_80087468(void *a, int b, int c, int d, int e, int f);
int func_8003EC90(Menu71 *m, int key, int b, void (*f)(Key71 *, int, Ctx71 *));
void func_800A164C(int *p);
int func_800A0E58(Card71 *c);
int func_800A1170(Card71 *c);
void func_800A1228(Card71 *c);
int *func_800A14B8(int a);
Pos71 *func_800A14E8(int a);
void *__builtin_vec_new(unsigned int n);
extern char *D_800C9F00;
extern char D_800C9F04[];
struct Sig71 {
    int m_00; // 0x12345670
    u8 m_04;
};
extern Sig71 *D_800BC888;
extern u8 D_800C9D40;

int func_800A0D48(Card71 *c);
void func_800A0CC4(Card71 *c);
void func_8009FCD8(Menu71 *m);
void func_8009FD60(Menu71 *m);
void func_8009FDE8(Menu71 *m);
void func_8009F450(Menu71 *m);
int func_800A0DC4(Card71 *c, int a, int b);
char *func_8009FFCC(void);
void func_8009FAB0(Menu71 *m);
struct Seven71 {
    int m_00[7];
};
extern Seven71 D_800D497C;
extern u8 D_800D489C[];
extern int D_800C9EDC, D_800C9EE0, D_800C9EE4, D_800C9EE8, D_800C9EEC, D_800C9EF0, D_800C9EF4,
    D_800C9EF8, D_800C9EFC;
extern int D_800C8D8C, D_800C6710;
extern Lvl71 *D_800C6710_ asm("D_800C6710"); // also read here as a pointer
Cell71 *func_800A09C0(Card71 *c);
extern int *D_800C9EF0_ asm("D_800C9EF0"); // also read here as a pointer
extern int D_800C8DC0, D_800D5FC8, D_800D5F6C, D_800CBF20;
extern void *D_800CB478;
extern u8 D_800CB480[], D_800D4898[], D_800CBC94[], D_800CABC0[];
void *__builtin_new(unsigned int n);
void func_8006C750(void);
void func_8001687C(void);
void *func_8006A8FC(void *p);
void func_8006A914(void *c, int n);
void func_8006A534(void *t, int n, short m);
void func_800A13C0(void *c);
void *func_80078FE8(void *r, int b);
int func_80078F90(void *t, void *x);
int func_80045168(void *a, int b, int c, int d, ...);
int func_8009FE70(void);
int func_800A5530(char *name, void **t, int n, int a, int b, int c, int d);

void func_8009FB58(Menu71 *m);
void func_8009F760(Menu71 *m, int b);
int func_800A048C(void);
// A frame counter in the low 30 bits
struct Clock71 {
    int m_t : 30;
};
extern Clock71 D_800D6124;
extern int D_800C9CE4;
extern int D_800D11D0[];
void func_8006FA30(int a, int b);
int func_8006CA84(int id, int a);
void func_80014368(int *a, int h, int b);
struct Item32 {
    u8 m_00[32];
};
struct Res71 {
    u8 m_00[0x28];
    Item32 *m_28;
    u8 m_2C[4];
    int m_30;
};
extern char D_800C9D1C[], D_800C9D28[];
Res71 *func_8003AA90(Snd71 *n, char *name);
Res71 *func_8003B3C4(Snd71 *n, Item32 *a);
void func_80019578(int a, int b, int c, int d);

void func_8009F5A8(void);
void func_8009FC00(Menu71 *m);
void func_8006F9BC(int a);
// A word stored at any address
struct U32P {
    u32 m_v;
} __attribute__((packed));

void func_800A0584(u8 *src, u8 *dst);
// A file of the pack (chunk_72's Blk72): its size at 4
struct Blk71 {
    int m_00;
    int m_04;
};
Blk71 *func_800A1EFC(void *h, char *name);
void *func_800A2234(void *h, char *name, void *buf, int *out);
int func_800B5A1C(void);
void *func_800B5730(void *p, int size);
void *malloc(int size);
void *func_800A06AC(char *name, void *buf, int *size);
}

void func_8009F180(Menu71 *m) {
    Spr71 *s = m->m_A80->m_60;

    func_800A41BC();
    func_800A4608(1);
    func_8003B7B0(m);
    func_8009E01C(s, D_800C9CD8, 0, D_800BC884, 0x15AC);
    func_8009E0E8(s);
}

#ifdef NON_MATCHING
/* The original keeps the menu in $a1 and the sound in $a0; scheduled around that (24 off) */
void func_8009F1F8(Menu71 *m) {
    Snd71 *s;

    if (m->m_A90 == 1 || m->m_A90 == 4) {
        s = m->m_A84;
    } else {
        s = m->m_A80;
    }
    m->m_A94 &= ~0x200;
    func_8009E0AC(s->m_60);
    func_800A4244();
}
#else
INCLUDE_ASM("asm/langimg/nonmatchings/chunk_71", func_8009F1F8);
#endif

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

void func_8009F2C8(Key71 *k, int b, Ctx71 *c) {
    Menu71 *m = c->m_menu;
    int code = k->m_code;
    Snd886C *g = D_800C886C;
    Opt71 *o = (Opt71 *)m->m_A98;

    if (code == 0xFE) {
        if (--o->m_FC < -10) {
            o->m_FC = -10;
        }
        g->m_160 = o->m_FC;
        func_800792DC(g);
    }
}

void func_8009F32C(Key71 *k, int b, Ctx71 *c) {
    Menu71 *m = c->m_menu;
    int code = k->m_code;
    Snd886C *g = D_800C886C;
    Opt71 *o = (Opt71 *)m->m_A98;

    if (code == 0xFE) {
        if (++o->m_FC > 20) {
            o->m_FC = 20;
        }
        g->m_160 = o->m_FC;
        func_800792DC(g);
    }
}

void func_8009F390(Key71 *k, int b, Ctx71 *c) {
    Menu71 *m = c->m_menu;
    int code = k->m_code;
    Snd886C *g = D_800C886C;
    Opt71 *o = (Opt71 *)m->m_A98;

    if (code == 0xFE) {
        if (--o->m_100 < 0) {
            o->m_100 = 0;
        }
        g->m_164 = o->m_100;
        func_800792DC(g);
    }
}

void func_8009F3EC(Key71 *k, int b, Ctx71 *c) {
    Menu71 *m = c->m_menu;
    int code = k->m_code;
    Snd886C *g = D_800C886C;
    Opt71 *o = (Opt71 *)m->m_A98;

    if (code == 0xFE) {
        if (++o->m_100 > 40) {
            o->m_100 = 40;
        }
        g->m_164 = o->m_100;
        func_800792DC(g);
    }
}

/* The sound options' keys. */
void func_8009F450(Menu71 *m) {
    func_8003EC90(m, 1, 0, func_8009F390);
    func_8003EC90(m, 2, 0, func_8009F3EC);
    func_8003EC90(m, 4, 0, func_8009F2C8);
    func_8003EC90(m, 3, 0, func_8009F32C);
    m->m_178 = 1;
    func_800AFB98(1);
    m->m_150 = 0x85;
}

void func_8009F4E4(Menu71 *m, int b) {
    Snd886C *g;
    Opt71 *o;

    m->m_150 = 0x84;
    g = D_800C886C;
    if (!b) {
        o = (Opt71 *)(m->m_AA4 + m->m_AB0 * 4 + 8);
    } else {
        o = (Opt71 *)m->m_A98;
    }
    g->m_160 = o->m_FC;
    g->m_164 = o->m_100;
    func_800792DC(g);
    func_800AFB98(2);
}

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

/* The menu's music: started, at the options' volume, or stopped. */
void func_8009F5A8(void) {
    int t = D_800D6124.m_t;

    if (D_800C9CE8) {
        if ((u32)(t - D_800C9CE4) > 100) {
            int vol = 0x3F;
            int h;

            if (!D_800C9CE9) {
                vol = D_800CBF18 * 63 / 100;
            }
            func_8006FA30(4, vol);
            h = D_800C9CE0;
            if (h == -1) {
                h = D_800C9CE0 = func_8006CA84(10, 0x7F);
            }
            func_80014368(D_800D11D0, h, 0x7F);
        }
    } else {
        func_8006CB38(D_800C9CE0);
        D_800C9CE0 = -1;
        D_800C9CE4 = t;
    }
    D_800C9CE8 = 0;
    D_800C9CE9 = 0;
}

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

#ifdef NON_MATCHING
/* The block copies' registers, and the original builds each copy's address in its own branch (49 off) */
/* Seven words saved, or restored. */
void func_8009F760(Menu71 *m, int b) {
    u8 *p = m->m_A9C;

    if (!b) {
        *(Seven71 *)(p + 0x40) = D_800D497C;
    } else {
        D_800D497C = *(Seven71 *)(p + 0x40);
    }
    func_800A0884(D_800D489C + 0xE0);
    func_8009F690();
}
#else
INCLUDE_ASM("asm/langimg/nonmatchings/chunk_71", func_8009F760);
#endif

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_71", func_8009F82C);

/* The sprite's frame drawn, if it changed. */
void func_8009FAB0(Menu71 *m) {
    Snd71 *n;
    Spr71 *s;

    if (m->m_A90 == 1 || m->m_A90 == 4) {
        n = m->m_A84;
    } else {
        n = m->m_A80;
    }
    s = n->m_60;
    if (s) {
        int i = s->m_140;

        if (i != s->m_13C) {
            func_80087468(s->m_120, s->m_a[i], 0, s->m_12C, s->m_130, s->m_b[i]);
            s->m_13C = i;
        }
    }
}

/* The sprite's frame drawn from its second half, if it changed. */
void func_8009FB58(Menu71 *m) {
    Snd71 *n;
    Spr71 *s;

    if (m->m_A90 == 1 || m->m_A90 == 4) {
        n = m->m_A84;
    } else {
        n = m->m_A80;
    }
    s = n->m_60;
    if (s) {
        int i = s->m_140;

        if (i != s->m_13C) {
            func_80087468(s->m_120, s->m_c[i], 0, s->m_12C, s->m_130, s->m_d[i]);
            s->m_13C = i;
        }
    }
}

void func_8009FC00(Menu71 *m) {
    Snd71 *n = m->m_A80;
    Opt71 *o = (Opt71 *)m->m_A98;
    Spr71 *s = n->m_60;
    Res71 *r;
    Res71 *y;
    int k;

    func_8003AA90(n, D_800C9D1C);
    s->m_13C = -1;
    if (!o->m_08) {
        k = o->m_144;
        r = func_8003AA90(n, D_800C9D1C);
    } else {
        k = o->m_148;
        r = func_8003AA90(n, D_800C9D28);
    }
    if (k) {
        y = func_8003B3C4(n, &r->m_28[k - 1]);
        func_80019578(y->m_30, 1, 0, -1);
    } else {
        y = func_8003B3C4(n, r->m_28);
        func_80019578(y->m_30, 1, 1, -1);
    }
}

void func_8009FCD8(Menu71 *m) {
    Spr71 *s = m->m_A80->m_60;

    DrawSync(0);
    func_80087468(s->m_120, s->m_c[17], 1, s->m_12C, s->m_130, s->m_d[17]);
    func_80087468(s->m_120, s->m_c[16], 1, s->m_134, s->m_138, s->m_d[16]);
}

void func_8009FD60(Menu71 *m) {
    Spr71 *s = m->m_A80->m_60;

    DrawSync(0);
    func_80087468(s->m_120, s->m_c[12], 1, s->m_12C, s->m_130, s->m_d[12]);
    func_80087468(s->m_120, s->m_c[11], 1, s->m_134, s->m_138, s->m_d[11]);
}

void func_8009FDE8(Menu71 *m) {
    Spr71 *s = m->m_A80->m_60;

    DrawSync(0);
    func_80087468(s->m_120, s->m_c[15], 1, s->m_12C, s->m_130, s->m_d[15]);
    func_80087468(s->m_120, s->m_c[14], 1, s->m_134, s->m_138, s->m_d[14]);
}

/* The game's state set up once: counters, the cards, the tracks' laps. */
#ifdef NON_MATCHING
// The calls and stores in order; the original computes D_800CBC94's address again for the second call and keeps the result in $s0 throughout, GCC keeps the address in $s0 instead, and schedules the result's copy and the stores after the calls differently (21 off; 18 with unsplit addresses, which the rest of the chunk can't take).
int func_8009FE70(void) {
    int r;

    func_8006C750();
    func_8001687C();
    D_800C8DC0 = 0;
    D_800CB478 = func_8006A8FC(__builtin_new(0xC));
    func_8006A914(D_800CB478, 0x40);
    func_8006A534(D_800CB480, 0x10, 0x400);
    r = func_800A048C();
    func_800A13C0(D_800D4898);
    if (r) {
        if (D_800C6710_->m_00 == 0x12) {
            int i;

            for (i = 0; i < 0x12; i++) {
                D_800C9EF0_[i] = D_800C6710_->m_04[i].m_18;
            }
        }
        D_800CBF20 = func_80078F90(D_800CBC94, func_80078FE8(D_800CBC94, 0));
        D_800D5FC8 = -1;
        D_800D5F6C = 0;
        r = func_80045168(D_800CABC0, 2, -1, 2, 0x11, 2, &D_800CBF20, 7) != 0;
    }
    return r;
}
#else
INCLUDE_ASM("asm/langimg/nonmatchings/chunk_71", func_8009FE70);
#endif

/* A data file's name (Data\DB_D_n.sdf), made by its first user. */
char *func_8009FFCC(void) {
    if (!D_800C9F00) {
        int v;

        D_800C9F00 = (char *)__builtin_vec_new(16);
        strncpy(D_800C9F00, D_800C9F04, 16);
        D_800C9F00[15] = 0;
        D_800C9F00[8] = 'D';
        if (D_800BC888 && D_800BC888->m_00 == 0x12345670) {
            v = D_800BC888->m_04;
        } else {
            v = D_800C9D40;
        }
        D_800C9F00[10] = v + '0';
    }
    return D_800C9F00;
}

char *func_800A006C(char *p) {
    *p = 0;
    return p;
}

/* A name of up to three characters copied. */
int func_800A0078(char *d, char *s) {
    int r = 0;

    if (s && *(s8 *)s) {
        if (strlen(s) < 4) {
            strncpy(d, s, 4);
            d[3] = 0;
            r = 1;
        }
    }
    return r;
}

E71 *func_800A00F0(E71 *e) {
    func_800A006C(e->m_name);
    func_800A0124(e);
    return e;
}

void func_800A0124(E71 *e) {
    e->m_00 = -1;
    e->m_0A = -1;
    e->m_08 = -1;
    e->m_name[0] = 0;
}

void func_800A013C(E71 *e) {
    e->m_08 = -1;
}

Group71 *func_800A0148(Group71 *g) {
    int i;
    E71 *e = g->m_e;

    for (i = 4; i != -1; i--) {
        func_800A00F0(e);
        e++;
    }
    func_800A00F0(&g->m_40);
    g->m_00 = 1;
    func_800A021C(g);
    return g;
}

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

void func_800A0248(Group71 *g) {
    int i = 5;
    E71 *e = g->m_e;

    for (; i != 0; i--) {
        func_800A013C(e);
        e++;
    }
    func_800A013C(&g->m_40);
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_71", func_800A029C);

/* The last entry set, if it's empty or the value goes the group's way. */
int func_800A0420(Group71 *g, u32 a, char *name, int d, int e) {
    int r = 0;
    u32 t = g->m_40.m_00;

    if (t == (u32)-1 || (a < t && g->m_00) || (t < a && !g->m_00)) {
        g->m_40.m_00 = a;
        g->m_40.m_0A = d;
        g->m_40.m_08 = e;
        *(int *)g->m_40.m_name = *(int *)name;
        r = 1;
    }
    return r;
}

int func_800A048C(void) {
    void *t[11];
    void **p = t;

    t[0] = &D_800C9EE0;
    t[1] = &D_800C9EE4;
    t[2] = &D_800C9EE8;
    t[3] = &D_800C9EEC;
    t[4] = &D_800C9EF0;
    t[5] = &D_800C9EF4;
    t[6] = &D_800C9EF8;
    t[7] = &D_800C9EFC;
    t[8] = &D_800C8D8C;
    t[9] = &D_800C6710;
    t[10] = &D_800C9EDC;
    func_8009FFCC();
    return func_800A5530(D_800C9F00, p, 11, 0, 0, 0, 0) != 0;
}

/* n bytes copied backwards. */
void func_800A0558(u8 *d, u8 *s, int n) {
    d += n;
    s += n;
    while (n) {
        *--d = *--s;
        n--;
    }
}

#ifdef NON_MATCHING
// The word loop's decrement: the original schedules it after the unaligned store, ours before it (3 off)
/* LZ data unpacked: 8 flags to a byte, a literal byte or a 12-bit distance
 * and a 4-bit length (+3). */
void func_800A0584(u8 *src, u8 *dst) {
    int bits = 0;
    int flags = 0;
    int dist;

    do {
        flags >>= 1;
        if (!bits) {
            bits = 8;
            flags = *src++;
        }
        bits--;
        if (flags & 1) {
            *dst++ = *src++;
            dist = 1;
        } else {
            int w = src[0] | (src[1] << 8);
            u8 *from;
            int k;

            dist = w & 0xFFF;
            src += 2;
            if (!dist) {
                return;
            }
            w = (w >> 12) + 3;
            from = dst - dist;
            k = (u32)from & 3;
            if (k) {
                k = 4 - k;
                w -= k;
                do {
                    *dst++ = *from++;
                } while (--k);
            }
            k = w;
            if (dist >= 5) {
                k &= 3;
                w >>= 2;
                while (w) {
                    ((U32P *)dst)->m_v = *(u32 *)from;
                    from += 4;
                    dst += 4;
                    w--;
                }
            }
            while (k) {
                *dst++ = *from++;
                k--;
            }
        }
    } while (dist);
}
#else
INCLUDE_ASM("asm/langimg/nonmatchings/chunk_71", func_800A0584);
#endif

void func_800A0680(void) {
    D_800D4788[0] = func_800A207C("\\MR3.DAT;1", 0);
}

void *func_800A06AC(char *name, void *buf, int *size) {
    u8 *res;
    int len = func_800A1EFC(D_800D4788[0], name)->m_04;
    int own = 0;

    if (!buf) {
        int avail;

        own = 1;
        avail = func_800B5A1C() - 16;
        res = (u8 *)malloc(avail);
        buf = (void *)((u32)(res + avail - len - 0x800) & ~3);
    }
    func_800A2234(D_800D4788[0], name, buf, 0);
    if (*(int *)buf == 0x53535A4C) {
        if (own) {
            len = ((int *)buf)[1];
            func_800A0584((u8 *)buf + 8, res);
        } else {
            int n = ((int *)buf)[1];
            int k = len - 0x1400;
            u8 *d = (u8 *)buf + ((n - k) & ~3);

            func_800A0558(d, (u8 *)buf, len);
            func_800A0584(d + 8, (u8 *)buf);
            len = n;
        }
    } else if (own) {
        memcpy(res, buf, len);
    }
    if (own) {
        res = (u8 *)func_800B5730(res, len);
    }
    if (size) {
        *size = len;
    }
    return res;
}

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

/* The sound's settings applied: a mode, then six volumes in percent. */
void func_800A0884(u8 *p) {
    int *v = (int *)p;

    func_8006F9BC(v[0]);
    func_8006FA30(5, v[1] * 63 / 100);
    func_8006FA30(0, v[2] * 63 / 100);
    func_8006FA30(2, v[4] * 63 / 100);
    func_8006FA30(3, v[5] * 63 / 100);
    func_8006FA30(1, v[3] * 63 / 100);
    func_8006FA30(6, v[6] * 63 / 100);
}

/* The name in the current cell, or 0 (when racing, or past the 11th row). */
#ifdef NON_MATCHING
// The tests and both lookups as the original; the card is kept in $a3 where the original has $a2, so the copy of the local {2, 1, 0} uses $t0-$t2 rather than $a3-$t1 (35 off).
Cell71 *func_800A09C0(Card71 *c) {
    Cell71 *r;
    int k;

    if (c->m_16A4 == 1) {
        goto none;
    }
    k = c->m_16A0;
    if (k >= 11) {
        return 0;
    }
    if (!c->m_154 || c->m_16A8 == 4) {
    none:
        return 0;
    }
    if (c->m_114) {
        r = &c->m_36C[k][c->m_16B8 + c->m_169C * 8];
    } else {
        int t[3] = {2, 1, 0};

        r = &c->m_15C[c->m_16B8 + c->m_169C * 8 + t[D_800C6710_->m_04[k].m_18 - 1] * 16];
    }
    return r;
}
#else
INCLUDE_ASM("asm/langimg/nonmatchings/chunk_71", func_800A09C0);
#endif

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_71", func_800A0AE8);

Three71 *func_800A0C58(Three71 *t) {
    int i;
    int (*p)[5] = t->m_3C;

    for (i = 2; i != -1; i--) {
        func_800A080C(*p);
        p++;
    }
    func_800A0AE8(t);
    return t;
}

int func_800A0CBC(void) {
    return 1;
}

void func_800A0CC4(Card71 *c) {
    c->m_b2 = 0;
    c->m_b1 = 1;
    c->m_b0 = 0;
    c->m_b3 = 0;
    c->m_b5 = 0;
    c->m_b4 = 0;
    func_800A0AE8(&c->m_04);
    func_800A021C(&c->m_15D8);
    c->m_00 = 0x18;
    c->m_16CC = 0;
    c->m_16D4 = 0;
    c->m_15AC = 0;
    c->m_173C = 0;
    c->m_1740 = 0;
}

int func_800A0D48(Card71 *c) {
    int r = 0;

    func_800A164C(&c->m_1628);
    if (c->m_16A8 == 8 || c->m_1730 != -1) {
        r = func_800A0E58(c);
    } else if (c->m_16A8 == 4) {
        r = func_800A1170(c);
    }
    return r;
}

/* A directory chosen, if it has that file. */
int func_800A0DC4(Card71 *c, int a, int b) {
    int r = 0;
    Three71 *t = &c->m_04;
    Pos71 *p;

    func_800A14B8(a);
    p = func_800A14E8(a);
    if (p->m_08[b] >= 0) {
        t->m_78 = a;
        p->m_00 = b;
        p->m_04 = 0;
        func_800A1228(c);
        r = 1;
    }
    return r;
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_71", func_800A0E58);
