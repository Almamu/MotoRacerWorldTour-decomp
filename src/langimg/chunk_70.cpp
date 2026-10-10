#include "common.h"

/* A menu page's object and its callbacks (docs/matching/issue-71-langimg-chunk70.md) */

extern "C" {
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
struct Game70 {
    u8 m_00[0x160];
    int m_160;
    int m_164;
};
struct Item70 {
    u8 m_00[0xA];
    short m_0A;
};
struct Dst70 {
    u8 m_00[0xE0];
    u8 m_E0[0x54];
    int m_134;
};
// The table made by func_8009D2E0 and func_8009D350
struct Tab70 {
    void *m_00;
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
    void *m_A9C;
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
void func_8009E72C(Menu70 *m, Hold70 *h);
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
extern char D_800C9750[], D_800C98F4[], D_800C9A6C[], D_800CBEA0[];
extern char D_800C9B30[], D_800C9B38[], D_800C9B58[], D_800C9B64[];
void *__builtin_new(int n);
void *__builtin_vec_new(int n);
void *memset(void *d, int c, int n);
int func_80081318(int a, int b);
void func_80080F30(int a, char *b, int c, int d);
int func_800A4284(int a);
void func_8009E3C0(Obj70 *o, int x, int y, int w);
int func_8009D830(Obj70 *o);
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

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_70", func_8009D410);

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

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_70", func_8009D830);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_70", func_8009D9CC);

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

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_70", func_8009E3C0);

void func_8009E724(void) {
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_70", func_8009E72C);

void func_8009E930(Menu70 *m) {
    func_8009E72C(m, m->m_A80);
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_70", func_8009E954);

void func_8009EAD0(Menu70 *m, int a) {
    Sub70 *p = &m->m_AA4->m_08;

    if (!a) {
        p->m_08 = 1;
    }
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_70", func_8009EAEC);
