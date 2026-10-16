#include "common.h"
#include "langimg/ui.h"

/* A menu page's object and its callbacks (docs/matching/issue-71-langimg-chunk70.md) */

extern "C" {
void *memset(void *d, int c, int n);

struct Lbl70 {
    u8 m_00[8];
    short m_08;
};
struct Flag70 {
    u8 m_00[4];
    int m_04;
    u8 m_08[0x4C];
    int m_54; // a colour
};
// A choice's two halfwords
struct Pair70 {
    u16 m_00;
    u16 m_02;
};
// A button: a nibble of state at bit 16, its flags' object at 0x28
struct Bits70 {
    u32 m_lo : 16;
    u32 m_state : 4;
    u32 m_mode : 2;
    u32 m_hi : 10;
};
struct Btn70 {
    union {
        int m_00;
        Bits70 m_bits;
    };
    u8 m_04[0x24];
    Flag70 *m_28;
    u8 m_2C[0xC];
    int m_38;
};
// What func_8009E0A0 returns: a save's data
struct Save70 {
    int m_00;
    u8 m_04[0xFC];
    int m_100;
    int m_104;
};
struct VtEntry70 {
    short m_delta;
    short m_index;
    void (*m_func)(void *self, int a);
};
struct Game70 {
    u8 m_00[0x68];
    VtEntry70 *m_68;
    u8 m_6C[0xF4];
    int m_160;
    int m_164;
};
struct Item70 {
    u8 m_00[0xA];
    short m_0A;
};
struct Rect70 {
    short x, y, w, h;
};
struct Dst70 {
    u8 m_00[8];
    int m_08; // the selected entry
    u8 m_0C[8];
    int m_14[5];
    int m_28[10][2];
    u8 m_78[4];
    Rect70 m_7C;
    u8 m_84[0x4C];
    int m_D0;
    int m_D4;
    u8 m_D8[8];
    u8 m_E0[0x54];
    int m_134;
};
struct Sel70 {
    u8 m_00[8];
    int m_08;
    int m_0C;
    int m_10;
};
struct Src70 {
    u8 m_00[8];
    Sel70 m_08;
};
// The page object again, as func_8009E72C and func_8009E954 see it
struct Num70 {
    u8 m_00[0x28];
    int *m_28;
};
struct Dig70 {
    u8 m_00[0x28];
    u8 *m_28;
};
struct Txt70 {
    u8 m_00[0xC];
    char *m_0C;
};
struct Cell70 {
    u8 m_00[0x38];
    short *m_38;
};
struct Img70 {
    u8 m_00[0x18];
    Rect70 *m_18;
};
struct Pic70 {
    u8 m_00[0x20];
    Img70 *m_20;
    u8 m_24[0x58];
    Rect70 m_7C;
};
struct Page70 {
    int m_00;
    int m_04;
    int m_08;
    Num70 *m_0C;
    Num70 *m_10;
    Dig70 *m_14[6];
    int m_2C;
    Pic70 *m_30;
    Cell70 *m_34[8];
    Cell70 *m_54[8];
    Lbl70 *m_74;
    Txt70 *m_78[4];
    Pair70 *m_88;
    Pair70 *m_8C;
};
// The table made by func_8009D2E0 and func_8009D350
struct Tab70 {
    void *m_00;
    int m_04;
};
// A name and its value
struct Entry70 {
    char *m_00;
    int m_04;
};
struct Obj70 {
    int m_00;
    int m_04;
    int m_08;
    int m_0C;
    int m_10;
    short m_14;
    short m_16;
    Lbl70 *m_18;
    u8 m_1C[8];
    Flag70 *m_24;
    Btn70 *m_28;
    Btn70 *m_2C;
    int *m_30;
    u8 *m_34;
    int m_38;
    void *m_3C;
    int m_40;
    int m_44;
    u8 m_48[4];
    int *m_4C;
    Pair70 *m_50;
    int m_54;
    struct Hold70 *m_58;
    Lbl70 *m_5C;
    u8 m_60[0xF0];
    int m_150;
};
struct Hold70 {
    char *m_00; // a name
    u8 m_04[0x5C];
    Obj70 *m_60;
};
struct Sub70 {
    u8 m_00[8];
    int m_08;
};
struct Box70 {
    u8 m_00[8];
    Sub70 m_08;
};
struct Menu70 {
    u8 m_00[0x150];
    int m_150;
    u8 m_154[0x92C];
    Hold70 *m_A80;
    Hold70 *m_A84;
    u8 m_A88[8];
    int m_A90;
    int m_A94;
    Dst70 *m_A98;
    Src70 *m_A9C;
    u8 m_AA0[4];
    Box70 *m_AA4;
};

void __builtin_delete(void *p);
void __builtin_vec_delete(void *p);
void func_8003EC90(Menu70 *m, int key, int b, void (*f)());
void func_8009CF14();
void func_800A6788(int a, int b);
void func_8003E5B0(int a);
void func_800A4244(void);
int func_800A41BC(void);
void func_800A4608(int a);
void func_8009E0E8(Obj70 *o);
void func_8009E360(Obj70 *o);
int func_8009E72C(Menu70 *m, Hold70 *h);
void func_8009D9CC(Obj70 *o);
void func_8009E360(Obj70 *o);
extern int D_800D5F0C;
extern Tab70 *D_800C935C;
extern Tab70 *D_800C9360;
extern int D_800D5FD4;
extern int D_800C89E8;
extern int D_800C89D0;
extern char D_800C94DC[];
extern char D_800C9BFC[];
extern void *D_800BC884;
extern int D_800C9C04;
extern char D_800C9750[], D_800C98F4[], D_800C9A6C[];
extern Entry70 D_800CBEA0[15];
extern int D_800CBE98;
extern int D_800C9C08, D_800C9C0C, D_800C9CEC, D_800C9BF8, D_800C9C18, D_800C8DCC, D_800C92C4;
extern char D_800C9B6C[], D_800C9B74[], D_800C9B7C[], D_800C9B84[], D_800C9B8C[];
extern char D_800C9B94[], D_800C9BA4[], D_800C9BB0[], D_800C9BB8[], D_800C9BC0[];
extern char D_800C9BC8[], D_800C9BD0[], D_800C9BDC[], D_800C9BE8[], D_800C9BF0[];
void func_8009D410(void);
extern char D_800C9B30[], D_800C9B38[], D_800C9B58[], D_800C9B64[];
void *__builtin_new(int n);
void *__builtin_vec_new(int n);
int func_80081318(int a, int b);
void func_80080F30(int a, char *b, int c, int d);
int func_800A4284(int a);
void func_8009E3C0(Obj70 *o, int x, int y, int w);
int func_8009D830(Obj70 *o);
int func_800A4614(int a, int *p);
int func_800A44F8(int a);
int func_800A42EC(int a, void *b, u8 *c, int d);
int func_800A6100(const char *a, const char *b, int n);
int func_80037C80(int a);
extern char D_800C9C10[];
void func_80037D58(int a, int y);
void func_8009E954(Menu70 *m);
struct Hold70 *func_8003CC78(Menu70 *m, struct Hold70 *h, int c);
void *func_8009E01C(Obj70 *o, void *a, int b, void *c, int n);
void func_8009E24C(Obj70 *o);
void func_8009E1A0(Obj70 *o);
void func_8009D1F8(void);
void func_8009D2E0(void);
void func_8009D350(void);
void func_8009DDA8(Menu70 *m);
void func_8009DF90(Menu70 *m);

void func_8009D25C(Menu70 *m);
void func_8009D288(void);
void func_8009D2C8(Obj70 *o);
void func_8009D2D4(Obj70 *o);
void func_8009D3B8(void);
void func_8009D3E4(void);
void func_8009D7A0(Obj70 *o, int i);
void func_8009D7BC(Obj70 *o);
void func_8009D804(Obj70 *o);
void func_8009DF20(Menu70 *m);
void func_8009DF58(Menu70 *m);
Save70 *func_8009E0A0(Obj70 *o);
void func_8009E0AC(Obj70 *o);
void func_8009E164(Obj70 *o);
void func_8009E2E0(Obj70 *o);
void func_8009E2FC(Obj70 *o);
void func_8009E318(Obj70 *o, int i);
void func_8009EAEC(Obj70 *o);
int func_800A5DA4(const char *fmt, ...); // printf
int func_800A4384(int a, void *b, int c, u8 *d, int e);
int func_800A44B4(int a);
int func_800A442C(int a, void *b);
int func_800A444C(int a);
void func_800A45B4(int a);
void func_8003CC9C(int m, int a);
extern char D_800C9C1C[], D_800C9C2C[], D_800C9C3C[], D_800C9C48[], D_800C9C54[], D_800C9C60[];
extern char D_800C9C70[], D_800C9C84[], D_800C9C90[], D_800C9CA4[], D_800C9CB4[], D_800C9CC8[];
void func_8009E724(void);
int func_800A60AC(const char *a, const char *b);
Btn70 *func_8003A86C(Hold70 *h, char *name);
Item70 *func_8003B038(Hold70 *h, int a, int b);
int func_800AE9CC(void);
void func_800394D8(Item70 *x, Menu70 *m);
void func_8003B600(Menu70 *m, void *p, int n, int a, int b, int c);
void func_800792DC(Game70 *g);
void func_800A0884(void *p);
extern Game70 *D_800C886C;
extern char D_800C94D0[];
extern char D_800C94D8[];
void func_8009D0E4(Menu70 *m);
void func_8009DE0C(Menu70 *m);
void func_8009E930(Menu70 *m);
void func_8009EAD0(Menu70 *m, int a);
}

