nonmatching func_8013A9A8, 0x2C

glabel func_8013A9A8
    /* 7E74 8013A9A8 0800C010 */  beqz       $a2, .L8013A9CC
    /* 7E78 8013A9AC 21180000 */   addu      $v1, $zero, $zero
  .L8013A9B0:
    /* 7E7C 8013A9B0 0000A28C */  lw         $v0, 0x0($a1)
    /* 7E80 8013A9B4 0400A524 */  addiu      $a1, $a1, 0x4
    /* 7E84 8013A9B8 01006324 */  addiu      $v1, $v1, 0x1
    /* 7E88 8013A9BC 000082AC */  sw         $v0, 0x0($a0)
    /* 7E8C 8013A9C0 2B106600 */  sltu       $v0, $v1, $a2
    /* 7E90 8013A9C4 FAFF4014 */  bnez       $v0, .L8013A9B0
    /* 7E94 8013A9C8 04008424 */   addiu     $a0, $a0, 0x4
  .L8013A9CC:
    /* 7E98 8013A9CC 0800E003 */  jr         $ra
    /* 7E9C 8013A9D0 00000000 */   nop
endlabel func_8013A9A8
