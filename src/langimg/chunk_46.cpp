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
// A sound's definition: its samples and the spreads of its values
struct Def46 {
    u8 m_00[8];
    u16 *m_08; // the samples
    s8 m_0C;   // how many
    s8 m_0D;   // the pan
    s8 m_0E;   // its spread
    u8 m_0F;
    int m_10;
    int m_14;
    int m_18;
    int m_1C;
    u8 m_20[0xE];
    u16 m_2E; // flags
    short m_30;
    short m_32;
    u8 m_34[2];
    u16 m_36;
    u8 m_38[4];
    short m_3C;
    short m_3E;
};
// A bank of definitions, played in turn
struct Bank46 {
    int m_00;
    Def46 **m_04;
};
struct Vec46 {
    int vx, vy, vz;
};
struct Time46 {
    int m_t : 30;
    u32 m_f : 2;
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
    Bank46 *m_00;
    Def46 *m_04;
    u8 m_08[4];
    short m_0C; // the bank's next
    short m_0E; // the sample
    int m_10;   // the voice, or -1
    int m_14;   // when it started
    int m_18;
    int m_1C;
    short m_20;
    short m_22;
    u16 m_24;
    short m_26;
    u8 m_28;
    s8 m_29;
    s8 m_2A;
    u8 m_2B;
    int m_2C;
    int m_30;
    Vec46 m_34;
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
void func_8006D4B0(Voice46 *v);
// What a bike's sounds read
struct Ride46 {
    u8 m_00[0x110];
    int m_110; // the speed
    u8 m_114[0x44];
    s8 m_158;
};
struct Bike46 {
    u8 m_00[0x30];
    Ride46 *m_30;
    u8 m_34[0x155];
    s8 m_189;
};
extern int D_800CB5D0; // the game's mode
extern short D_800C8330[], D_800C8340[], D_800C8350[];
int func_80063A30(Ride46 *r);
void func_80014368(u8 *w, int v, int vol);
void func_8006E144(Snd46 *s, Bike46 *b);
int func_800B6318(void); // rand
extern Time46 D_800D6124;
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

static inline void VecZero46(Vec46 *v) {
    v->vx = 0;
    v->vy = 0;
    v->vz = 0;
}

// A voice stopped, if there is one
static inline void StopVoice46(int *v) {
    if (*v != -1) {
        func_80014B74(D_800D11D0, *v);
        *v = -1;
    }
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

/* A voice set up from its bank's next definition, its values spread at
 * random. */
#ifdef NON_MATCHING
// Registers: the definition and the running value swap $s0 and $s1
void func_8006D4B0(Voice46 *v) {
    Def46 *d = v->m_04;

    v->m_10 = -1;
    v->m_2A = 1;
    v->m_28 = 0;
    v->m_20 = 0x1000;
    v->m_14 = D_800D6124.m_t;
    if (d) {
        u16 *p;
        int x;

        d = v->m_00->m_04[v->m_0C++];
        if (v->m_0C == v->m_00->m_00) {
            v->m_0C = 0;
        }
        if (d->m_2E & 0x2000) {
            v->m_28 = 2;
        }
        if (d->m_2E & 0x4000) {
            v->m_28 = 1;
        }
        p = d->m_08;
        if (d->m_0C) {
            p += func_800B6318() % d->m_0C;
        }
        v->m_0E = *p;
        x = d->m_30;
        if (d->m_32) {
            x += func_800B6318() % d->m_32;
        }
        v->m_20 = x;
        x = d->m_10;
        if (d->m_14) {
            x += func_800B6318() % d->m_14;
        }
        v->m_18 = x;
        x = d->m_18;
        if (d->m_1C) {
            x += func_800B6318() % d->m_1C;
        }
        v->m_1C = x;
        x = d->m_0D;
        if (d->m_0E) {
            x += func_800B6318() % d->m_0E;
        }
        v->m_29 = x;
    }
    v->m_04 = d;
    v->m_26 = 0x40;
    v->m_2C = 0;
    v->m_30 = 0;
    VecZero46(&v->m_34);
    v->m_24 = d->m_36;
    v->m_22 = v->m_20;
}
#else
INCLUDE_ASM("asm/langimg/nonmatchings/chunk_46", func_8006D4B0);
#endif

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

#ifdef NON_MATCHING
// Registers ($s1-$s4 in another order) and the table's choice
/* The engine's sound: by the gear, its volume from the speed. */
void func_8006E144(Snd46 *s, Bike46 *b) {
    Ride46 *r = b->m_30;
    short *t;
    int k;
    int sp;
    int vol;
    s8 g;

    if (r->m_158) {
        s->m_00 = D_800D6124.m_t;
    }
    s->m_09 = s->m_08;
    {
        int n = func_80063A30(r);

        s->m_08 = n;
        g = n;
    }
    sp = r->m_110;
    if (D_800CB5D0 != 5) {
        t = D_800C8350;
        if (D_800CB5D0 == 1) {
            t = D_800C8340;
        }
    } else {
        t = D_800C8330;
    }
    k = t[g];
    sp = (sp ^ (sp >> 31)) - (sp >> 31);
    if (sp > 0) {
        if (sp > 0x13FFF) {
            vol = 0x7F;
        } else {
            vol = sp * 127 / 0x14000;
        }
    } else {
        vol = 0;
    }
    if (vol && k != -1 && !b->m_189) {
        if ((s8)s->m_09 != g) {
            StopVoice46(&s->m_04);
        }
        if (s->m_04 == -1) {
            int n = func_80014A98(D_800D11D0, k, 0);

            s->m_04 = n;
            func_80014B18(D_800D11D0, n);
        }
        func_80014368(D_800D11D0, s->m_04, vol);
    } else {
        StopVoice46(&s->m_04);
    }
}
#else
INCLUDE_ASM("asm/langimg/nonmatchings/chunk_46", func_8006E144);
#endif

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

void func_8006E3C8(SndB46 *s) {
    func_8006E0FC(s);
    StopVoice46(&s->m_10[0]);
    StopVoice46(&s->m_10[1]);
    StopVoice46(&s->m_10[2]);
    StopVoice46(&s->m_10[3]);
}

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

void func_8006EA88(SndA46 *s) {
    func_8006E0FC(s);
    StopVoice46(&s->m_10[0]);
    StopVoice46(&s->m_10[1]);
    StopVoice46(&s->m_10[2]);
    StopVoice46(&s->m_10[3]);
    StopVoice46(&s->m_10[4]);
}

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
