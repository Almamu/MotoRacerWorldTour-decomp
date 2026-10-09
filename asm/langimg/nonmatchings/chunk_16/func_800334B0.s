nonmatching func_800334B0, 0x38

glabel func_800334B0
    /* 21CC0 800334B0 58008380 */  lb         $v1, 0x58($a0)
    /* 21CC4 800334B4 03000224 */  addiu      $v0, $zero, 0x3
    /* 21CC8 800334B8 09006210 */  beq        $v1, $v0, .L800334E0
    /* 21CCC 800334BC 00000000 */   nop
    /* 21CD0 800334C0 FA038284 */  lh         $v0, 0x3FA($a0)
    /* 21CD4 800334C4 A005838C */  lw         $v1, 0x5A0($a0)
    /* 21CD8 800334C8 9C02848C */  lw         $a0, 0x29C($a0)
    /* 21CDC 800334CC 80100200 */  sll        $v0, $v0, 2
    /* 21CE0 800334D0 21186200 */  addu       $v1, $v1, $v0
    /* 21CE4 800334D4 8400628C */  lw         $v0, 0x84($v1)
    /* 21CE8 800334D8 0800E003 */  jr         $ra
    /* 21CEC 800334DC 2A104400 */   slt       $v0, $v0, $a0
  .L800334E0:
    /* 21CF0 800334E0 0800E003 */  jr         $ra
    /* 21CF4 800334E4 21100000 */   addu      $v0, $zero, $zero
endlabel func_800334B0
