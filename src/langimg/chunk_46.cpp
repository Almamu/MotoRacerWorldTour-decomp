#include "common.h"

/* The sound entries' classes and their manager (docs/matching/issue-47-langimg-chunk46.md) */

extern "C" {
struct VtEntry46 {
    short m_delta;
    short m_index;
    void (*m_func)(void *self);
};
// A sound: its vtable at 0x0C
struct Snd46 {
    int m_00;
    int m_04; // a voice, or -1
    u8 m_08;
    u8 m_09;
    u8 m_0A[2];
    VtEntry46 *m_0C;
};
// The entries' two kinds of sound
struct SndA46 : Snd46 {
    int m_10[5];
    u8 m_24[4];
    u8 m_28;
    u8 m_29;
    short m_2A;
    int m_2C;
    int m_30;
    u8 m_34[4];
    u8 m_38[6];
    u8 m_3E[2];
};
struct SndB46 : Snd46 {
    int m_10[4];
    int m_20;
    int m_24;
    int m_28;
    int m_2C;
};
// An entry (124 bytes, chunk_47's Ent47): two sounds
struct Ent46 {
    SndA46 m_00;
    SndB46 m_40;
    u8 m_70;
    u8 m_71[7];
    int m_78;
};
struct Elt46 {
    u8 m_00[0xC];
};
// The manager's channels, 0x4C0 bytes each
struct Chan46 {
    u8 m_000[0x400];
    Elt46 m_400[16];
};
struct Mgr46 {
    Chan46 m_00[2];
    u8 m_980[8];
    short *m_988;
};
struct Def46 {
    u8 m_00[0x2E];
    u16 m_2E;
    u8 m_30[0xC];
    short m_3C;
    short m_3E;
};
// A voice's attributes, as func_800144B8 takes them
struct Attr46 {
    u16 m_00; // the mask
    u16 m_02;
    u8 m_04[8];
    int m_0C;
    u8 m_10[4];
    int m_14;
    int m_18;
    u8 m_1C[0x1C];
};
// A playing voice
struct Voice46 {
    u8 m_00[4];
    Def46 *m_04;
    u8 m_08[6];
    short m_0E;
    int m_10; // the voice, or -1
    u8 m_14[0xC];
    short m_20;
    u8 m_22[2];
    u16 m_24;
    u8 m_26[4];
    s8 m_2A;
};

extern Mgr46 *D_800C7F28;
extern int D_800C7F90;
extern u8 D_800D11D0[];
extern u8 D_800C8428[]; // Snd46's vtable
void func_8006D1EC(Mgr46 *m);
void func_8006D230(Mgr46 *m);
void func_8006D18C(Mgr46 *m, u8 *w);
void func_8006D314(Mgr46 *m, int a);
void func_8006D388(Mgr46 *m, int a);
void func_8006D12C(Chan46 *c, int b);
void func_8006E9DC(SndA46 *s);
void func_8006E328(SndB46 *s);
void func_8006E378(SndB46 *s);
void func_80014B74(u8 *w, int v);
void func_8006D2E0(Mgr46 *m, int a, int i);
void func_8006CEAC(Elt46 *e);
void func_800144B8(u8 *w, int v, Attr46 *a);
int func_80014A98(u8 *w, int a, int mode);
void func_80014B18(u8 *w, int v);
void func_8006EA88(SndA46 *s);
void func_8006E3C8(SndB46 *s);
void func_8006D388(Mgr46 *m, int a);
void func_8006D420(Mgr46 *m, int k);
void func_8006D6C8(Voice46 *v);
void func_8006D748(Voice46 *v);
void func_8006D7E4(Voice46 *v);
void func_8006F21C(Ent46 *e);

void func_8006D3E0(Mgr46 *m, int i, int b);
void func_8006DF68(void);
void func_8006DF90(void);
void func_8006DFB4(void);
void func_8006DFD8(int a, int b);
void func_8006E004(int a);
void func_8006E02C(int a);
Snd46 *func_8006E054(Snd46 *s);
void func_8006E088(Snd46 *s);
void func_8006E0C0(Snd46 *s);
void func_8006E0FC(Snd46 *s);
void func_8006EA48(Snd46 *s);
void func_8006F1E0(Ent46 *e);
void func_8006F270(Ent46 *e);
}

#define VCALL46(p, i) ((p)->m_0C[i].m_func((char *)(p) + (p)->m_0C[i].m_delta))

void func_8006D388(Mgr46 *m, int a) {
    u32 i;

    for (i = 0; i < 2; i++) {
        func_8006D2E0(m, a, i);
    }
}

void func_8006D3E0(Mgr46 *m, int i, int b) {
    D_800C7F90 = i;
    func_8006D12C(&m->m_00[i], b);
    D_800C7F90 = -1;
}

