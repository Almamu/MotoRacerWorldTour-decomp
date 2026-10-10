#include "common.h"

/* A class of named objects with a state machine (the vtable D_800C4EA8),
 * written as plain functions on a struct
 * (docs/matching/issue-24-langimg-chunk23.md). */

extern "C" {
// A GCC 2 vtable entry
struct VtEntry {
    short m_delta;
    short m_index;
    int (*m_func)(void *self);
};

struct NamedOwner;

// The object (its size isn't known here)
struct Named {
    unsigned m_on : 1; // 0x00 bit 0
    unsigned m_b1 : 1;
    unsigned m_b2 : 2;
    unsigned m_used : 1; // bit 4
    unsigned m_b5 : 1;   // bit 5
    unsigned m_b6 : 1;
    unsigned m_b7 : 1; // bit 7
    int m_04;
    int m_08;
    int m_0C;
    int m_10;
    u8 m_14[4];
    int m_state;       // 0x18: -1 when idle
    char m_name[0x40]; // 0x1C
    int m_id;          // 0x5C
    int m_60;
    int m_64;
    VtEntry *m_vtable; // 0x68
    int m_6C;
    int m_70, m_74, m_78, m_7C, m_80;
    u8 m_84[0x18];
    void *m_9C;
    void *m_A0;
    u8 m_A4[4];
    u8 m_A8[0x90];
    NamedOwner *m_138;
    int m_13C;
    u8 m_140;
    u8 m_141;
    u8 m_142[6];
    int m_148;
    int m_14C;
    int m_150;
    u8 m_154[8];
    int m_15C;
    int m_160;
    int m_164;
    int m_168;
    int m_16C;
    int m_170;
};

// What an entry plays
struct EntryData {
    int m_00;
    int m_04;
    union {
        short m_08;
        u8 m_len; // 0x08: a text's room
    };
    char *m_text; // 0x0C
};

// An entry found by name in an object list
struct NamedEntry {
    int m_00;
    unsigned m_flags : 11; // 0x04
    int m_08;
    int m_0C;
    EntryData *m_10;
};

// What m_138 points at
struct NamedOwner {
    u8 m_00[0x37C];
    short *m_37C;
};

// What m_A0 points at: two arrays
struct NamedArrays {
    u8 m_00[0x15C];
    int *m_15C;
    int *m_160;
};

// What holds an object list at 0x38
struct Holder {
    u8 m_00[0x38];
    void *m_38;
};

// An array element of 0x74 bytes with an object list at 0x38
struct SceneItem {
    u8 m_00[0x38];
    void *m_38;
    u8 m_3C[0x38];
};

// A scene: its items
struct Scene {
    u8 m_00[0xA70];
    int m_count; // 0xA70
    u8 m_A74[8];
    SceneItem *m_items; // 0xA7C
    char **m_A80;
    char **m_A84;
    u8 m_A88[8];
    int m_A90;
    int m_A94;
    u8 m_A98[4];
    u8 *m_A9C;
};

// An event: its kind, its scene
struct SceneEvent {
    int m_00;
    Scene *m_scene;
};

// The sounds by index (12 bytes each)
struct SoundSlot {
    int m_00;
    int m_04;
    int m_08;
};
extern SoundSlot *D_800C9EE4;

#define VCALL(o, i) ((o)->m_vtable[i].m_func((char *)(o) + (o)->m_vtable[i].m_delta))
#define VCALL1(o, i, a) \
    (((int (*)(void *, int))(o)->m_vtable[i].m_func)((char *)(o) + (o)->m_vtable[i].m_delta, a))

extern VtEntry D_800C4EA8[]; // the vtable
extern char D_800C4EA0[];    // the default name
extern int D_800CAE6C;
extern int D_800CAE60; // the next id
extern int D_800CBC94[1];
void func_8006CA84(int a, int b);
void __builtin_delete(void *p);

void func_8003FC28(Named *o, int i, int j);
Named *func_8003FC94(Named *o);
void func_8003FCF8(Named *o, int flags);
int func_8003FD2C(Named *o);
int func_8003FD4C(Named *o);
void func_8003FD54(Named *o);
int func_8003FD5C(Named *o, int s);
int func_8003FDD4(Named *o);
int func_8003FE1C(Named *o);
void func_8003FE2C(Named *o, const char *name);
void func_8003FE5C(Named *o, int on);
void func_8003FE78(Named *o, int on);
void func_8003F6B8(Scene *s);
int func_80040CC8(Named *o);
void func_8004047C(Named *o, Holder *h, const char *name);
void func_8004041C(Named *o, Holder *h, const char *name);
void func_80040DB8(Named *o);
void func_80040034(Named *o, int a);
void func_800402D0(Named *o, Holder *h, const char *name, int x);
NamedEntry *func_80040178(Named *o, Holder *h, const char *name, int x, ...);
int func_80040C34(Named *o);
NamedEntry *func_80017E10(void *l, const char *name, int len); // by name
void func_80017730(void *l);
void func_8001865C(void *l);
NamedEntry *func_80040234(Named *o, Holder *h, NamedEntry *e, int x);
void func_80040D1C(Named *o);
Named *func_800404D0(Named *o);
void func_8003FF70(SceneEvent *ev, int a, SceneEvent *b);
NamedEntry *func_80040344(Named *o, Holder *h, const char *name, unsigned int k);
int func_8005C424(NamedOwner *w, int x);
void __builtin_vec_delete(void *p);

// A stage (what m_A0 points at)
struct Stage {
    u8 m_00[8];
    int m_08;
    u8 m_0C[0x84];
    int m_90;
    int m_94[9]; // 0x94
    int m_B8, m_BC;
    int *m_C0;
    u8 m_C4[4];
    int m_C8, m_CC, m_D0, m_D4;
};

// The race's settings
struct Config {
    u8 m_00[0x40];
    int m_40, m_44, m_48, m_4C, m_50;
    u8 m_54[0x94];
    int m_E8[9]; // 0xE8
};
extern Config D_800CC030;
extern int D_800D489C;
extern int D_800C9360;
extern int D_800C873C, D_800C4938, D_800C8C68, D_800CBE90, D_800CBE94;
extern char D_800CAB78[]; // a text buffer of 64
extern char D_800CABB7;   // its last byte
extern char D_800C4F78[]; // what a text too long becomes
extern int D_800C8D8C;
extern char D_800C4FC8[], D_800C4FD4[];
void func_800A6168(char *buf, const char *fmt, char *ap); // vsprintf
int func_80040A24(Named *o, int *a);
void func_800405A0(Named *o);
void func_80040B04(Named *o);
void func_8009D350(void);
void func_8003B484(void *a, int b, int c, int *d, int e, int f);
void func_8003B51C(void *a, int *b, int c, int d);
void func_8003F740(void *a);
void func_8003B47C(void *a);
int func_800955C4(int a, const char *name);
void func_8007F2AC(int a, int b, int c);
int func_8008106C(void *p);
void func_80081154(int a, int b);
void func_800811C4(int a, int b, int c);
void func_80044CC4(Named *o);
void func_800449A8(void *p);
extern int D_800C54B8;
extern char D_800C4FB8[];
extern char D_800C4F70[];
int func_800A60AC(const char *a, const char *b);
void func_800AFC0C(int a, Named *o);
void func_8009D3E4(void);
extern int D_800C89E8;
void func_8008107C(int a, int b);
void func_8003EC90(void *a, int b, int c, int d);
Named *func_80078FC4(int *list, int s);
unsigned int strlen(const char *s);
int func_8003FEE4(Named *o);
int func_8003FEEC(Named *o);
int func_8003FEF4(Named *o);
int func_8003FF24(Named *o);
int func_8003FF2C(Named *o);
int func_8003FF34(Named *o);
int func_8003FF3C(Named *o);
int func_8003FF44(Named *o);
int func_8003FF68(Named *o);
void func_8003FEFC(Named *o);
void func_8003FF04(Named *o);
void func_8003FF0C(Named *o);
void func_8003FF4C(Named *o);
int func_8003FF14(Named *o);
int func_8003FF1C(Named *o);
void func_8003FEC4(Named *o, int on);
int func_8003FF54(Named *o);
void func_80040578(Named *o, int flags);
int func_800401FC(Named *o, int a, int b, int c, ...);
int func_8004009C(Named *o, int a, int b, int c, char *ap);
void func_80040E18(Named *o);
extern int D_800D49EC;
void func_8003B734(void *a, int b, int c);
int func_800406A4(Named *o);
void func_80044D70(Named *o);
void *func_80078244(void *p);
void *__builtin_new(unsigned int n);
int func_80040E50(Named *o);
int func_80044DB8(Named *o);
void func_8003B850(void *a, int s);
extern VtEntry D_800C53E8[];
}

