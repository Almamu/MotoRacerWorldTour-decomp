nonmatching func_800A75B8, 0x28

glabel func_800A75B8
    /* 95DC8 800A75B8 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 95DCC 800A75BC 1000BFAF */  sw         $ra, 0x10($sp)
    /* 95DD0 800A75C0 00F0043C */  lui        $a0, (0xF0000003 >> 16)
    /* 95DD4 800A75C4 03008434 */  ori        $a0, $a0, (0xF0000003 & 0xFFFF)
    /* 95DD8 800A75C8 B8D6020C */  jal        func_800B5AE0
    /* 95DDC 800A75CC 40000524 */   addiu     $a1, $zero, 0x40
    /* 95DE0 800A75D0 1000BF8F */  lw         $ra, 0x10($sp)
    /* 95DE4 800A75D4 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 95DE8 800A75D8 0800E003 */  jr         $ra
    /* 95DEC 800A75DC 00000000 */   nop
endlabel func_800A75B8
