#include "common.h"
#include "psyq.h"
#include "langimg/cobjet.h"

/* A scene (chunk_23's named object with its items): the items' history,
 * found by name, and its buffers (docs/matching/issue-22-langimg-chunk21.md). */

extern "C" {
// An item (0x74 bytes): its name first
struct Item21 {
    char *m_name;
    u8 m_04[4];
    s8 m_08[0x28]; // its text
    int m_30;
    u8 m_34[0x18];
    struct Cell21 *m_4C;
    u8 m_50[0x24];
};
// A cell of an item's grid (12 bytes)
struct Cell21 {
    int m_00;
    u8 m_04[8];
};

// A named link of the list at 0x16C
struct Link21 {
    Link21 *m_next;
    char m_name[4];
};

// chunk_61's colour zone: 0 off, 1 fixed, or fading
struct Zone21 {
    int m_00;
    int m_04;
    int m_08, m_0C;
    u8 m_10[8];
    int m_18, m_1C;
};

// The zone's parameters: four indices into the table, or four values
struct Par21 {
    int m_00, m_04, m_08, m_0C;
    int m_10, m_14, m_18, m_1C;
};

struct Scene21;
// A GCC 2 vtable entry
struct VtE21 {
    short m_delta;
    short m_index;
    void *m_func;
};
// An object with its vtable at 0x68
struct VObj21 {
    u8 m_00[0x68];
    VtE21 *m_68;
};
// What func_80017948 gives for an object: its model
struct Model21 {
    u8 m_00[0x14];
    int m_14; // its radius
};
struct Ref21 {
    u8 m_00[4];
    Model21 *m_04;
};
// The view's matrix and its position
struct View21 {
    MATRIX m_00;
    MATRIX m_20;
    u8 m_40[0xB8];
    Vector3 m_F8;
};
struct Cam21 {
    u8 m_00[0x9C];
    View21 *m_9C;
    u8 m_A0[4];
};
// The scene's current item, seen as a stage
struct Stage21 {
    u8 m_00[0x28];
    int m_28;
    unsigned m_2C_lo : 24;
    int m_draw : 2;
    unsigned m_2C_hi : 6;
    u8 m_30[8];
    CobjetList *m_38; // its objects
    u8 m_3C[0x2C];
    void (*m_68)(struct Scene21 *s); // before drawing
    void (*m_6C)(struct Scene21 *s); // after
};
// A named handler (8 bytes)
struct Fn21 {
    char *m_00;
    void (*m_04)(struct Scene21 *s, int why, struct Menu21 *m);
};
struct Fns21 {
    u8 m_00[8];
    Fn21 *m_08;
    int m_0C; // how many
};
// A named value of a table (8 bytes)
struct Ent21 {
    char *m_name;
    int m_used;
};
// The scene's values by name: the values, their names
struct Tab21 {
    int *m_00;
    Ent21 *m_04;
    u8 m_08[0xC];
    int m_14; // how many
};
// A menu (chunk_19's Menu19)
struct Menu21 {
    short m_00; // its kind
    u16 m_02;   // flags: bits 0-3 its state
    u8 m_04[4];
    char m_08[0x28];    // its name
    struct Act21 *m_30; // its actions (16 bytes each)
    int m_34;           // how many
    u8 m_38[6];
    s8 m_3E, m_3F, m_40, m_41, m_42;
    u8 m_43[5];
    union {
        char m_s[0x20]; // a text
        struct {
            int m_a, m_b;
        } m_v;
    } m_48;
    s8 m_68;
    u8 m_69;
    s8 m_6A;
};
struct Act21 {
    u8 m_00[0x10];
};
// An event: its menus
struct Ev21 {
    u8 m_00[8];
    short m_08;
    short m_0A;
    Menu21 **m_0C;
};
// The scene
struct Scene21 {
    u8 m_00[8];
    int m_08; // its view's index
    int m_0C; // its fog's distance
    u8 m_10[0x28];
    void *m_38; // a racer (chunk_05's)
    u8 m_3C[0x20];
    struct Fns21 *m_5C;
    CobjetList *m_60; // the overlay's objects
    u8 m_64[0x10];
    struct Tab21 m_74;
    u8 m_8C[0x4C];
    struct Zone21 m_D8;
    u8 m_F8[0x50];
    int *m_148; // a table
    int m_14C;  // its size
    u8 m_150[0x14];
    int m_164;
    int m_168;
    Link21 *m_16C;
    u8 m_170[0x900];
    int m_A70; // how many items
    u8 m_A74[8];
    Item21 *m_A7C; // the items
    Item21 *m_A80; // the current one
    Item21 *m_A84;
    Item21 **m_A88; // the items gone through
    int m_A8C;      // how many
    int m_A90;
    int m_A94; // flags
    int *m_A98;
    int *m_A9C;
    u8 m_AA0[4];
    int *m_AA4;
    int *m_AA8;
    unsigned int m_AAC;
    unsigned int m_AB0;
};

extern char D_800C4DDC[], D_800C4DE4[]; // two names
void *__builtin_vec_new(unsigned int n);
void __builtin_vec_delete(void *p);
void *memset(void *p, int c, unsigned int n);
void *memcpy(void *d, const void *s, unsigned int n);
int func_800A60AC(const char *a, const char *b); // strcmp
void func_8001D180(void *r, int f);
void func_8003FC28(Scene21 *s, int i, int j);
extern char D_800C4DEC[], D_800C4DFC[];
int func_80037C80(Menu21 *m);
int func_80037CF8(Menu21 *m);
char *func_80037DC8(Menu21 *m, Item21 *it);
char *strcpy(char *d, const char *s);
void func_8003D334(Scene21 *s, Ev21 *e);
void func_8003CDEC(Scene21 *s, Ev21 *e);
extern char D_800C4E0C[];
void func_800A22F8(int a);
void func_8003762C(Menu21 *m, Item21 *it, Ev21 *e, int a);
int func_80097128(void *p);
void *func_8003AB24(Item21 *it, int g, int a, int b, int c, int d, int e);
void func_80039E74(Item21 *it, int a);
int sprintf(char *s, const char *f, ...);
unsigned int strlen(const char *s);

void func_8003B600(Scene21 *s, int *src, unsigned int size, unsigned int size2, int reuse,
                   int copy);
void func_8003B734(Scene21 *s, int a, int copy);
void func_8003B7B0(Scene21 *s);
Link21 *func_8003B7E0(Scene21 *s, const char *name);
Item21 *func_8003CB24(Scene21 *s, const char *name);
Item21 *func_8003CBA0(Scene21 *s, const char *name, int dec);
Item21 *func_8003CC78(Scene21 *s, Item21 *it, int dec);
void func_8003CC9C(Scene21 *s, int n);
void func_8003CD30(Scene21 *s);
void func_8003CD38(Scene21 *s);
void func_8003CD88(Scene21 *s);
void func_8003BD5C(Scene21 *s, int mode, Par21 *p);
void func_8003B850(Scene21 *s, int state);
extern int D_800CBC94[1];
extern VObj21 *D_800C886C;
extern char D_800C4D8C[];
extern int D_800C4D88;
extern int D_800C4988;
extern int D_800D6128;
VObj21 *func_80078FC4(void *a, int b);
void func_8001D1C4(void *r, void *a);
void func_8001D23C(void *r, int a, int b, int c, int d);
void func_80095F84(Cam21 *c);
void func_80097F68(MATRIX *m, SVECTOR *r);
void func_8007857C(View21 *v);
void func_800788D8(View21 *v);
void func_8001DA44(void *r, MATRIX *m);
void func_800194E4(Cobjet *o);
int func_8001DF10(void *r, Vector3 *p, int radius, int fog, int *depth);
void func_800185F0(CobjetList *l, int a, int b, int c, int d);
void func_8008C884(Zone21 *z);
void func_8003E6FC(Scene21 *s);
void func_8008C7E8(Zone21 *c, int a, int b, int d, int e);
void func_8008C808(Zone21 *c, int mode, int *a, int *b, int *d, int *e);
}

