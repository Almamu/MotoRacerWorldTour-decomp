#include "common.h"

/* The game's code built with GCC 2.91.66: more of a bike's model
 * (docs/matching/issue-43-langimg-chunk42.md). */

extern "C" {
struct Vec42 {
    int x, y, z;
};
// A bike (chunk_09's Bike)
struct Owner42 {
    u8 m_00[0x187];
    s8 m_187;
};
// A bike's model (chunk_43's Model43)
struct Model42 {
    u8 m_00[0x54];
    struct Owner42 *m_54;
    u8 m_58[0xC];
    Vec42 m_64;
    u8 m_70[0x8];
    Vec42 m_78;
    u8 m_84[0xE0];
    Vec42 m_164;
    int m_170;
    u8 m_174[0x104];
    int m_278;
    Vec42 m_27C;
    u8 m_288[0x4];
    int m_28C;
    u8 m_290[0x4];
    int m_294;
    u8 m_298[0x70];
    int m_308;
    Vec42 m_30C;
    Vec42 m_318;
    u8 m_324[0x14];
    int m_338;
    int m_33C;
    int m_340;
    int m_344;
    int m_348;
    int m_34C;
    int m_350;
    int m_354;
    int m_358;
    short m_35C;
    short m_35E;
    u8 m_360[0xC];
    int m_36C;
    int m_370;
    int m_374;
    u8 m_378[0x4];
    int m_37C;
    int m_380;
    u8 m_384[0x4];
    Vec42 m_388[8];
    int m_3E8;
    int m_3EC;
    u8 m_3F0[0x4];
    int m_3F4;
    int m_3F8;
    int m_3FC;
    int m_400;
    u8 m_404[0x1C];
    int m_420;
    int m_424;
    int m_428;
    u8 m_42C[0x8];
    int m_434;
    u8 m_438[0x8];
    int m_440;
    int m_444;
    int m_448;
    int m_44C;
    u8 m_450[0x4];
    int m_454;
    u8 m_458[0x38];
    int m_490;
    int m_494;
};

extern int D_800CB42C;
Vec42 *func_80099718(Vec42 *d, Vec42 *s, int k);
Vec42 *func_8009975C(Vec42 *d, Vec42 *s, int k);
void func_80099898(Vec42 *out, Vec42 *a, Vec42 *b);

void func_800671EC(Model42 *m);
void func_80067230(Model42 *m, Vec42 *v, int f);
void func_800672F0(Model42 *m);
}

static inline void VecCopyL42(Vec42 *d, Vec42 *s) {
    int x = s->x;
    int y = s->y;
    int z = s->z;

    d->x = x;
    d->y = y;
    d->z = z;
}

static inline void VecCopy42(Vec42 *d, Vec42 *s) {
    d->x = s->x;
    d->y = s->y;
    d->z = s->z;
}

static inline void VecZero42(Vec42 *v) {
    v->x = 0;
    v->y = 0;
    v->z = 0;
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_42", func_800653F4);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_42", func_80065954);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_42", func_800663AC);

void func_800671EC(Model42 *m) {
    int i;

    m->m_3E8 = 0;
    m->m_3EC = 0;
    for (i = 0; i < 8; i++) {
        m->m_388[i].x = 0;
        m->m_388[i].y = 0;
        m->m_388[i].z = 0;
    }
}

void func_80067230(Model42 *m, Vec42 *v, int f) {
    Vec42 b, a;

    VecCopyL42(&m->m_27C, v);
    func_80099718(&a, &m->m_27C, m->m_454);
    func_8009975C(&b, &a, 0x1000);
    func_80099898(&a, &m->m_78, &b);
    VecCopy42(&m->m_64, &a);
    m->m_308 = 1;
    if (f) {
        m->m_54->m_187 = -3;
    } else {
        m->m_35E = 25;
    }
}

#ifdef NON_MATCHING
// Registers only: the original computes the address of 0x318 into $v0 after the stores through 0x27C (and 0x164's after the store of -1), reusing $v0; GCC computes 0x318's into $a1 at the start and keeps -1 in $v1 (19 off).
void func_800672F0(Model42 *m) {
    m->m_440 = 0x1000;
    m->m_44C = 0;
    m->m_444 = 0;
    m->m_448 = 0;
    m->m_278 = 0;
    VecZero42(&m->m_27C);
    VecZero42(&m->m_30C);
    VecZero42(&m->m_318);
    m->m_35E = 25;
    m->m_400 = -1;
    m->m_338 = 0;
    m->m_344 = 0;
    m->m_348 = 0;
    m->m_354 = 0;
    m->m_350 = 0;
    m->m_34C = 0;
    m->m_358 = 0;
    m->m_35C = 0;
    m->m_294 = 0;
    m->m_28C = 0;
    m->m_370 = 0;
    m->m_3F4 = 0;
    m->m_3F8 = 0;
    m->m_3FC = 0;
    m->m_340 = 0;
    m->m_33C = 0;
    m->m_374 = 0;
    m->m_420 = 0;
    m->m_424 = 0;
    m->m_428 = 0;
    m->m_36C = 0;
    m->m_37C = 0;
    m->m_380 = 0;
    D_800CB42C = 0;
    m->m_434 = 0;
    m->m_490 = 0;
    VecZero42(&m->m_164);
    m->m_170 = 0;
    m->m_494 = 0;
}
#else
INCLUDE_ASM("asm/langimg/nonmatchings/chunk_42", func_800672F0);
#endif
