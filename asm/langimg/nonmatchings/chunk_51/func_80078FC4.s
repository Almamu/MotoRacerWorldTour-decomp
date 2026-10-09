nonmatching func_80078FC4, 0x24

glabel func_80078FC4
    /* 677D4 80078FC4 0600A014 */  bnez       $a1, .L80078FE0
    /* 677D8 80078FC8 21100000 */   addu      $v0, $zero, $zero
    /* 677DC 80078FCC 0000848C */  lw         $a0, 0x0($a0)
    /* 677E0 80078FD0 00000000 */  nop
    /* 677E4 80078FD4 02008010 */  beqz       $a0, .L80078FE0
    /* 677E8 80078FD8 00000000 */   nop
    /* 677EC 80078FDC 0400828C */  lw         $v0, 0x4($a0)
  .L80078FE0:
    /* 677F0 80078FE0 0800E003 */  jr         $ra
    /* 677F4 80078FE4 00000000 */   nop
endlabel func_80078FC4
