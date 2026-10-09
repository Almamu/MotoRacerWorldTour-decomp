nonmatching func_8006A224, 0x34

glabel func_8006A224
    /* 58A34 8006A224 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 58A38 8006A228 1000BFAF */  sw         $ra, 0x10($sp)
    /* 58A3C 8006A22C 0C00828C */  lw         $v0, 0xC($a0)
    /* 58A40 8006A230 00000000 */  nop
    /* 58A44 8006A234 08004384 */  lh         $v1, 0x8($v0)
    /* 58A48 8006A238 0C00458C */  lw         $a1, 0xC($v0)
    /* 58A4C 8006A23C 00000000 */  nop
    /* 58A50 8006A240 09F8A000 */  jalr       $a1
    /* 58A54 8006A244 21208300 */   addu      $a0, $a0, $v1
    /* 58A58 8006A248 1000BF8F */  lw         $ra, 0x10($sp)
    /* 58A5C 8006A24C 00000000 */  nop
    /* 58A60 8006A250 0800E003 */  jr         $ra
    /* 58A64 8006A254 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_8006A224