void func_8003B600(Scene21 *s, int *src, unsigned int size, unsigned int size2, int reuse,
                   int copy) {
    int n;

    if (size2 != -1 && !reuse) {
        s->m_AB0 = size2 >> 2;
    }
    s->m_AAC = size >> 2;
    n = s->m_AAC + s->m_AB0 + 2;
    if (!reuse) {
        s->m_A9C = (int *)__builtin_vec_new(n * 4);
        memset(s->m_A9C, 0, (s->m_AAC + s->m_AB0 + 2) * 4);
        s->m_AA4 = (int *)__builtin_vec_new(n * 4);
        memset(s->m_AA4, 0, (s->m_AAC + s->m_AB0 + 2) * 4);
    }
    s->m_A98 = (int *)((u8 *)s->m_A9C + (s->m_AB0 + 2) * 4);
    if (!reuse || copy) {
        memcpy(s->m_A98, src, s->m_AAC * 4);
    }
    memcpy((u8 *)s->m_AA4 + ((s->m_AB0 + 2) << 2), s->m_A98, s->m_AAC << 2);
}

void func_8003B734(Scene21 *s, int a, int copy) {
    if (!(s->m_A94 & 0x10)) {
        s->m_A94 |= 0x10;
        if (copy) {
            func_8003B7B0(s);
        }
        if (s->m_148) {
            __builtin_vec_delete(s->m_148);
            s->m_148 = 0;
        }
        if (s->m_38) {
            func_8001D180(s->m_38, 3);
            s->m_38 = 0;
        }
    }
}

