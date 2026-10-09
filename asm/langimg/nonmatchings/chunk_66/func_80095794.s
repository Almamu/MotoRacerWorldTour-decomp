nonmatching func_80095794, 0x2C

glabel func_80095794
    /* 83FA4 80095794 0200A228 */  slti       $v0, $a1, 0x2
    /* 83FA8 80095798 07004014 */  bnez       $v0, .L800957B8
    /* 83FAC 8009579C 21180000 */   addu      $v1, $zero, $zero
    /* 83FB0 800957A0 0200C228 */  slti       $v0, $a2, 0x2
    /* 83FB4 800957A4 04004014 */  bnez       $v0, .L800957B8
    /* 83FB8 800957A8 00000000 */   nop
    /* 83FBC 800957AC 01000324 */  addiu      $v1, $zero, 0x1
    /* 83FC0 800957B0 100085AC */  sw         $a1, 0x10($a0)
    /* 83FC4 800957B4 140086AC */  sw         $a2, 0x14($a0)
  .L800957B8:
    /* 83FC8 800957B8 0800E003 */  jr         $ra
    /* 83FCC 800957BC 21106000 */   addu      $v0, $v1, $zero
endlabel func_80095794