void func_8009D0E4(Menu70 *m) {
    Hold70 *h = m->m_A80;
    Btn70 *b;
    Item70 *x;
    int r;

    if (func_800A60AC(h->m_00, D_800C94D0)) {
        return;
    }
    b = func_8003A86C(h, D_800C94D8);
    x = func_8003B038(h, 1, 0);
    r = func_800AE9CC();
    if (r != 2) {
        b->m_bits.m_state = 0;
        b->m_bits.m_mode = 1;
        if (x->m_0A == 2) {
            func_800394D8(x, m);
        }
        b->m_28->m_54 = b->m_38;
    } else {
        b->m_bits.m_state = 1;
        b->m_bits.m_mode = 0;
        if (x->m_0A != 2) {
            b->m_28->m_54 = 0x7F7F7F;
        }
    }
}

void func_8009D1F8(void) {
    if (D_800D5FD4 & 2) {
        char *s = D_800C94DC;
        int h = func_80081318(D_800C89E8, 1);

        D_800C89D0 = 0x210;
        func_80080F30(h, s, 0x100, 0x100);
    }
}

void func_8009D25C(Menu70 *m) {
    func_8003EC90(m, 0x15, 0, func_8009CF14);
}

void func_8009D288(void) {
    int k;

    if (D_800D5F0C == 1 || D_800D5F0C == 4) {
        k = 0x13;
    } else {
        k = 0x12;
    }
    func_800A6788(k, 0);
}

