nonmatching func_80013DB8, 0x28

glabel func_80013DB8
    /* 25C8 80013DB8 21180000 */  addu       $v1, $zero, $zero
    /* 25CC 80013DBC FFFF0524 */  addiu      $a1, $zero, -0x1
    /* 25D0 80013DC0 06008424 */  addiu      $a0, $a0, 0x6
  .L80013DC4:
    /* 25D4 80013DC4 000085A4 */  sh         $a1, 0x0($a0)
    /* 25D8 80013DC8 01006324 */  addiu      $v1, $v1, 0x1
    /* 25DC 80013DCC 0001622C */  sltiu      $v0, $v1, 0x100
    /* 25E0 80013DD0 FCFF4014 */  bnez       $v0, .L80013DC4
    /* 25E4 80013DD4 02008424 */   addiu     $a0, $a0, 0x2
    /* 25E8 80013DD8 0800E003 */  jr         $ra
    /* 25EC 80013DDC 00000000 */   nop
endlabel func_80013DB8
