nonmatching func_800968B0, 0x24

glabel func_800968B0
    /* 850C0 800968B0 1000828C */  lw         $v0, 0x10($a0)
    /* 850C4 800968B4 00000000 */  nop
    /* 850C8 800968B8 04004014 */  bnez       $v0, .L800968CC
    /* 850CC 800968BC 21180000 */   addu      $v1, $zero, $zero
    /* 850D0 800968C0 1400828C */  lw         $v0, 0x14($a0)
    /* 850D4 800968C4 00000000 */  nop
    /* 850D8 800968C8 0100432C */  sltiu      $v1, $v0, 0x1
  .L800968CC:
    /* 850DC 800968CC 0800E003 */  jr         $ra
    /* 850E0 800968D0 21106000 */   addu      $v0, $v1, $zero
endlabel func_800968B0
