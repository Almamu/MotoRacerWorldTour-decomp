nonmatching func_80061510, 0x30

glabel func_80061510
    /* 4FD20 80061510 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 4FD24 80061514 1000BFAF */  sw         $ra, 0x10($sp)
    /* 4FD28 80061518 7803828C */  lw         $v0, 0x378($a0)
    /* 4FD2C 8006151C 2120A000 */  addu       $a0, $a1, $zero
    /* 4FD30 80061520 0C00468C */  lw         $a2, 0xC($v0)
    /* 4FD34 80061524 02000524 */  addiu      $a1, $zero, 0x2
    /* 4FD38 80061528 5085010C */  jal        func_80061540
    /* 4FD3C 8006152C 1401C624 */   addiu     $a2, $a2, 0x114
    /* 4FD40 80061530 1000BF8F */  lw         $ra, 0x10($sp)
    /* 4FD44 80061534 00000000 */  nop
    /* 4FD48 80061538 0800E003 */  jr         $ra
    /* 4FD4C 8006153C 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_80061510
