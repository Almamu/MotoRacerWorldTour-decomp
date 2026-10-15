#ifndef LANGIMG_MOTOR_H
#define LANGIMG_MOTOR_H

#include "common.h"

extern "C" {
// A motor's curves and gears (fields named by use)
struct Motor {
    int m_00;
    int m_04;
    u8 m_08[8];
    int m_10, m_14; // 0x10: below m_3C, a line: m_10 + x * m_14
    int m_18, m_1C; // 0x18: above
    int m_20;       // 0x20: flags
    s8 m_24;        // 0x24: its kind
    s8 m_gears;     // 0x25
    short m_26;     // 0x26: the lowest x
    int m_28;       // 0x28: the top engine speed
    u8 m_2C[8];
    int m_34;
    u8 m_38[4];
    int m_3C;
    u8 m_40[8];
    int m_48;
    int m_4C; // 0x4C: the grip's force on the ground
    int m_50; // 0x50: on the rear wheel
    u8 m_54[0xE];
    short m_62;
    u8 m_64[8];
    int m_ratio[6];   // 0x6C: the gears' ratios
    int m_upshift[6]; // 0x84: the engine speed to shift up at, per gear
    u8 m_9C[4];
    int m_A0;
    int m_A4, m_A8;
    u8 m_AC[0x48];
    int m_F4;
    u8 m_F8[0x1C];
    int m_114;
    int m_118;
    int m_11C;
    int m_120;
    u8 m_124[0x24];
    short m_148;
    short m_14A;
    u8 m_14C[2];
    short m_14E;
    int m_150;
    int m_154;
    short m_158;
    short m_15A; // 0x15A: rolling resistance
    u8 m_15C[4];
    int m_160;
    u8 m_164[8];
    int m_16C;
    int m_170; // which of the entries at 0x185
    u8 m_174[0x11];
    struct {
        u8 m_00;
        u8 m_01[10];
    } m_185[1]; // 11 bytes each
};

int func_800236F0(Motor *m, int x, int gear);
void func_8002385C(Motor *m);
int func_80023E48(Motor *m, int *out, int dt, int n);
int func_80023788(Motor *m, int x, int gear);
void func_800237E8(Motor *m, int *out);
int func_8002357C(Motor *m, int x, int gear);
u32 func_800235F8(Motor *m, int x);
}

#endif
