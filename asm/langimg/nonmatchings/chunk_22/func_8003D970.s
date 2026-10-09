nonmatching func_8003D970, 0x5C

glabel func_8003D970
    /* 2C180 8003D970 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 2C184 8003D974 1400BFAF */  sw         $ra, 0x14($sp)
    /* 2C188 8003D978 1000B0AF */  sw         $s0, 0x10($sp)
    /* 2C18C 8003D97C F4FFB08C */  lw         $s0, -0xC($a1)
    /* 2C190 8003D980 00000000 */  nop
    /* 2C194 8003D984 04000012 */  beqz       $s0, .L8003D998
    /* 2C198 8003D988 21188000 */   addu      $v1, $a0, $zero
    /* 2C19C 8003D98C F8FFA28C */  lw         $v0, -0x8($a1)
    /* 2C1A0 8003D990 68F60008 */  j          .L8003D9A0
    /* 2C1A4 8003D994 00000000 */   nop
  .L8003D998:
    /* 2C1A8 8003D998 21206000 */  addu       $a0, $v1, $zero
    /* 2C1AC 8003D99C FCFFA28C */  lw         $v0, -0x4($a1)
  .L8003D9A0:
    /* 2C1B0 8003D9A0 5C01638C */  lw         $v1, 0x15C($v1)
    /* 2C1B4 8003D9A4 80100200 */  sll        $v0, $v0, 2
    /* 2C1B8 8003D9A8 21104300 */  addu       $v0, $v0, $v1
    /* 2C1BC 8003D9AC 0000468C */  lw         $a2, 0x0($v0)
    /* 2C1C0 8003D9B0 0AFF000C */  jal        func_8003FC28
    /* 2C1C4 8003D9B4 FFFF0524 */   addiu     $a1, $zero, -0x1
    /* 2C1C8 8003D9B8 21100002 */  addu       $v0, $s0, $zero
    /* 2C1CC 8003D9BC 1400BF8F */  lw         $ra, 0x14($sp)
    /* 2C1D0 8003D9C0 1000B08F */  lw         $s0, 0x10($sp)
    /* 2C1D4 8003D9C4 0800E003 */  jr         $ra
    /* 2C1D8 8003D9C8 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_8003D970