void func_8003B7B0(Scene21 *s) {
    memcpy(s->m_AA8, s->m_A98, s->m_AAC * 4);
}

Link21 *func_8003B7E0(Scene21 *s, const char *name) {
    Link21 *r = 0;
    Link21 *l;

    for (l = s->m_16C; l; l = l->m_next) {
        if (!func_800A60AC(l->m_name, name)) {
            r = l;
            break;
        }
    }
    return r;
}

#define VCALL21(o, i, a) \
    (((void *(*)(void *, int))(o)->m_68[i].m_func)((char *)(o) + (o)->m_68[i].m_delta, a))

static inline void VecCopyL21(Vector3 *d, Vector3 *s) {
    int x = s->vx;
    int y = s->vy;
    int z = s->vz;

    d->vx = x;
    d->vy = y;
    d->vz = z;
}

#ifdef NON_MATCHING
// Right in shape (the view set up, the stage's two object passes, the overlay; the chunk built with -fmove-all-movables for its hoisted constants, the state passed on to func_80078FC4): the original keeps the place found in $s0 and a copy of it in $s3 that later holds the stage's list, where GCC folds the copy into the place, so the camera and the place swap saved registers (272 off)
void func_8003B850(Scene21 *s, int state) {
    VObj21 *ot;

    if (s->m_A94 & 0x10) {
        return;
    }
    ot = func_80078FC4(D_800CBC94, state);
    if (ot) {
        Cam21 *cam = (Cam21 *)VCALL21(D_800C886C, 14, s->m_08);
        View21 *v = cam->m_9C;
        Stage21 *it;

        if (s->m_A90 == 1 || s->m_A90 == 4) {
            it = (Stage21 *)s->m_A84;
        } else {
            it = (Stage21 *)s->m_A80;
        }
        if (it && v) {
            CobjetModel *p = (CobjetModel *)func_80017E10(it->m_38, D_800C4D8C, 9);
            void *q;
            int d;

            func_8001D1C4(s->m_38, cam->m_A0);
            q = p;
            func_8001D23C(s->m_38, s->m_0C << 12, p->m_54 * 326 / 4096, 0x800, 0);
            func_80095F84(cam);
            if (p->m_matp) {
                Vector3 t;

                v->m_00 = *p->m_matp;
                VecCopyL21(&t, (Vector3 *)p->m_matp->t);
                VecCopyL21(&v->m_F8, &t);
            } else {
                SVECTOR r;
                Vector3 t;

                func_800167F8((Cobjet *)q, &r);
                func_80097F68(&v->m_00, &r);
                t = ((Cobjet *)q)->m_pos;
                VecCopyL21(&v->m_F8, &t);
            }
            func_8007857C(v);
            func_800788D8(v);
            {
                MATRIX m = v->m_20;

                VecCopyL21((Vector3 *)m.t, &v->m_F8);
                func_8001DA44(s->m_38, &m);
            }
            if (it->m_68) {
                it->m_68(s);
            }
            VCALL21(D_800C886C, 14, s->m_08);
            q = it->m_38;
            if ((d = it->m_draw) != 0) {
                int n = ((CobjetList *)q)->m_count;
                Cobjet **o = ((CobjetList *)q)->m_items;

                if (n > 0) {
                    do {
                        if (*o && ((*o)->m_04 & 0x41)) {
                            func_800194E4(*o);
                        }
                        n--;
                        o++;
                    } while (n);
                }
            }
            if (((Stage21 *)s->m_A80)->m_28 >= 0) {
                int n = ((CobjetList *)q)->m_count;
                Cobjet **oo = ((CobjetList *)q)->m_items;

                if (n > 0) {
                    do {
                        Cobjet *o = *oo;

                        if (o && !(o->m_04 & 1)) {
                            Ref21 *e = (Ref21 *)func_80017948(o);

                            if (e) {
                                if (e->m_04) {
                                    Vector3 pos = o->m_pos;
                                    int depth;

                                    if (!func_8001DF10(s->m_38, &pos, e->m_04->m_14, s->m_0C << 12,
                                                       &depth)) {
                                        o->m_04 &= ~0x10;
                                        goto next;
                                    }
                                }
                                o->m_04 |= 0x10;
                            }
                        }
                    next:
                        n--;
                        oo++;
                    } while (n);
                }
            } else {
                func_800185F0((CobjetList *)q, 0x10, 0, 0, 0x10000);
            }
            func_800177E8((CobjetList *)q, 0, ((CobjetList *)q)->m_count);
            if (it->m_6C) {
                it->m_6C(s);
            }
            if (s->m_60 && D_800C4D88 && s->m_60->m_count) {
                func_800185F0(s->m_60, 0x10, 0, 0, 0x10000);
                func_800177E8(s->m_60, 0, s->m_60->m_count);
            }
        }
    }
    func_8008C884(&s->m_D8);
    VCALL21(ot, 14, 0);
    func_8003E6FC(s);
    D_800C4988 += D_800D6128;
}
#else
INCLUDE_ASM("asm/langimg/nonmatchings/chunk_21", func_8003B850);
#endif

