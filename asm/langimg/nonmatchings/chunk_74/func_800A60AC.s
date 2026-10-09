nonmatching func_800A60AC, 0x54

glabel func_800A60AC
    /* 948BC 800A60AC 21408000 */  addu       $t0, $a0, $zero
    /* 948C0 800A60B0 0C80023C */  lui        $v0, %hi(D_800BC93C)
    /* 948C4 800A60B4 3CC94924 */  addiu      $t1, $v0, %lo(D_800BC93C)
  .L800A60B8:
    /* 948C8 800A60B8 00000791 */  lbu        $a3, 0x0($t0)
    /* 948CC 800A60BC 01000825 */  addiu      $t0, $t0, 0x1
    /* 948D0 800A60C0 0000A290 */  lbu        $v0, 0x0($a1)
    /* 948D4 800A60C4 2130E900 */  addu       $a2, $a3, $t1
    /* 948D8 800A60C8 21104900 */  addu       $v0, $v0, $t1
    /* 948DC 800A60CC 0000C490 */  lbu        $a0, 0x0($a2)
    /* 948E0 800A60D0 00004390 */  lbu        $v1, 0x0($v0)
    /* 948E4 800A60D4 00000000 */  nop
    /* 948E8 800A60D8 05008314 */  bne        $a0, $v1, .L800A60F0
    /* 948EC 800A60DC 0100A524 */   addiu     $a1, $a1, 0x1
    /* 948F0 800A60E0 F5FFE014 */  bnez       $a3, .L800A60B8
    /* 948F4 800A60E4 21100000 */   addu      $v0, $zero, $zero
    /* 948F8 800A60E8 0800E003 */  jr         $ra
    /* 948FC 800A60EC 00000000 */   nop
  .L800A60F0:
    /* 94900 800A60F0 0000C390 */  lbu        $v1, 0x0($a2)
    /* 94904 800A60F4 00004290 */  lbu        $v0, 0x0($v0)
    /* 94908 800A60F8 0800E003 */  jr         $ra
    /* 9490C 800A60FC 23106200 */   subu      $v0, $v1, $v0
endlabel func_800A60AC
