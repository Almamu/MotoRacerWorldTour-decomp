#include "common.h"
#include "langimg/cobjet.h"
#include "stdarg.h"
#include "gte.h"

/* Functions on Cobjet with C linkage, built with GCC 2.91.66 like the
 * game's other plain functions (docs/matching/issue-3-langimg-chunk02.md). */

/* Sets up the object's parts (func_800178DC) and the n part numbers that
 * follow; m_3D is the first that isn't -1. */
int func_80016144(Cobjet *o, int a, int b, int n, ...) {
    int r = 0;
    int i;
    int j;
    int k;

    o->m_matp = 0;
    if (func_800178DC(o, n)) {
        if (o->m_38) {
            va_list ap;

            va_start(ap, n);
            for (i = 0; i < n; i++) {
                o->m_38[i] = va_arg(ap, int);
            }
            va_end(ap);
        }
        j = 0;
        k = n;
        o->m_3D = -1;
    /* the test of j at the top, of m_3D at the bottom: a goto */
    top:
        if (j < k) {
            if (o->m_38[j] != -1) {
                o->m_3D = j;
            }
            j++;
            if (o->m_3D == -1) {
                goto top;
            }
        }
        r = 1;
    }
    return r;
}

/* Points the object at a matrix; flag 0x40000 when it isn't its own. */
void func_80016234(Cobjet *o, MATRIX *m, int own) {
    if (own) {
        o->m_04 &= ~0x40000;
    } else {
        o->m_04 |= 0x40000;
    }
    o->m_matp = m;
}

#ifdef NON_MATCHING
/* Equivalent; the original computes each local's address anew for every
 * call, where GCC keeps them in saved registers */
/* Sets the object's rotation (x, then y, then z) and position; with no
 * position it keeps its own. */
void func_80016268(Cobjet *o, SVECTOR *rot, Vector3 *pos) {
    Vector3 cur;
    MATRIX mx;
    SVECTOR a;
    MATRIX my;
    MATRIX mz;
    MATRIX res;
    MATRIX tmp;

    if (!o->m_matp) {
        func_80016798(o);
    }
    if (!pos) {
        func_800167B8(o, &cur);
    }
    if (rot) {
        MATRIX *m;

        a.vx = rot->vx;
        a.vy = 0;
        a.vz = 0;
        func_8001889C(&mx, &a);
        mx.t[0] = mx.t[1] = mx.t[2] = 0;
        a.vy = rot->vy;
        a.vx = 0;
        a.vz = 0;
        func_8001889C(&my, &a);
        my.t[0] = my.t[1] = my.t[2] = 0;
        a.vz = rot->vz;
        a.vx = 0;
        a.vy = 0;
        func_8001889C(&mz, &a);
        mz.t[0] = mz.t[1] = mz.t[2] = 0;
        m = o->m_matp;
        func_80098674(&my, &mx, &tmp);
        func_8009887C(mx.t, tmp.t);
        func_800997D0(tmp.t, my.t);
        func_80098674(&tmp, &mz, &res);
        func_8009887C(mz.t, res.t);
        func_800997D0(res.t, tmp.t);
        *m = res;
    }
    if (pos) {
        o->m_matp->t[0] = pos->vx;
        o->m_matp->t[1] = pos->vy;
        o->m_matp->t[2] = pos->vz;
    } else if (rot) {
        o->m_matp->t[0] = cur.vx;
        o->m_matp->t[1] = cur.vy;
        o->m_matp->t[2] = cur.vz;
    }
}
#else
INCLUDE_ASM("asm/langimg/nonmatchings/chunk_02b", func_80016268);
#endif

#ifdef NON_MATCHING
/* Equivalent; as func_80016268 (registers for the locals' addresses) */
/* As func_80016268, the rotation in the order x, z, y. */
void func_80016434(Cobjet *o, SVECTOR *rot, Vector3 *pos) {
    Vector3 cur;
    MATRIX mx;
    SVECTOR a;
    MATRIX my;
    MATRIX mz;
    MATRIX res;
    MATRIX tmp;

    if (!o->m_matp) {
        func_80016798(o);
    }
    if (!pos) {
        func_800167B8(o, &cur);
    }
    if (rot) {
        MATRIX *m;

        a.vx = rot->vx;
        a.vy = 0;
        a.vz = 0;
        func_8001889C(&mx, &a);
        mx.t[0] = mx.t[1] = mx.t[2] = 0;
        a.vy = rot->vy;
        a.vx = 0;
        a.vz = 0;
        func_8001889C(&my, &a);
        my.t[0] = my.t[1] = my.t[2] = 0;
        a.vz = rot->vz;
        a.vx = 0;
        a.vy = 0;
        func_8001889C(&mz, &a);
        mz.t[0] = mz.t[1] = mz.t[2] = 0;
        m = o->m_matp;
        func_80098674(&mz, &mx, &tmp);
        func_8009887C(mx.t, tmp.t);
        func_800997D0(tmp.t, mz.t);
        func_80098674(&tmp, &my, &res);
        func_8009887C(my.t, res.t);
        func_800997D0(res.t, tmp.t);
        *m = res;
    }
    if (pos) {
        o->m_matp->t[0] = pos->vx;
        o->m_matp->t[1] = pos->vy;
        o->m_matp->t[2] = pos->vz;
    } else if (rot) {
        o->m_matp->t[0] = cur.vx;
        o->m_matp->t[1] = cur.vy;
        o->m_matp->t[2] = cur.vz;
    }
}
#else
INCLUDE_ASM("asm/langimg/nonmatchings/chunk_02b", func_80016434);
#endif

