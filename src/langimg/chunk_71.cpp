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

// Something with a handle at 0x60
struct Snd71 {
    u8 m_00[0x60];
    int m_60;
};

// A menu
struct Menu71 {
    u8 m_00[0x150];
    int m_150;
    u8 m_154[0x92C];
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
    u8 m_00[0xFC];
    int m_FC;  // -10 to 20
    int m_100; // 0 to 40
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
void func_8009E0AC(int a);
void func_800A4244(void);
void func_800AFB98(int a);
void func_800A41BC(void);
void func_800A4608(int a);
void func_8003B7B0(Menu71 *m);
void func_8009E01C(int a, char *b, int c, int d, int e);
void func_8009E0E8(int a);
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
}

#ifdef NON_MATCHING
/* The menu's sound loaded into $v0, not $v1 (2 off) */
void func_8009F180(Menu71 *m) {
    int s = m->m_A80->m_60;

    func_800A41BC();
    func_800A4608(1);
    func_8003B7B0(m);
    func_8009E01C(s, D_800C9CD8, 0, D_800BC884, 0x15AC);
    func_8009E0E8(s);
}
#else
INCLUDE_ASM("asm/langimg/nonmatchings/chunk_71", func_8009F180);
#endif

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

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_71", func_8009F450);

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

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_71", func_800A0CC4);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_71", func_800A0D48);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_71", func_800A0DC4);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_71", func_800A0E58);
