#ifndef COBJET_H
#define COBJET_H

#include "common.h"

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
class Cobjet : public CNamed {
public:
    u8 m_08[0x38 - 0x08];
    char *m_38;
    u8 m_3C[0x4C - 0x3C];
    CobjetLink *m_links;
    // vtable pointer at 0x50

    Cobjet();
    virtual ~Cobjet();
    void Init();
};

#endif