#ifdef NON_MATCHING
/* Equivalent; as func_80016268 (registers for the locals' addresses) */
/* Sets the object's rotation (in the order z, y, x) and, if given, its
 * position. */
void func_80016600(Cobjet *o, SVECTOR *rot, Vector3 *pos) {
    MATRIX mx;
    SVECTOR a;
    MATRIX my;
    MATRIX mz;
    MATRIX res;
    MATRIX tmp;

    if (!o->m_matp) {
        func_80016798(o);
    }
    if (rot) {
        MATRIX *m;

        a.vx = rot->vx;
        a.vy = 0;
        a.vz = 0;
        func_8001889C(&mx, &a);
        mx.t[0] = mx.t[1] = mx.t[2] = 0;
        a.vy = rot->vy;
        a.vx = 0;
        a.vz = 0;
        func_8001889C(&my, &a);
        my.t[0] = my.t[1] = my.t[2] = 0;
        a.vz = rot->vz;
        a.vx = 0;
        a.vy = 0;
        func_8001889C(&mz, &a);
        mz.t[0] = mz.t[1] = mz.t[2] = 0;
        m = o->m_matp;
        func_80098674(&my, &mz, &tmp);
        func_8009887C(mz.t, tmp.t);
        func_800997D0(tmp.t, my.t);
        func_80098674(&tmp, &mx, &res);
        func_8009887C(mx.t, res.t);
        func_800997D0(res.t, tmp.t);
        *m = res;
    }
    if (pos) {
        o->m_matp->t[0] = pos->vx;
        o->m_matp->t[1] = pos->vy;
        o->m_matp->t[2] = pos->vz;
    }
}
#else
INCLUDE_ASM("asm/langimg/nonmatchings/chunk_02b", func_80016600);
#endif

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

