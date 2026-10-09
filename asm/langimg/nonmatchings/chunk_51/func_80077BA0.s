nonmatching func_80077BA0, 0x28

glabel func_80077BA0
    /* 663B0 80077BA0 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 663B4 80077BA4 1000BFAF */  sw         $ra, 0x10($sp)
    /* 663B8 80077BA8 709C020C */  jal        __builtin_new
    /* 663BC 80077BAC 18000424 */   addiu     $a0, $zero, 0x18
    /* 663C0 80077BB0 2EDD010C */  jal        func_800774B8
    /* 663C4 80077BB4 21204000 */   addu      $a0, $v0, $zero
    /* 663C8 80077BB8 1000BF8F */  lw         $ra, 0x10($sp)
    /* 663CC 80077BBC 00000000 */  nop
    /* 663D0 80077BC0 0800E003 */  jr         $ra
    /* 663D4 80077BC4 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_80077BA0
