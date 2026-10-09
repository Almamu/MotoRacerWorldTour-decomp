nonmatching func_8006A3E4, 0x3C

glabel func_8006A3E4
    /* 58BF4 8006A3E4 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 58BF8 8006A3E8 1000BFAF */  sw         $ra, 0x10($sp)
    /* 58BFC 8006A3EC 0C00838C */  lw         $v1, 0xC($a0)
    /* 58C00 8006A3F0 00000000 */  nop
    /* 58C04 8006A3F4 40006284 */  lh         $v0, 0x40($v1)
    /* 58C08 8006A3F8 00000000 */  nop
    /* 58C0C 8006A3FC 21208200 */  addu       $a0, $a0, $v0
    /* 58C10 8006A400 4400628C */  lw         $v0, 0x44($v1)
    /* 58C14 8006A404 00000000 */  nop
    /* 58C18 8006A408 09F84000 */  jalr       $v0
    /* 58C1C 8006A40C 21300000 */   addu      $a2, $zero, $zero
    /* 58C20 8006A410 1000BF8F */  lw         $ra, 0x10($sp)
    /* 58C24 8006A414 00000000 */  nop
    /* 58C28 8006A418 0800E003 */  jr         $ra
    /* 58C2C 8006A41C 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_8006A3E4
