nonmatching func_800A75E0, 0x28

glabel func_800A75E0
    /* 95DF0 800A75E0 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 95DF4 800A75E4 1000BFAF */  sw         $ra, 0x10($sp)
    /* 95DF8 800A75E8 00F0043C */  lui        $a0, (0xF0000003 >> 16)
    /* 95DFC 800A75EC 03008434 */  ori        $a0, $a0, (0xF0000003 & 0xFFFF)
    /* 95E00 800A75F0 B8D6020C */  jal        func_800B5AE0
    /* 95E04 800A75F4 40000524 */   addiu     $a1, $zero, 0x40
    /* 95E08 800A75F8 1000BF8F */  lw         $ra, 0x10($sp)
    /* 95E0C 800A75FC 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 95E10 800A7600 0800E003 */  jr         $ra
    /* 95E14 800A7604 00000000 */   nop
endlabel func_800A75E0
    /* 95E18 800A7608 00000000 */  nop
    /* 95E1C 800A760C 00000000 */  nop
    /* 95E20 800A7610 00000000 */  nop
