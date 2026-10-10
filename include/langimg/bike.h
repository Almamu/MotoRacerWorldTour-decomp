#ifndef LANGIMG_BIKE_H
#define LANGIMG_BIKE_H

#include "common.h"
#include "langimg/race.h"
#include "langimg/motor.h"

/* The bike (chunk_09 on); generated field by field from what the code
 * reads, so the padding has no meaning. */

extern "C" {
// A body's motion (0x24 bytes)
struct Motion {
    int m_00;
    Vector3 m_04;
    int m_10, m_14, m_18;
    int m_1C, m_20;
};

// A position and its frame (0x20 bytes)
struct Frame {
    int m_00, m_04;
    Vector3 m_08;
    u8 m_14[0xC];
};

// An animation channel (0x1C bytes)
struct AnimChan {
    u8 m_00[0x1C];
};

// What owns the bike (its m_54)
struct BikeOwner {
    u8 m_pad0[0x188];
    u8 m_188;
    u8 m_pad189[0x17B];
    SVECTOR m_304;
    u8 m_pad30C[0x258];
    int m_564;
};

// A bike (0x5D4 bytes); its base class is func_80062E40's
struct Bike {
    u8 m_pad0[0x50];
    void *m_vtable;
    BikeOwner *m_54;
    s8 m_58; // the motor's kind
    u8 m_59;
    u8 m_5A;
    u8 m_pad5B[0x89];
    int m_E4; // the engine speed asked for
    int m_E8;
    int m_EC;
    short m_F0;
    short m_F2;
    int m_F4;
    u8 m_padF8[0x18];
    int m_110;
    u8 m_pad114[0x4];
    int m_118; // the top engine speed
    u8 m_pad11C[0x12];
    short m_12E;
    short m_130;
    short m_132;
    int m_134;
    u8 m_pad138[0xF4];
    Frame *m_22C;
    Frame *m_230;
    Vector3 m_234;
    Vector3 m_240;
    u8 m_pad24C[0x40];
    short m_28C;
    short m_28E;
    int m_290;
    u8 m_pad294[0x4];
    short m_298;
    u8 m_pad29A[0x1E];
    int m_2B8;
    short m_2BC; // the engine speed
    short m_2BE;
    int m_2C0;
    int m_2C4;
    int m_shift;  // gears to change by
    int m_clutch; // the gearbox's state
    int m_2D0;
    int m_2D4;
    u8 m_pad2D8[0x8];
    u8 m_2E0;
    u8 m_pad2E1[0x3];
    int m_2E4;
    u8 m_pad2E8[0x8];
    int m_2F0;
    u8 m_pad2F4[0x4];
    int m_2F8;
    u8 m_pad2FC[0x34];
    Vector3 m_330; // its heading
    u8 m_pad33C[0x3C];
    AnimChan m_378;
    int m_394; // its angle
    int m_398;
    u8 m_pad39C[0x10];
    int m_3AC;
    u8 m_pad3B0[0x2C];
    Vector3 m_3DC;
    Vector3 m_3E8;
    u8 m_3F4;
    u8 m_3F5;
    s8 m_3F6;
    u8 m_pad3F7[0x3];
    short m_gear; // the gear
    u8 m_pad3FC[0x10];
    u8 m_40C;
    u8 m_pad40D[0x3];
    s8 m_410;
    u8 m_pad411[0x1];
    u8 m_412;
    u8 m_pad413[0x1];
    u8 m_414;
    u8 m_415;
    u8 m_pad416[0x1];
    u8 m_417;
    int m_418;
    int m_41C;
    u8 m_pad420[0x1E];
    short m_43E;
    u8 m_pad440[0x5C];
    AnimChan m_49C;
    AnimChan m_4B8;
    u8 m_pad4D4[0x4];
    u8 m_4D8;
    u8 m_4D9;
    u8 m_4DA;
    u8 m_pad4DB[0x5];
    AnimChan m_4E0;
    u8 m_pad4FC[0x30];
    u8 m_52C;
    u8 m_52D;
    u8 m_52E;
    u8 m_52F;
    u8 m_pad530[0x4];
    AnimChan m_534;
    u8 m_pad550[0x10];
    Frame m_560;
    Frame m_580;
    Motor *m_motor;
    u8 m_pad5A4[0x4];
    int m_5A8;
    u8 m_pad5AC[0xC];
    int m_5B8;
    u8 m_pad5BC[0x4];
    int m_5C0;
    u8 m_pad5C4[0x4];
    Motion *m_5C8; // the last three frames' motion
    Motion *m_5CC;
    Motion *m_5D0;
};

// The race's state, as far as it's read here
struct RaceState {
    u8 m_00[0x52C];
    int m_state; // 0x52C
};
struct RaceHolder {
    u8 m_00[0x10];
    RaceState *m_10;
};
struct Game {
    u8 m_00[0x378];
    RaceHolder *m_378;
};
extern Game *D_800C5E14;
extern int D_800D5FD4;
extern u8 D_800C4D60[]; // the bike's vtable

Bike *func_80024064(Bike *b);
void func_80024168(Bike *b);
void func_800242A4(Bike *b, int flags);
void func_80024584(Bike *b);
void func_80024C60(Bike *b, Motion *m);
void func_80024C90(Bike *b);
void func_80025074(Bike *b);
void func_800253FC(Bike *b);
void func_800254F0(Bike *b);
void func_80062E40(Bike *b);
void func_80062EEC(Bike *b, int flags);
void func_8006BB70(AnimChan *c);
Frame *func_8001A62C(Frame *f);
void func_8001A63C(Frame *f, int flags);
void func_80033720(Bike *b);
}

#endif
