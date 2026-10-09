#include "common.h"
#include "langimg/cobjet.h"
#include "langimg/strutil.h"

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

int CName::Equals(const char *str, int n, int x) {
    return func_800A6100(str, m_str, n) == 0;
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

#ifdef NON_MATCHING
/* Equivalent; the original sets the matrix row by row (the diagonal, the
 * translation, then the rest) and stores m_38 and m_3C twice, where GCC
 * drops the first pair */
static inline void ClearVector(Vector3 *v) {
    v->vx = 0;
    v->vy = 0;
    v->vz = 0;
}

static inline void Identity(MATRIX *m) {
    m->m[0][0] = 0x1000;
    m->t[0] = 0;
    m->m[0][1] = m->m[0][2] = 0;
    m->m[1][1] = 0x1000;
    m->t[1] = 0;
    m->m[1][2] = m->m[1][0] = 0;
    m->m[2][2] = 0x1000;
    m->t[2] = 0;
    m->m[2][1] = m->m[2][0] = 0;
}

static inline void ClearParts(Cobjet *o) {
    o->m_38 = 0;
    o->m_3C = 0;
}

void Cobjet::Init() {
    ClearVector(&m_pos);
    m_matp = 0;
    Identity(&m_mat);
    ClearParts(this);
    m_3D = -1;
    m_3F = -1;
    m_3E = -1;
    m_links = 0;
    m_45 = 0;
    m_46 = 0;
    m_44 = 0;
    ClearParts(this);
    m_47 = 0;
    m_color = 0x808080;
    m_40 = 0;
}
#else
INCLUDE_ASM("asm/langimg/nonmatchings/chunk_02a", Init__6Cobjet);
#endif
