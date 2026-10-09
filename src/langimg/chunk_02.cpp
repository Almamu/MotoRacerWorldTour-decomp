#include "common.h"
#include "langimg/cobjet.h"
#include "langimg/strutil.h"

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_02", func_80015798);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_02", func_80015CF4);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_02", func_80015E04);

CName::CName() {
    m_str = 0;
}

CName::~CName() {
    if (m_str) {
        delete m_str;
        m_str = 0;
    }
}

void CName::Set(const char *str) {
    if (str) {
        if (m_str) {
            delete m_str;
            m_str = 0;
        }
        int len = strlen(str) + 1;
        m_str = new char[len];
        strncpy(m_str, str, len);
        m_str[len - 1] = 0;
    }
}

char *CName::Get() {
    return m_str;
}

int CName::Equals(const char *str) {
    return func_800A6100(str, m_str) == 0;
}

CNamed::CNamed() {
    m_04 = 0;
}

Cobjet::Cobjet() {
    Init();
}

Cobjet::~Cobjet() {
    if (m_38) {
        delete[] m_38;
        m_38 = 0;
    }
    if (m_links) {
        delete m_links;
        m_links = 0;
    }
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_02", Init__6Cobjet);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_02", func_80016144);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_02", func_80016234);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_02", func_80016268);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_02", func_80016434);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_02", func_80016600);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_02", func_80016798);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_02", func_800167B8);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_02", func_800167F8);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_02", func_8001687C);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_02", func_800168A8);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_02", func_80016914);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_02", func_80016998);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_02", func_800169A0);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_02", func_800169A8);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_02", func_800169B0);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_02", func_800169B8);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_02", func_80016A38);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_02", func_80016A8C);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_02", func_80016C3C);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_02", func_80016E34);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_02", func_80017574);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_02", func_80017730);