void func_8009D2C8(Obj70 *o) {
    o->m_150 = 0x85;
}

void func_8009D2D4(Obj70 *o) {
    o->m_150 = 0x84;
}

void func_8009D2E0(void) {
    Tab70 *t = (Tab70 *)__builtin_new(0x20);

    t[0].m_00 = D_800C9750;
    t[0].m_04 = 0x2C;
    t[1].m_00 = D_800C98F4;
    t[1].m_04 = 8;
    t[2].m_00 = D_800C9A6C;
    t[2].m_04 = 0x17;
    t[3].m_00 = D_800CBEA0;
    t[3].m_04 = 0xF;
    D_800C935C = t;
}

void func_8009D350(void) {
    Tab70 *t = (Tab70 *)__builtin_new(0x20);

    t[0].m_00 = D_800C9B30;
    t[0].m_04 = 1;
    t[1].m_00 = D_800C9B38;
    t[1].m_04 = 2;
    t[2].m_00 = D_800C9B58;
    t[2].m_04 = 1;
    t[3].m_00 = D_800C9B64;
    t[3].m_04 = 1;
    D_800C9360 = t;
}

void func_8009D3B8(void) {
    if (D_800C935C) {
        __builtin_delete(D_800C935C);
        D_800C935C = 0;
    }
}

void func_8009D3E4(void) {
    if (D_800C9360) {
        __builtin_delete(D_800C9360);
        D_800C9360 = 0;
    }
}

/* The settings' names and values, made by their first user. */
// One entry: cleared, set, copied in
#define ENTRY70(i, name, v) \
    memset(&e, 0, sizeof(e)); \
    e.m_00 = name; \
    e.m_04 = v; \
    D_800CBEA0[i] = e

#ifdef NON_MATCHING
// Scheduling: the original puts each memset's size in the call's delay slot (19 off)
void func_8009D410(void) {
    Entry70 e;

    if (++D_800CBE98 == 1) {
        ENTRY70(0, D_800C9B6C, D_800C9C08);
        ENTRY70(1, D_800C9B74, D_800C9C0C);
        ENTRY70(2, D_800C9B7C, D_800C9CEC);
        ENTRY70(3, D_800C9B84, D_800C9BF8);
        ENTRY70(4, D_800C9B8C, D_800C9C18);
        ENTRY70(5, D_800C9B94, D_800C8DCC);
        ENTRY70(6, D_800C9BA4, D_800C92C4);
        ENTRY70(7, D_800C9BB0, D_800C92C4);
        ENTRY70(8, D_800C9BB8, D_800C92C4);
        ENTRY70(9, D_800C9BC0, D_800C9BF8);
        ENTRY70(10, D_800C9BC8, D_800C9CEC);
        ENTRY70(11, D_800C9BD0, D_800C9CEC);
        ENTRY70(12, D_800C9BDC, D_800C9CEC);
        ENTRY70(13, D_800C9BE8, D_800C9CEC);
        ENTRY70(14, D_800C9BF0, D_800C9CEC);
    }
}
#else
INCLUDE_ASM("asm/langimg/nonmatchings/chunk_70", func_8009D410);
#endif

