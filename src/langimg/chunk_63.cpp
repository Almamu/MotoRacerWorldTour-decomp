#include "common.h"
#include "psyq.h"

/* The game's code built with GCC 2.91.66: an animation's bounds
 * (docs/matching/issue-64-langimg-chunk63.md). */

extern "C" {
struct Vec63 {
    long vx, vy, vz;
};
// A box: its lowest and highest corners
struct Box63 {
    Vec63 m_min;
    Vec63 m_max;
};
// A model's point (8 bytes)
struct Pt63 {
    short x, y, z, pad;
};
// A model's part: its points
struct Part63 {
    u8 m_00[0x16];
    u8 m_16; // how many points
    u8 m_17[5];
    short m_1C; // the first
};
// A model (chunk_62's Model62)
struct Model63 {
    u8 m_00[0x14];
    Pt63 *m_14;
    u8 m_18[4];
    short m_1C; // its points' shift
};
// A channel and a node of the tree (0x80 bytes, chunk_62's Chan62/Node62)
struct Node63 {
    struct Node63 *m_00; // its child
    u8 m_04[4];
    struct Node63 *m_08; // its sibling
    u8 m_0C[4];
    void *m_10;
    u8 m_14[8];
    Vec63 m_1C;
    u8 m_28[0x14];
    Part63 *m_3C;
    u8 m_40[0x40];
};
// An animation's channels (chunk_62's Anim62)
struct Anim63 {
    s8 m_00; // how many channels
    u8 m_01[3];
    Model63 *m_04;
    Node63 *m_08;
};
// 32 bytes per channel, from func_80090AB8's new[]
struct Buf63 {
    int m_00[8];
    Buf63() {
    }
};
// The channels' values at 0x10, kept while they point to the buffers
struct Save63 {
    void **m_00;
    Buf63 *m_04;
};

void func_800913C0(Anim63 *a);
void func_800910EC(Anim63 *a, MATRIX *m);
void func_8008D168(Node63 *n);
void func_80098DD4(Vec63 *lo, Vec63 *v);
void func_80098E38(Vec63 *hi, Vec63 *v);
void func_80099DA0(Vec63 *out, Vec63 *v, int shift);
Vec63 *func_800997D0(Vec63 *v, Vec63 *a);

Save63 *func_80090AB8(Anim63 *a);
void func_80090B80(Anim63 *a, Save63 *s);
void func_80090C2C(Anim63 *a, Node63 *n, Box63 *b);
void func_80090D74(Anim63 *a, Node63 *n, Box63 *b);
void func_80090E58(Anim63 *a, int i, Vec63 *lo, Vec63 *hi, int pose);
void func_80090F94(Anim63 *a, int i, Vec63 *lo, Vec63 *hi, int pose);
}

static inline void VecCopyL63(Vec63 *d, Vec63 *s) {
    int x = s->vx;
    int y = s->vy;
    int z = s->vz;

    d->vx = x;
    d->vy = y;
    d->vz = z;
}

static inline void SetVec63(Vec63 *v, int x) {
    v->vx = v->vy = v->vz = x;
}

static inline void ZeroVec63(Vec63 *v) {
    v->vx = 0;
    v->vy = 0;
    v->vz = 0;
}

// The identity, rows from the diagonal out
static inline void IdentMat63(MATRIX *m) {
    m->m[0][0] = 0x1000;
    m->m[0][1] = m->m[0][2] = m->t[0] = 0;
    m->m[1][1] = 0x1000;
    m->m[1][0] = m->m[1][2] = m->t[1] = 0;
    m->m[2][2] = 0x1000;
    m->m[2][0] = m->m[2][1] = m->t[2] = 0;
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_63", func_8008F368);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_63", func_8008FD74);

