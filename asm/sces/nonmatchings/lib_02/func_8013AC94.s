nonmatching func_8013AC94, 0x24

glabel func_8013AC94
    /* 8160 8013AC94 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 8164 8013AC98 1000BFAF */  sw         $ra, 0x10($sp)
    /* 8168 8013AC9C 21288000 */  addu       $a1, $a0, $zero
    /* 816C 8013ACA0 BEEC040C */  jal        func_8013B2F8
    /* 8170 8013ACA4 01000424 */   addiu     $a0, $zero, 0x1
    /* 8174 8013ACA8 1000BF8F */  lw         $ra, 0x10($sp)
    /* 8178 8013ACAC 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 817C 8013ACB0 0800E003 */  jr         $ra
    /* 8180 8013ACB4 00000000 */   nop
endlabel func_8013AC94
