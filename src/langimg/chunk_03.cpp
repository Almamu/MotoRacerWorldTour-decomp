#include "common.h"
#include "langimg/cobjet.h"

/* Draws the list's objects from start on, n of them: their drawn flags
 * cleared first, then each top object's tree. */
void func_800177E8(CobjetList *l, int start, int n) {
    Cobjet **p;
    Cobjet *o;
    int i;

    D_800C8904 = 0;
    if (n > 0) {
        i = n;
        p = l->m_items + start;
        do {
            o = *p;
            if (o && !(o->m_04 & 1)) {
                o->m_46 = 0;
            }
            p++;
        } while (--i);
        i = n;
        p = l->m_items + start;
        do {
            o = *p;
            if (o && o->m_44 && !(o->m_04 & 1)) {
                if (func_80016E34((CobjetModel *)o, 0, 0)) {
                    l->m_drawn++;
                }
            }
            p++;
        } while (--i);
    }
}

/* Makes room for n part numbers. */
int func_800178DC(Cobjet *o, int n) {
    int r = 0;

    if (n > 0) {
        if (o->m_38) {
            delete[] o->m_38;
            o->m_38 = 0;
        }
        r = (o->m_38 = new short[n]) != 0;
        o->m_3C = n;
        o->m_3D = 0;
    }
    return r;
}

/* The model of the object's current part, or 0. */
int *func_80017948(Cobjet *o) {
    int *r = 0;

    if (o->m_3C > 0) {
        r = D_800C8C68->m_items[o->m_38[o->m_3D]];
    }
    return r;
}

/* Sets m_3F, through func_8006E02C and func_8006E004; -1 clears it. */
void func_8001798C(Cobjet *o, int v) {
    if (v == -1) {
        if (o->m_3F != v) {
            func_8006E02C(o);
        }
    } else if (o->m_3F != v) {
        if (o->m_3F != -1) {
            func_8006E02C(o);
        }
        o->m_3F = v;
        func_8006E004(o);
    }
}

void func_80017A0C(Cobjet *o) {
    func_8001798C(o, o->m_3E);
}

/* Clears m_2C on the object's linked entries with that id (-1: all). */
void func_80017A30(Cobjet *o, int id) {
    CobjetLink *l;

    for (l = o->m_links; l; l = l->m_next) {
        CobjetLinked *e = D_800C873C->m_items[l->m_index];

        if (e && (id == -1 || e->m_id == id)) {
            e->m_2C = 0;
        }
    }
}

/* Restarts the object's linked entries with that id (-1: all). */
void func_80017A9C(Cobjet *o, int id) {
    CobjetLink *l;

    for (l = o->m_links; l; l = l->m_next) {
        CobjetLinked *e = D_800C873C->m_items[l->m_index];

        if (e && (id == -1 || e->m_id == id)) {
            func_800747A8(e, 0, 0, 0);
            e->v20();
            e->v30(0, 0, 1, -1);
        }
    }
}

/* Applies a linked entry to the object once (flags 0xF000 force it, 0xF00
 * holds it back): for types 3 to 5, on an object without a matrix, its
 * position and func_80016998. */
int func_80017B88(Cobjet *o, CobjetLinkedPos *e) {
    int r = 0;
    int ok;
    int unused[8]; /* the frame's 0x20 bytes of locals */

    if (!(e->m_flags & 0xF00)) {
        D_800C8740 = o;
        if (e->m_flags & 0xF000) {
            o->m_04 |= 0x200;
            ok = 1;
        } else {
            ok = e->v18();
        }
        if (ok) {
            switch (e->m_id) {
            case 3:
            case 4:
            case 5:
                if (!o->m_matp) {
                    Vector3 *p = &e->m_44;

                    if ((e->m_94 << 16) >> 28) { /* bits 12-15, signed */
                        o->m_04 |= 0x200;
                        o->m_matp->t[0] = p->vx;
                        o->m_matp->t[1] = p->vy;
                        o->m_matp->t[2] = p->vz;
                    }
                    if (e->m_98 << 8) { /* bits 0-23 */
                        func_80016998(o, &e->m_74);
                        o->m_04 |= 0x200;
                    }
                }
                break;
            default:
                o->m_04 |= 0x200;
                break;
            }
            e->m_flags &= ~0xF000;
            r = 1;
        }
    }
    return r;
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_03", func_80017CF0);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_03", func_80017D74);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_03", func_80017E10);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_03", func_80017E64);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_03", func_80017FB4);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_03", func_80018008);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_03", func_80018048);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_03", func_800180F4);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_03", func_80018130);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_03", func_8001816C);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_03", func_800181CC);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_03", func_80018224);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_03", func_800184A4);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_03", func_800185F0);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_03", func_8001865C);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_03", func_80018814);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_03", func_8001885C);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_03", func_8001887C);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_03", func_8001889C);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_03", func_800188CC);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_03", func_80018954);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_03", func_80018AEC);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_03", func_80019114);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_03", func_800194E4);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_03", func_80019578);
