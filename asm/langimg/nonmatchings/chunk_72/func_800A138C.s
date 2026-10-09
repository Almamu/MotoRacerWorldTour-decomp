nonmatching func_800A138C, 0x34

glabel func_800A138C
    /* 8FB9C 800A138C 04000324 */  addiu      $v1, $zero, 0x4
    /* 8FBA0 800A1390 10178424 */  addiu      $a0, $a0, 0x1710
  .L800A1394:
    /* 8FBA4 800A1394 0000828C */  lw         $v0, 0x0($a0)
    /* 8FBA8 800A1398 00000000 */  nop
    /* 8FBAC 800A139C 06004510 */  beq        $v0, $a1, .L800A13B8
    /* 8FBB0 800A13A0 FCFF8424 */   addiu     $a0, $a0, -0x4
    /* 8FBB4 800A13A4 FFFF6324 */  addiu      $v1, $v1, -0x1
    /* 8FBB8 800A13A8 FAFF6104 */  bgez       $v1, .L800A1394
    /* 8FBBC 800A13AC FFFF0224 */   addiu     $v0, $zero, -0x1
    /* 8FBC0 800A13B0 0800E003 */  jr         $ra
    /* 8FBC4 800A13B4 00000000 */   nop
  .L800A13B8:
    /* 8FBC8 800A13B8 0800E003 */  jr         $ra
    /* 8FBCC 800A13BC 21106000 */   addu      $v0, $v1, $zero
endlabel func_800A138C