void func_8009D7A0(Obj70 *o, int i) {
    o->m_5C->m_08 = o->m_50[i].m_00;
}

void func_8009D7BC(Obj70 *o) {
    func_800A41BC();
    func_800A4608(1);
    func_8009E0E8(o);
    func_8009D7A0(o, 0);
    o->m_54 = 1;
}

void func_8009D804(Obj70 *o) {
    func_800A4244();
    func_8009E0AC(o);
}

/* The demo's playback, each frame. */
int func_8009D830(Obj70 *o) {
    if (o->m_54) {
        o->m_08 = func_800A4614(0, &o->m_0C);
        switch (o->m_00) {
        case 0:
            break;
        case 1:
            if (++o->m_10 > 800) {
                o->m_14 = 0;
                o->m_54 = 0;
                func_8009E0E8(o);
            }
            if (func_800A44F8(0) == 0x12 && !o->m_16) {
                func_800A42EC(0, o->m_3C, o->m_34, o->m_38);
                func_8009E0E8(o);
                o->m_00 = 2;
                func_8009D7A0(o, 5);
                func_8009E2E0(o);
            }
            break;
        case 2:
            o->m_10++;
            func_8009E2FC(o);
            if (o->m_10 > 800) {
                o->m_14 = 0;
                o->m_54 = 0;
            }
            if (func_800A44F8(0) == 0x12 && o->m_08 == 1) {
                o->m_14 = 1;
                o->m_54 = 0;
            }
            break;
        }
        switch (o->m_08) {
        case 2:
        case 4:
        case 7:
        case 11:
        case 14:
        case 15:
        case 17:
            o->m_14 = 0;
            o->m_54 = 0;
            o->m_16 = 1;
            break;
        }
    }
    return 0;
}

// The menu the card task belongs to
#define MENU70(o) ((Menu70 *)(o)->m_44)

/* The memory card load task, each frame: its state (m_00) stepped by the
 * card's last result (m_08). */
void func_8009D9CC(Obj70 *o) {
    o->m_08 = func_800A4614(0, &o->m_0C);
    switch (o->m_00) {
    case 0:
        break;
    case 1:
        if (func_800A44F8(0) == 0x12) {
            if ((u32)o->m_08 >= 2 && o->m_08 != 0x12) {
                o->m_00 = 0;
            } else {
                func_8009E318(o, 9);
                func_8009E1A0(o);
                o->m_00 = 4;
            }
        }
        break;
    case 4:
        if (*o->m_4C == 1) {
            func_8009E318(o, 5);
            func_800A42EC(0, o->m_3C, o->m_34, o->m_38);
            o->m_00 = 2;
            func_8009E24C(o);
            MENU70(o)->m_A94 |= 0x200;
        } else if (*o->m_4C == 2) {
            o->m_00 = 0;
            func_8009E24C(o);
            func_8003CC9C(o->m_44, 1);
        }
        break;
    case 2:
        if (func_800A44F8(0) == 0x12 && o->m_08 == 1) {
            o->m_00 = 19;
            o->m_10 = 0;
        }
        break;
    case 19:
        if (o->m_10 < 100) {
            o->m_10++;
            func_8009E24C(o);
            func_8009E318(o, 6);
        } else {
            func_8003CC9C(o->m_44, 1);
            o->m_14 = 1;
            MENU70(o)->m_A94 &= ~0x200;
        }
        break;
    case 17:
        func_8009E24C(o);
        func_8009E318(o, 7);
        o->m_00 = 0;
        MENU70(o)->m_A94 &= ~0x200;
        break;
    }
    switch (o->m_08) {
    case 4:
    case 7:
    case 11:
    case 17:
        if (o->m_00 == 2) {
            if (o->m_04 >= 6) {
                o->m_00 = 17;
                func_800A45B4(0);
                o->m_10++;
                func_8009E24C(o);
                func_8009E318(o, 7);
                MENU70(o)->m_A94 &= ~0x200;
            } else {
                func_800A42EC(0, o->m_3C, o->m_34, o->m_38);
                o->m_04++;
            }
        } else {
            func_8009E24C(o);
            func_8009E318(o, 2);
            o->m_00 = 0;
            MENU70(o)->m_A94 &= ~0x200;
        }
        break;
    case 14:
        func_8009E24C(o);
        func_8009E318(o, 3);
        o->m_00 = 0;
        MENU70(o)->m_A94 &= ~0x200;
        break;
    case 15:
        func_8009E24C(o);
        func_8009E318(o, 4);
        o->m_00 = 12;
        MENU70(o)->m_A94 &= ~0x200;
        break;
    case 2:
        if (o->m_00 == 2) {
            if (o->m_10 < 100) {
                o->m_10++;
                func_8009E24C(o);
                func_8009E318(o, 8);
            } else {
                func_8003CC9C(o->m_44, 1);
            }
        } else {
            func_800A45B4(0);
            o->m_00 = 15;
            func_8009E24C(o);
            func_8009E318(o, 1);
            MENU70(o)->m_A94 &= ~0x200;
        }
        break;
    case 3:
        if (o->m_00 != 12) {
            func_8009E0E8(o);
        }
        break;
    }
}

