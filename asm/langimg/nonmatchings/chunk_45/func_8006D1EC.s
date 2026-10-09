nonmatching func_8006D1EC, 0x44

glabel func_8006D1EC
    /* 5B9FC 8006D1EC E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 5BA00 8006D1F0 1400B1AF */  sw         $s1, 0x14($sp)
    /* 5BA04 8006D1F4 21880000 */  addu       $s1, $zero, $zero
    /* 5BA08 8006D1F8 1000B0AF */  sw         $s0, 0x10($sp)
    /* 5BA0C 8006D1FC 21808000 */  addu       $s0, $a0, $zero
    /* 5BA10 8006D200 1800BFAF */  sw         $ra, 0x18($sp)
  .L8006D204:
    /* 5BA14 8006D204 D2B3010C */  jal        func_8006CF48
    /* 5BA18 8006D208 21200002 */   addu      $a0, $s0, $zero
    /* 5BA1C 8006D20C 01003126 */  addiu      $s1, $s1, 0x1
    /* 5BA20 8006D210 0200222E */  sltiu      $v0, $s1, 0x2
    /* 5BA24 8006D214 FBFF4014 */  bnez       $v0, .L8006D204
    /* 5BA28 8006D218 C0041026 */   addiu     $s0, $s0, 0x4C0
    /* 5BA2C 8006D21C 1800BF8F */  lw         $ra, 0x18($sp)
    /* 5BA30 8006D220 1400B18F */  lw         $s1, 0x14($sp)
    /* 5BA34 8006D224 1000B08F */  lw         $s0, 0x10($sp)
    /* 5BA38 8006D228 0800E003 */  jr         $ra
    /* 5BA3C 8006D22C 2000BD27 */   addiu     $sp, $sp, 0x20
endlabel func_8006D1EC
