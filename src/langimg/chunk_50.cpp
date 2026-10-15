#include "common.h"

struct Vec50 {
    int x;
    int y;
    int z;
};

struct SVec50 {
    short x;
    short y;
    short z;
    short pad;
};

// A vtable: the entry at 0x28 (GCC 2's {delta, index, function})
struct Vt50 {
    u8 m_00[0x28];
    short m_28;
    short m_2A;
    void (*m_2C)(void *o);
};

struct Src50 {
    u8 m_00[0x14];
    Vec50 *m_14;
    SVec50 *m_18;
};

// chunk_49's Obj49 and its subclasses
struct Obj50 {
    int m_00;
    u8 m_04[0x10];
    int m_14;
    u8 m_18[8];
    int m_20;
    u8 m_24[4];
    Src50 *m_28;
    u8 m_2C[8];
    Vt50 *m_34; // the vtable
    int m_38;
    u8 m_3C[4];
    u8 *m_40;
    Vec50 m_44;
    Vec50 m_50;
    u8 m_5C[0x18];
    SVec50 m_74;
    SVec50 m_7C;
    u8 m_84[0x10];
    u8 m_94;
    u8 m_95[7];
    int m_9C;
};

// A node of the track: its next, and its position
struct Node50 {
    struct Node50 *m_00;
    struct Node50 *m_04;
    u8 m_08[0xC];
    Vec50 *m_14;
    SVec50 *m_18;
};
// A subclass between two track nodes: the halves of its ends' differences
struct Seg50 {
    u8 m_00[0x28];
    Node50 *m_28;
    Node50 *m_2C;
    u8 m_30[0x54];
    SVec50 m_84;
    SVec50 m_8C;
};

static inline void Halve50(SVec50 *v) {
    v->x >>= 1;
    v->y >>= 1;
    v->z >>= 1;
}

struct Mat50 {
    short m[3][3];
    short pad;
    Vec50 t;
};

// A subclass that follows the track
struct Trk50 {
    u8 m_00[0x28];
    Node50 *m_28;
    Node50 *m_2C;
    u8 m_30[8];
    Vec50 m_38; // its direction
    u8 m_44[0x18];
    Vec50 m_5C;
    Vec50 m_68;
    u8 m_74[0x20];
    int m_94;
};

struct Pad50 {
    u8 m_00[4];
    int m_04;
    u8 m_08[0x54];
    int m_5C;
};

extern Pad50 *D_800C8740;
extern int D_800C877C; // vtables
extern int D_800C87B4;
extern int D_800C87EC;

extern "C" {
void func_80075A1C(Seg50 *o);
Obj50 *func_80074510(Obj50 *o);
Obj50 *func_80074534(Obj50 *o);
void func_800745AC(Obj50 *o, int f);
Obj50 *func_80074D30(Obj50 *o);
void func_80074D78(Obj50 *o, int f);
void func_80075058(Obj50 *o);
Obj50 *func_80075440(void);
Vec50 *func_800998D0(Vec50 *d, Vec50 *a, Vec50 *b);
int func_80099DF8(Vec50 *a, Vec50 *b);
Mat50 *func_80097D08(Mat50 *m, Vec50 *a, Vec50 *b);
void func_80099D48(Vec50 *v, int s);
void func_80075468(Trk50 *o, Mat50 *out, Vec50 *a, Vec50 *b);
void func_800758F4(Trk50 *o);
void func_80076390(Obj50 *o);
void func_80076420(Obj50 *o);
Obj50 *func_80076468(Obj50 *o);
void func_800764BC(Obj50 *o);
void func_80076504(short *a, short b);
void func_80076568(Obj50 *o, int f);
Obj50 *func_80076588(Obj50 *o);
Obj50 *func_800765B4(Obj50 *o);
void func_80076600(Obj50 *o, int f);
}

static inline void VecCopyL50(Vec50 *d, Vec50 *s) {
    int x = s->x;
    int y = s->y;
    int z = s->z;

    d->x = x;
    d->y = y;
    d->z = z;
}

Obj50 *func_80075440(void) {
    return func_80074D30((Obj50 *)operator new(0x20));
}

