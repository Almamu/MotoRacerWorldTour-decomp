#include "common.h"

// An entry of a list: its kind, its owner, the next, a name and values
struct Item19 {
    int m_00; // its kind: 3
    int m_04; // whose
    struct Item19 *m_08;
    char m_0C[0x20];
    s8 m_2C;
    s8 m_2D;
    s8 m_2E;
    s8 m_2F;
    u8 m_30;
    s8 m_31; // the second value is used
    s8 m_32;
    u8 m_33;
    void *m_34;
};

struct Menu19 {
    u8 m_00[0x2C];
    Item19 *m_2C;
    u8 m_30[0xE];
    s8 m_3E;
    s8 m_3F;
    u8 m_40[0xC];
    int m_4C; // how many
    int m_50; // which
};

struct Char19 {
    int m_00;
    u8 m_04[0xE];
    u8 m_12; // a letter
};

struct Slot19 {
    u8 m_00[4];
    int m_04;
    u8 m_08[8];
    Char19 *m_10;
    u8 m_14[0x44];
    Char19 *m_58;
};

struct Own19 {
    u8 m_00[0x28];
    Slot19 *m_28;
};

struct Ent19 {
    short m_00;
};

struct Tab19 {
    u8 m_00[8];
    short m_08;
    u8 m_0A[2];
    Ent19 **m_0C;
};

struct Res19 {
    u8 m_00[0x28];
    u8 *m_28;
};

extern "C" {
void func_8003FC28(void *o, int i, int j);
Res19 *func_8003AA90(void *v, char *name);
int func_80097128(void *p);
void func_800383D8(Menu19 *m, int i, void *a, int b);
void func_80038504(Ent19 *e, void *a);
int func_80037C80(Menu19 *m);
int func_80037CF8(Menu19 *m);
int func_80037D58(Menu19 *m, int v);
u8 *func_80037DC8(Menu19 *m, void *v);
void func_80038168(Menu19 *m, int k);
void func_80038218(Own19 *o);
void func_8003828C(Own19 *o);
void func_80038300(Menu19 *m, void *a);
void func_80038370(Menu19 *m, void *a);
void func_80038B24(Tab19 *t, void *a);
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_19", func_8003762C);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_19", func_8003781C);

int func_80037C80(Menu19 *m) {
    int r = 0;
    Item19 *p;

    for (p = m->m_2C; p; p = p->m_08) {
        if (p->m_04 == 0 && p->m_00 == 3) {
            if (p->m_31) {
                r = p->m_2E;
            } else {
                r = p->m_2C;
            }
            break;
        }
    }
    return r;
}

int func_80037CF8(Menu19 *m) {
    int r = 0;
    Item19 *p;

    for (p = m->m_2C; p; p = p->m_08) {
        if (p->m_04 == 1 && p->m_00 == 3) {
            r = p->m_2C;
            break;
        }
    }
    return r;
}

#ifdef NON_MATCHING
// Registers: the result and the constant 3 swap ($a0, $a2)
int func_80037D58(Menu19 *m, int v) {
    int r = 0;
    Item19 *p;

    for (p = m->m_2C; p; p = p->m_08) {
        if (p->m_04 == 0 && p->m_00 == 3) {
            if (p->m_31) {
                p->m_2E = v;
            } else {
                p->m_2C = v;
            }
            r = 1;
            break;
        }
    }
    return r;
}
#else
INCLUDE_ASM("asm/langimg/nonmatchings/chunk_19", func_80037D58);
#endif

u8 *func_80037DC8(Menu19 *m, void *v) {
    u8 *r = 0;
    Item19 *p;

    for (p = m->m_2C; p; p = p->m_08) {
        if (p->m_04 == 0 && p->m_00 == 3) {
            Res19 *x = func_8003AA90(v, p->m_0C);

            if (x) {
                r = x->m_28 + p->m_2C * 32;
                break;
            }
        }
    }
    return r;
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_19", func_80037E70);

void func_80038168(Menu19 *m, int k) {
    Item19 *p;

    for (p = m->m_2C; p; p = p->m_08) {
        if (p->m_04 == k && p->m_00 == 3) {
            if (!p->m_34) {
                return;
            }
            if (p->m_31) {
                int v = func_80097128(p->m_34);

                p->m_2E = v;
                p->m_2C = v;
                p->m_32 = 1;
            } else {
                p->m_2C = func_80097128(p->m_34);
            }
            return;
        }
    }
}

/* The letter stepped up, from 'A' to 'g'. */
void func_80038218(Own19 *o) {
    Slot19 *s = o->m_28;
    Char19 *c;

    if (s->m_04 & 1) {
        c = s->m_10;
    } else {
        c = s->m_58;
    }
    if ((c->m_00 & 0x40007) == 1) {
        if (++c->m_12 >= 0x68) {
            c->m_12 = 0x41;
        }
    }
}

/* The letter stepped down. */
void func_8003828C(Own19 *o) {
    Slot19 *s = o->m_28;
    Char19 *c;

    if (s->m_04 & 1) {
        c = s->m_10;
    } else {
        c = s->m_58;
    }
    if ((c->m_00 & 0x40007) == 1) {
        if (--c->m_12 < 0x41) {
            c->m_12 = 0x67;
        }
    }
}

void func_80038300(Menu19 *m, void *a) {
    m->m_50++;
    func_8003FC28(a, 2, m->m_3E);
    {
        int i = m->m_50;

        if (i >= m->m_4C) {
            i = -1;
        }
        func_800383D8(m, i, a, 0);
    }
}

void func_80038370(Menu19 *m, void *a) {
    if (--m->m_50 >= 0) {
        func_800383D8(m, m->m_50, a, 0);
        func_8003FC28(a, 3, m->m_3F);
    } else {
        m->m_50 = 0;
    }
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_19", func_800383D8);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_19", func_80038504);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_19", func_800386B4);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_19", func_80038828);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_19", func_8003899C);

void func_80038B24(Tab19 *t, void *a) {
    int i;

    for (i = 0; i < t->m_08; i++) {
        Ent19 *e = t->m_0C[i];

        if (e->m_00 == 4) {
            func_80038504(e, a);
        }
    }
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_19", func_80038BBC);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_19", func_80038CE4);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_19", func_80038E0C);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_19", func_80038F44);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_19", func_8003907C);
