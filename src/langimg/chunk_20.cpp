#include "common.h"

/* The game's code built with GCC 2.91.66, -G8, split addresses
 * (docs/matching/issue-21-langimg-chunk20.md). */

// A heap copy of a string (cobjet.h's)
class CName {
public:
    char *m_str;

    char *Get();
};

extern "C" {
// What func_80017E10 finds by name (chunk_23's NamedEntry)
struct Entry20 {
    int m_00;
    u32 m_04; // flags
    u8 m_08[8];
    void *m_10;
    u8 m_14[0x44];
    void *m_58;
};
// What an entry's pointer at 0x10 or 0x58 points to
struct Tex20 {
    u8 m_00[8];
    int m_08;
};
// An element of the scene's array at 0x40, 0x34 bytes
struct Elem20 {
    int m_00;      // its kind
    s8 m_04[0x20]; // its name
    void *m_24;
    u8 m_28[8];
    CName *m_30;
};
// A named link of the list at 0x48 (chunk_21's Link21)
struct Link20 {
    Link20 *m_next;
    char m_name[0x20];
    u32 m_24;   // flags: bits 24-25, its values written out
    void *m_28; // its values
};
// What func_80039D4C reads
struct Def20 {
    u8 m_00[0x24];
    int m_24; // its kind
    u8 m_28[8];
    s8 m_30[0x20]; // a link's name, or a number
    void *m_50;
};
// An element of a group, 0x24 bytes (chunk_19's)
struct Item20 {
    int m_00; // how it steps: -1, or wraps (0), stops (1), stays (2)
    short m_04;
    short m_06; // an item's index in another group
    short m_08; // how many objects
    short m_0A;
    struct Obj20 **m_0C;
    u8 m_10[0x10];
    u32 m_20; // flags
};
// A group of the scene's at 0x4C, 12 bytes
struct Grp20 {
    int m_00; // the current item
    int m_04; // how many
    Item20 *m_08;
};
// What the scene's array at 0xAB8 holds, 16 bytes
struct Save20 {
    int m_00; // how many, plus one
    void *m_04;
    void *m_08;
    void *m_0C;
};
// What func_8003A86C returns
struct Obj20 {
    short m_00; // its kind
    u16 m_02;
    u8 m_04[4];
    char m_08[0x20]; // its name
    struct Ent20 *m_28;
    u8 m_2C[0x17];
    s8 m_43;
    u8 m_44[0x10];
    int m_54;
    u8 m_58[0x20];
    char m_78[4]; // a function's name
};
struct Ent20 {
    u8 m_00[4];
    u32 m_04; // flags
    u8 m_08[0x30];
    short *m_38;
};
// A named function (8 bytes)
struct Fn20 {
    char *m_00;
    void (*m_04)(void *s, int a, Obj20 *o);
};
struct Fns20 {
    u8 m_00[8];
    Fn20 *m_08;
    int m_0C; // how many
};
// chunk_21's scene, as this one's at 0x44
struct Sub20 {
    u8 m_00[0x5C];
    Fns20 *m_5C;
};
// The scene (chunk_21's Scene21)
struct Scene20 {
    u8 m_00[0xC];
    int m_0C;
    u8 m_10[0x1C];
    union {
        u32 m_2C;    // bits 24-25 (signed): which entry's pointer
        s8 m_2Cb[4]; // 1: how many elements at 0x40
    };
    u8 m_30[8];
    void *m_38; // a racer (chunk_05's)
    u8 m_3C[4];
    Elem20 *m_40;
    Sub20 *m_44; // a scene (chunk_21's)
    Link20 *m_48;
    Grp20 *m_4C;
    u8 m_50[0xC];
    struct Fns20 *m_5C;
    u8 m_60[0xA20];
    void *m_A80;
    void *m_A84;
    void *m_A88;
    int m_A8C;
    int m_A90;
    u8 m_A94[0x14];
    int *m_AA8;
    u8 m_AAC[8];
    int m_AB4;
    Save20 *m_AB8;
    int m_ABC;
};

extern int D_800CBE84;

void *__builtin_new(unsigned int n);
void *memcpy(void *d, const void *s, unsigned int n);
int atoi(const char *s);
int func_80097128(void *p);
void func_80038B24(Item20 *t, void *a);
void func_800169A0(int a, int v);
void func_800169A8(int a, int v);
void func_800169B0(int a, int v);
void func_800394D8(Item20 *p, Scene20 *s);
void func_80039BD8(Scene20 *s, void *a);
void func_8003FC28(Scene20 *s, int i, int j);
void func_80038828(Obj20 *o, Scene20 *s, int a);
void func_8003AC94(Scene20 *s);
Item20 *func_8003B038(Scene20 *s, int g, int a);
void func_8003991C(Item20 *p, Scene20 *s, int a, int b, int c, int d, int e);
Item20 *func_8003AB24(Scene20 *s, int g, int a, int b, int c, int d, int e);
void func_80039D4C(Scene20 *s, Def20 *d, int x);
void func_8003B51C(Scene20 *s, int *src, unsigned int size, int c);
int func_800A60AC(const char *a, const char *b); // strcmp
Entry20 *func_80017E10(void *l, const char *name, int len);
int *func_80096240(int id);
Link20 *func_8003B7E0(void *s, const char *name);
void func_800383D8(Obj20 *p, int v, Sub20 *s, Scene20 *o);
void func_80038168(Obj20 *o, int a);
void func_8003781C(Obj20 *o, Scene20 *s, Item20 *p, int a, int b);
void func_80037E70(Obj20 *o, Scene20 *s, Item20 *p, int a);
void *func_8001D108(void *r);
void func_8001D760(void *r, int n0, int n1, int a, int b, int c, int d, int e, int f, int g, int h);
void func_8003B600(Scene20 *s, int *src, unsigned int size, unsigned int size2, int reuse,
                   int copy);
void *func_80039CE4(Scene20 *s, const char *name);
void func_8003A760(Scene20 *s, Entry20 *e, int id);
void func_8003A80C(Scene20 *s, const char *name, int id);
Obj20 *func_8003A86C(Scene20 *s, const char *name);
int func_8003A9F4(Scene20 *s, const char *name, int a, int b);
Link20 *func_8003AA90(Scene20 *s, const char *name);
Elem20 *func_8003B248(Scene20 *s, int kind, const s8 *name);
Elem20 *func_8003B3C4(Scene20 *s, const char *name);
void func_8003B47C(void);
void func_8003B484(Scene20 *s, int a, struct Fns20 *b, int *src, unsigned int size, int reuse);
}

