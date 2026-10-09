nonmatching func_80077490, 0x28

glabel func_80077490
    /* 65CA0 80077490 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 65CA4 80077494 1000BFAF */  sw         $ra, 0x10($sp)
    /* 65CA8 80077498 709C020C */  jal        __builtin_new
    /* 65CAC 8007749C 18000424 */   addiu     $a0, $zero, 0x18
    /* 65CB0 800774A0 62D9010C */  jal        func_80076588
    /* 65CB4 800774A4 21204000 */   addu      $a0, $v0, $zero
    /* 65CB8 800774A8 1000BF8F */  lw         $ra, 0x10($sp)
    /* 65CBC 800774AC 00000000 */  nop
    /* 65CC0 800774B0 0800E003 */  jr         $ra
    /* 65CC4 800774B4 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_80077490
