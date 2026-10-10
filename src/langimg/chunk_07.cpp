#include "common.h"
#include "langimg/race.h"

/* The game's code built with GCC 2.91.66, -G8, unsplit addresses
 * (docs/matching/issue-8-langimg-chunk07.md). */

extern "C" {
#define NODE_NONE -32000

// A node (0x38 bytes): linked to others by their distance in the array
struct Node {
    u8 m_00[0x26];
    short m_next; // 0x26: to the next, or NODE_NONE
    u8 m_28[6];
    short m_prev; // 0x2E: to the previous, or NODE_NONE
    u8 m_30[6];
    short m_slot; // 0x36: its slot, or -1
};

// A slot (0x18 bytes): a position and its first node
struct NodeSlot {
    Vector3 m_pos;
    int m_0C;
    u8 m_10[6];
    short m_first;
};

// The nodes' pool
struct NodePool {
    Node *m_nodes;
    NodeSlot m_slots[200];
    short m_12C4;
    short m_count;
    short m_cursor;
    short m_12CA;
};

void func_800200E4(void);
void func_800200EC(Node *n);
Node *func_80020104(Node *n);
void func_8002012C(Node *n, int d);
int func_80020154(Node *n);
Node *func_800201A4(Node *n);
void func_800201E4(NodeSlot *s);
int func_800201F0(NodeSlot *s);
void func_80020200(NodePool *p);
int func_80020298(NodePool *p, Node *mem, u32 size);
void func_800202E0(NodePool *p, int slot);
void func_8002034C(NodePool *p, int i);
void func_8002083C(NodePool *p);
void func_80021138(SVECTOR *out, Vector3 *in);
void func_800203A8(NodePool *p, int a, Vector3 *pos, int c, int slot);
int func_80020868(NodePool *p, int a, Vector3 *pos, int c);
int func_80020998(NodePool *p, int handle, int a, Vector3 *pos, int c);
void func_80020AB0(void *x);
void func_80020AE4(void *x, void *scratch);
void func_80020C48(void *x, void *scratch);
void func_800210B0(void);
int func_800B6318(void); // rand
extern int D_800CA960;
extern short D_800CA968[256]; // random 4.12 fractions
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_07", func_8001F7E4);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_07", func_8001FCC8);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_07", func_8001FEE4);

void func_800200E4(void) {
}

void func_800200EC(Node *n) {
    n->m_next = NODE_NONE;
    n->m_prev = NODE_NONE;
    n->m_slot = -1;
}

/* The node's next, or 0. */
Node *func_80020104(Node *n) {
    Node *r = 0;

    if (n->m_next != NODE_NONE) {
        r = n + n->m_next;
    }
    return r;
}

/* Links n after the node d away. */
void func_8002012C(Node *n, int d) {
    n->m_prev = d;
    n[(short)d].m_next = -d;
}

/* Unlinks a node from its previous; returns its slot if it was its slot's
 * first, -1 otherwise. */
int func_80020154(Node *n) {
    int r = -1;

    if (n->m_slot != -1) {
        if (n->m_prev != NODE_NONE) {
            n[n->m_prev].m_next = NODE_NONE;
            n->m_prev = NODE_NONE;
        } else {
            r = n->m_slot;
        }
        n->m_slot = -1;
    }
    return r;
}

/* Unlinks a node from its next; returns the next, or 0. */
Node *func_800201A4(Node *n) {
    Node *r = 0;

    if (n->m_slot != -1) {
        if (n->m_next != NODE_NONE) {
            r = n + n->m_next;
            r->m_prev = NODE_NONE;
            n->m_next = NODE_NONE;
        }
        n->m_slot = -1;
    }
    return r;
}

void func_800201E4(NodeSlot *s) {
    s->m_first = NODE_NONE;
}

int func_800201F0(NodeSlot *s) {
    int r = s->m_first;

    s->m_first = NODE_NONE;
    return r;
}

