nonmatching func_800A7640, 0x20

glabel func_800A7640
    /* 95E50 800A7640 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 95E54 800A7644 1000BFAF */  sw         $ra, 0x10($sp)
    /* 95E58 800A7648 F6A2020C */  jal        CD_flush
    /* 95E5C 800A764C 00000000 */   nop
    /* 95E60 800A7650 1000BF8F */  lw         $ra, 0x10($sp)
    /* 95E64 800A7654 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 95E68 800A7658 0800E003 */  jr         $ra
    /* 95E6C 800A765C 00000000 */   nop
endlabel func_800A7640
