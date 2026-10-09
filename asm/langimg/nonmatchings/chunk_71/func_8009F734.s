nonmatching func_8009F734, 0x2C

glabel func_8009F734
    /* 8DF44 8009F734 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 8DF48 8009F738 1000BFAF */  sw         $ra, 0x10($sp)
    /* 8DF4C 8009F73C 9C0A848C */  lw         $a0, 0xA9C($a0)
    /* 8DF50 8009F740 2182020C */  jal        func_800A0884
    /* 8DF54 8009F744 40008424 */   addiu     $a0, $a0, 0x40
    /* 8DF58 8009F748 6A7D020C */  jal        func_8009F5A8
    /* 8DF5C 8009F74C 00000000 */   nop
    /* 8DF60 8009F750 1000BF8F */  lw         $ra, 0x10($sp)
    /* 8DF64 8009F754 00000000 */  nop
    /* 8DF68 8009F758 0800E003 */  jr         $ra
    /* 8DF6C 8009F75C 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_8009F734
