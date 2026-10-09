nonmatching __builtin_vec_delete, 0x20

glabel __builtin_vec_delete
    /* 95A44 800A7234 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 95A48 800A7238 1000BFAF */  sw         $ra, 0x10($sp)
    /* 95A4C 800A723C 679C020C */  jal        __builtin_delete
    /* 95A50 800A7240 00000000 */   nop
    /* 95A54 800A7244 1000BF8F */  lw         $ra, 0x10($sp)
    /* 95A58 800A7248 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 95A5C 800A724C 0800E003 */  jr         $ra
    /* 95A60 800A7250 00000000 */   nop
endlabel __builtin_vec_delete
