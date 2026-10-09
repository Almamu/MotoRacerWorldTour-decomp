nonmatching __builtin_vec_new, 0x20

glabel __builtin_vec_new
    /* 95A64 800A7254 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 95A68 800A7258 1000BFAF */  sw         $ra, 0x10($sp)
    /* 95A6C 800A725C 709C020C */  jal        __builtin_new
    /* 95A70 800A7260 00000000 */   nop
    /* 95A74 800A7264 1000BF8F */  lw         $ra, 0x10($sp)
    /* 95A78 800A7268 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 95A7C 800A726C 0800E003 */  jr         $ra
    /* 95A80 800A7270 00000000 */   nop
endlabel __builtin_vec_new
