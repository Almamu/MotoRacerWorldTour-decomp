nonmatching func_800AEA30, 0x70

glabel func_800AEA30
    /* 9D240 800AEA30 0C80023C */  lui        $v0, %hi(D_800C3BB0)
    /* 9D244 800AEA34 B03B438C */  lw         $v1, %lo(D_800C3BB0)($v0)
    /* 9D248 800AEA38 00000000 */  nop
    /* 9D24C 800AEA3C 03006014 */  bnez       $v1, .L800AEA4C
    /* 9D250 800AEA40 21288000 */   addu      $a1, $a0, $zero
  .L800AEA44:
    /* 9D254 800AEA44 0800E003 */  jr         $ra
    /* 9D258 800AEA48 21100000 */   addu      $v0, $zero, $zero
  .L800AEA4C:
    /* 9D25C 800AEA4C 0E80033C */  lui        $v1, %hi(D_800DE360)
    /* 9D260 800AEA50 60E3628C */  lw         $v0, %lo(D_800DE360)($v1)
    /* 9D264 800AEA54 00000000 */  nop
    /* 9D268 800AEA58 FFFF4224 */  addiu      $v0, $v0, -0x1
    /* 9D26C 800AEA5C 2A104500 */  slt        $v0, $v0, $a1
    /* 9D270 800AEA60 F8FF4014 */  bnez       $v0, .L800AEA44
    /* 9D274 800AEA64 00000000 */   nop
    /* 9D278 800AEA68 F6FFA004 */  bltz       $a1, .L800AEA44
    /* 9D27C 800AEA6C 0E80043C */   lui       $a0, %hi(D_800DE33C)
    /* 9D280 800AEA70 00110500 */  sll        $v0, $a1, 4
    /* 9D284 800AEA74 21104500 */  addu       $v0, $v0, $a1
    /* 9D288 800AEA78 3CE3838C */  lw         $v1, %lo(D_800DE33C)($a0)
    /* 9D28C 800AEA7C 40100200 */  sll        $v0, $v0, 1
    /* 9D290 800AEA80 21104300 */  addu       $v0, $v0, $v1
    /* 9D294 800AEA84 00004480 */  lb         $a0, 0x0($v0)
    /* 9D298 800AEA88 00000000 */  nop
    /* 9D29C 800AEA8C 02008010 */  beqz       $a0, .L800AEA98
    /* 9D2A0 800AEA90 00000000 */   nop
    /* 9D2A4 800AEA94 21100000 */  addu       $v0, $zero, $zero
  .L800AEA98:
    /* 9D2A8 800AEA98 0800E003 */  jr         $ra
    /* 9D2AC 800AEA9C 00000000 */   nop
endlabel func_800AEA30
