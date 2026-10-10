#ifndef GTE_H
#define GTE_H

// The GTE (coprocessor 2), as the game's code drives it: single moves with
// registers GCC chooses, constants loaded through one register variable,
// and a few fixed sequences (docs/matching_techniques.md, "GTE code").

#define GTE_CTC2(v, r) __asm__ volatile("ctc2 %0, $" #r : : "r"(v))
#define GTE_MTC2(v, r) __asm__ volatile("mtc2 %0, $" #r : : "r"(v))
#define GTE_CFC2(v, r) __asm__ volatile("cfc2 %0, $" #r : "=r"(v))
#define GTE_MFC2(v, r) __asm__ volatile("mfc2 %0, $" #r : "=r"(v))

// The rotation matrix, from its first 5 words (the 3x3 shorts)
#define GTE_SET_ROT(m) \
    __asm__ volatile("lw $5, 0(%0)\n\tlw $6, 4(%0)\n\t" \
                     "ctc2 $5, $0\n\tctc2 $6, $1\n\t" \
                     "lw $5, 8(%0)\n\tlw $6, 12(%0)\n\tctc2 $5, $2\n\t" \
                     "lw $5, 16(%0)\n\tctc2 $6, $3\n\tctc2 $5, $4" \
                     : \
                     : "r"(m) \
                     : "$5", "$6")
// The translation
#define GTE_SET_TRANS(x, y, z) \
    __asm__ volatile("ctc2 %0, $5\n\tctc2 %1, $6\n\tctc2 %2, $7" : : "r"(x), "r"(y), "r"(z))
// V0, from its words
#define GTE_SET_V0(xy, z) __asm__ volatile("mtc2 %0, $0\n\tmtc2 %1, $1" : : "r"(xy), "r"(z))
// The background colour (the mvmva addend with cv 1)
#define GTE_SET_BK(r, g, b) \
    __asm__ volatile("ctc2 %0, $13\n\tctc2 %1, $14\n\tctc2 %2, $15" : : "r"(r), "r"(g), "r"(b))
// The light matrix, from its 5 words
#define GTE_SET_LIGHT(a, b, c, d, e) \
    __asm__ volatile("ctc2 %0, $8\n\tctc2 %1, $9\n\tctc2 %2, $10\n\tctc2 %3, $11\n\tctc2 %4, $12" \
                     : \
                     : "r"(a), "r"(b), "r"(c), "r"(d), "r"(e))
// MAC1 and MAC3
#define GTE_GET_MAC13(x, z) __asm__ volatile("mfc2 %0, $25\n\tmfc2 %1, $27" : "=r"(x), "=r"(z))
// The Z averages' scale factors
#define GTE_SET_ZSF(a, b) __asm__ volatile("ctc2 %0, $29\n\tctc2 %1, $30" : : "r"(a), "r"(b))

#define GTE_RTPS() __asm__ volatile("nop\n\tnop\n\t.word 0x4A180001")
#define GTE_RTPT() __asm__ volatile("nop\n\tnop\n\t.word 0x4A280030")
#define GTE_NCLIP() __asm__ volatile(".word 0x4B400006")
// The light matrix times IR, nothing added (mvmva 1, 1, 3, 3, 0)
#define GTE_MVMVA_LIR() __asm__ volatile("nop\n\tnop\n\t.word 0x4A4BE012")
// IR1-IR3
#define GTE_SET_IR(x, y, z) \
    __asm__ volatile("mtc2 %0, $9\n\tmtc2 %1, $10\n\tmtc2 %2, $11" : : "r"(x), "r"(y), "r"(z))
// MAC1-MAC3
#define GTE_GET_MAC(x, y, z) \
    __asm__ volatile("mfc2 %0, $25\n\tmfc2 %1, $26\n\tmfc2 %2, $27" : "=r"(x), "=r"(y), "=r"(z))
// The light matrix times V0, plus the translation (mvmva 1, 1, 0, 1, 0)
#define GTE_MVMVA_LV0TR() __asm__ volatile("nop\n\tnop\n\t.word 0x4A4A2012")

#endif
