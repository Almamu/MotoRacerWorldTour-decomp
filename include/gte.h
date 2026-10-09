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
// The Z averages' scale factors
#define GTE_SET_ZSF(a, b) __asm__ volatile("ctc2 %0, $29\n\tctc2 %1, $30" : : "r"(a), "r"(b))

#define GTE_RTPS() __asm__ volatile("nop\n\tnop\n\t.word 0x4A180001")
#define GTE_RTPT() __asm__ volatile("nop\n\tnop\n\t.word 0x4A280030")
#define GTE_NCLIP() __asm__ volatile(".word 0x4B400006")

#endif
