nonmatching func_80017FB4, 0x54

glabel func_80017FB4
    /* 67C4 80017FB4 0000828C */  lw         $v0, 0x0($a0)
    /* 67C8 80017FB8 00000000 */  nop
    /* 67CC 80017FBC 10004010 */  beqz       $v0, .L80018000
    /* 67D0 80017FC0 FFFF0624 */   addiu     $a2, $zero, -0x1
    /* 67D4 80017FC4 21180000 */  addu       $v1, $zero, $zero
    /* 67D8 80017FC8 0800848C */  lw         $a0, 0x8($a0)
    /* 67DC 80017FCC FFFF0724 */  addiu      $a3, $zero, -0x1
    /* 67E0 80017FD0 21284000 */  addu       $a1, $v0, $zero
  .L80017FD4:
    /* 67E4 80017FD4 2A106400 */  slt        $v0, $v1, $a0
    /* 67E8 80017FD8 09004010 */  beqz       $v0, .L80018000
    /* 67EC 80017FDC 00000000 */   nop
    /* 67F0 80017FE0 0000A28C */  lw         $v0, 0x0($a1)
    /* 67F4 80017FE4 00000000 */  nop
    /* 67F8 80017FE8 02004014 */  bnez       $v0, .L80017FF4
    /* 67FC 80017FEC 00000000 */   nop
    /* 6800 80017FF0 21306000 */  addu       $a2, $v1, $zero
  .L80017FF4:
    /* 6804 80017FF4 0400A524 */  addiu      $a1, $a1, 0x4
    /* 6808 80017FF8 F6FFC710 */  beq        $a2, $a3, .L80017FD4
    /* 680C 80017FFC 01006324 */   addiu     $v1, $v1, 0x1
  .L80018000:
    /* 6810 80018000 0800E003 */  jr         $ra
    /* 6814 80018004 2110C000 */   addu      $v0, $a2, $zero
endlabel func_80017FB4
