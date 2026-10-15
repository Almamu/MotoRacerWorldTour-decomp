#include "common.h"
#include "psyq.h"

/* The game's code built with GCC 2.91.66 (docs/matching/issue-19-langimg-chunk18.md). */

extern "C" {
struct Vec18 {
    int x, y, z;
};
// A point of a shape (0x54 bytes)
struct Pt18 {
    int m_00;
    Vec18 m_04; // in the shape
    Vec18 m_10; // placed
    u8 m_1C[0x38];
};
// A shape placed by its matrix
struct Shape18 {
    Pt18 *m_00;
    s8 m_04; // how many points
    u8 m_05[0x13];
    Vec18 m_18;
    u8 m_24[0x20];
    Vec18 m_44;
    u8 m_50[0x10];
    MATRIX m_60;
};
struct Ref18 {
    u8 m_00[0x10];
    int m_10;
};
struct Chan18 {
    u8 m_00[4];
    Ref18 *m_04;
    u8 m_08[4];
    int m_0C;
    u8 m_10[0x26];
    u16 m_36;
};
struct Anim18 {
    u8 m_00[0x100];
    Chan18 m_100;
};
struct Slot18 {
    u8 m_00[8];
    Anim18 *m_08;
    u8 m_0C[0x28];
    u8 m_34;
};
struct Body18 {
    u8 m_00[0x64];
    Vec18 m_64;
};
struct Bike18 {
    u8 m_00[0x30];
    Body18 *m_30;
    u8 m_34[0x2F4];
    Slot18 m_328;
};
struct Sound18 {
    void *m_00;
};
struct Own18 {
    u8 m_00[0x154];
    Bike18 *m_154;
    Sound18 *m_158;
    u8 m_15C[0x13];
    u8 m_16F[5];
};

void func_80098768(MATRIX *m, Vec18 *v, Vec18 *out);
Vec18 *func_800997D0(Vec18 *v, Vec18 *a);
void func_80097E4C(void *a, int x, int y, int z);
int func_8001B350(Sound18 *s, Vec18 *v);
int func_8001AFF4(void *s, Vec18 *v, int a);

// A menu's page: its entries
struct Row18 {
    u8 m_00[0x20];
};
struct Page18 {
    u8 m_00[0x24];
    int m_24 : 24; // how many entries
    Row18 *m_28;
};
struct Ent18 {
    u8 m_00[0x28];
    int m_28;
    void *m_2C;
    void *m_30;
};
// A cursor on a menu
struct Menu18 {
    u8 m_00[0xC];
    u8 m_0C[0x20];
    s8 m_2C; // the entry
    s8 m_2D; // last frame's
    s8 m_2E;
    s8 m_2F; // the wrap mode: 0 around, 1 stop and signal, 2 stop
    s8 m_30;
    s8 m_31;
    s8 m_32;
};
struct Item18 {
    u8 m_00[4];
    u8 m_04;
};
Page18 *func_8003AA90(void *s, void *name);
Ent18 *func_8003B3C4(void *s, Row18 *r);
int func_80019578(void *s, void *a, int back, int c);
void func_80037318(Menu18 *o, void *s, int dir, Item18 *it);

void func_8003674C(Shape18 *o);
void func_80036850(Own18 *o);
void func_800372E8(void *a, SVECTOR *v);
}

static inline void VecCopyL18(Vec18 *d, Vec18 *s) {
    int x = s->x;
    int y = s->y;
    int z = s->z;

    d->x = x;
    d->y = y;
    d->z = z;
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_18", func_80035518);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_18", func_80035904);

void func_8003674C(Shape18 *o) {
    Vec18 t;
    int i;

    for (i = 0; i < o->m_04; i++) {
        Pt18 *p = &o->m_00[i];

        func_80098768(&o->m_60, &p->m_04, &t);
        func_800997D0(&t, (Vec18 *)o->m_60.t);
        VecCopyL18(&p->m_10, &t);
    }
    func_80098768(&o->m_60, &o->m_18, &t);
    func_800997D0(&t, (Vec18 *)o->m_60.t);
    VecCopyL18(&o->m_44, &t);
}

