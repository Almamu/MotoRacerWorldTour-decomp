#include "common.h"

// A 0x74-byte object, built and torn down in pairs
struct Snd28 {
    u8 m_00[0x74];
};

// The game object
// The game's vtable: the entry at 0xD0
struct VtG28 {
    u8 m_00[0xD0];
    short m_D0;
    short m_D2;
    void (*m_D4)(void *o);
};
// The tables freed with the game (at its 0xC70)
struct Tabs28 {
    u8 m_00[0x28];
    void *m_28;
    void *m_2C;
    void *m_30;
};
struct Game28 {
    u8 m_00[0x18];
    int m_18;
    u8 m_1C[0x4C];
    VtG28 *m_68;
    u8 m_6C[4];
    int m_70;
    int m_74;
    int m_78;
    int m_7C;
    int m_80;
    u8 m_84[0x18];
    u8 m_9C[0x274];
    void *m_310[2];
    u8 m_318[0x60];
    void *m_378;
    u8 m_37C[0xC0];
    void *m_43C[2];
    void *m_444[3];
    u8 m_450[0x820];
    Tabs28 *m_C70;
};

// A save: its settings, a 0x20-byte block and a 0x14-byte block
struct Blk28 {
    s8 m_00;
    s8 m_01;
    u8 m_02[2];
    int m[9];
};
struct Blk28b {
    int m[5];
};
struct Save28 {
    u8 m_00[4];
    Blk28 m_04;
    Blk28b m_2C;
    u8 m_40[0xA0];
    int m_E0;
    int m_E4;
    u8 m_E8[4];
    int m_EC;
    u8 m_F0[0x2C];
    int m_11C;
    int m_120;
    int m_124;
    u8 m_128[4];
    int m_12C;
};

struct Buf28 {
    void *m_00;
};

// A vtable's entry at 0x68
struct Vt28 {
    u8 m_00[0x68];
    short m_68;
    short m_6A;
    int (*m_6C)(void *o); // returns a value (in $v0)
};

struct Disp28 {
    u8 m_00[0x68];
    Vt28 *m_68;
};

extern int D_800CB1BC; // how many times each was constructed
extern int D_800CAFAC;
extern int D_800CAFA8;
extern int D_800CAE90;
extern int D_800CAFB8; // two Snd28: declared small, so its address is an la
extern int D_800CB02C; // the second
extern int D_800CB0A0;
extern int D_800CBC94;
extern char *D_800C9E94; // names, by number
extern int D_800C5E2C;
extern int D_800C5E2C_w[] asm("D_800C5E2C"); // the same word, read the other way
extern char D_800C5E3C[];
extern char D_800C5F2C[];
extern char D_800C5F48[];
extern char D_800C5F4C[];
extern char D_800D4798;
extern char D_800CB1C0;
extern Disp28 *D_800C886C;
extern int D_800C873C;
extern int D_800CA7D8;
extern int D_800C4938;
extern int D_800C8C68;
extern int D_800CBE90;
extern int D_800CBE94;
extern int D_800D5F30;
extern int D_800D5F34;
extern int D_800D5F38;
extern int D_800D5F3C;
extern int D_800D5F40; // the state
extern int D_800D5F44;
extern int D_800D5F4C;
extern int D_800D5F50;
extern int D_800D5F58;
extern int D_800D5E48; // a Blk28, declared small
extern int D_800D5F70; // a Blk28b, declared small
extern int D_800D48B8;
extern int D_800D48BC;
extern int D_800D48C0;

extern "C" {
int sprintf(char *buf, const char *fmt, ...);
void free(void *p);
int VSync(int mode);
void func_80044F34(Game28 *g);
void func_80050CA4(void *p);
int func_8004ADB0(void);
int func_8004AFBC(void);
void func_8004B4B0(void);
void func_8004BA04(int a);
void func_8006B018(void *p, int f);
void func_8006CA50(void);
void func_8006FC70(void *p);
void func_8006FCAC(void *p, int f);
void func_80069ACC(void *p);
void *func_80078FC4(void *a, int b);
void func_80079648(void *a, int b, int c);
void func_8008A06C(Snd28 *s);
void func_8008A0C0(Snd28 *s, int f);
void func_8008A1D0(Snd28 *s);
void func_800963BC(void);
void func_800A67E8(int a);
void func_8004970C(Game28 *g);
void func_800497AC(Game28 *g);
void func_800544A0(Game28 *g);
void func_8001D99C(void *p);
void func_8006FD40(void *p);
void func_80044E94(Game28 *g);
void func_80044ED8(Game28 *g);
void func_800498E4(Game28 *g);
int func_8004AB7C(Save28 *s);
void func_8004AF0C(int k, int f);
void func_800499B8(Game28 *g);
char *func_800499DC(int i);
void func_80049A24(void);
void func_80049AE8(void);
char *func_80049B9C(int i, int x, int f);
int func_8004AACC(Buf28 *b);
int func_8004AB0C(void);
void func_8004AEDC(void);
void func_8004B480(void);
}

void func_8004970C(Game28 *g) {
    int i;

    func_80079648(func_80078FC4(&D_800CBC94, g->m_18), 0, 0);
    VSync(0);
    func_80069ACC(g->m_9C);
    VSync(0);
    for (i = 1; i >= 0; i--) {
        if (g->m_310[i]) {
            func_8006B018(g->m_310[i], 3);
            g->m_310[i] = 0;
        }
    }
    func_80044F34(g);
}

/* The game ended: its race and sounds released, its tables freed, the
 * virtual function at 0xD0, then the globals it had saved put back. */
