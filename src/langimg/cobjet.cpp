#include "langimg/cobjet.h"

CName::CName() {
    m_str = 0;
}

CName::~CName() {
    if (m_str) {
        delete m_str;
        m_str = 0;
    }
}

#ifdef NON_MATCHING
// Equivalent; the original keeps the reloaded m_str in $v1, this in $v0.
void CName::Set(const char *str) {
    if (str) {
        if (m_str) {
            delete m_str;
            m_str = 0;
        }
        int len = strlen(str) + 1;
        m_str = new char[len];
        memcpy(m_str, str, len);
        m_str[len - 1] = 0;
    }
}
#else
INCLUDE_ASM("asm/langimg/nonmatchings/cobjet", Set__5CNamePCc);
#endif

char *CName::Get() {
    return m_str;
}

int CName::Equals(const char *str) {
    return strcmp(str, m_str) == 0;
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
