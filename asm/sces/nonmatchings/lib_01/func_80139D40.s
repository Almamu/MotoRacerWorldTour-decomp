nonmatching func_80139D40, 0x60

glabel func_80139D40
    /* 720C 80139D40 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 7210 80139D44 1C80053C */  lui        $a1, %hi(D_801C64A4)
    /* 7214 80139D48 A464A58C */  lw         $a1, %lo(D_801C64A4)($a1)
    /* 7218 80139D4C 1000BFAF */  sw         $ra, 0x10($sp)
    /* 721C 80139D50 1C80013C */  lui        $at, %hi(D_801C648C)
    /* 7220 80139D54 8C6420AC */  sw         $zero, %lo(D_801C648C)($at)
    /* 7224 80139D58 1C80013C */  lui        $at, %hi(D_801C6488)
    /* 7228 80139D5C 886420AC */  sw         $zero, %lo(D_801C6488)($at)
    /* 722C 80139D60 1C80013C */  lui        $at, %hi(D_801C6484)
    /* 7230 80139D64 846420AC */  sw         $zero, %lo(D_801C6484)($at)
    /* 7234 80139D68 1C80013C */  lui        $at, %hi(D_801C647C)
    /* 7238 80139D6C 7C6420AC */  sw         $zero, %lo(D_801C647C)($at)
    /* 723C 80139D70 DBE7040C */  jal        func_80139F6C
    /* 7240 80139D74 21200000 */   addu      $a0, $zero, $zero
    /* 7244 80139D78 1C80013C */  lui        $at, %hi(D_801C646C)
    /* 7248 80139D7C 6C6420AC */  sw         $zero, %lo(D_801C646C)($at)
    /* 724C 80139D80 1C80013C */  lui        $at, %hi(D_801C6464)
    /* 7250 80139D84 646420A4 */  sh         $zero, %lo(D_801C6464)($at)
    /* 7254 80139D88 1C80013C */  lui        $at, %hi(D_801C6460)
    /* 7258 80139D8C 606420AC */  sw         $zero, %lo(D_801C6460)($at)
    /* 725C 80139D90 1000BF8F */  lw         $ra, 0x10($sp)
    /* 7260 80139D94 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 7264 80139D98 0800E003 */  jr         $ra
    /* 7268 80139D9C 00000000 */   nop
endlabel func_80139D40
