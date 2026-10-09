#include "common.h"
#include "psyq.h"
#include "sound.h"

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_01", func_80013764);

void func_80013BA0(SndEmitter *e, int v) {
    if (e->flags & 0x4000) {
        v = v * e->unk1C >> 12;
    }
    e->unk14 = v;
    e->unk1A = v;
}

void func_80013BD4(SndEmitter *e, SndParams *p) {
    int mask = p->mask;
    int flags = e->flags;

    if (mask & 1) {
        func_80013BA0(e, p->unk2);
    }
    if (mask & 2) {
        e->unk16 = p->unk4;
    }
    if (mask & 8) {
        e->unk24 = p->unkC;
    }
    if (mask & 4) {
        e->unk28 = p->unk8;
    }
    if (mask & 0x20) {
        flags |= 8;
        CopyVector(&e->unk50, &p->unk1C);
    }
    if (mask & 0x40) {
        flags |= 8;
        CopyVector(&e->unk5C, &p->unk28);
    }
    if (mask & 0x80) {
        e->unk34 = p->unk14;
        e->unk38 = p->unk18;
        flags |= 0x8008;
    }
    e->flags = flags | 0x100;
}

void func_80013CFC(SndWorld *w) {
    int i;

    func_80013440(w);
    w->on = 0;
    w->unk1C84 = 0;
    w->unk208 = 0;
    w->unk2 = 0;
    w->unk1CC8 = 0;
    w->unk1CF4 = 64;
    w->unk1CF8 = 0;
    for (i = 0; i < 2; i++) {
        func_80013448(&w->listeners[i]);
    }
    for (i = 0; i < 64; i++) {
        w->emitters[i].flags = 0;
    }
    w->nFree = 64;
    for (i = 0; i < 64; i++) {
        w->free[i] = 63 - i;
    }
}

/* Clears the note map. */
void func_80013DB8(SndWorld *w) {
    u32 i;

    for (i = 0; i < 256; i++) {
        w->notes[i] = -1;
    }
}

/* Puts n notes in the map by name; returns how many were found. */
int func_80013DE0(SndWorld *w, int n, NoteDef *defs) {
    int i;
    int found = 0;

    for (i = 0; i < n; i++) {
        if (func_800147C8(w, &defs[i])) {
            found++;
        }
    }
    return found;
}

/* A note's index in the map by name, adding it in the last free place if
 * it isn't there; -1 if it's in no bank either. */
