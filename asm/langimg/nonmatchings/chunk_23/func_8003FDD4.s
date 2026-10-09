nonmatching func_8003FDD4, 0x48

glabel func_8003FDD4
    /* 2E5E4 8003FDD4 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 2E5E8 8003FDD8 1000B0AF */  sw         $s0, 0x10($sp)
    /* 2E5EC 8003FDDC 21808000 */  addu       $s0, $a0, $zero
    /* 2E5F0 8003FDE0 1400BFAF */  sw         $ra, 0x14($sp)
    /* 2E5F4 8003FDE4 6800038E */  lw         $v1, 0x68($s0)
    /* 2E5F8 8003FDE8 00000000 */  nop
    /* 2E5FC 8003FDEC 98006484 */  lh         $a0, 0x98($v1)
    /* 2E600 8003FDF0 9C00628C */  lw         $v0, 0x9C($v1)
    /* 2E604 8003FDF4 00000000 */  nop
    /* 2E608 8003FDF8 09F84000 */  jalr       $v0
    /* 2E60C 8003FDFC 21200402 */   addu      $a0, $s0, $a0
    /* 2E610 8003FE00 1400BF8F */  lw         $ra, 0x14($sp)
    /* 2E614 8003FE04 FFFF0324 */  addiu      $v1, $zero, -0x1
    /* 2E618 8003FE08 180003AE */  sw         $v1, 0x18($s0)
    /* 2E61C 8003FE0C 1000B08F */  lw         $s0, 0x10($sp)
    /* 2E620 8003FE10 01000224 */  addiu      $v0, $zero, 0x1
    /* 2E624 8003FE14 0800E003 */  jr         $ra
    /* 2E628 8003FE18 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_8003FDD4