Save63 *func_80090AB8(Anim63 *a) {
    Save63 *s = new Save63;
    Buf63 *b = new Buf63[a->m_00];
    void **p = new void *[a->m_00];
    int i;

    s->m_00 = p;
    s->m_04 = b;
    for (i = 0; i < a->m_00; i++) {
        *p++ = a->m_08[i].m_10;
        a->m_08[i].m_10 = b++;
    }
    func_800913C0(a);
    return s;
}

void func_80090B80(Anim63 *a, Save63 *s) {
    void **p = s->m_00;
    int i;

    for (i = 0; i < a->m_00; i++) {
        a->m_08[i].m_10 = *p++;
    }
    func_800913C0(a);
    if (s->m_00) {
        delete[] s->m_00;
        s->m_00 = 0;
    }
    if (s->m_04) {
        delete[] s->m_04;
        s->m_04 = 0;
    }
    if (s) {
        delete s;
    }
}

void func_80090C2C(Anim63 *a, Node63 *n, Box63 *b) {
    Model63 *m = a->m_04;
    Part63 *p = n->m_3C;
    int sh = m->m_1C;
    int k = p->m_16;
    Pt63 *e = &m->m_14[p->m_1C];
    sh = 12 - sh;

    if (k) {
        int i;
        Vec63 *hi = &b->m_max;

        SetVec63(&b->m_min, 0x7FFFFFFF);
        SetVec63(hi, 0x80000000);
        for (i = 0; i < k; i++) {
            Vec63 v;
            Vec63 *pv = &v;

            v.vx = e[i].x << sh;
            v.vy = e[i].y << sh;
            v.vz = e[i].z << sh;
            func_80098DD4(&b->m_min, pv);
            func_80098E38(hi, pv);
        }
    } else {
        ZeroVec63(&b->m_min);
        ZeroVec63(&b->m_max);
    }
}

void func_80090D74(Anim63 *a, Node63 *n, Box63 *out) {
    Box63 b;
    Box63 *pb = &b;
    Vec63 t;
    int sh = 12 - a->m_04->m_1C;

    func_80090C2C(a, n, pb);
    func_80099DA0(&t, &n->m_1C, sh);
    func_800997D0(&pb->m_min, &t);
    func_800997D0(&pb->m_max, &t);
    func_80098DD4(&out->m_min, &pb->m_min);
    func_80098E38(&out->m_max, &pb->m_max);
    if (n->m_00) {
        func_80090D74(a, n->m_00, out);
    }
    if (n->m_08) {
        func_80090D74(a, n->m_08, out);
    }
}

void func_80090E58(Anim63 *a, int i, Vec63 *lo, Vec63 *hi, int pose) {
    Box63 b;
    Box63 *pb = &b;
    Node63 *n = &a->m_08[i];

    if (pose) {
        Save63 *s = func_80090AB8(a);
        MATRIX m;

        IdentMat63(&m);
        func_800910EC(a, &m);
        func_8008D168(a->m_08);
        func_80090B80(a, s);
    }
    SetVec63(&pb->m_min, 0x7FFFFFFF);
    SetVec63(&pb->m_max, 0x80000000);
    func_80090D74(a, n, pb);
    VecCopyL63(lo, &pb->m_min);
    VecCopyL63(hi, &b.m_max);
}

void func_80090F94(Anim63 *a, int i, Vec63 *lo, Vec63 *hi, int pose) {
    Box63 b;
    Box63 *pb = &b;
    int sh = 12 - a->m_04->m_1C;

    func_80090C2C(a, &a->m_08[i], pb);
    if (pose) {
        Save63 *s = func_80090AB8(a);
        MATRIX m;

        IdentMat63(&m);
        func_800910EC(a, &m);
        func_8008D168(a->m_08);
        func_80090B80(a, s);
    }
    {
        Vec63 t;
        Vec63 *pt = &t;

        func_80099DA0(pt, &a->m_08[i].m_1C, sh);
        func_800997D0(&pb->m_min, pt);
        func_800997D0(&pb->m_max, pt);
    }
    VecCopyL63(lo, &pb->m_min);
    VecCopyL63(hi, &b.m_max);
}
