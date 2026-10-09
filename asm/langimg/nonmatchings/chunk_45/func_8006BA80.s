nonmatching func_8006BA80, 0x3C

glabel func_8006BA80
    /* 5A290 8006BA80 D86E828F */  lw         $v0, %gp_rel(D_800CB5C8)($gp)
    /* 5A294 8006BA84 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 5A298 8006BA88 1000BFAF */  sw         $ra, 0x10($sp)
    /* 5A29C 8006BA8C FFFF4224 */  addiu      $v0, $v0, -0x1
    /* 5A2A0 8006BA90 D86E82AF */  sw         $v0, %gp_rel(D_800CB5C8)($gp)
    /* 5A2A4 8006BA94 05004014 */  bnez       $v0, .L8006BAAC
    /* 5A2A8 8006BA98 00000000 */   nop
    /* 5A2AC 8006BA9C 0D80043C */  lui        $a0, %hi(D_800CB480)
    /* 5A2B0 8006BAA0 80B48424 */  addiu      $a0, $a0, %lo(D_800CB480)
    /* 5A2B4 8006BAA4 25A9010C */  jal        func_8006A494
    /* 5A2B8 8006BAA8 02000524 */   addiu     $a1, $zero, 0x2
  .L8006BAAC:
    /* 5A2BC 8006BAAC 1000BF8F */  lw         $ra, 0x10($sp)
    /* 5A2C0 8006BAB0 00000000 */  nop
    /* 5A2C4 8006BAB4 0800E003 */  jr         $ra
    /* 5A2C8 8006BAB8 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_8006BA80