static inline void func_800394D8_find(Fns20 *t, const char *name, Fn20 **f) {
    int j;

    for (j = 0; j < t->m_0C; j++) {
        if (!func_800A60AC(t->m_08[j].m_00, name)) {
            *f = &t->m_08[j];
            break;
        }
    }
}

#ifdef NON_MATCHING
// The search's loop: the original hoists its constants (-1, 1, 2) and loads the object again after the flag's test; ours computes them in the loop, and tests the flag with an xori
void func_800394D8(Item20 *p, Scene20 *s) {
    void *x;
    int done;
    int n;
    short start;
    short cur;
    Fn20 *f;

    if (s->m_A90 == 1 || s->m_A90 == 4) {
        x = s->m_A84;
    } else {
        x = s->m_A80;
    }
    done = 0;
    n = 0;
    start = p->m_0A;
    if (!p->m_08) {
        return;
    }
    for (;;) {
        Ent20 *e;
        int v;

        if (p->m_00 != -1) {
            p->m_0A--;
        }
        if (p->m_0A < 0) {
            switch (p->m_00) {
            case 0:
                p->m_0A = p->m_08 - 1;
                break;
            case 1:
                p->m_0A = 0;
                done = 1;
                break;
            case 2:
                p->m_0A = 0;
                break;
            }
        }
        if (p->m_08 < n) {
            done = 1;
        }
        if (done) {
            break;
        }
        e = p->m_0C[p->m_0A]->m_28;
        v = 0;
        if (!(e->m_04 & 1)) {
            v = *e->m_38;
        }
        n++;
        if ((p->m_0C[p->m_0A]->m_02 & 0xF) && ((e->m_04 & 2) || v == -1)) {
            break;
        }
    }
    if (!done) {
        func_8003FC28(s, 7, p->m_0C[p->m_0A]->m_43);
        f = 0;
        func_800394D8_find(s->m_5C, p->m_0C[start]->m_08, &f);
        if (f && f->m_04) {
            f->m_04(s, 1, p->m_0C[start]);
        }
        cur = p->m_0A;
        if (start != cur) {
            func_80038168(p->m_0C[start], 1);
            cur = p->m_0A;
        }
        p->m_0A = start;
        func_80037E70(p->m_0C[start], (Scene20 *)x, p, -1);
        p->m_0A = cur;
        f = 0;
        func_800394D8_find(s->m_5C, p->m_0C[cur]->m_08, &f);
        if (f && f->m_04) {
            f->m_04(s, 0, p->m_0C[p->m_0A]);
        }
        cur = p->m_0A;
        if (start != cur) {
            func_80038168(p->m_0C[cur], 0);
            cur = p->m_0A;
        }
        func_8003781C(p->m_0C[cur], (Scene20 *)x, p, -1, 0);
    }
    if (p->m_0C[p->m_0A]->m_00 == 4) {
        func_80038828(p->m_0C[p->m_0A], s, p->m_00);
    }
}
#else
INCLUDE_ASM("asm/langimg/nonmatchings/chunk_20", func_800394D8);
#endif

