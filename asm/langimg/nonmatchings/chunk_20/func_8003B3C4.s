nonmatching func_8003B3C4, 0xB8

glabel func_8003B3C4
    /* 29BD4 8003B3C4 D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* 29BD8 8003B3C8 1400B1AF */  sw         $s1, 0x14($sp)
    /* 29BDC 8003B3CC 21880000 */  addu       $s1, $zero, $zero
    /* 29BE0 8003B3D0 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* 29BE4 8003B3D4 21980000 */  addu       $s3, $zero, $zero
    /* 29BE8 8003B3D8 1800B2AF */  sw         $s2, 0x18($sp)
    /* 29BEC 8003B3DC 21908000 */  addu       $s2, $a0, $zero
    /* 29BF0 8003B3E0 2400BFAF */  sw         $ra, 0x24($sp)
    /* 29BF4 8003B3E4 2000B4AF */  sw         $s4, 0x20($sp)
    /* 29BF8 8003B3E8 1000B0AF */  sw         $s0, 0x10($sp)
    /* 29BFC 8003B3EC 2D004282 */  lb         $v0, 0x2D($s2)
    /* 29C00 8003B3F0 00000000 */  nop
    /* 29C04 8003B3F4 18004018 */  blez       $v0, .L8003B458
    /* 29C08 8003B3F8 21A0A000 */   addu      $s4, $a1, $zero
    /* 29C0C 8003B3FC 21800000 */  addu       $s0, $zero, $zero
  .L8003B400:
    /* 29C10 8003B400 4000428E */  lw         $v0, 0x40($s2)
    /* 29C14 8003B404 00000000 */  nop
    /* 29C18 8003B408 21100202 */  addu       $v0, $s0, $v0
    /* 29C1C 8003B40C 3000448C */  lw         $a0, 0x30($v0)
    /* 29C20 8003B410 00000000 */  nop
    /* 29C24 8003B414 0B008010 */  beqz       $a0, .L8003B444
    /* 29C28 8003B418 00000000 */   nop
    /* 29C2C 8003B41C E757000C */  jal        Get__5CName
    /* 29C30 8003B420 00000000 */   nop
    /* 29C34 8003B424 21204000 */  addu       $a0, $v0, $zero
    /* 29C38 8003B428 2B98020C */  jal        func_800A60AC
    /* 29C3C 8003B42C 21288002 */   addu      $a1, $s4, $zero
    /* 29C40 8003B430 04004014 */  bnez       $v0, .L8003B444
    /* 29C44 8003B434 00000000 */   nop
    /* 29C48 8003B438 4000428E */  lw         $v0, 0x40($s2)
    /* 29C4C 8003B43C 16ED0008 */  j          .L8003B458
    /* 29C50 8003B440 21985000 */   addu      $s3, $v0, $s0
  .L8003B444:
    /* 29C54 8003B444 2D004282 */  lb         $v0, 0x2D($s2)
    /* 29C58 8003B448 01003126 */  addiu      $s1, $s1, 0x1
    /* 29C5C 8003B44C 2A102202 */  slt        $v0, $s1, $v0
    /* 29C60 8003B450 EBFF4014 */  bnez       $v0, .L8003B400
    /* 29C64 8003B454 34001026 */   addiu     $s0, $s0, 0x34
  .L8003B458:
    /* 29C68 8003B458 21106002 */  addu       $v0, $s3, $zero
    /* 29C6C 8003B45C 2400BF8F */  lw         $ra, 0x24($sp)
    /* 29C70 8003B460 2000B48F */  lw         $s4, 0x20($sp)
    /* 29C74 8003B464 1C00B38F */  lw         $s3, 0x1C($sp)
    /* 29C78 8003B468 1800B28F */  lw         $s2, 0x18($sp)
    /* 29C7C 8003B46C 1400B18F */  lw         $s1, 0x14($sp)
    /* 29C80 8003B470 1000B08F */  lw         $s0, 0x10($sp)
    /* 29C84 8003B474 0800E003 */  jr         $ra
    /* 29C88 8003B478 2800BD27 */   addiu     $sp, $sp, 0x28
endlabel func_8003B3C4