void func_80020200(NodePool *p) {
    int i;

    p->m_12CA = 0;
    p->m_cursor = 0;
    if (p->m_nodes) {
        for (i = 0; i < p->m_count; i++) {
            func_800200EC(&p->m_nodes[i]);
        }
    }
    for (i = 0; (u32)i < 200; i++) {
        func_800201E4(&p->m_slots[i]);
    }
}

/* Gives the pool its memory: as many nodes as fit, 1600 at most. Returns
 * what's left. */
int func_80020298(NodePool *p, Node *mem, u32 size) {
    int n = size / sizeof(Node);

    if (n > 1600) {
        n = 1600;
    }
    p->m_count = n;
    p->m_nodes = mem;
    return size - (short)n * sizeof(Node);
}

/* Empties a slot. */
void func_800202E0(NodePool *p, int slot) {
    int i = func_800201F0(&p->m_slots[slot]);

    if (i != NODE_NONE) {
        Node *n = &p->m_nodes[i];

        while ((n = func_800201A4(n))) {
        }
    }
}

/* Takes a node out; its slot emptied if it was the first. */
void func_8002034C(NodePool *p, int i) {
    int slot = func_80020154(&p->m_nodes[i]);

    if (slot != -1) {
        func_800201F0(&p->m_slots[slot]);
    }
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_07", func_800203A8);

void func_8002083C(NodePool *p) {
    if (++p->m_cursor == p->m_count) {
        p->m_cursor = 0;
    }
}

/* Copies a vector, read first (func_80020868 needs it as an inline) */
static inline void VecCopy(Vector3 *d, Vector3 *s) {
    int x = s->vx;
    int y = s->vy;
    int z = s->vz;

    d->vx = x;
    d->vy = y;
    d->vz = z;
}

/* Adds a position at the cursors: a node and a slot. Returns the handle,
 * the node's index and the slot's. */
int func_80020868(NodePool *p, int a, Vector3 *pos, int c) {
    int r;

    func_8002034C(p, p->m_cursor);
    func_800202E0(p, p->m_12CA);
    VecCopy(&p->m_slots[p->m_12CA].m_pos, pos);
    p->m_slots[p->m_12CA].m_0C = 0;
    func_800203A8(p, a, pos, c, p->m_12CA);
    p->m_nodes[p->m_cursor].m_slot = p->m_12CA;
    p->m_slots[p->m_12CA].m_first = p->m_cursor;
    r = (p->m_cursor << 16) | p->m_12CA;
    func_8002083C(p);
    if ((u16)++p->m_12CA == 200) {
        p->m_12CA = 0;
    }
    return r;
}

/* Adds a node to a handle's slot, linked to the handle's node. Returns
 * the new handle, or -1. */
int func_80020998(NodePool *p, int handle, int a, Vector3 *pos, int c) {
    if (handle != -1) {
        int i = handle >> 16;
        int slot = p->m_nodes[i].m_slot;

        if (slot != (handle & 0xFFFF)) {
            handle = -1;
        } else {
            func_8002034C(p, p->m_cursor);
            func_8002012C(&p->m_nodes[i], p->m_cursor - i);
            p->m_nodes[p->m_cursor].m_slot = slot;
            func_800203A8(p, a, pos, c, slot);
            p->m_slots[slot].m_first = p->m_cursor;
            handle = (p->m_cursor << 16) | slot;
            func_8002083C(p);
            return handle;
        }
    }
    return handle;
}

void func_80020AB0(void *x) {
    func_80020AE4(x, (void *)0x1F800000);
    func_80020C48(x, (void *)0x1F800000);
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_07", func_80020AE4);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_07", func_80020C48);

/* The random table, made by its first user. */
void func_800210B0(void) {
    u32 i;

    if (++D_800CA960 == 1) {
        for (i = 0; i < 256; i++) {
            D_800CA968[i] = (func_800B6318() << 12) / 32767;
        }
    }
}

void func_80021138(SVECTOR *out, Vector3 *in) {
    short *s = (short *)in;
    int x = s[0];
    int y = s[2];
    int z = s[4];

    out->vx = x;
    out->vy = y;
    out->vz = z;
}
