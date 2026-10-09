nonmatching func_800A7A98, 0x20

glabel func_800A7A98
    /* 962A8 800A7A98 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 962AC 800A7A9C 1000BFAF */  sw         $ra, 0x10($sp)
    /* 962B0 800A7AA0 39A4020C */  jal        func_800A90E4
    /* 962B4 800A7AA4 00000000 */   nop
    /* 962B8 800A7AA8 1000BF8F */  lw         $ra, 0x10($sp)
    /* 962BC 800A7AAC 0100422C */  sltiu      $v0, $v0, 0x1
    /* 962C0 800A7AB0 0800E003 */  jr         $ra
    /* 962C4 800A7AB4 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_800A7A98
