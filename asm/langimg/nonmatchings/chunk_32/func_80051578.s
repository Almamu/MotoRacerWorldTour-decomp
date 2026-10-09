nonmatching func_80051578, 0x30

glabel func_80051578
    /* 3FD88 80051578 5C05838C */  lw         $v1, 0x55C($a0)
    /* 3FD8C 8005157C 00000000 */  nop
    /* 3FD90 80051580 07006010 */  beqz       $v1, .L800515A0
    /* 3FD94 80051584 00000000 */   nop
    /* 3FD98 80051588 0000638C */  lw         $v1, 0x0($v1)
    /* 3FD9C 8005158C 4005828C */  lw         $v0, 0x540($a0)
    /* 3FDA0 80051590 FFFF6324 */  addiu      $v1, $v1, -0x1
    /* 3FDA4 80051594 2A104300 */  slt        $v0, $v0, $v1
    /* 3FDA8 80051598 0800E003 */  jr         $ra
    /* 3FDAC 8005159C 01004238 */   xori      $v0, $v0, 0x1
  .L800515A0:
    /* 3FDB0 800515A0 0800E003 */  jr         $ra
    /* 3FDB4 800515A4 21100000 */   addu      $v0, $zero, $zero
endlabel func_80051578