static inline Chan18 *Chan18Of(Slot18 *a) {
    return &a->m_08->m_100;
}

void func_80036850(Own18 *o) {
    Slot18 *a = &o->m_154->m_328;
    Chan18 *c;

    Chan18Of(a)->m_36 &= ~0x1000;
    c = Chan18Of(a);
    if (!(c->m_36 & 0x1000)) {
        c->m_0C = c->m_04 ? c->m_04->m_10 : 0;
    }
    a->m_34 = 0;
    if (o->m_158->m_00) {
        Vec18 v = o->m_154->m_30->m_64;

        func_8001B350(o->m_158, &v);
        o->m_154->m_30->m_64.y = func_8001AFF4(o->m_158->m_00, &v, 0);
    }
    o->m_16F[0] = 0;
    o->m_16F[1] = 0;
    o->m_16F[2] = 0;
    o->m_16F[3] = 0;
    o->m_16F[4] = 0;
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_18", func_80036964);

void func_800372E8(void *a, SVECTOR *v) {
    func_80097E4C(a, v->vx, v->vy, v->vz);
}

#ifdef NON_MATCHING
// The wrap modes' code when moving back: the original lays mode 0's body before modes 1 and 2 (as a switch's bodies after its compares); here mode 0 is an else after them (15 off). As a full switch GCC compared 1 first.
void func_80037318(Menu18 *o, void *s, int dir, Item18 *it) {
    int wrapped = 0;
    int back = 0;

    if (dir) {
        Page18 *p = func_8003AA90(s, o->m_0C);

        if (p) {
            if (o->m_30) {
                o->m_2C = it->m_04;
            } else if (dir > 0) {
                int last;

                o->m_2C++;
                o->m_2E++;
                switch (o->m_2F) {
                case 0:
                    if (o->m_2E >= p->m_24) {
                        o->m_2E = 0;
                    }
                    break;
                case 1:
                case 2:
                    if (p->m_24 < o->m_2E) {
                        o->m_2E = p->m_24;
                    }
                    break;
                }
                if (o->m_31) {
                    int d = o->m_2D;

                    if (d != -1 && o->m_32) {
                        o->m_2C = d;
                    }
                }
                o->m_32 = 0;
                last = p->m_24 - 1;
                if (last < o->m_2C) {
                    if (o->m_2F) {
                        if (o->m_2F > 0) {
                            switch (o->m_2F) {
                            case 1:
                                o->m_2C = last;
                                wrapped = 1;
                                break;
                            case 2:
                                o->m_2C = last;
                                break;
                            }
                        }
                    } else {
                        o->m_2C = 0;
                    }
                }
            } else if (dir < 0) {
                o->m_2C--;
                o->m_2E--;
                if (o->m_2E < 0) {
                    switch (o->m_2F) {
                    case 0:
                        o->m_2E = p->m_24 - 1;
                        break;
                    case 1:
                    case 2:
                        o->m_2E = 0;
                        break;
                    }
                }
                if (o->m_31) {
                    int d = o->m_2D;

                    back = 1;
                    if (d != -1 && !o->m_32) {
                        o->m_2C = d;
                    }
                }
                o->m_32 = 1;
                if (o->m_2C < 0) {
                    if (o->m_2F) {
                        if (o->m_2F > 0) {
                            switch (o->m_2F) {
                            case 1:
                                o->m_2C = 0;
                                wrapped = 1;
                                break;
                            case 2:
                                o->m_2C = 0;
                                break;
                            }
                        }
                    } else {
                        o->m_2C = p->m_24 - 1;
                    }
                }
            }
            if (!wrapped) {
                Ent18 *e = func_8003B3C4(s, &p->m_28[o->m_2C]);
                int f;

                if (!back) {
                    f = e->m_28;
                } else {
                    f = !e->m_28;
                }
                if (e) {
                    func_80019578(e->m_30, e->m_2C, f, -1);
                }
            }
        }
    }
    o->m_2D = o->m_2C;
}
#else
INCLUDE_ASM("asm/langimg/nonmatchings/chunk_18", func_80037318);
#endif
