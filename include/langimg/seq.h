#ifndef LANGIMG_SEQ_H
#define LANGIMG_SEQ_H

#include "langimg/cobjet.h"

// An entry of a sequence: an object, its linked entry, and its m_3F
struct SeqEntry {
    int m_obj : 12;
    int m_link : 12; // -1: none
    int m_3F : 8;
    SeqEntry *m_next;
};

// A sequence of objects and their linked entries, named
class Seq : public CName {
public:
    CobjetList *m_objs;
    CobjetLinkedTable *m_links;
    Seq *m_next; // 0x0C
    SeqEntry *m_entries;
    int m_14;
    unsigned m_state : 2; // 0x18
    unsigned m_18_2 : 4;
    unsigned m_mode : 6;
    int m_count : 20;
};

// The sequences (a list along Seq::m_0C)
struct SeqSet {
    int m_00;
    Seq *m_first;
};

extern "C" {
int func_80019578(Seq *s, int a, int back, int c);
int func_80019A98(Seq *s, int set, int clear);
void func_80019B2C(Seq *s, int id);
void func_80019BC4(Seq *s, int dir, int id);
Seq *func_80019C78(SeqSet *set, const char *name);
int func_80019D0C(SeqSet *set, Seq *s, int a, int back, int c);
int func_80019D60(SeqSet *set, const char *name, int a, int back, int c);
void func_80019DC0(SeqSet *set, int mode);
int func_800A60AC(const char *a, const char *b);
}

#endif