/* A matrix looking from a to b (or along the last direction). */
void func_80075468(Trk50 *o, Mat50 *out, Vec50 *a, Vec50 *b) {
    Vec50 z;
    Vec50 d;
    Vec50 *pz = &z;
    Vec50 *pd = &d;

    pz->x = 0;
    pz->y = 0;
    pz->z = 0;
    func_800998D0(pd, b, a);
    if (func_80099DF8(pd, pz)) {
        VecCopyL50(&d, &o->m_38);
    }
    if (!func_80099DF8(pd, pz)) {
        Mat50 m;

        func_80097D08(&m, pz, pd);
        *out = m;
        o->m_94 = (o->m_94 & ~0xF00) | 0x100;
    }
    VecCopyL50(&o->m_38, &d);
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_50", func_80075588);

/* Its two directions along the track, normalized. */
void func_800758F4(Trk50 *o) {
    Node50 *a = o->m_28;
    Node50 *b = o->m_2C;
    Node50 *c = b->m_00;
    Vec50 p0;
    Vec50 p1;
    Vec50 p2;
    Vec50 p3;
    Vec50 t;

    VecCopyL50(&p0, a->m_04->m_14);
    VecCopyL50(&p1, a->m_14);
    VecCopyL50(&p2, b->m_14);
    VecCopyL50(&p3, c->m_14);
    func_800998D0(&t, &p2, &p0);
    VecCopyL50(&o->m_5C, &t);
    func_800998D0(&t, &p3, &p1);
    VecCopyL50(&o->m_68, &t);
    func_80099D48(&o->m_5C, 1);
    func_80099D48(&o->m_68, 1);
}

#ifdef NON_MATCHING
// The short vectors' copies (lwl/lwr): the original's go through $t4/$t5, GCC's through $t0/$t1, and the differences' loads come out in another order (104 off, the structure the same).
void func_80075A1C(Seg50 *o) {
    Node50 *p = o->m_28;
    Node50 *q = o->m_2C;
    Node50 *pp = p->m_04;
    Node50 *qn = q->m_00;
    SVec50 a, b, c, d, t;

    a = *pp->m_18;
    b = *p->m_18;
    c = *q->m_18;
    d = *qn->m_18;
    t.x = c.x - a.x;
    t.y = c.y - a.y;
    t.z = c.z - a.z;
    o->m_84 = t;
    t.x = d.x - b.x;
    t.y = d.y - b.y;
    t.z = d.z - b.z;
    o->m_8C = t;
    Halve50(&o->m_84);
    Halve50(&o->m_8C);
}
#else
INCLUDE_ASM("asm/langimg/nonmatchings/chunk_50", func_80075A1C);
#endif

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_50", func_80075BEC);

/* Its position and angles taken from its source, then its method at 0x28. */
void func_80076390(Obj50 *o) {
    Src50 *src = o->m_28;

    if (src) {
        VecCopyL50(&o->m_44, src->m_14);
        o->m_74 = *src->m_18;
        o->m_34->m_2C((u8 *)o + o->m_34->m_28);
    }
}

/* The current position and angles kept as the last ones. */
void func_80076420(Obj50 *o) {
    VecCopyL50(&o->m_50, &o->m_44);
    o->m_7C = o->m_74;
}

Obj50 *func_80076468(Obj50 *o) {
    func_80074534(o);
    o->m_34 = (Vt50 *)&D_800C87B4;
    o->m_94 = 0;
    o->m_34 = (Vt50 *)&D_800C877C;
    o->m_00 = 4;
    o->m_9C = -1;
    return o;
}

void func_800764BC(Obj50 *o) {
    Pad50 *p = D_800C8740;

    if (p->m_04 & 0x8000) {
        p->m_5C = o->m_9C;
    }
    func_80075058(o);
}

#ifdef NON_MATCHING
// The original keeps the angle in $a2 through the loop and doesn't reload it
/* An angle brought within half a turn of b (in 4096ths). */
void func_80076504(short *a, short b) {
    while (b < *a) {
        *a -= 0x1000;
    }
    if (b - *a > 0x800) {
        *a += 0x1000;
    }
}
#else
INCLUDE_ASM("asm/langimg/nonmatchings/chunk_50", func_80076504);
#endif

void func_80076568(Obj50 *o, int f) {
    func_80074D78(o, f);
}

Obj50 *func_80076588(Obj50 *o) {
    func_80074510(o);
    o->m_14 = 0;
    return o;
}

Obj50 *func_800765B4(Obj50 *o) {
    func_80074534(o);
    o->m_34 = (Vt50 *)&D_800C87EC;
    o->m_00 = 1;
    o->m_38 = -1;
    o->m_20 = 0;
    o->m_40 = 0;
    return o;
}

void func_80076600(Obj50 *o, int f) {
    o->m_34 = (Vt50 *)&D_800C87EC;
    if (o->m_40) {
        delete[] o->m_40;
        o->m_40 = 0;
    }
    func_800745AC(o, f);
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_50", func_80076658);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_50", func_80076948);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_50", func_80076BD8);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_50", func_80076E20);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_50", func_8007702C);
