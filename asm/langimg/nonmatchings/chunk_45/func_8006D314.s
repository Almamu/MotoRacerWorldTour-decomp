nonmatching func_8006D314, 0x74

glabel func_8006D314
    /* 5BB24 8006D314 D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* 5BB28 8006D318 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* 5BB2C 8006D31C 21988000 */  addu       $s3, $a0, $zero
    /* 5BB30 8006D320 1800B2AF */  sw         $s2, 0x18($sp)
    /* 5BB34 8006D324 2190A000 */  addu       $s2, $a1, $zero
    /* 5BB38 8006D328 1400B1AF */  sw         $s1, 0x14($sp)
    /* 5BB3C 8006D32C 01001124 */  addiu      $s1, $zero, 0x1
    /* 5BB40 8006D330 1000B0AF */  sw         $s0, 0x10($sp)
    /* 5BB44 8006D334 21800000 */  addu       $s0, $zero, $zero
    /* 5BB48 8006D338 2000BFAF */  sw         $ra, 0x20($sp)
    /* 5BB4C 8006D33C 21206002 */  addu       $a0, $s3, $zero
  .L8006D340:
    /* 5BB50 8006D340 21284002 */  addu       $a1, $s2, $zero
    /* 5BB54 8006D344 9DB4010C */  jal        func_8006D274
    /* 5BB58 8006D348 21300002 */   addu      $a2, $s0, $zero
    /* 5BB5C 8006D34C 03004014 */  bnez       $v0, .L8006D35C
    /* 5BB60 8006D350 01001026 */   addiu     $s0, $s0, 0x1
    /* 5BB64 8006D354 DAB40108 */  j          .L8006D368
    /* 5BB68 8006D358 21880000 */   addu      $s1, $zero, $zero
  .L8006D35C:
    /* 5BB6C 8006D35C 0200022E */  sltiu      $v0, $s0, 0x2
    /* 5BB70 8006D360 F7FF4014 */  bnez       $v0, .L8006D340
    /* 5BB74 8006D364 21206002 */   addu      $a0, $s3, $zero
  .L8006D368:
    /* 5BB78 8006D368 21102002 */  addu       $v0, $s1, $zero
    /* 5BB7C 8006D36C 2000BF8F */  lw         $ra, 0x20($sp)
    /* 5BB80 8006D370 1C00B38F */  lw         $s3, 0x1C($sp)
    /* 5BB84 8006D374 1800B28F */  lw         $s2, 0x18($sp)
    /* 5BB88 8006D378 1400B18F */  lw         $s1, 0x14($sp)
    /* 5BB8C 8006D37C 1000B08F */  lw         $s0, 0x10($sp)
    /* 5BB90 8006D380 0800E003 */  jr         $ra
    /* 5BB94 8006D384 2800BD27 */   addiu     $sp, $sp, 0x28
endlabel func_8006D314
