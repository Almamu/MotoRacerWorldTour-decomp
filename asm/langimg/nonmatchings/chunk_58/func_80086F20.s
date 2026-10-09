nonmatching func_80086F20, 0x44

glabel func_80086F20
    /* 75730 80086F20 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 75734 80086F24 1000B0AF */  sw         $s0, 0x10($sp)
    /* 75738 80086F28 21808000 */  addu       $s0, $a0, $zero
    /* 7573C 80086F2C 1400B1AF */  sw         $s1, 0x14($sp)
    /* 75740 80086F30 2188A000 */  addu       $s1, $a1, $zero
    /* 75744 80086F34 1800BFAF */  sw         $ra, 0x18($sp)
    /* 75748 80086F38 D3D4020C */  jal        func_800B534C
    /* 7574C 80086F3C 21202002 */   addu      $a0, $s1, $zero
    /* 75750 80086F40 1800BF8F */  lw         $ra, 0x18($sp)
    /* 75754 80086F44 040011AE */  sw         $s1, 0x4($s0)
    /* 75758 80086F48 1400B18F */  lw         $s1, 0x14($sp)
    /* 7575C 80086F4C 000002AE */  sw         $v0, 0x0($s0)
    /* 75760 80086F50 01000224 */  addiu      $v0, $zero, 0x1
    /* 75764 80086F54 080002AE */  sw         $v0, 0x8($s0)
    /* 75768 80086F58 1000B08F */  lw         $s0, 0x10($sp)
    /* 7576C 80086F5C 0800E003 */  jr         $ra
    /* 75770 80086F60 2000BD27 */   addiu     $sp, $sp, 0x20
endlabel func_80086F20
