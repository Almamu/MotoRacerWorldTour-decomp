nonmatching func_8003CC78, 0x24

glabel func_8003CC78
    /* 2B488 8003CC78 0500C010 */  beqz       $a2, .L8003CC90
    /* 2B48C 8003CC7C 00000000 */   nop
    /* 2B490 8003CC80 8C0A828C */  lw         $v0, 0xA8C($a0)
    /* 2B494 8003CC84 00000000 */  nop
    /* 2B498 8003CC88 FFFF4224 */  addiu      $v0, $v0, -0x1
    /* 2B49C 8003CC8C 8C0A82AC */  sw         $v0, 0xA8C($a0)
  .L8003CC90:
    /* 2B4A0 8003CC90 800A85AC */  sw         $a1, 0xA80($a0)
    /* 2B4A4 8003CC94 0800E003 */  jr         $ra
    /* 2B4A8 8003CC98 2110A000 */   addu      $v0, $a1, $zero
endlabel func_8003CC78