int func_80013E64(SndWorld *w, const char *name) {
    int r = -1;
    int i;

    for (i = 0; (u32)i < 256; i++) {
        if (!func_800A60AC(name, func_80014BB0(w, i))) {
            r = i;
            break;
        }
    }
    if (r == -1) {
        int n = func_800147A4(w, name);

        if (n != r) {
            for (i = 255; i >= 0; i--) {
                if (w->notes[i] == -1) {
                    w->notes[i] = n;
                    r = i;
                    break;
                }
            }
        }
    }
    return r;
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_01", func_80013F38);

/* Takes a free emitter; -1 when none is. */
int func_800140CC(SndWorld *w) {
    int i = -1;

    if (w->nFree) {
        i = w->free[--w->nFree];
        (&w->emitters[i])->flags = 1;
        w->unk1C84++;
    }
    return i;
}

/* Takes the emitter's address, then its field's through it (0x20C, then
 * 0x10). */
static inline void ClearEmitterFlags(SndEmitter *e, int bits) {
    e->flags &= ~bits;
}

/* Gives an emitter back. */
void func_80014130(SndWorld *w, int i) {
    ClearEmitterFlags(&w->emitters[i], 1);
    w->free[w->nFree] = i;
    w->nFree++;
    w->unk1C84--;
}

#ifdef NON_MATCHING
/* Equivalent; registers only: the original has the emitter index in $t0,
 * the serial number in $a2 and the emitter in $a3 */
/* Takes an emitter for the note at i of the map; returns its handle, or
 * -1. */
u32 func_80014188(SndWorld *w, int i) {
    u32 h = -1;

    if (i != -1) {
        int k = func_800140CC(w);

        if (k != -1) {
            SndEmitter *e = &w->emitters[k];
            int serial = w->unk1CC8;
            int note = w->notes[i];
            int old;
            int flags;

            e->unk28 = 0;
            e->unkC = i;
            e->unk4 = serial;
            e->unkE = note;
            old = e->flags;
            if (*(u16 *)(D_800C4744 + note * 44 + 4) & 0x10) {
                flags = old | 0x400000;
            } else {
                flags = old;
            }
            h = k | (i << 6) | (serial << 14);
            serial++;
            e->flags = flags;
            w->unk1CC8 = serial & 0x3FFFF;
        }
    }
    return h;
}
#else
INCLUDE_ASM("asm/langimg/nonmatchings/chunk_01", func_80014188);
#endif

#ifdef NON_MATCHING
/* Equivalent; the original masks the id before computing the emitter's
 * address and leaves the load delay after reading unkC empty */
/* The emitter a handle names (its index in the low 6 bits, then unkC and
 * the serial number); 0 if it's gone. */
SndEmitter *func_8001427C(SndWorld *w, u32 handle) {
    SndEmitter *r = 0;

    if (handle != -1) {
        int i = handle & 0x3F;
        u8 id = handle >> 6;
        SndEmitter *e = &w->emitters[i];

        if (id == e->unkC && handle >> 14 == e->unk4) {
            r = e;
        }
    }
    return r;
}
#else
INCLUDE_ASM("asm/langimg/nonmatchings/chunk_01", func_8001427C);
#endif

/* Marks an emitter as changed (bits; 0x100 and more), and 0x100000 as
 * the world's unk3 says. */
static inline void Changed(SndWorld *w, SndEmitter *e, int bits) {
    int flags = e->flags;

    if (w->unk3) {
        flags |= 0x100000;
    } else {
        flags &= ~0x100000;
    }
    e->flags = flags | bits;
}

/* Sets an emitter's volume and unk24. */
void func_800142E0(SndWorld *w, u32 handle, int vol, int x) {
    SndEmitter *e = func_8001427C(w, handle);

    if (e) {
        func_80013BA0(e, vol);
        e->unk24 = x;
        Changed(w, e, 0x100);
    }
}

/* Sets an emitter's volume. */
void func_80014368(SndWorld *w, u32 handle, int vol) {
    SndEmitter *e = func_8001427C(w, handle);

    if (e) {
        func_80013BA0(e, vol);
        Changed(w, e, 0x100);
    }
}

void func_800143E0(SndWorld *w, u32 handle, int x) {
    SndEmitter *e = func_8001427C(w, handle);

    if (e) {
        e->unk24 = x;
        Changed(w, e, 0x100);
    }
}

void func_8001444C(SndWorld *w, u32 handle, int x) {
    SndEmitter *e = func_8001427C(w, handle);

    if (e) {
        e->unk28 = x;
        Changed(w, e, 0x100);
    }
}

/* Sets an emitter's parameters (func_80013BD4). */
void func_800144B8(SndWorld *w, u32 handle, SndParams *p) {
    SndEmitter *e = func_8001427C(w, handle);

    if (e) {
        func_80013BD4(e, p);
        Changed(w, e, 0x100);
    }
}

/* Sets the two vectors at 0x1CDC and 0x1CE8. */
void func_80014530(SndWorld *w, SndVector *a, SndVector *b) {
    CopyVector(&w->unk1CDC, a);
    CopyVector(&w->unk1CE8, b);
}

/* Whether an emitter has flag 4. */
int func_8001456C(SndWorld *w, u32 handle) {
    int r = 0;
    SndEmitter *e = func_8001427C(w, handle);

    if (e) {
        r = e->flags & 4;
    }
    return r;
}

/* Frees the emitters in use, except those marked to stay (2), which are
 * marked 0x80; returns how many were in use. */
int func_800145A8(SndWorld *w) {
    int n = 0;
    int i;

    for (i = 0; i < 64; i++) {
        int flags = w->emitters[i].flags;

        if (flags & 1) {
            if (flags & 2) {
                w->emitters[i].flags = flags | 0x80;
            } else {
                func_80014130(w, i);
            }
            n++;
        }
    }
    return n;
}

/* Waits for the sounds to finish, updating them every frame. */
void func_80014634(SndWorld *w) {
    while (func_800145A8(w)) {
        VSync(0);
        func_80013F38(w, 20);
    }
}

/* Starts an emitter (func_80014A98) and pairs it with another. */
u32 func_8001467C(SndWorld *w, int a, int b, u32 other) {
    u32 handle = func_80014A98(w, a, b);
    SndEmitter *e = func_8001427C(w, handle);

    if (e) {
        SndEmitter *o = func_8001427C(w, other);

        e->link = o;
        o->link = e;
    }
    return handle;
}

/* Sets up the SPU. */
void func_800146EC(SndWorld *w) {
    w->on = func_80011C5C(0x1000, 0x12C000, 24);
}

/* Loads a sound bank, with a clear note map. */
int func_80014724(SndWorld *w, const char *name) {
    int r = 0;

    func_80013DB8(w);
    if (w->on) {
        r = func_80011E44(name);
    }
    return r;
}

void func_80014774(SndWorld *w) {
    if (w->on) {
        func_80014634(w);
        func_80011F84();
    }
}

/* A note's number by name. */
short func_800147A4(SndWorld *w, const char *name) {
    return func_80012080(name);
}

/* Puts a note in the map by name. It has no return statement: callers use
 * what func_800147A4 left in $v0 (the note, or 0). */
short func_800147C8(SndWorld *w, NoteDef *def) {
    w->notes[def->index] = func_800147A4(w, def->name);
}

void func_8001480C(SndWorld *w) {
    if (w->on) {
        func_80011F84();
        func_80011E08();
    }
}

/* func_800148D8 on every emitter in use playing note id. */
void func_8001483C(SndWorld *w, int id, int flags) {
    SndEmitter *e = w->emitters;
    int i;

    for (i = 64; i != 0; i--) {
        if ((e->flags & 1) && e->unk1E == id) {
            func_800148D8(w, e, flags);
        }
        e++;
    }
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_01", func_800148D8);

/* Plays the note at i of the map; returns the emitter's handle. */
u32 func_80014A98(SndWorld *w, int i, int flags) {
    u32 h = -1;

    if (i != -1 && w->notes[i] != -1) {
        flags |= 0x1001;
        h = func_80014188(w, i);
        func_800148D8(w, func_8001427C(w, h), flags);
    }
    return h;
}

void func_80014B18(SndWorld *w, u32 handle) {
    SndEmitter *e = func_8001427C(w, handle);

    if (e) {
        Changed(w, e, 0x140);
    }
}

/* Sets an emitter's flag 0x80. */
void func_80014B74(SndWorld *w, u32 handle) {
    SndEmitter *e = func_8001427C(w, handle);

    if (e) {
        e->flags |= 0x80;
    }
}

/* The name of the note in the map at i. */
const char *func_80014BB0(SndWorld *w, int i) {
    const char *r = 0;

    if (i != -1) {
        int n = w->notes[i];

        if (n != -1) {
            r = (const char *)(D_800C4744 + n * 44 + 0xC);
        }
        r = r ? r : D_800C48E0;
    }
    return r ? r : D_800C48EC;
}

/* A note's 0x6 field, through a table of note numbers; 0 for none. */
u16 func_80014C24(SndWorld *w, int i) {
    u16 r = 0;

    if (i != -1) {
        int n = w->notes[i];

        if (n != -1) {
            r = *(u16 *)(D_800C4744 + n * 44 + 6);
        }
    }
    return r;
}

/* The length of the note at i of the map (func_80012FEC), 0 for none. */
u32 func_80014C70(SndWorld *w, int i) {
    u32 r = 0;

    if (i != -1) {
        int n = w->notes[i];

        if (n != -1) {
            r = func_80012FEC(n);
        }
    }
    return r;
}
