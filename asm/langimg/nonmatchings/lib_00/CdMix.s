nonmatching CdMix, 0x20

glabel CdMix
    /* 96288 800A7A78 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 9628C 800A7A7C 1000BFAF */  sw         $ra, 0x10($sp)
    /* 96290 800A7A80 D4A2020C */  jal        CD_vol
    /* 96294 800A7A84 00000000 */   nop
    /* 96298 800A7A88 1000BF8F */  lw         $ra, 0x10($sp)
    /* 9629C 800A7A8C 01000224 */  addiu      $v0, $zero, 0x1
    /* 962A0 800A7A90 0800E003 */  jr         $ra
    /* 962A4 800A7A94 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel CdMix