void func_8006D420(Mgr46 *m, int k) {
    Chan46 *c;
    u32 i;

    if (m->m_988[k] != -1) {
        for (i = 0, c = m->m_00; i < 2; i++, c++) {
            func_8006CEAC(&c->m_400[m->m_988[k]]);
        }
    }
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_46", func_8006D4B0);

#ifdef NON_MATCHING
// The original stores the mask three times (1, 9, 0x89); ours once
/* The voice's volume, pitch and envelope set from its definition. */
void func_8006D6C8(Voice46 *v) {
    Attr46 a;

    if (v->m_10 != -1) {
        a.m_00 = 1;
        a.m_00 |= 8;
        a.m_00 |= 0x80;
        a.m_02 = v->m_24;
        a.m_0C = v->m_20;
        a.m_14 = v->m_04->m_3C << 12;
        a.m_18 = v->m_04->m_3E << 12;
        func_800144B8(D_800D11D0, v->m_10, &a);
    }
}
#else
INCLUDE_ASM("asm/langimg/nonmatchings/chunk_46", func_8006D6C8);
#endif

#ifdef NON_MATCHING
// The original computes the mode without a branch and keeps the world's address's high half
/* The voice started. */
void func_8006D748(Voice46 *v) {
    u16 f;
    int mode;

    v->m_10 = -1;
    v->m_2A = 1;
    f = v->m_04->m_2E;
    if (f & 6) {
        mode = (!(f & 4) << 11) | 0x56;
    } else {
        mode = 0;
    }
    v->m_10 = func_80014A98(D_800D11D0, v->m_0E, mode);
    func_8006D6C8(v);
    func_80014B18(D_800D11D0, v->m_10);
    v->m_2A = 0;
}
#else
INCLUDE_ASM("asm/langimg/nonmatchings/chunk_46", func_8006D748);
#endif

void func_8006D7E4(Voice46 *v) {
    if (!v->m_2A) {
        if (v->m_10 != -1) {
            func_80014B74(D_800D11D0, v->m_10);
            v->m_10 = -1;
        }
        v->m_2A = 1;
    }
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_46", func_8006D844);

void func_8006DF68(void) {
    func_8006D18C(D_800C7F28, D_800D11D0);
}

void func_8006DF90(void) {
    func_8006D1EC(D_800C7F28);
}

void func_8006DFB4(void) {
    func_8006D230(D_800C7F28);
}

void func_8006DFD8(int a, int b) {
    func_8006D3E0(D_800C7F28, a, b);
}

void func_8006E004(int a) {
    func_8006D314(D_800C7F28, a);
}

void func_8006E02C(int a) {
    func_8006D388(D_800C7F28, a);
}

Snd46 *func_8006E054(Snd46 *s) {
    s->m_0C = (VtEntry46 *)D_800C8428;
    func_8006E088(s);
    return s;
}

void func_8006E088(Snd46 *s) {
    s->m_04 = -1;
    VCALL46(s, 2);
}

void func_8006E0C0(Snd46 *s) {
    s->m_00 = 0;
    s->m_09 = 0;
    s->m_08 = 0;
    VCALL46(s, 3);
}

void func_8006E0FC(Snd46 *s) {
    if (s->m_04 != -1) {
        func_80014B74(D_800D11D0, s->m_04);
        s->m_04 = -1;
    }
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_46", func_8006E144);

void func_8006E328(SndB46 *s) {
    func_8006E088(s);
    s->m_10[0] = -1;
    s->m_10[1] = -1;
    s->m_10[2] = -1;
    s->m_10[3] = -1;
    VCALL46(s, 2);
}

void func_8006E378(SndB46 *s) {
    func_8006E0C0(s);
    s->m_20 = 1;
    s->m_24 = 0;
    s->m_28 = 0;
    s->m_2C = 0;
    VCALL46(s, 3);
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_46", func_8006E3C8);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_46", func_8006E474);

void func_8006E9DC(SndA46 *s) {
    func_8006E088(s);
    s->m_10[0] = -1;
    s->m_10[1] = -1;
    s->m_10[2] = -1;
    s->m_10[3] = -1;
    s->m_10[4] = -1;
    s->m_28 = 0;
    s->m_29 = 3;
    s->m_2C = 0;
    s->m_2A = 0;
    s->m_30 = 0;
    s->m_38[0] = 0;
    s->m_38[1] = 0;
    s->m_38[2] = 0;
    s->m_38[3] = 0;
    s->m_38[4] = 0;
    s->m_38[5] = 0;
}

void func_8006EA48(Snd46 *s) {
    func_8006E0C0(s);
    VCALL46(s, 3);
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_46", func_8006EA88);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_46", func_8006EB54);

void func_8006F1E0(Ent46 *e) {
    func_8006E9DC(&e->m_00);
    func_8006E328(&e->m_40);
    e->m_70 = 1;
    e->m_78 = -1;
}

void func_8006F21C(Ent46 *e) {
    func_8006EA88(&e->m_00);
    func_8006E3C8(&e->m_40);
    if (e->m_78 != -1) {
        func_80014B74(D_800D11D0, e->m_78);
        e->m_78 = -1;
    }
}

void func_8006F270(Ent46 *e) {
    func_8006EA48(&e->m_00);
    func_8006E378(&e->m_40);
}
