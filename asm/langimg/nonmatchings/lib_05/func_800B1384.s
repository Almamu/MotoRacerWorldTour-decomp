nonmatching func_800B1384, 0x28

glabel func_800B1384
    /* 9FB94 800B1384 0C80033C */  lui        $v1, %hi(D_800C3CEC)
    /* 9FB98 800B1388 EC3C638C */  lw         $v1, %lo(D_800C3CEC)($v1)
    /* 9FB9C 800B138C 00000000 */  nop
  .L800B1390:
    /* 9FBA0 800B1390 04006294 */  lhu        $v0, 0x4($v1)
    /* 9FBA4 800B1394 00000000 */  nop
    /* 9FBA8 800B1398 02004230 */  andi       $v0, $v0, 0x2
    /* 9FBAC 800B139C FCFF4010 */  beqz       $v0, .L800B1390
    /* 9FBB0 800B13A0 00000000 */   nop
    /* 9FBB4 800B13A4 0800E003 */  jr         $ra
    /* 9FBB8 800B13A8 00000000 */   nop
endlabel func_800B1384