void func_800497AC(Game28 *g) {
    func_800544A0(g);
    func_8001D99C(&D_800CA7D8);
    func_8006FD40(&D_800CAE90);
    func_8006FD40(&D_800CB0A0);
    if (g->m_C70->m_30) {
        delete[] (u8 *)g->m_C70->m_30;
        g->m_C70->m_30 = 0;
    }
    if (g->m_C70->m_2C) {
        delete[] (u8 *)g->m_C70->m_2C;
        g->m_C70->m_2C = 0;
    }
    if (g->m_C70->m_28) {
        delete[] (u8 *)g->m_C70->m_28;
        g->m_C70->m_28 = 0;
    }
    g->m_68->m_D4((u8 *)g + g->m_68->m_D0);
    func_80044E94(g);
    D_800C873C = g->m_70;
    D_800C4938 = g->m_74;
    D_800C8C68 = g->m_78;
    D_800CBE90 = g->m_7C;
    D_800CBE94 = g->m_80;
}

void func_800498E4(Game28 *g) {
    int i;

    for (i = 1; i >= 0; i--) {
        if (g->m_43C[i]) {
            operator delete(g->m_43C[i]);
            g->m_43C[i] = 0;
        }
    }
    for (i = 2; i >= 0; i--) {
        if (g->m_444[i]) {
            operator delete(g->m_444[i]);
            g->m_444[i] = 0;
        }
    }
    D_800C873C = g->m_70;
    D_800C4938 = g->m_74;
    D_800C8C68 = g->m_78;
    D_800CBE90 = g->m_7C;
    D_800CBE94 = g->m_80;
    func_80044ED8(g);
}

void func_800499B8(Game28 *g) {
    func_80050CA4(g->m_378);
}

char *func_800499DC(int i) {
    sprintf(&D_800D4798, D_800C5E3C, *(char **)((u8 *)&D_800C9E94 + (i << 2)), D_800C5E2C);
    return &D_800D4798;
}

/* The static objects destroyed, the last time. */
void func_80049A24(void) {
    if (--D_800CAFA8 == 0) {
        Snd28 *b = (Snd28 *)&D_800CAFB8;

        if (b) {
            Snd28 *p = (Snd28 *)&D_800CB0A0;

            while (p != b) {
                p--;
                func_8008A0C0(p, 2);
            }
        }
    }
    if (--D_800CAFAC == 0) {
        func_8006FCAC(&D_800CB0A0, 2);
    }
    if (--D_800CB1BC == 0) {
        func_8006FCAC(&D_800CAE90, 2);
    }
}

/* The static objects constructed, the first time. */
void func_80049AE8(void) {
    if (++D_800CB1BC == 1) {
        func_8006FC70(&D_800CAE90);
    }
    if (++D_800CAFAC == 1) {
        func_8006FC70(&D_800CB0A0);
    }
    if (++D_800CAFA8 == 1) {
        Snd28 *p = (Snd28 *)&D_800CAFB8;
        int i;

        for (i = 1; i != -1; i--) {
            func_8008A06C(p);
            p++;
        }
    }
}

#ifdef NON_MATCHING
// Registers and the load order of the arguments; D_800C5E2C read without $gp here
char *func_80049B9C(int i, int x, int f) {
    sprintf(&D_800CB1C0, D_800C5F2C, *(char **)((u8 *)&D_800C9E94 + (i << 2)), D_800C5E2C_w[0],
            f == 1 ? D_800C5F48 : D_800C5F4C, 0x73);
    return &D_800CB1C0;
}
#else
INCLUDE_ASM("asm/langimg/nonmatchings/chunk_28", func_80049B9C);
#endif

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_28", func_80049C14);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_28", func_8004A774);

int func_8004AACC(Buf28 *b) {
    func_800A67E8(0);
    free(b->m_00);
    func_8006CA50();
    return 1;
}

int func_8004AB0C(void) {
    Disp28 *d;

    func_8008A1D0((Snd28 *)&D_800CAFB8);
    func_8008A1D0((Snd28 *)&D_800CB02C);
    func_8004BA04(0);
    func_800963BC();
    d = D_800C886C;
    d->m_68->m_6C((u8 *)d + d->m_68->m_68);
    return 1;
}

/* A save's settings copied out. */
int func_8004AB7C(Save28 *s) {
    int r = 0;

    if (s) {
        D_800D5F44 = s->m_12C;
        D_800D5F38 = s->m_E0;
        D_800D5F34 = s->m_11C;
        D_800D5F40 = s->m_E4;
        D_800D5F3C = s->m_EC;
        r = 1;
        D_800D5F30 = s->m_120;
        D_800D5F4C = s->m_124;
        D_800D5F50 = s->m_04.m_00;
        D_800D5F58 = s->m_04.m_01;
        *(Blk28 *)&D_800D5E48 = s->m_04;
        *(Blk28b *)&D_800D5F70 = s->m_2C;
    }
    return r;
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_28", func_8004AC78);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_28", func_8004ADB0);

void func_8004AEDC(void) {
    if (func_8004ADB0()) {
        func_8004B480();
    }
}

/* The state from a key. */
void func_8004AF0C(int k, int f) {
    switch (k) {
    case 0:
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
    case 6:
    case 7:
    case 8:
    case 9:
    case 10:
        D_800D5F40 = 7;
        break;
    case 11:
    case 12:
        if (f) {
            D_800D48BC = k;
        }
        D_800D5F40 = 2;
        break;
    case 13:
        D_800D5F40 = 0;
        break;
    case 14:
    case 15:
        if (f) {
            D_800D48C0 = k;
        }
        D_800D5F40 = 1;
        break;
    case 16:
    case 17:
        if (f) {
            D_800D48B8 = k;
        }
        D_800D5F40 = 3;
        break;
    }
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_28", func_8004AFBC);

void func_8004B480(void) {
    if (func_8004AFBC()) {
        func_8004B4B0();
    }
}