void func_8003F6B8(Scene *s) {
    int i;

    for (i = 0; i < s->m_count; i++) {
        func_80017730(s->m_items[i].m_38);
        func_8001865C(s->m_items[i].m_38);
    }
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_23", func_8003F740);

#ifdef NON_MATCHING
/* Registers: the original keeps -1 in $v1 for both tests (7 off) */
void func_8003FC28(Named *o, int i, int j) {
    int *a = (int *)o->m_15C;
    int *b;
    int s;

    if (!a || !(b = (int *)o->m_160)) {
        return;
    }
    if (j == -1) {
        s = b[i];
    } else if (j) {
        s = a[j];
    } else {
        return;
    }
    if (s != -1) {
        func_8006CA84(s, 0x7F);
    }
}
#else
INCLUDE_ASM("asm/langimg/nonmatchings/chunk_23", func_8003FC28);
#endif

#ifdef NON_MATCHING
/* Scheduling: the original loads -1 after storing the vtable, in the same register (8 off) */
Named *func_8003FC94(Named *o) {
    o->m_vtable = D_800C4EA8;
    o->m_0C = -1;
    o->m_state = -1;
    *(int *)o = 0;
    o->m_10 = 0;
    o->m_04 = 0;
    o->m_60 = 0;
    o->m_64 = 0;
    o->m_b7 = 1;
    func_8003FE2C(o, D_800C4EA0);
    return o;
}
#else
INCLUDE_ASM("asm/langimg/nonmatchings/chunk_23", func_8003FC94);
#endif

void func_8003FCF8(Named *o, int flags) {
    o->m_vtable = D_800C4EA8;
    if (flags & 1) {
        __builtin_delete(o);
    }
}

int func_8003FD2C(Named *o) {
    o->m_08 = D_800CAE6C;
    o->m_b7 = 1;
    return 1;
}

int func_8003FD4C(Named *o) {
    return 1;
}

void func_8003FD54(Named *o) {
}

/* Starts state s, if idle and it exists: the virtual call 18. */
int func_8003FD5C(Named *o, int s) {
    int r = 0;

    if (o->m_state == -1 && s >= 0 && s < 1 && D_800CBC94[s]) {
        o->m_state = s;
        r = VCALL(o, 18);
    }
    return r;
}

/* Stops the state: the virtual call 19. */
int func_8003FDD4(Named *o) {
    VCALL(o, 19);
    o->m_state = -1;
    return 1;
}

int func_8003FE1C(Named *o) {
    o->m_state = -1;
    return 1;
}

void func_8003FE2C(Named *o, const char *name) {
    strncpy(o->m_name, name, 0x3F);
    o->m_name[0x3F] = 0;
}

void func_8003FE5C(Named *o, int on) {
    o->m_on = on;
}

/* Marks the object used, and numbers it. */
void func_8003FE78(Named *o, int on) {
    if (on) {
        o->m_used = 1;
        o->m_b5 = on;
        o->m_id = D_800CAE60++;
    }
}

void func_8003FEC4(Named *o, int on) {
    o->m_b1 = on;
}

int func_8003FEE4(Named *o) {
    return 1;
}

int func_8003FEEC(Named *o) {
    return 1;
}

int func_8003FEF4(Named *o) {
    return 1;
}

void func_8003FEFC(Named *o) {
}

void func_8003FF04(Named *o) {
}

void func_8003FF0C(Named *o) {
}

int func_8003FF14(Named *o) {
    return 0;
}

int func_8003FF1C(Named *o) {
    return 0;
}

int func_8003FF24(Named *o) {
    return 1;
}

int func_8003FF2C(Named *o) {
    return 1;
}

int func_8003FF34(Named *o) {
    return 1;
}

int func_8003FF3C(Named *o) {
    return 1;
}

int func_8003FF44(Named *o) {
    return 1;
}

void func_8003FF4C(Named *o) {
}

int func_8003FF54(Named *o) {
    o->m_04++;
    return 1;
}

int func_8003FF68(Named *o) {
    return 1;
}

void func_8003FF70(SceneEvent *ev, int a, SceneEvent *b) {
    Scene *s = b->m_scene;
    int i;

    if (!ev->m_00) {
        int *q = (int *)(s->m_A9C + 8);
        char **names;

        if (s->m_A90 == 1 || s->m_A90 == 4) {
            names = s->m_A84;
        } else {
            names = s->m_A80;
        }
        if (func_800A60AC(*names, D_800C4F70)) {
            for (i = 0; i < 2; i++) {
                func_8003EC90(s, 12, i, 0);
            }
            q[3] = 1;
            s->m_A94 |= 4;
        }
    }
}

void func_80040034(Named *o, int a) {
    int i;

    o->m_160 = 1;
    o->m_164 = a;
    for (i = 0; i < o->m_16C; i++) {
        func_8003EC90(o->m_A0, 12, i, 0);
    }
}

#ifdef NON_MATCHING
/* Registers: the room's copy and the buffer's index (9 off) */
/* An entry's text from a format and its arguments, cut to its room. */
int func_8004009C(Named *o, int h, int ent, int fmt, char *ap) {
    NamedEntry *e = (NamedEntry *)ent;

    if (e) {
        EntryData *d = e->m_10;
        char *buf;

        if (d->m_00 & 0x40000) {
            return ent;
        }
        buf = D_800CAB78;
        D_800CABB7 = 0;
        buf[d->m_len] = 0;
        func_800A6168(buf, (const char *)fmt, ap);
        if (d->m_len < strlen(buf)) {
            int len = d->m_len;

            if (!len) {
                return ent;
            }
            strncpy(d->m_text, D_800C4F78, len + 1);
        } else {
            strncpy(d->m_text, buf, d->m_len + 1);
        }
        d->m_text[d->m_len] = 0;
    }
    return ent;
}
#else
INCLUDE_ASM("asm/langimg/nonmatchings/chunk_23", func_8004009C);
#endif

NamedEntry *func_80040178(Named *o, Holder *h, const char *name, int x, ...) {
    char *ap = (char *)&x + sizeof(x);
    NamedEntry *e = func_80017E10(h->m_38, name, strlen(name));

    func_8004009C(o, (int)h, (int)e, x, ap);
    return e;
}

/* func_8004009C with the rest of the arguments as a list; returns b. */
int func_800401FC(Named *o, int a, int b, int c, ...) {
    char *ap = (char *)&c + sizeof(c);

    func_8004009C(o, a, b, c, ap);
    return b;
}

NamedEntry *func_80040234(Named *o, Holder *h, NamedEntry *e, int x) {
    EntryData *d = e->m_10;

    if (d->m_00 & 0x40000) {
        d->m_08 = o->m_138->m_37C[x];
    } else {
        e = (NamedEntry *)func_800401FC(o, (int)h, (int)e, func_8005C424(o->m_138, x));
    }
    return e;
}

void func_800402D0(Named *o, Holder *h, const char *name, int x) {
    NamedEntry *e = func_80017E10(h->m_38, name, strlen(name));

    if (e) {
        func_80040234(o, h, e, x);
    }
}

NamedEntry *func_80040344(Named *o, Holder *h, const char *name, unsigned int k) {
    NamedEntry *e = func_80017E10(h->m_38, name, strlen(name));

    e->m_flags &= ~2;
    if (k < 8 && D_800C9EE4[k].m_00) {
        func_800401FC(o, (int)h, (int)e, D_800C9EE4[k].m_00);
        e->m_flags |= 2;
    }
    return e;
}

void func_8004041C(Named *o, Holder *h, const char *name) {
    func_80017E10(h->m_38, name, strlen(name))->m_flags |= 2;
}

void func_8004047C(Named *o, Holder *h, const char *name) {
    func_80017E10(h->m_38, name, strlen(name))->m_flags &= ~2;
}

#ifdef NON_MATCHING
/* Registers: -1 in $a1 in the original, $v0 here, as in func_8003FC94 (7 off) */
/* The subclass's constructor (its vtable D_800C53E8). */
Named *func_800404D0(Named *o) {
    func_80044CC4(o);
    o->m_vtable = D_800C53E8;
    func_800449A8(o->m_A8);
    o->m_0C = -1;
    o->m_state = -1;
    o->m_150 = -1;
    o->m_168 = -1;
    o->m_A0 = 0;
    o->m_10 = 0x12;
    o->m_60 = (int)&D_800C54B8;
    o->m_140 = 0;
    o->m_15C = 0;
    o->m_148 = 0;
    o->m_141 = 0;
    o->m_13C = 0;
    o->m_170 = 0;
    o->m_160 = 0;
    o->m_164 = 0;
    o->m_16C = 0;
    o->m_b7 = 1;
    func_8003FE2C(o, D_800C4FB8);
    return o;
}
#else
INCLUDE_ASM("asm/langimg/nonmatchings/chunk_23", func_800404D0);
#endif

/* A subclass's destructor (its vtable D_800C53E8). */
void func_80040578(Named *o, int flags) {
    o->m_vtable = D_800C53E8;
    func_8003FCF8(o, flags);
}

void func_800405A0(Named *o) {
    ((Stage *)o->m_A0)->m_90 = 0;
    ((Stage *)o->m_A0)->m_94[0] = D_800CC030.m_E8[0];
    ((Stage *)o->m_A0)->m_94[1] = D_800CC030.m_E8[1];
    ((Stage *)o->m_A0)->m_94[2] = D_800CC030.m_E8[2];
    ((Stage *)o->m_A0)->m_94[3] = D_800CC030.m_E8[3];
    ((Stage *)o->m_A0)->m_94[4] = D_800CC030.m_E8[4];
    ((Stage *)o->m_A0)->m_94[5] = D_800CC030.m_E8[5];
    ((Stage *)o->m_A0)->m_94[6] = D_800CC030.m_E8[6];
    ((Stage *)o->m_A0)->m_94[7] = D_800CC030.m_E8[7];
    ((Stage *)o->m_A0)->m_94[8] = D_800CC030.m_E8[8];
    ((Stage *)o->m_A0)->m_C0 = &D_800D489C;
    ((Stage *)o->m_A0)->m_BC = D_800CC030.m_40;
    ((Stage *)o->m_A0)->m_B8 = D_800CC030.m_4C;
    ((Stage *)o->m_A0)->m_C8 = 0x5A;
    ((Stage *)o->m_A0)->m_CC = 0x109;
    ((Stage *)o->m_A0)->m_D0 = 0x19A;
    ((Stage *)o->m_A0)->m_D4 = 0xDF;
}

int func_800406A4(Named *o) {
    func_80044D70(o);
    o->m_9C = func_80078244(__builtin_new(0x194));
    return 1;
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_23", func_800406E0);

int func_80040A24(Named *o, int *a) {
    func_80078FC4(D_800CBC94, *a);
    ((Stage *)o->m_A0)->m_08 = 9;
    func_8009D350();
    o->m_14C = D_800D489C;
    func_8003B484(o->m_A0, o->m_60, D_800C9360, &o->m_14C, 4, 1);
    func_8003B51C(o->m_A0, &o->m_14C, 4, 1);
    func_8003F740(o->m_A0);
    D_800C873C = o->m_70;
    D_800C4938 = o->m_74;
    D_800C8C68 = o->m_78;
    D_800CBE90 = o->m_7C;
    D_800CBE94 = o->m_80;
    return 1;
}

void func_80040B04(Named *o) {
    int v;

    func_8007F2AC(D_800CC030.m_44, (u16)func_800955C4(D_800C8D8C, D_800C4FC8), 0x15E);
    v = (u16)func_800955C4(D_800C8D8C, D_800C4FD4);
    func_8007F2AC(D_800CC030.m_48, v, 1000);
    func_8007F2AC(D_800CC030.m_4C, v, 1000);
    D_800C89E8 = func_8008106C(__builtin_new(0xC));
    func_80081154(D_800C89E8, 5);
    func_800811C4(D_800C89E8, D_800CC030.m_44, 0);
    func_800811C4(D_800C89E8, D_800CC030.m_48, 0);
    func_800811C4(D_800C89E8, D_800CC030.m_4C, 0);
    func_800811C4(D_800C89E8, D_800CC030.m_40, 0);
    func_800811C4(D_800C89E8, D_800CC030.m_50, 0);
    func_8003B47C(o->m_A0);
    func_800405A0(o);
}

int func_80040C34(Named *o) {
    int r = VCALL1(o, 20, 1);
    Named *p = func_80078FC4(D_800CBC94, o->m_state);

    if (p) {
        ((Named *)VCALL1(p, 14, ((int *)o->m_A0)[2]))->m_9C = o->m_9C;
    }
    return r;
}

int func_80040CC8(Named *o) {
    int v = VCALL(o, 21);
    int r = 0;

    if (v) {
        r = func_8003FE1C(o) != 0;
    }
    return r;
}

void func_80040D1C(Named *o) {
    NamedArrays *a;

    if (o->m_9C) {
        __builtin_delete(o->m_9C);
        o->m_9C = 0;
    }
    if ((a = (NamedArrays *)o->m_A0)) {
        if (a->m_15C) {
            __builtin_vec_delete(a->m_15C);
            ((NamedArrays *)o->m_A0)->m_15C = 0;
        }
        if (((NamedArrays *)o->m_A0)->m_160) {
            __builtin_vec_delete(((NamedArrays *)o->m_A0)->m_160);
            ((NamedArrays *)o->m_A0)->m_160 = 0;
        }
    }
}

void func_80040DB8(Named *o) {
    func_800AFC0C(o->m_60, o);
    func_8009D3E4();
    func_80040E18(o);
    if (D_800C89E8) {
        func_8008107C(D_800C89E8, 3);
        D_800C89E8 = 0;
    }
}

void func_80040E18(Named *o) {
    if (D_800D49EC == 10) {
        func_8003B734(o->m_A0, 1, 0);
    }
}

int func_80040E50(Named *o) {
    func_80044DB8(o);
    if (o->m_15C) {
        func_8003B850(o->m_A0, o->m_state);
    }
    return 1;
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_23", func_80040E98);