/* The colour zone off (0), set from the table (1) or fading (2, 3). */
void func_8003BD5C(Scene21 *s, int mode, Par21 *p) {
    Zone21 *k;

    switch (mode) {
    case 0:
        s->m_D8.m_00 = 0;
        break;
    case 1:
        if (s->m_148) {
            int a = 0;
            int b = 0;
            int c = 0;
            int d = 0;

            if (p->m_10 >= 0 && p->m_10 < s->m_14C) {
                a = s->m_148[p->m_10];
            }
            if (p->m_14 >= 0 && p->m_14 < s->m_14C) {
                b = s->m_148[p->m_14];
            }
            if (p->m_18 >= 0 && p->m_18 < s->m_14C) {
                c = s->m_148[p->m_18];
            }
            if (p->m_1C >= 0 && p->m_1C < s->m_14C) {
                d = s->m_148[p->m_1C];
            }
            k = &s->m_D8;
            func_8008C7E8(k, a, b, c, d);
            {
                int x = p->m_00;
                int y = p->m_04;

                k->m_08 = x;
                k->m_0C = y;
            }
        }
        break;
    case 2:
    case 3: {
        int v[4];

        v[0] = p->m_10;
        v[1] = p->m_14;
        v[2] = p->m_18;
        v[3] = p->m_1C;
        k = &s->m_D8;
        func_8008C808(k, mode, &v[0], &v[1], &v[2], &v[3]);
        {
            int a = p->m_00;
            int b = p->m_04;

            k->m_08 = a;
            k->m_0C = b;
            {
                int x = p->m_08;
                int y = p->m_0C;

                k->m_18 = x;
                k->m_1C = y;
            }
        }
        break;
    }
    }
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_21", func_8003BF0C);

Item21 *func_8003CB24(Scene21 *s, const char *name) {
    int i = 0;
    Item21 *it = s->m_A7C;

    do {
        if (!func_800A60AC(it->m_name, name)) {
            return it;
        }
        i++;
        it++;
    } while (i < s->m_A70);
    return 0;
}

/* An item made current by name; two names go back instead. */
Item21 *func_8003CBA0(Scene21 *s, const char *name, int dec) {
    Item21 *r = 0;

    if (!func_800A60AC(name, D_800C4DDC)) {
        s->m_A94 |= 4;
    } else if (!func_800A60AC(name, D_800C4DE4)) {
        func_8003CC9C(s, 1);
    } else {
        r = func_8003CB24(s, name);
        if (dec) {
            s->m_A8C--;
        }
        if (r) {
            func_8003FC28(s, 4, s->m_164);
            s->m_164 = -1;
            s->m_A80 = r;
        }
    }
    return r;
}

Item21 *func_8003CC78(Scene21 *s, Item21 *it, int dec) {
    if (dec) {
        s->m_A8C--;
    }
    s->m_A80 = it;
    return it;
}

/* Back n items in the history. */
void func_8003CC9C(Scene21 *s, int n) {
    if (!(s->m_A94 & 2)) {
        func_8003FC28(s, 6, s->m_168);
        s->m_168 = -1;
        s->m_A8C -= n;
        if (s->m_A8C > 0) {
            s->m_A80 = s->m_A88[s->m_A8C - 1];
            s->m_A94 = (s->m_A94 & ~1) | 2;
        } else {
            s->m_A8C = 1;
        }
    }
}

void func_8003CD30(Scene21 *s) {
    s->m_A8C = 0;
}

/* The current item kept in the history. */
void func_8003CD38(Scene21 *s) {
    if (!(s->m_A94 & 2) && s->m_A8C < s->m_A70 + 1) {
        s->m_A88[s->m_A8C++] = s->m_A80;
    }
}

/* Back one item. */
void func_8003CD88(Scene21 *s) {
    if (s->m_A94 & 1) {
        return;
    }
    if (--s->m_A8C > 0) {
        s->m_A80 = s->m_A88[s->m_A8C - 1];
        s->m_A94 = (s->m_A94 | 1) & ~2;
    } else {
        s->m_A8C = 1;
    }
}

// The value named name, or 0
static inline int *Find21(Tab21 *t, const char *name) {
    int *r = 0;
    int i;

    for (i = 0; i < t->m_14; i++) {
        if (t->m_04[i].m_name && !func_800A60AC(name, t->m_04[i].m_name)) {
            r = &t->m_00[i];
            break;
        }
    }
    return r;
}

// The value marked as used
static inline void Use21(Tab21 *t, int *p) {
    Ent21 *e = 0;

    if (p >= t->m_00 && p < t->m_00 + t->m_14) {
        e = &t->m_04[p - t->m_00];
    }
    e->m_used = 1;
}

// The handler named name into *out, if there is one
static inline void FindFn21(Fns21 *t, const char *name, Fn21 **out) {
    int i;

    for (i = 0; i < t->m_0C; i++) {
        if (!func_800A60AC(t->m_08[i].m_00, name)) {
            *out = &t->m_08[i];
            break;
        }
    }
}

void func_8003CDEC(Scene21 *s, Ev21 *e) {
    Item21 *cur;
    Menu21 *m;
    int *p;
    int i;

    if (s->m_A90 == 1 || s->m_A90 == 4) {
        cur = s->m_A84;
    } else {
        cur = s->m_A80;
    }
    func_800A22F8(2);
    if (!e || !e->m_08) {
        return;
    }
    m = e->m_0C[e->m_0A];
    if ((m->m_02 & 0xF) != 1) {
        return;
    }
    s->m_164 = m->m_40;
    s->m_168 = m->m_42;
    func_8003762C(m, cur, e, 1);
    p = Find21(&s->m_74, D_800C4DEC);
    Use21(&s->m_74, p);
    *p = func_80037C80(m);
    p = Find21(&s->m_74, D_800C4DFC);
    Use21(&s->m_74, p);
    *p = func_80037CF8(m);
    s->m_A94 &= ~0x100;
    if (m->m_30) {
        for (i = 0; i < m->m_34; i++) {
            func_80097128(&m->m_30[i]);
        }
    }
    {
        Fn21 *h = 0;

        FindFn21(s->m_5C, m->m_08, &h);
        if (h && h->m_04) {
            h->m_04(s, 2, m);
        }
    }
    if (m->m_00 != -1 && m->m_00 != 4) {
        func_8003FC28(s, 2, m->m_3E);
    }
    switch (m->m_00) {
    case 0:
        if (!(cur->m_30 & 0xF)) {
            strcpy((char *)cur->m_08, m->m_08);
        } else {
            strcpy((char *)cur->m_08, func_80037DC8(m, cur));
        }
        if (m->m_68) {
            char buf[0x40];

            for (i = 0; i < strlen((char *)cur->m_08); i++) {
                if (cur->m_08[i] == '_') {
                    break;
                }
            }
            sprintf(buf, D_800C4E0C, m->m_48.m_s, cur->m_08 + i + 1);
            func_8003CBA0(s, buf, m->m_6A);
        } else {
            func_8003CBA0(s, m->m_48.m_s, m->m_6A);
        }
        break;
    case 1:
        func_8003AB24(cur, m->m_48.m_v.m_b, 1, 0, 1, -1, 1);
        func_80039E74(cur, 8);
        cur->m_4C[m->m_48.m_v.m_a].m_00 = m->m_48.m_v.m_a;
        func_8003AB24(cur, m->m_48.m_v.m_b, 0, 0, 1, -1, 1);
        func_8003FC28(s, 5, m->m_41);
        break;
    case 2:
        func_8003CC9C(s, m->m_48.m_v.m_a);
        break;
    case 3:
        s->m_A94 |= 4;
        break;
    }
}

void func_8003D334(Scene21 *s, Ev21 *e) {
    Item21 *cur;
    Menu21 *m;
    int *p;

    if (s->m_A90 == 1 || s->m_A90 == 4) {
        cur = s->m_A84;
    } else {
        cur = s->m_A80;
    }
    if (!e || !e->m_08 || !(m = e->m_0C[e->m_0A])) {
        return;
    }
    if (s->m_A8C >= 2) {
        func_8003FC28(s, 3, m->m_3F);
    }
    p = Find21(&s->m_74, D_800C4DEC);
    Use21(&s->m_74, p);
    *p = func_80037C80(m);
    p = Find21(&s->m_74, D_800C4DFC);
    Use21(&s->m_74, p);
    *p = func_80037CF8(m);
    switch (m->m_00) {
    case -1:
    case 0:
    case 2:
    case 3:
        func_8003CD88(s);
        if (!(cur->m_30 & 0xF)) {
            strcpy((char *)cur->m_08, m->m_08);
        } else {
            strcpy((char *)cur->m_08, func_80037DC8(m, cur));
        }
        break;
    case 1:
        break;
    }
}

// The word after its jump table, the end of this file's .rodata
extern "C" const int D_800B73DC __attribute__((section(".rodata"))) = 0;