#ifdef NON_MATCHING
// Registers: the item in $s4 and the index's offset in $s6 in the original, swapped here, and the saved index loaded twice (lh, lhu)
void func_8003991C(Item20 *p, Scene20 *s, int a, int b, int c, int d, int e) {
    int i;
    short cur;

    if ((p->m_20 & 0x800) && !e) {
        return;
    }
    if (!c && d != -1) {
        p->m_0A = d;
    }
    for (i = 0; i < p->m_08; i++) {
        Obj20 *o;

        if (p->m_0C[i]->m_00 == 5) {
            func_800383D8(p->m_0C[i], p->m_0C[i]->m_54, s->m_44, 0);
        }
        o = p->m_0C[i];
        if (o->m_00 == 4) {
            Fn20 *f = 0;

            func_800394D8_find(s->m_44->m_5C, o->m_78, &f);
            if (f && f->m_04) {
                f->m_04(s->m_44, 3, o);
            }
        }
        cur = p->m_0A;
        if (i == p->m_0A && !b) {
            if (a == 0 || a == 3) {
                func_80038168(p->m_0C[i], 0);
                func_8003781C(p->m_0C[i], s, p, 0, 0);
            }
        } else if (a == 1 || a == 3) {
            p->m_0A = i;
            func_80038168(p->m_0C[i], 1);
            func_80037E70(p->m_0C[i], s, p, 0);
            p->m_0A = cur;
        }
    }
    if (!e) {
        p->m_20 |= 0x800;
    }
}
#else
INCLUDE_ASM("asm/langimg/nonmatchings/chunk_20", func_8003991C);
#endif

void func_80039BD8(Scene20 *s, void *a) {
    int i;
    int j;

    for (i = 0; i < (((int)(s->m_2C << 2) >> 30) + 1) * 3; i++) {
        for (j = 0; j < s->m_4C[i].m_04; j++) {
            if (s->m_4C[i].m_08) {
                func_80038B24(&s->m_4C[i].m_08[j], a);
            }
        }
    }
}

void *func_80039CE4(Scene20 *s, const char *name) {
    void *r = 0;

    if (name) {
        Entry20 *e = func_80017E10(s->m_38, name, -1);

        if (e->m_04 & 0x40) {
            if (e->m_04 & 1) {
                r = e->m_10;
            } else {
                r = e->m_58;
            }
        }
    }
    return r;
}

