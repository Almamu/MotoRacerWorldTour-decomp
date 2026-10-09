nonmatching func_80051A84, 0x2C

glabel func_80051A84
    /* 40294 80051A84 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 40298 80051A88 1000B0AF */  sw         $s0, 0x10($sp)
    /* 4029C 80051A8C 1400BFAF */  sw         $ra, 0x14($sp)
    /* 402A0 80051A90 7147010C */  jal        func_80051DC4
    /* 402A4 80051A94 21808000 */   addu      $s0, $a0, $zero
    /* 402A8 80051A98 1400BF8F */  lw         $ra, 0x14($sp)
    /* 402AC 80051A9C FFFF0324 */  addiu      $v1, $zero, -0x1
    /* 402B0 80051AA0 040003AE */  sw         $v1, 0x4($s0)
    /* 402B4 80051AA4 1000B08F */  lw         $s0, 0x10($sp)
    /* 402B8 80051AA8 0800E003 */  jr         $ra
    /* 402BC 80051AAC 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_80051A84
