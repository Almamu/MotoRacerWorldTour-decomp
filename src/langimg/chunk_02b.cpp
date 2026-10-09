#include "common.h"
#include "langimg/cobjet.h"

/* Functions on Cobjet with C linkage, built with GCC 2.91.66 like the
 * game's other C files (docs/matching/issue-3-langimg-chunk02.md). */

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_02b", func_80016144);

/* Points the object at a matrix; flag 0x40000 when it isn't its own. */
void func_80016234(Cobjet *o, MATRIX *m, int own) {
    if (own) {
        o->m_04 &= ~0x40000;
    } else {
        o->m_04 |= 0x40000;
    }
    o->m_matp = m;
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_02b", func_80016268);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_02b", func_80016434);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_02b", func_80016600);

/* Points the object at its own matrix. */
void func_80016798(Cobjet *o) {
    o->m_matp = &o->m_mat;
    o->m_04 &= ~0x40000;
}

#ifdef NON_MATCHING
/* Equivalent; registers only: the original moves the object pointer to
 * $a2 and uses $a0 for a value */
/* The object's position (its matrix's translation). */
void func_800167B8(Cobjet *o, Vector3 *out) {
    out->vx = o->m_matp->t[0];
    out->vy = o->m_matp->t[1];
    out->vz = o->m_matp->t[2];
}
#else
INCLUDE_ASM("asm/langimg/nonmatchings/chunk_02b", func_800167B8);
#endif

/* The object's angles, from the cache or its matrix. */
void func_800167F8(Cobjet *o, SVECTOR *out) {
    if (!func_80016914(o, out)) {
        SVECTOR b;
        SVECTOR a;

        func_80098418(o->m_matp, &a);
        b = a;
        *out = b;
    }
}

/* Empties the angle cache. */
void func_8001687C(void) {
    int i;

    for (i = 9; i >= 0; i--) {
        D_800CA750[i] = 0;
    }
    D_800C493C = -1;
}

#ifdef NON_MATCHING
/* Equivalent; the original forms the entries' addresses in registers
 * (la + addu) where GCC uses the assembler's sym(reg) addressing */
/* Caches an object's angles, over the oldest entry. */
void func_800168A8(Cobjet *o, SVECTOR *v) {
    if (++D_800C493C >= 10) {
        D_800C493C = 0;
    }
    D_800CA780[D_800C493C] = *v;
    D_800CA750[D_800C493C] = o;
}
#else
INCLUDE_ASM("asm/langimg/nonmatchings/chunk_02b", func_800168A8);
#endif

/* An object's angles from the cache, newest first; 0 if not there. */
int func_80016914(Cobjet *o, SVECTOR *out) {
    int i = D_800C493C;
    int start = i;

    if (i >= 0) {
        do {
            if (D_800CA750[i] == o) {
                *out = D_800CA780[i];
                return 1;
            }
            if (--i < 0) {
                i = 9;
            }
        } while (i != start);
    }
    return 0;
}

void func_80016998(void) {
}

void func_800169A0(void) {
}

void func_800169A8(void) {
}

void func_800169B0(void) {
}

/* Sets m_44 on the object and, unless already set, its subtree. */
void func_800169B8(Cobjet *o, int v, int force) {
    if (force || o->m_44 == -1) {
        o->m_44 = v;
        if (o->m_40) {
            if (o->m_40->m_first) {
                func_800169B8(o->m_40->m_first, 0, 1);
            }
            if (o->m_40->m_next) {
                func_800169B8(o->m_40->m_next, 0, 1);
            }
        }
    }
}

/* How many objects follow this one along m_40->m_next. */
int func_80016A38(Cobjet *o) {
    int n = 0;
    Cobjet *p = o->m_40 ? o->m_40->m_next : 0;

    while (p) {
        n++;
        p = p->m_40 ? p->m_40->m_next : 0;
    }
    return n;
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_02b", func_80016A8C);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_02b", func_80016C3C);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_02b", func_80016E34);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_02b", func_80017574);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_02b", func_80017730);
