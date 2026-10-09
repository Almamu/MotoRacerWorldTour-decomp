nonmatching func_80078F10, 0x24

glabel func_80078F10
    /* 67720 80078F10 21280000 */  addu       $a1, $zero, $zero
    /* 67724 80078F14 21108000 */  addu       $v0, $a0, $zero
    /* 67728 80078F18 21184000 */  addu       $v1, $v0, $zero
  .L80078F1C:
    /* 6772C 80078F1C 000060AC */  sw         $zero, 0x0($v1)
    /* 67730 80078F20 FFFFA524 */  addiu      $a1, $a1, -0x1
    /* 67734 80078F24 FDFFA104 */  bgez       $a1, .L80078F1C
    /* 67738 80078F28 FCFF6324 */   addiu     $v1, $v1, -0x4
    /* 6773C 80078F2C 0800E003 */  jr         $ra
    /* 67740 80078F30 00000000 */   nop
endlabel func_80078F10
