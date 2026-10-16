#include "common.h"
#include "psyq.h"

/* The game's code built with GCC 2.91.66 (docs/matching/issue-19-langimg-chunk18.md). */

extern "C" {
struct Vec18 {
    int x, y, z;
};
struct Sound18 {
    void *m_00;
};
// A point of a shape (0x54 bytes)
struct Pt18 {
    int m_00;
    Vec18 m_04; // in the shape
    Vec18 m_10; // placed
    Vec18 m_1C;
    u8 m_28[0xC];
    struct Sound18 m_34; // its ground
    u8 m_38[0x10];
    Vec18 m_48; // the ground's normal
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
int func_8001AFF4(void *s, Vec18 *v, Vec18 *n);
void func_80096E28(void *e, Vec18 *out, int shift);
Vec18 *func_80099D48(Vec18 *v, int shift);
Vec18 *func_800998D0(Vec18 *out, Vec18 *a, Vec18 *b);
int func_8009923C(Vec18 *v);
Vec18 *func_80099DCC(Vec18 *d, Vec18 *s, int k);
int func_80099B88(Vec18 *a, Vec18 *b);
Vec18 *func_8009964C(Vec18 *v, int k);
Vec18 *func_80099834(Vec18 *v, Vec18 *a);
void func_80035518(Shape18 *o);

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

static inline int Abs18(int x) {
    return x < 0 ? -x : x;
}

static inline int Max18(int m, int v) {
    return Abs18(v) > Abs18(m) ? v : m;
}

#ifdef NON_MATCHING
// Saved registers rotated: the point is in $s5 where the original has $s3, the try counter in $s4 ($s5) and the hit flag in $s3 ($s4); the max-abs helper's result in $a1 where the original has $a0. The loop shapes and stack slots are the original's (58 off).
void func_80035518(Shape18 *o) {
    MATRIX *m = &o->m_60;
    Vec18 pos, acc, a, b, c, d;
    int moved, iter;
    Pt18 *p;
    int i;

    {
        int x = m->t[0];
        int y = m->t[1];
        int z = m->t[2];

        iter = 0;
        pos.x = x;
        pos.y = y;
        pos.z = z;
    }
    goto body;
top:
    if (iter >= 3) {
        goto out;
    }
body:
    p = o->m_00;
    moved = 0;
    acc.x = 0;
    acc.y = 0;
    acc.z = 0;
    for (i = 0; i < o->m_04; i++, p++) {
        int k, hit;

        k = 0;
        do {
            int r;

            hit = 0;
            {
                int x = p->m_10.x;
                int y = p->m_10.y;
                int z = p->m_10.z;

                a.x = x;
                a.y = y;
                a.z = z;
                b.x = x;
                b.y = y;
                b.z = z;
            }
            r = func_8001B350(&p->m_34, &a);
            if (r == -1) {
                int h = func_8001AFF4(p->m_34.m_00, &a, &p->m_48);

                func_80099D48(&p->m_48, 12);
                if (a.y < h) {
                    hit = 2;
                    a.y = h;
                }
            } else {
                hit = 1;
                func_80096E28((char *)p->m_34.m_00 + (r * 4 + 0x1C), &p->m_48, 14);
            }
            func_800998D0(&c, &b, &a);
            k++;
        } while (0x19000 < func_8009923C(&c) && k < 50);
        if (hit) {
            int l;

            func_80099DCC(&c, &p->m_48, 2);
            VecCopyL18(&p->m_1C, &c);
            func_800998D0(&c, &b, &a);
            l = func_80099B88(&c, &p->m_1C) - 10;
            d = p->m_1C;
            func_8009964C(&d, l + (l >> 3));
            func_80099D48(&d, 12);
            func_80099834(&c, &d);
            func_800997D0(&a, &c);
            p->m_00 = 1;
            func_80099834(&a, &b);
            acc.x = Max18(acc.x, a.x);
            acc.y = Max18(acc.y, a.y);
            acc.z = Max18(acc.z, a.z);
            moved++;
        }
    }
    iter++;
    p = o->m_00;
    for (i = 0; i < o->m_04; i++, p++) {
        func_800997D0(&p->m_10, &acc);
    }
    func_800997D0(&pos, &acc);
    if (moved) {
        goto top;
    }
out:
    VecCopyL18((Vec18 *)m->t, &pos);
}
#else
INCLUDE_ASM("asm/langimg/nonmatchings/chunk_18", func_80035518);
#endif

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
