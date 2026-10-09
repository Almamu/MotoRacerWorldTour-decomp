nonmatching SpuInit, 0x20

glabel SpuInit
    /* 10EFC 80143A30 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 10F00 80143A34 1000BFAF */  sw         $ra, 0x10($sp)
    /* 10F04 80143A38 C80D050C */  jal        _SpuInit
    /* 10F08 80143A3C 21200000 */   addu      $a0, $zero, $zero
    /* 10F0C 80143A40 1000BF8F */  lw         $ra, 0x10($sp)
    /* 10F10 80143A44 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 10F14 80143A48 0800E003 */  jr         $ra
    /* 10F18 80143A4C 00000000 */   nop
endlabel SpuInit
