nonmatching func_800A4244, 0x20

glabel func_800A4244
    /* 92A54 800A4244 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 92A58 800A4248 1000BFAF */  sw         $ra, 0x10($sp)
    /* 92A5C 800A424C 2E8A020C */  jal        func_800A28B8
    /* 92A60 800A4250 00000000 */   nop
    /* 92A64 800A4254 1000BF8F */  lw         $ra, 0x10($sp)
    /* 92A68 800A4258 01000224 */  addiu      $v0, $zero, 0x1
    /* 92A6C 800A425C 0800E003 */  jr         $ra
    /* 92A70 800A4260 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_800A4244
