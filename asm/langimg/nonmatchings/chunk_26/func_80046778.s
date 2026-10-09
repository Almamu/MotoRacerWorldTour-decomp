nonmatching func_80046778, 0x40

glabel func_80046778
    /* 34F88 80046778 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 34F8C 8004677C 9867828F */  lw         $v0, %gp_rel(D_800CAE88)($gp)
    /* 34F90 80046780 01000324 */  addiu      $v1, $zero, 0x1
    /* 34F94 80046784 1000BFAF */  sw         $ra, 0x10($sp)
    /* 34F98 80046788 01004224 */  addiu      $v0, $v0, 0x1
    /* 34F9C 8004678C 986782AF */  sw         $v0, %gp_rel(D_800CAE88)($gp)
    /* 34FA0 80046790 05004314 */  bne        $v0, $v1, .L800467A8
    /* 34FA4 80046794 00000000 */   nop
    /* 34FA8 80046798 0D80043C */  lui        $a0, %hi(D_800CABC0)
    /* 34FAC 8004679C C0AB8424 */  addiu      $a0, $a0, %lo(D_800CABC0)
    /* 34FB0 800467A0 FA13010C */  jal        func_80044FE8
    /* 34FB4 800467A4 00000000 */   nop
  .L800467A8:
    /* 34FB8 800467A8 1000BF8F */  lw         $ra, 0x10($sp)
    /* 34FBC 800467AC 00000000 */  nop
    /* 34FC0 800467B0 0800E003 */  jr         $ra
    /* 34FC4 800467B4 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_80046778
