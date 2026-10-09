nonmatching func_800869E4, 0x54

glabel func_800869E4
    /* 751F4 800869E4 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 751F8 800869E8 0D80033C */  lui        $v1, %hi(D_800CBD30)
    /* 751FC 800869EC 30BD6324 */  addiu      $v1, $v1, %lo(D_800CBD30)
    /* 75200 800869F0 FFFF0224 */  addiu      $v0, $zero, -0x1
    /* 75204 800869F4 0D80043C */  lui        $a0, %hi(D_800CBCE0)
    /* 75208 800869F8 E0BC8424 */  addiu      $a0, $a0, %lo(D_800CBCE0)
    /* 7520C 800869FC 0D80053C */  lui        $a1, %hi(D_800C8A7C)
    /* 75210 80086A00 7C8AA524 */  addiu      $a1, $a1, %lo(D_800C8A7C)
    /* 75214 80086A04 1000BFAF */  sw         $ra, 0x10($sp)
    /* 75218 80086A08 407680AF */  sw         $zero, %gp_rel(D_800CBD30)($gp)
    /* 7521C 80086A0C 447680AF */  sw         $zero, %gp_rel(D_800CBD34)($gp)
    /* 75220 80086A10 080062AC */  sw         $v0, 0x8($v1)
    /* 75224 80086A14 4C7680AF */  sw         $zero, %gp_rel(D_800CBD3C)($gp)
    /* 75228 80086A18 100062AC */  sw         $v0, 0x10($v1)
    /* 7522C 80086A1C 547680AF */  sw         $zero, %gp_rel(D_800CBD44)($gp)
    /* 75230 80086A20 C367000C */  jal        func_80019F0C
    /* 75234 80086A24 00000000 */   nop
    /* 75238 80086A28 1000BF8F */  lw         $ra, 0x10($sp)
    /* 7523C 80086A2C 00000000 */  nop
    /* 75240 80086A30 0800E003 */  jr         $ra
    /* 75244 80086A34 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_800869E4
