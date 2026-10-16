#include "common.h"

/* A scene (chunk_23's named object with its items): the items' history,
 * found by name, and its buffers (docs/matching/issue-22-langimg-chunk21.md). */

extern "C" {
// An item (0x74 bytes): its name first
struct Item21 {
    char *m_name;
    u8 m_04[4];
    char m_08[0x28];
    int m_30;
    u8 m_34[0x40];
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
    short m_00;
    u8 m_02[6];
    char m_08[0x37];
    s8 m_3F;
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
    u8 m_00[0x38];
    void *m_38; // a racer (chunk_05's)
    u8 m_3C[0x38];
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

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_21", func_8003B850);

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

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_21", func_8003CDEC);

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

#ifdef NON_MATCHING
// The menu and the first value's pointer in swapped saved registers ($s5/$s4), and the original marks the first value through a copy of its pointer (17 off).
void func_8003D334(Scene21 *s, Ev21 *e) {
    Item21 *cur;
    Menu21 *m;
    int *p, *q;

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
    q = Find21(&s->m_74, D_800C4DFC);
    Use21(&s->m_74, q);
    *q = func_80037CF8(m);
    switch (m->m_00) {
    case -1:
    case 0:
    case 2:
    case 3:
        func_8003CD88(s);
        if (!(cur->m_30 & 0xF)) {
            strcpy(cur->m_08, m->m_08);
        } else {
            strcpy(cur->m_08, func_80037DC8(m, cur));
        }
        break;
    case 1:
        break;
    }
}
#else
INCLUDE_ASM("asm/langimg/nonmatchings/chunk_21", func_8003D334);
#endif