void func_80039D4C(Scene20 *s, Def20 *d, int x) {
    int v;

    if (s) {
        Link20 *l = func_8003AA90(s, (char *)d->m_30);
        int k = func_80097128(d->m_50);

        if (!(l->m_24 & 0x3000000)) {
            v = ((int *)l->m_28)[k];
        } else {
            v = atoi((char *)l->m_28 + k * 32);
        }
    } else if (d->m_30[0]) {
        v = atoi((char *)d->m_30);
    } else {
        v = func_80097128(d->m_50);
    }
    v = (v << 12) / 360;
    if (d->m_24 == 9) {
        func_800169A0(x, v);
    } else if (d->m_24 == 10) {
        func_800169A8(x, v);
    } else {
        func_800169B0(x, v);
    }
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_20", func_80039E74);

void func_8003A760(Scene20 *s, Entry20 *e, int id) {
    Tex20 *t;
    int *b;

    if (e) {
        t = 0;
        if ((int)(s->m_2C << 6) >> 30) {
            if (e->m_04 & 0x41) {
                t = (Tex20 *)e->m_10;
            }
        } else if (e->m_04 & 0x40) {
            t = (Tex20 *)e->m_58;
        }
        b = func_80096240(id);
        if (b && b[1] == 0x534B4C42) {
            t->m_08 = D_800CBE84 + b[0];
        }
    }
}

void func_8003A80C(Scene20 *s, const char *name, int id) {
    func_8003A760(s, func_80017E10(s->m_38, name, strlen(name)), id);
}

Obj20 *func_8003A86C(Scene20 *s, const char *name) {
    int i;
    int j;
    int k;
    Obj20 *r = 0;

    for (i = 0; i < (((int)(s->m_2C << 2) >> 30) + 1) * 3; i++) {
        if (r) {
            break;
        }
        for (j = 0; j < s->m_4C[i].m_04; j++) {
            if (s->m_4C[i].m_08) {
                Item20 *t = &s->m_4C[i].m_08[j];

                for (k = 0; k < t->m_08; k++) {
                    if (!func_800A60AC(t->m_0C[k]->m_08, name)) {
                        r = t->m_0C[k];
                        break;
                    }
                }
            }
        }
    }
    return r;
}

#ifdef NON_MATCHING
// Registers: the result in $s0 and the object in $s1 in the original, swapped here
int func_8003A9F4(Scene20 *s, const char *name, int a, int b) {
    int v = 0;
    Obj20 *p = func_8003A86C(s, name);

    if (p) {
        if (p->m_00 != 5) {
            return v;
        }
        if (!a) {
            v = -1;
        }
        func_800383D8(p, v, s->m_44, s);
        if (b) {
            p->m_54 = v;
        }
        v = 1;
    }
    return v;
}
#else
INCLUDE_ASM("asm/langimg/nonmatchings/chunk_20", func_8003A9F4);
#endif

Link20 *func_8003AA90(Scene20 *s, const char *name) {
    Link20 *r = 0;
    Link20 *l;

    for (l = s->m_48; l; l = l->m_next) {
        if (!func_800A60AC(l->m_name, name)) {
            r = l;
            break;
        }
    }
    if (!r) {
        r = func_8003B7E0(s->m_44, name);
    }
    return r;
}

Item20 *func_8003AB24(Scene20 *s, int g, int a, int b, int c, int d, int e) {
    Item20 *p = func_8003B038(s, g, 0);
    int j;

    for (j = 0; j < s->m_4C[g].m_04; j++) {
        if (c) {
            s->m_4C[g].m_08[j].m_0A = func_80097128(s->m_4C[g].m_08[j].m_10);
        }
        if (s->m_4C[g].m_08 && p == &s->m_4C[g].m_08[j]) {
            func_8003991C(p, s, a, b, c, d, e);
        }
    }
    return p;
}

void func_8003AC94(Scene20 *s) {
    int i;
    int j;
    int k;

    for (i = 0; i < (((int)(s->m_2C << 2) >> 30) + 1) * 3; i++) {
        s->m_4C[i].m_00 = 0;
        if (s->m_4C[i].m_08) {
            for (j = 0; j < s->m_4C[i].m_04; j++) {
                Item20 *t = &s->m_4C[i].m_08[j];

                if (t) {
                    for (k = 0; k < t->m_08; k++) {
                        short cur = t->m_0A;

                        t->m_0A = k;
                        func_80037E70(t->m_0C[k], s, t, 0);
                        t->m_0A = cur;
                    }
                }
            }
        }
    }
    for (i = 0; i < (((int)(s->m_2C << 2) >> 30) + 1) * 3; i++) {
        if (s->m_4C[i].m_08) {
            for (j = 0; j < s->m_4C[i].m_04; j++) {
                Item20 *t = &s->m_4C[i].m_08[j];
                int one = 1;
                int none = -1;

                if (t && (t->m_20 & 0x400)) {
                    s->m_4C[i].m_00 = j;
                    t->m_0A = func_80097128(t->m_10);
                    func_8003991C(t, s, 0, 0, one, none, 0);
                }
            }
        }
    }
    for (i = 0; i < (((int)(s->m_2C << 2) >> 30) + 1) * 3; i++) {
        func_8003AB24(s, i, 0, 0, 1, -1, 0);
    }
    for (i = 0; i < (((int)(s->m_2C << 2) >> 30) + 1) * 3; i++) {
        if (s->m_4C[i].m_08) {
            for (j = 0; j < s->m_4C[i].m_04; j++) {
                Item20 *t = &s->m_4C[i].m_08[j];

                if (t) {
                    t->m_20 &= ~0x800;
                }
            }
        }
    }
}

Item20 *func_8003B038(Scene20 *s, int g, int a) {
    Item20 *r = 0;
    int k = (int)(s->m_2C << 2) >> 30;
    int i;
    int j;

    a--;
    if (!k) {
        a = -1;
    }
    if (a >= 0) {
        g += a * 3;
    }
    if (s->m_4C[g].m_08) {
        if (s->m_4C[g].m_00 >= 0) {
            for (i = 0; i < (k + 1) * 3; i++) {
                int any;
                int same;

                if (i == g) {
                    continue;
                }
                any = 0;
                same = 0;
                if (s->m_4C[i].m_08 && s->m_4C[i].m_00 >= 0) {
                    for (j = 0; j < s->m_4C[g].m_04; j++) {
                        if (s->m_4C[g].m_08[j].m_04 != -1 &&
                            s->m_4C[g].m_08[j].m_06 == s->m_4C[i].m_00) {
                            any = 1;
                            if (s->m_4C[g].m_08[j].m_04 ==
                                s->m_4C[i].m_08[s->m_4C[g].m_08[j].m_06].m_0A) {
                                same = 1;
                                break;
                            }
                        }
                    }
                }
                if (!any) {
                    r = &s->m_4C[g].m_08[s->m_4C[g].m_00];
                } else if (same) {
                    r = &s->m_4C[g].m_08[j];
                }
            }
        }
    }
    return r;
}

Elem20 *func_8003B248(Scene20 *s, int kind, const s8 *name) {
    Elem20 *r = 0;
    int i;

    if (name) {
        if (kind != 5) {
            if (!name[0]) {
                for (i = 0; i < s->m_2Cb[1]; i++) {
                    if (!s->m_40[i].m_04[0] && s->m_40[i].m_00 == kind && s->m_40[i].m_24 &&
                        func_80097128(s->m_40[i].m_24)) {
                        r = &s->m_40[i];
                        break;
                    }
                }
            }
            if (!r) {
                for (i = 0; i < s->m_2Cb[1]; i++) {
                    if (!func_800A60AC((char *)s->m_40[i].m_04, (const char *)name) &&
                        s->m_40[i].m_00 == kind) {
                        r = &s->m_40[i];
                        break;
                    }
                }
            }
        } else {
            r = func_8003B3C4(s, (const char *)name);
        }
    }
    return r;
}

Elem20 *func_8003B3C4(Scene20 *s, const char *name) {
    int i;
    Elem20 *r = 0;

    for (i = 0; i < s->m_2Cb[1]; i++) {
        if (s->m_40[i].m_30 && !func_800A60AC(s->m_40[i].m_30->Get(), name)) {
            r = &s->m_40[i];
            break;
        }
    }
    return r;
}

void func_8003B47C(void) {
}

void func_8003B484(Scene20 *s, int a, Fns20 *b, int *src, unsigned int size, int reuse) {
    s->m_ABC = a;
    s->m_5C = b;
    s->m_AA8 = src;
    func_8003B600(s, src, size, 0, reuse, 0);
    s->m_38 = func_8001D108(__builtin_new(0x184));
    func_8001D760(s->m_38, 0, 0, s->m_0C, s->m_0C, 0, 0x50, 0, 0, 0, 0);
}

#ifdef NON_MATCHING
// Registers in the last store: it matches with memcpy declared returning void (no builtin), not with common.h's
void func_8003B51C(Scene20 *s, int *src, unsigned int size, int c) {
    int i;

    if (src) {
        func_8003B600(s, src, size, -1, 1, 1);
    }
    if (c) {
        for (i = 0; i < s->m_AB4; i++) {
            if (func_80097128(s->m_AB8[i].m_04)) {
                s->m_A80 = s->m_AB8[i].m_08;
                memcpy(s->m_A88, s->m_AB8[i].m_0C, s->m_AB8[i].m_00 * 4 - 1);
                s->m_A8C = s->m_AB8[i].m_00 - 1;
                return;
            }
        }
    }
}
#else
INCLUDE_ASM("asm/langimg/nonmatchings/chunk_20", func_8003B51C);
#endif
