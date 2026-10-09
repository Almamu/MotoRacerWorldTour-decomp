#ifndef COBJET_H
#define COBJET_H

#include "common.h"
#include "psyq.h"

// The vtables live in the disassembled data for now (docs/decomp.md, "Data
// sections"); this keeps GCC from emitting them here.
#pragma interface

// Only Cobjet's name is known (from the game's class table); CName, CNamed
// and CobjetLink are placeholders.

// A heap copy of a string.
class CName {
public:
    char *m_str;

    CName();
    ~CName();
    void Set(const char *str);
    char *Get();
    int Equals(const char *str);
};

class CNamed : public CName {
public:
    int m_04;

    CNamed();
};

// Node of the list at Cobjet + 0x4C.
class CobjetLink {
public:
    CobjetLink *m_next;
    int m_index;

    ~CobjetLink();
};

// Every object of a scene (docs/formats/sdf.md, 0x54 bytes).
class Cobjet;

// What Cobjet::m_40 points to: its first child and its next sibling?
struct CobjetTree {
    Cobjet *m_first;
    Cobjet *m_next;
};

struct Vector3 {
    long vx, vy, vz;
};

class Cobjet : public CNamed {
public:
    Vector3 m_pos;  // 0x08
    MATRIX m_mat;   // 0x14
    MATRIX *m_matp; // 0x34: m_mat, or another object's
    short *m_38;
    s8 m_3C;
    s8 m_3D;
    s8 m_3E;
    s8 m_3F;
    CobjetTree *m_40;
    s8 m_44;
    u8 m_45;
    u8 m_46;
    u8 m_47;
    int m_color; // 0x48
    CobjetLink *m_links;
    // vtable pointer at 0x50

    Cobjet();
    virtual ~Cobjet();
    void Init();
};

extern "C" {
extern Cobjet *D_800CA750[10]; // objects whose angles are cached
extern SVECTOR D_800CA780[10]; // and their angles
extern int D_800C493C;         // the cache's last entry

void func_80016234(Cobjet *o, MATRIX *m, int own);
void func_80016798(Cobjet *o);
void func_800167B8(Cobjet *o, Vector3 *out);
void func_800167F8(Cobjet *o, SVECTOR *out);
void func_8001687C(void);
void func_800168A8(Cobjet *o, SVECTOR *v);
int func_80016914(Cobjet *o, SVECTOR *out);
void func_80016998(void);
void func_800169A0(void);
void func_800169A8(void);
void func_800169B0(void);
void func_800169B8(Cobjet *o, int v, int force);
int func_80016A38(Cobjet *o);
void func_80098418(MATRIX *m, SVECTOR *angles);
}

#endif
