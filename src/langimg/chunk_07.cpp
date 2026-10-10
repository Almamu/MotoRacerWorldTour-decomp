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

// A slot (0x18 bytes): its first node
struct NodeSlot {
    u8 m_00[0x16];
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

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_07", func_80020868);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_07", func_80020998);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_07", func_80020AB0);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_07", func_80020AE4);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_07", func_80020C48);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_07", func_800210B0);

void func_80021138(SVECTOR *out, Vector3 *in) {
    short *s = (short *)in;
    int x = s[0];
    int y = s[2];
    int z = s[4];

    out->vx = x;
    out->vy = y;
    out->vz = z;
}
