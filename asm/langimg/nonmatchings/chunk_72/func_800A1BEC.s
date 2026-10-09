nonmatching func_800A1BEC, 0x24

glabel func_800A1BEC
    /* 903FC 800A1BEC 06008010 */  beqz       $a0, .L800A1C08
    /* 90400 800A1BF0 21100000 */   addu      $v0, $zero, $zero
    /* 90404 800A1BF4 06008294 */  lhu        $v0, 0x6($a0)
    /* 90408 800A1BF8 00000000 */  nop
    /* 9040C 800A1BFC 02004014 */  bnez       $v0, .L800A1C08
    /* 90410 800A1C00 00000000 */   nop
    /* 90414 800A1C04 30000224 */  addiu      $v0, $zero, 0x30
  .L800A1C08:
    /* 90418 800A1C08 0800E003 */  jr         $ra
    /* 9041C 800A1C0C 00000000 */   nop
endlabel func_800A1BEC