void func_8009DDA8(Menu70 *m) {
    Obj70 *o = m->m_A80->m_60;

    func_800A41BC();
    func_800A4608(1);
    func_8009E01C(o, D_800C9BFC, 0, D_800BC884, 0x15AC);
    func_8009E0E8(o);
}

void func_8009DE0C(Menu70 *m) {
    Hold70 *h;
    Obj70 *o;
    Dst70 *d;
    Game70 *g;

    if (m->m_A90 == 1 || m->m_A90 == 4) {
        h = m->m_A84;
    } else {
        h = m->m_A80;
    }
    o = h->m_60;
    m->m_A94 &= ~0x200;
    d = m->m_A98;
    if (o->m_14) {
        memcpy(D_800BC884, func_8009E0A0(o), 0x15AC);
        func_8003B600(m, &func_8009E0A0(o)->m_04, 0x154, -1, 1, 1);
        m->m_150 = 0x84;
        g = D_800C886C;
        g->m_160 = func_8009E0A0(o)->m_100;
        g->m_164 = func_8009E0A0(o)->m_104;
        func_800792DC(g);
        func_800A0884(d->m_E0);
    }
    d->m_134 = 3;
    func_8009E0AC(o);
    func_800A4244();
}

void func_8009DF20(Menu70 *m) {
    if (m->m_A80->m_60) {
        func_8009D9CC(m->m_A80->m_60);
    }
}

void func_8009DF58(Menu70 *m) {
    if (m->m_A80->m_60) {
        func_8009E360(m->m_A80->m_60);
    }
}

void func_8009DF90(Menu70 *m) {
    Obj70 *o = m->m_A80->m_60;

    if (o && m->m_A80 != o->m_58) {
        func_8009D830(o);
        if (!o->m_54 && !D_800C9C04) {
            func_8003CC78(m, o->m_58, 0);
            D_800C9C04 = 1;
        }
    }
}

void *func_8009E01C(Obj70 *o, void *a, int b, void *c, int n) {
    void *r;

    o->m_3C = a;
    o->m_34 = (u8 *)__builtin_vec_new(0x1FF0);
    memset(o->m_34, 0, 0x1FF0);
    r = memcpy(o->m_34 + 0x400, c, n + 0x400);
    o->m_40 = b;
    o->m_38 = 0x1FF0;
    return r;
}

Save70 *func_8009E0A0(Obj70 *o) {
    return (Save70 *)(o->m_34 + 0x400);
}

void func_8009E0AC(Obj70 *o) {
    if (o->m_34) {
        __builtin_vec_delete(o->m_34);
        o->m_34 = 0;
    }
}

void func_8009E0E8(Obj70 *o) {
    o->m_04 = 0;
    o->m_08 = 0;
    o->m_0C = 0;
    o->m_10 = 0;
    o->m_14 = 0;
    o->m_16 = 0;
    *o->m_4C = 0;
    o->m_00 = 1;
    func_800A4284(0);
    func_8009E24C(o);
    func_8009E164(o);
    func_8009E2FC(o);
    o->m_18->m_08 = o->m_50[0].m_00;
}

void func_8009E164(Obj70 *o) {
    *o->m_30 &= 0xFFF0FFFF;
    func_8003E5B0(o->m_44);
}

void func_8009E1A0(Obj70 *o) {
    o->m_28->m_28->m_04 |= 2;
    o->m_2C->m_28->m_04 |= 2;
    o->m_28->m_00 = (o->m_28->m_00 & 0xFFF0FFFF) | 0x10000;
    o->m_2C->m_00 = (o->m_2C->m_00 & 0xFFF0FFFF) | 0x10000;
    func_8003E5B0(o->m_44);
    *o->m_4C = 0;
}

void func_8009E24C(Obj70 *o) {
    o->m_28->m_28->m_04 &= ~2;
    o->m_2C->m_28->m_04 &= ~2;
    o->m_28->m_00 &= 0xFFF0FFFF;
    o->m_2C->m_00 &= 0xFFF0FFFF;
    func_8003E5B0(o->m_44);
}

