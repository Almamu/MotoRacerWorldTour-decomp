#ifndef LANGIMG_RACE_H
#define LANGIMG_RACE_H

#include "common.h"
#include "langimg/cobjet.h"

extern "C" {

// A race entry (0x568 bytes; Race::m_entries)
struct RaceEntry;
struct RaceEntryX {
    u8 m_00[0x1C4];
    RaceEntry *m_next; // 0x1C4: the next along the chain
    u8 m_1C8[0x2AC];
    int m_474; // its kind's index
};
struct RaceEntry {
    union {
        int m_flags; // & 0x7E: its kind
        struct {
            unsigned m_b0 : 1;
            int m_kind5 : 5;
        } m_bits;
    };
    u8 m_04[0x2C];
    RaceEntryX *m_30;
    u8 m_34[0x534];
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
    u8 m_04[0x70];
    int m_74;
    int m_78; // the highest kind index along the chain
    int m_7C;
    int m_80;
    int m_84;
    int m_88;
    u8 m_8C[4];
    int m_count[7];         // 0x90
    RaceEntryX *m_by[7][5]; // 0xAC
    u8 m_138[0x48];
    int m_180;
};

// A position along the track (0x54)
struct TrackPos {
    u8 m_00[0x54];
    int m_dist;
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

// A racer
struct Racer {
    int m_00;
    int m_04;
    int m_08;
    int m_0C;
    u8 m_10[0xC];
    int m_1C;
    int m_20;
    int m_24;
    u8 m_28[0x90];
    int m_B8;
    u8 m_BC[0x94];
    int m_150;
    int m_154;
    u8 m_158[4];
    int m_15C;
    u8 m_160[4];
    int m_164;
    u8 m_168[0xC];
    int m_174;
    u8 m_178[8];
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
int func_8001D018(Track *t, TrackPos *a, TrackPos *b);
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
