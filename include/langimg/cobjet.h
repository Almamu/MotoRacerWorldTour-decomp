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
    s8 m_46; // drawn this frame
    u8 m_47;
    int m_color; // 0x48
    CobjetLink *m_links;
    // vtable pointer at 0x50

    Cobjet();
    virtual ~Cobjet();
    void Init();
};

// An object with a model to draw: Cobjet's subclasses' first fields
class CobjetModel : public Cobjet {
public:
    int m_54;    // the texture page, or 0 for the prim's own?
    int *m_prim; // 0x58: flags (& 7: its kind), then the page
    u8 m_5C[0xC];
    Vector3 m_68; // an offset for the child's child's position
};

// The camera's projection
struct CameraLens {
    u8 m_00[0x14];
    int m_14;
    int m_18;
    int m_1C; // the screen distance?
    u8 m_20[0x28];
    int m_48; // LOD scale
};

// The camera
struct Camera {
    u8 m_00[0x20];
    MATRIX m_20;
    u8 m_40[0x20];
    MATRIX m_view; // 0x60
    u8 m_80[0x20];
    MATRIX m_A0;
    MATRIX m_C0;
    u8 m_E0[0x18];
    Vector3 m_pos; // 0xF8
    u8 m_104[0x38];
    CameraLens *m_lens; // 0x13C
};

struct ModelTable {
    int **m_items;
};

// A list of objects (a scene's?)
struct CobjetList {
    Cobjet **m_items;
    int m_04;
    int m_count;
    int m_0C;
    int m_drawn; // 0x10: how many were drawn this frame
};

// What an object's links (Cobjet::m_links) index: a class with virtual
// functions (its vtable pointer at 0x34)
class CobjetLinked {
public:
    int m_id; // its type, 3 to 5 for some
    u8 m_04[8];
    int m_flags; // 0x0C
    u8 m_10[0x1C];
    int m_2C;
    int m_30;
    // vtable pointer at 0x34

    virtual void v08();
    virtual void v10();
    virtual int v18();
    virtual void v20();
    virtual void v28();
    virtual void v30(int a, int b, int c, int d);
};

// One with a position (CobjetLinked's subclass)
class CobjetLinkedPos : public CobjetLinked {
public:
    u8 m_38[0xC];
    Vector3 m_44;
    u8 m_50[0x24];
    Vector3 m_74;
    u8 m_80[0x14];
    int m_94; // bits 12-15: a signed field
    int m_98; // bits 0-23
};

struct CobjetLinkedTable {
    CobjetLinked **m_items;
};

// A model part
struct CobjetPart {
    u8 m_00[8];
    int m_size; // 0x08, << 8
    short m_0C;
    short m_0E;
};

struct CobjetPartList {
    CobjetPart **m_items;
    int m_count;
};

extern "C" {
extern Cobjet *D_800CA750[10]; // objects whose angles are cached
extern SVECTOR D_800CA780[10]; // and their angles
extern int D_800C493C;         // the cache's last entry

int func_80016144(Cobjet *o, int a, int b, int n, ...);
void func_80016234(Cobjet *o, MATRIX *m, int own);
void func_80016798(Cobjet *o);
void func_800167B8(Cobjet *o, Vector3 *out);
void func_800167F8(Cobjet *o, SVECTOR *out);
void func_8001687C(void);
void func_800168A8(Cobjet *o, SVECTOR *v);
int func_80016914(Cobjet *o, SVECTOR *out);
void func_80016998(Cobjet *o, Vector3 *v);
void func_800169A0(void);
void func_800169A8(void);
void func_800169B0(void);
void func_800169B8(Cobjet *o, int v, int force);
int func_80016A38(Cobjet *o);
void func_80098418(MATRIX *m, SVECTOR *angles);
int func_800178DC(Cobjet *o, int n);
void func_800177E8(CobjetList *l, int start, int n);
int *func_80017948(Cobjet *o);
void func_8001798C(Cobjet *o, int v);
void func_80017A0C(Cobjet *o);
void func_80017A30(Cobjet *o, int id);
void func_8006E004(Cobjet *o);
void func_8006E02C(Cobjet *o);
extern int D_800C8904;
extern Cobjet *D_800C8740;
void func_80017A9C(Cobjet *o, int id);
int func_80017B88(Cobjet *o, CobjetLinkedPos *e);
void func_800747A8(CobjetLinked *e, int a, int b, int c);
extern CobjetLinkedTable *D_800C873C;
void func_80017574(CobjetList *l, CobjetPartList *parts, int a, int b, int kind);
void func_80017730(CobjetList *l);
void *memset(void *p, int c, size_t n);
void func_80016268(Cobjet *o, SVECTOR *rot, Vector3 *pos);
void func_80016434(Cobjet *o, SVECTOR *rot, Vector3 *pos);
void func_80016600(Cobjet *o, SVECTOR *rot, Vector3 *pos);
void func_80016A8C(CobjetModel *o, MATRIX *m);
void func_80016C3C(CobjetModel *o, MATRIX *m);
extern Camera *D_800C8864;
extern int D_800C8900;
extern ModelTable *D_800C8C68;
extern int D_800CBCA0;
extern int D_800CBCA4;
Vector3 *func_800998D0(Vector3 *dst, Vector3 *a, Vector3 *b); /* a - b */
void func_8007C354(int *model, MATRIX *m);
int func_80016E34(CobjetModel *o, MATRIX *parent, int hidden);
extern int D_800C4944;      // the matrix stack's depth
extern MATRIX D_800CA350[]; // the matrix stack
extern int D_800C88FC;
void func_80098768(MATRIX *m, long *in, long *out);
void func_80099898(Vector3 *out, Vector3 *a, Vector3 *b);
void func_80079DC0(int *model, MATRIX *m);
void func_8007A198(int *model, MATRIX *m);
void func_80018AEC(int *prim, int page, int x, int y);
void func_80019114(int *prim, int page, int x, int y);
void func_8001889C(MATRIX *m, SVECTOR *rot);              // a rotation matrix
MATRIX *func_80098674(MATRIX *a, MATRIX *b, MATRIX *out); // a product
void func_8009887C(long *in, long *out);
void func_800997D0(long *in, long *out);
}

#endif