void func_8009E2E0(Obj70 *o) {
    o->m_24->m_04 &= ~2;
}

void func_8009E2FC(Obj70 *o) {
    o->m_24->m_04 |= 2;
}

void func_8009E318(Obj70 *o, int i) {
    func_8009E2FC(o);
    o->m_18->m_08 = o->m_50[i].m_00;
}

void func_8009E360(Obj70 *o) {
    func_8009E3C0(o, 0x29, 0xBE, o->m_0C * 430 / 1000);
}

// A draw mode packet: its tag and the mode word
static inline u_long *DrawMode70(u_long *p) {
    p[0] = 0x01000000;
    p[1] = 0xE1000220;
    return p;
}

#ifdef NON_MATCHING
// Registers around the packets (160 off): each draw mode packet is set just past its primitive and the
// pointer stepped to it in place (`move`, `sw 0x1C`, `addiu 0x1C`, `sw 4`; see "GPU packets" in the
// techniques); here GCC gives the stepped pointer its own register, the next packet being built from it
/* A gauge: its frame, a tick, and the fill up to w (of 0x1AE). */
void func_8009E3C0(Obj70 *o, int x, int y, int w) {
    Game70 *g = D_800C886C;
    u_long *p;
    u_long *ot;

    g->m_68[14].m_func((char *)g + g->m_68[14].m_delta, 0);
    p = (u_long *)D_800C8C70;
    p[0] = 0x06000000;
    p[6] = 0x55555555;
    p[1] = 0x4E808000;
    p[2] = XY(x, y - 7);
    p[3] = XY(x + 0x1AE, y - 7);
    p[4] = XY(x + 0x1AE, y + 5);
    p[5] = XY(x, y + 5);
    ADD_PRIM(D_800CBDC0 + 1, D_800C8C70);
    p = DrawMode70((u_long *)D_800C8C70 + 7);
    ot = D_800CBDC0 + 1;
    D_800C8C70 = (u8 *)p;
    ADD_PRIM(ot, D_800C8C70);
    D_800C8C70 += 8;
    p = (u_long *)D_800C8C70;
    p[0] = 0x03000000;
    p[1] = 0x42008000;
    p[2] = XY(x, y - 7);
    p[3] = XY(x, y + 5);
    ADD_PRIM(D_800CBDC0 + 1, D_800C8C70);
    p = DrawMode70((u_long *)D_800C8C70 + 4);
    ot = D_800CBDC0 + 1;
    D_800C8C70 = (u8 *)p;
    ADD_PRIM(ot, D_800C8C70);
    D_800C8C70 += 8;
    if (w < 0x1AE) {
        p = (u_long *)D_800C8C70;
        p[0] = 0x05000000;
        p[1] = 0x2A000040;
        p[2] = XY(x, y - 7);
        p[3] = XY(x + w, y - 7);
        p[4] = XY(x, y + 5);
        p[5] = XY(x + w, y + 5);
        ADD_PRIM(D_800CBDC0 + 1, D_800C8C70);
        p = DrawMode70((u_long *)D_800C8C70 + 6);
        ot = D_800CBDC0 + 1;
        D_800C8C70 = (u8 *)p;
        ADD_PRIM(ot, D_800C8C70);
    } else {
        p = (u_long *)D_800C8C70;
        p[0] = 0x05000000;
        p[1] = 0x2A002000;
        p[2] = XY(x, y - 7);
        p[3] = XY(x + w, y - 7);
        p[4] = XY(x, y + 5);
        p[5] = XY(x + w, y + 5);
        ADD_PRIM(D_800CBDC0 + 1, D_800C8C70);
        p = DrawMode70((u_long *)D_800C8C70 + 6);
        ot = D_800CBDC0 + 1;
        D_800C8C70 = (u8 *)p;
        ADD_PRIM(ot, D_800C8C70);
    }
    D_800C8C70 += 8;
    p = (u_long *)D_800C8C70;
    p[0] = 0x01000000;
    p[1] = 0xE1000220;
    ADD_PRIM(D_800CBDC0 + OT_Z(1), D_800C8C70);
    D_800C8C70 += 8;
}
#else
INCLUDE_ASM("asm/langimg/nonmatchings/chunk_70", func_8009E3C0);
#endif

void func_8009E724(void) {
}

