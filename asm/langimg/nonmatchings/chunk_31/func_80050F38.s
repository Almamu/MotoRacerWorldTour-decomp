nonmatching func_80050F38, 0x24

glabel func_80050F38
    /* 3F748 80050F38 04000224 */  addiu      $v0, $zero, 0x4
    /* 3F74C 80050F3C FFFF0324 */  addiu      $v1, $zero, -0x1
    /* 3F750 80050F40 28008424 */  addiu      $a0, $a0, 0x28
  .L80050F44:
    /* 3F754 80050F44 000083AC */  sw         $v1, 0x0($a0)
    /* 3F758 80050F48 FFFF4224 */  addiu      $v0, $v0, -0x1
    /* 3F75C 80050F4C FDFF4104 */  bgez       $v0, .L80050F44
    /* 3F760 80050F50 FCFF8424 */   addiu     $a0, $a0, -0x4
    /* 3F764 80050F54 0800E003 */  jr         $ra
    /* 3F768 80050F58 00000000 */   nop
endlabel func_80050F38