void func_80016998(Cobjet *o, Vector3 *v) {
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

#ifdef NON_MATCHING
/* Registers only (20 off): the LOD sum and the lens fields */
/* The level of detail for a point: its distance to the camera, scaled
 * (0 to 3). */
static inline int CameraLod(Vector3 *pos) {
    Camera *c = D_800C8864;
    Vector3 d;
    CameraLens *l;
    int x, y, z, m, lod;

    func_800998D0(&d, pos, &c->m_pos);
    l = c->m_lens;
    x = d.vx;
    y = d.vy;
    z = d.vz;
    if (x < 0) {
        x = -x;
    }
    if (y < 0) {
        y = -y;
    }
    if (z < 0) {
        z = -z;
    }
    m = x;
    if (m < y) {
        m = y;
    }
    if (m < z) {
        m = z;
    }
    lod = (((m * 2 + x + y + z) * l->m_48) >> 8) * 4 / ((l->m_14 << 13) + (l->m_14 << 12));
    if ((u32)lod > 3) {
        lod = 3;
    }
    return lod;
}

/* Draws the object's model, its level of detail chosen by its distance to
 * the camera. */
void func_80016A8C(CobjetModel *o, MATRIX *m) {
    Vector3 pos;
    int d;
    int lod;

    pos = *(Vector3 *)o->m_matp->t;
    d = o->m_3C >= 2 ? CameraLod(&pos) : 0;
    lod = d;
    if (lod >= o->m_3C) {
        lod = o->m_3C - 1;
    }
    o->m_3D = lod;
    D_800C8900 = o->m_color;
    {
        int *model = D_800C8C68->m_items[o->m_38[lod]];

        if (o->m_04 & 0x2000) {
            D_800CBCA4 = o->m_54;
            D_800CBCA0 = -1;
        }
        func_8007C354(model, m);
    }
}
#else
INCLUDE_ASM("asm/langimg/nonmatchings/chunk_02b", func_80016A8C);
#endif

#ifdef NON_MATCHING
/* Registers (42 off): the matrix and the camera in each other's saved
 * registers. The page tested twice and the prim read again give the
 * original's copy of the prim in $a2 (as func_800194E4) */
/* Projects the point at the matrix's position and, if the triangle
 * around it faces the camera, draws the object's prim there. */
void func_80016C3C(CobjetModel *o, MATRIX *m) {
    Camera *c = D_800C8864;
    MATRIX rot;
    MATRIX *rp = &rot;
    long d[3];
    long *a;
    long *b;
    CameraLens *l;
    int *prim;
    int page;
    int zsf3, zsf4;
    int tx, ty, tz;
    int flag;
    int opz;
    int sxy;
    register int r asm("$9");

    func_80098674(&c->m_view, m, rp);
    a = m->t;
    b = c->m_view.t;
    {
        long x = a[0] - b[0];
        long y = a[1] - b[1];
        long z = a[2] - b[2];

        d[0] = x;
        d[1] = y;
        d[2] = z;
    }
    func_8009887C(d, rot.t);
    l = D_800C8864->m_lens;
    zsf3 = (l->m_1C << 16) / ((l->m_14 << 15) + (l->m_14 << 14));
    zsf4 = (l->m_1C << 16) / (l->m_14 << 16);
    GTE_SET_ZSF(zsf3, zsf4);
    tx = rot.t[0] >> 2;
    ty = rot.t[1] >> 2;
    tz = rot.t[2] >> 2;
    GTE_SET_ROT(rp);
    GTE_SET_TRANS(tx, ty, tz);
    prim = o->m_prim;
    page = prim[1];
    if (o->m_54) {
        page = o->m_54 ? o->m_54 : prim[1];
    }
    r = 0xFF00FF00;
    GTE_MTC2(r, 0);
    r = 0;
    GTE_MTC2(r, 1);
    r = 0x1000000;
    GTE_MTC2(r, 2);
    r = 0;
    GTE_MTC2(r, 3);
    r = 0x100;
    GTE_MTC2(r, 4);
    r = 0;
    GTE_MTC2(r, 5);
    GTE_RTPT();
    GTE_CFC2(flag, 31);
    GTE_NCLIP();
    GTE_MFC2(opz, 24);
    if (opz > 0) {
        GTE_MTC2(r, 0);
        GTE_MTC2(r, 1);
        GTE_RTPS();
        GTE_MFC2(sxy, 14);
        if ((o->m_prim[0] & 7) == 1) {
            func_80018AEC(o->m_prim, page, (short)sxy, sxy >> 16);
        } else {
            func_80019114(o->m_prim, page, (short)sxy, sxy >> 16);
        }
    }
}
#else
INCLUDE_ASM("asm/langimg/nonmatchings/chunk_02b", func_80016C3C);
#endif

#ifdef NON_MATCHING
/* Equivalent; the original recomputes the stack locals' addresses for
 * each call (as func_80016268), so it has one saved register fewer */
/* Draws an object and its tree: its matrix put on the matrix stack
 * (composed with its parent's, or the camera's for a camera-attached
 * one), the object drawn as its flags say, then its next sibling and its
 * first child. Returns whether it was drawn. */
int func_80016E34(CobjetModel *o, MATRIX *parent, int hidden) {
    int r = 0;
    int flags;
    MATRIX *mat;
    int draw;
    int vis;

    D_800C4944++;
    flags = o->m_04;
    if (!hidden) {
        if (!(flags & 2) && (!o->m_40 || (!o->m_40->m_first && !o->m_40->m_next))) {
            o->m_46 = 1;
        } else if ((flags & 0x300) == 0x100 || (flags & 0x100000)) {
            o->m_46 = 1;
        }
    }
    if (!o->m_46) {
        Camera *c;

        if ((flags & 0x20000) && (c = D_800C8864)) {
            MATRIX *m = o->m_matp;

            mat = &D_800CA350[D_800C4944];
            {
                MATRIX tmp;

                func_80098674(&c->m_20, m, &tmp);
                func_8009887C(m->t, tmp.t);
                func_800997D0(tmp.t, c->m_20.t);
                *mat = tmp;
            }
            {
                Vector3 pos;
                Vector3 v;

                c = D_800C8864;
                func_80098768(&c->m_20, o->m_matp->t, (long *)&v);
                func_800997D0((long *)&v, c->m_20.t);
                func_80099898(&pos, &D_800C8864->m_pos, &v);
                *(Vector3 *)mat->t = pos;
            }
            flags |= 0x12;
            draw = 0;
        } else {
            MATRIX *m = o->m_matp;

            if (parent) {
                MATRIX tmp;

                mat = &D_800CA350[D_800C4944];
                func_80098674(parent, m, &tmp);
                func_8009887C(m->t, tmp.t);
                func_800997D0(tmp.t, parent->t);
                *mat = tmp;
            } else {
                mat = m;
            }
            draw = 0;
        }
        if (((flags & 0x12) == 0x12 || (flags & 0x10000000)) && !hidden) {
            draw = 1;
        }
        vis = 0;
        if (o->m_38 && o->m_3D != -1 && o->m_38[o->m_3D] != -1) {
            vis = !(flags & 0x2000000);
        }
        if (draw) {
            r = 1;
            if (flags & 0x40) {
                func_80016C3C(o, mat);
            } else if (vis) {
                if (flags & 0x20) {
                    if (flags & 0x200000) {
                        int lod = o->m_3C > 0 ? 0 : o->m_3C - 1;

                        o->m_3D = lod;
                        func_80079DC0(D_800C8C68->m_items[o->m_38[lod]], mat);
                    } else if (flags & 0x400) {
                        Vector3 pos = *(Vector3 *)mat->t;

                        *(Vector3 *)D_800C8864->m_C0.t = pos;
                        func_80016A8C(o, &D_800C8864->m_C0);
                    } else if (flags & 0x8000000) {
                        int lod = o->m_3C > 0 ? 0 : o->m_3C - 1;

                        o->m_3D = lod;
                        func_8007A198(D_800C8C68->m_items[o->m_38[lod]], &D_800C8864->m_C0);
                    } else {
                        Vector3 pos = *(Vector3 *)mat->t;

                        *(Vector3 *)D_800C8864->m_A0.t = pos;
                        func_80016A8C(o, &D_800C8864->m_A0);
                    }
                } else {
                    D_800C88FC = o->m_47 << 24;
                    func_80016A8C(o, mat);
                }
            }
        }
        {
            Vector3 pos = *(Vector3 *)mat->t;

            o->m_pos = pos;
        }
        if (o->m_40) {
            CobjetModel *child;

            if (o->m_40->m_next) {
                func_80016E34((CobjetModel *)o->m_40->m_next, parent, hidden);
            }
            child = (CobjetModel *)o->m_40->m_first;
            if (child) {
                if (flags & 0x1000) {
                    MATRIX save = *child->m_matp;
                    Vector3 pos;
                    Cobjet *g;

                    if (child->m_40 && (g = child->m_40->m_next) && g->m_matp) {
                        Vector3 v;

                        pos = child->m_pos;
                        func_80099898(&v, &o->m_68, &pos);
                        *(Vector3 *)g->m_matp->t = v;
                    }
                    pos = *(Vector3 *)child->m_matp->t;
                    *child->m_matp = *o->m_matp;
                    child->m_matp->t[0] = pos.vx;
                    child->m_matp->t[1] = pos.vy;
                    child->m_matp->t[2] = pos.vz;
                    func_80016E34(child, mat, hidden);
                    pos = *(Vector3 *)child->m_matp->t;
                    *child->m_matp = save;
                    child->m_matp->t[0] = pos.vx;
                    child->m_matp->t[1] = pos.vy;
                    child->m_matp->t[2] = pos.vz;
                } else {
                    func_80016E34(child, mat, hidden);
                }
            }
        }
        o->m_46 = 1;
        o->m_04 &= ~0x10;
    }
    D_800C4944--;
    return r;
}
#else
INCLUDE_ASM("asm/langimg/nonmatchings/chunk_02b", func_80016E34);
#endif

/* Scales the parts that the list's objects of a kind use. */
void func_80017574(CobjetList *l, CobjetPartList *parts, int a, int b, int kind) {
    s8 used[256];
    int n;
    int i;

    if (!parts) {
        return;
    }
    n = parts->m_count;
    memset(used, 0, n);
    for (i = 0; i < l->m_count; i++) {
        Cobjet *o = l->m_items[i];

        if (o && !(o->m_04 & 0x2800D841) && (o->m_04 & 0xC0000000) == (kind << 30) && o->m_38) {
            int k;

            for (k = 0; k < o->m_3C; k++) {
                used[o->m_38[k]] = 1;
            }
        }
    }
    for (i = 0; i < n; i++) {
        if (used[i]) {
            int v = (parts->m_items[i]->m_size >> 8) * a;

            parts->m_items[i]->m_0C = (b << 16) / (v * 3);
            parts->m_items[i]->m_0E = (b << 16) / (v * 4);
        }
    }
}

/* Resets m_44 on the list's objects, then sets it again down their trees
 * (objects with flag 1 left alone). */
void func_80017730(CobjetList *l) {
    int n;
    Cobjet **p;
    Cobjet *o;

    n = l->m_count;
    p = l->m_items;
    do {
        o = *p;
        if (o && !(o->m_04 & 1)) {
            o->m_44 = -1;
        }
        p++;
    } while (--n);
    n = l->m_count;
    p = l->m_items;
    do {
        o = *p;
        if (o && !(o->m_04 & 1)) {
            func_800169B8(o, 1, 0);
        }
        p++;
    } while (--n);
}
