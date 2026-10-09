nonmatching CdGetToc, 0x24

glabel CdGetToc
    /* 95A84 800A7274 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 95A88 800A7278 1000BFAF */  sw         $ra, 0x10($sp)
    /* 95A8C 800A727C 21288000 */  addu       $a1, $a0, $zero
    /* 95A90 800A7280 A69C020C */  jal        CdGetToc2
    /* 95A94 800A7284 01000424 */   addiu     $a0, $zero, 0x1
    /* 95A98 800A7288 1000BF8F */  lw         $ra, 0x10($sp)
    /* 95A9C 800A728C 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 95AA0 800A7290 0800E003 */  jr         $ra
    /* 95AA4 800A7294 00000000 */   nop
endlabel CdGetToc
