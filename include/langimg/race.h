#ifndef LANGIMG_RACE_H
#define LANGIMG_RACE_H

#include "common.h"
#include "langimg/cobjet.h"

extern "C" {

// A race entry (0x568 bytes; Race::m_entries)
struct RaceEntry;

// An entry's place on the track
struct RacePos {
    RaceEntry *m_next; // around the ring of racing entries, by distance
    RaceEntry *m_prev;
    RaceEntry *m_last; // m_prev last frame
    int m_0C;
    RaceEntry *m_chain; // 0x10: the next along another chain
    u8 m_14[0x40];
    int m_dist; // 0x54: along the track
};

struct RaceEntryX {
    u8 m_00[0x174];
    Vector3 m_174;
    Vector3 m_180;
    Vector3 m_18C;
    int m_198;
    u8 m_19C[0x18];
    RacePos m_pos; // 0x1B4
    u8 m_20C[8];
    int m_214; // how far it is
    int m_218; // its place among its kind
    u8 m_21C[0x258];
    int m_474; // its kind's index
};
struct RaceEntry {
    union {
        int m_flags; // & 0x7E: its kind
        struct {
            unsigned m_b0 : 1;
            int m_kind5 : 5;
            unsigned m_on : 1; // bit 6: to step
        } m_bits;
    };
    u8 m_04[0x2C];
    RaceEntryX *m_30;
    u8 m_34[0x4FC];
    int m_530; // when its neighbour last changed
    int m_534;
    u8 m_538[0x30];
};
struct Race {
    u8 m_00[0x2E8];
    RaceEntry m_entries[5];
};
struct RaceWorld {
    u8 m_00[0x378];
    Race *m_race;
};
// The race's entries of kind 0x44 sorted by their m_474, 5 per kind
struct RaceSort {
    int m_00;
    u8 m_04[0x30];
    int m_34;
    u8 m_38[0x3C];
    RaceEntry *m_74; // the ring's first
    int m_78;        // the highest kind index along the chain
    int m_7C;
    int m_80;
    int m_84;
    int m_88;
    int m_kinds;            // 0x8C
    int m_count[7];         // 0x90
    RaceEntryX *m_by[7][5]; // 0xAC
    u8 m_138[0x48];
    int m_180;
};

struct Track {
    u8 m_00[0x2C];
    int m_len; // a lap's length
};

// What a racer's m_180 points at
struct RacerSlot {
    int m_00;
    int m_04;
    u8 m_08[8];
    int m_10;
    u8 m_14[0x20];
    int m_34;
};

// A plane: its normal (4.12... << 2) and distance
struct RacePlane {
    Vector3 *m_n;
    long m_d;
};

// A racer
struct Racer {
    int *m_00;
    int *m_04;
    int m_08;
    int m_0C;
    u8 m_10[0xC];
    int m_1C;
    int m_20;
    int m_24;
    u8 m_28[0xC];
    Vector3 m_34; // 0x34: its frame's three axes and three points
    Vector3 m_40;
    Vector3 m_4C;
    u8 m_58[0x18];
    Vector3 m_70;
    Vector3 m_7C;
    Vector3 m_88;
    Vector3 m_94[3];        // 0x94: the planes' normals
    struct RacePlane *m_B8; // 0xB8: 3 planes
    u8 m_BC[0x10];
    Vector3 m_pts[9]; // 0xCC: an outline on the ground (x, z)
    int m_138;
    int m_13C;
    int m_140;
    int m_144;
    u8 m_148[8];
    int m_150;
    int m_154;
    int m_158;
    int m_15C;
    u8 m_160[4];
    int m_164;
    int m_168;
    int m_16C;
    u8 m_170[4];
    int m_174;
    int m_178;
    int m_17C;
    RacerSlot *m_180;
};

// A camera's state, initialised with 0xCDCDCDCD
struct RaceCam {
    int m_00;
    int m_04;
    int m_08;
    int m_0C;
    int m_10;
    Vector3 m_14;
    Vector3 m_20;
    Vector3 m_2C;
    Vector3 m_38;
    Vector3 m_44;
    int m_50;
    int m_54;
    int m_58;
    int m_5C;
    int m_60;
    int m_64;
    int m_68;
};
void func_8001B6B4(RaceSort *t, RaceWorld *w);
void func_8001B778(RaceSort *t, RaceWorld *w);
void func_8001CBA0(RaceSort *t, RaceEntry *e);
void func_8001B84C(RaceSort *t, RaceWorld *w);
void func_8001B974(RaceSort *t, int i, RaceWorld *w, int a);
RaceEntry *func_8001CC14(RaceSort *t, RaceWorld *w);
extern int D_800D60FC; // the time
void func_8001CF34(RaceSort *t);
extern int D_800CB42C;
int func_8001D018(Track *t, RacePos *a, RacePos *b);
void func_8001D07C(RaceCam *c);
Racer *func_8001D108(Racer *r);
void func_8001D180(Racer *r, int flags);
void func_8001D1C4(Racer *r, RacerSlot *s);
void func_8001D99C(Racer *r);
}

static inline RaceEntry *RaceGetEntry(Race *r, int i) {
    return i < 0 ? 0 : &r->m_entries[i];
}

#endif
