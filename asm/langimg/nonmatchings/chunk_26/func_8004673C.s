nonmatching func_8004673C, 0x3C

glabel func_8004673C
    /* 34F4C 8004673C 9867828F */  lw         $v0, %gp_rel(D_800CAE88)($gp)
    /* 34F50 80046740 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 34F54 80046744 1000BFAF */  sw         $ra, 0x10($sp)
    /* 34F58 80046748 FFFF4224 */  addiu      $v0, $v0, -0x1
    /* 34F5C 8004674C 986782AF */  sw         $v0, %gp_rel(D_800CAE88)($gp)
    /* 34F60 80046750 05004014 */  bnez       $v0, .L80046768
    /* 34F64 80046754 00000000 */   nop
    /* 34F68 80046758 0D80043C */  lui        $a0, %hi(D_800CABC0)
    /* 34F6C 8004675C C0AB8424 */  addiu      $a0, $a0, %lo(D_800CABC0)
    /* 34F70 80046760 1B14010C */  jal        func_8004506C
    /* 34F74 80046764 02000524 */   addiu     $a1, $zero, 0x2
  .L80046768:
    /* 34F78 80046768 1000BF8F */  lw         $ra, 0x10($sp)
    /* 34F7C 8004676C 00000000 */  nop
    /* 34F80 80046770 0800E003 */  jr         $ra
    /* 34F84 80046774 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_8004673C