/* The selected entry's four digits shown; returns its index. */
int func_8009E72C(Menu70 *m, Hold70 *h) {
    Dst70 *d;
    Sel70 *q;
    Page70 *p;
    int k;
    int j;
    int r;
    Dig70 **e;

    if (func_800A6100(h->m_00, D_800C9C10, 5)) {
        return -1;
    }
    d = m->m_A98;
    q = &m->m_A9C->m_08;
    p = (Page70 *)h->m_60;
    k = d->m_14[d->m_08];
    j = p->m_0C->m_28[k];
    r = func_80037C80(p->m_2C);
    q->m_0C = r;
    q->m_10 = p->m_10->m_28[k];
    e = p->m_14;
    e += q->m_10 * (d->m_28[d->m_08][j] + 1);
    p->m_78[0]->m_0C[0] = (*e)->m_28[r * 4] + '0';
    p->m_78[0]->m_0C[1] = 0;
    p->m_78[1]->m_0C[0] = (*e)->m_28[r * 4 + 0x20] + '0';
    p->m_78[1]->m_0C[1] = 0;
    p->m_78[2]->m_0C[0] = (*e)->m_28[r * 4 + 0x40] + '0';
    p->m_78[2]->m_0C[1] = 0;
    p->m_78[3]->m_0C[0] = (*e)->m_28[r * 4 + 0x60] + '0';
    p->m_78[3]->m_0C[1] = 0;
    return j + d->m_28[d->m_08][j] * 2;
}

void func_8009E930(Menu70 *m) {
    func_8009E72C(m, m->m_A80);
}

#ifdef NON_MATCHING
// Registers: the shape matches, d and its field swap $a2 and $a3
void func_8009E954(Menu70 *m) {
    Dst70 *d = m->m_A98;
    Sel70 *q = &m->m_A9C->m_08;
    Hold70 *h = m->m_A80;
    Page70 *p = (Page70 *)h->m_60;
    int y = d->m_D0;
    int r;
    int i;
    Lbl70 *l;
    u16 v;
    Rect70 rc;
    Pic70 *pic;
    Img70 *img;
    Rect70 *pr;

    if (d->m_08 == 1) {
        if (q->m_08 == d->m_08) {
            l = p->m_74;
            v = p->m_00;
        } else {
            l = p->m_74;
            v = p->m_04;
            y = d->m_D4;
        }
    } else {
        l = p->m_74;
        v = p->m_08;
    }
    l->m_08 = v;
    r = func_8009E72C(m, h);
    if (r < 0) {
        return;
    }
    func_80037D58(p->m_2C, y);
    pic = p->m_30;
    img = pic->m_20;
    pr = &rc;
    pr->x = 0;
    pr->y = y << 9;
    pr->w = 0;
    *img->m_18 = rc;
    rc.y--;
    pic->m_7C = rc;
    for (i = 0; i < 8; i++) {
        *p->m_34[i]->m_38 = p->m_88[r].m_00;
        *p->m_54[i]->m_38 = p->m_8C[r * 8 + i].m_00;
    }
}
#else
INCLUDE_ASM("asm/langimg/nonmatchings/chunk_70", func_8009E954);
#endif

void func_8009EAD0(Menu70 *m, int a) {
    Sub70 *p = &m->m_AA4->m_08;

    if (!a) {
        p->m_08 = 1;
    }
}

/* The memory card task, each frame: its state (m_00) stepped by the card's
 * last result (m_08). */
