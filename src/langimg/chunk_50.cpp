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
Obj50 *func_80074510(Obj50 *o);
Obj50 *func_80074534(Obj50 *o);
void func_800745AC(Obj50 *o, int f);
Obj50 *func_80074D30(Obj50 *o);
void func_80074D78(Obj50 *o, int f);
void func_80075058(Obj50 *o);
Obj50 *func_80075440(void);
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

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_50", func_80075468);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_50", func_80075588);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_50", func_800758F4);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_50", func_80075A1C);

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