void func_8009EAEC(Obj70 *o) {
    o->m_08 = func_800A4614(0, &o->m_0C);
    switch (o->m_00) {
    case 0:
        break;
    case 1:
        if (func_800A44F8(0) == 0x12) {
            if (o->m_08 == 14) {
                if (func_800A44B4(0) >= 0x2000) {
                    func_8009E318(o, 17);
                    func_8009E1A0(o);
                    o->m_00 = 5;
                } else {
                    func_8009E318(o, 15);
                    o->m_00 = 0;
                }
            } else {
                func_8009E318(o, 6);
                func_8009E1A0(o);
                o->m_00 = 6;
            }
        }
        break;
    case 7:
        if (*o->m_4C == 1) {
            func_8009E318(o, 7);
            o->m_00 = 9;
            func_8009E24C(o);
            MENU70(o)->m_A94 |= 0x200;
        } else if (*o->m_4C == 2) {
            o->m_00 = 0;
            func_8009E24C(o);
            func_8003CC9C(o->m_44, 1);
        }
        break;
    case 6:
        if (*o->m_4C == 1) {
            func_800A442C(0, o->m_3C);
        }
    case 5:
        if (*o->m_4C == 1) {
            func_8009E318(o, 11);
            func_800A4384(0, o->m_3C, o->m_40, o->m_34, o->m_38);
            o->m_00 = 3;
            func_8009E24C(o);
            MENU70(o)->m_A94 |= 0x200;
        } else if (*o->m_4C == 2) {
            o->m_00 = 0;
            func_8009E24C(o);
            func_8003CC9C(o->m_44, 1);
        }
        break;
    case 9:
        o->m_00 = 10;
        break;
    case 10:
        o->m_00 = 8;
        break;
    case 8:
        func_800A444C(0);
        o->m_00 = 13;
        o->m_10 = 0;
        break;
    case 13:
        switch (o->m_08) {
        case 0:
            break;
        case 1:
            o->m_00 = 21;
            break;
        }
        break;
    case 21:
        if (o->m_10 < 100) {
            o->m_10++;
            func_8009E24C(o);
            func_8009E318(o, 8);
        } else {
            func_8009E318(o, 11);
            func_800A4384(0, o->m_3C, o->m_40, o->m_34, o->m_38);
            o->m_00 = 3;
            func_8009E24C(o);
            o->m_10 = 0;
        }
        break;
    case 3:
        if (func_800A44F8(0) == 0x12 && o->m_08 == 1) {
            o->m_00 = 20;
            o->m_10 = 0;
        }
        break;
    case 20:
        if (o->m_10 < 100) {
            o->m_10++;
            func_8009E24C(o);
            func_8009E318(o, 12);
        } else {
            func_8003CC9C(o->m_44, 1);
            o->m_14 = 1;
            MENU70(o)->m_A94 &= ~0x200;
        }
        break;
    case 18:
        func_8009E318(o, 13);
        func_8009E24C(o);
        o->m_00 = 0;
        MENU70(o)->m_A94 &= ~0x200;
        break;
    }
    switch (o->m_08) {
    case 9:
        func_800A5DA4(D_800C9C1C);
        func_8009E24C(o);
        func_8009E318(o, 13);
        o->m_00 = 0;
        MENU70(o)->m_A94 &= ~0x200;
        break;
    case 16:
        func_800A5DA4(D_800C9C2C);
        func_8009E24C(o);
        func_8009E318(o, 9);
        o->m_00 = 0;
        MENU70(o)->m_A94 &= ~0x200;
        break;
    case 7:
        if (o->m_08 == 7) {
            func_800A5DA4(D_800C9C3C);
        }
    case 8:
        if (o->m_08 == 8) {
            func_800A5DA4(D_800C9C48);
        }
    case 11:
        if (o->m_08 == 11) {
            func_800A5DA4(D_800C9C54);
        }
    case 4:
        if (o->m_08 == 4) {
            func_800A5DA4(D_800C9C60);
        }
        if (o->m_00 == 13) {
            func_800A5DA4(D_800C9C70, o->m_10);
            if (o->m_10 < 100) {
                o->m_10++;
                func_8009E24C(o);
                func_8009E318(o, 9);
            } else {
                func_8009E0E8(o);
                o->m_10 = 0;
            }
        } else if (o->m_00 == 3) {
            func_800A5DA4(D_800C9C84);
            if (o->m_04 >= 6) {
                o->m_00 = 18;
                func_800A45B4(0);
                o->m_10++;
                func_8009E24C(o);
                func_8009E318(o, 13);
                MENU70(o)->m_A94 &= ~0x200;
            } else {
                func_800A4384(0, o->m_3C, o->m_40, o->m_34, o->m_38);
                o->m_04++;
            }
        } else {
            func_8009E24C(o);
            func_8009E318(o, 13);
            o->m_00 = 0;
            MENU70(o)->m_A94 &= ~0x200;
        }
        break;
    case 15:
        func_800A5DA4(D_800C9C90);
        func_8009E1A0(o);
        func_8009E318(o, 5);
        o->m_00 = 7;
        MENU70(o)->m_A94 &= ~0x200;
        break;
    case 2:
        func_800A5DA4(D_800C9CA4, o->m_00);
        if ((u32)(o->m_00 - 13) < 2) {
            func_800A5DA4(D_800C9CB4, o->m_10);
            o->m_00 = 14;
            if (o->m_10 < 100) {
                o->m_10++;
                func_8009E24C(o);
                func_8009E318(o, 10);
            } else {
                func_8009E0E8(o);
                o->m_10 = 0;
            }
        } else if (o->m_00 == 3) {
            func_800A5DA4(D_800C9CC8, 3);
            func_8009E24C(o);
            func_8009E318(o, 14);
            MENU70(o)->m_A94 &= ~0x200;
        } else {
            func_800A45B4(0);
            o->m_00 = 15;
            func_8009E24C(o);
            func_8009E318(o, 1);
            MENU70(o)->m_A94 &= ~0x200;
        }
        break;
    case 3:
        if (o->m_00 != 7) {
            func_8009E0E8(o);
        }
        break;
    }
}
