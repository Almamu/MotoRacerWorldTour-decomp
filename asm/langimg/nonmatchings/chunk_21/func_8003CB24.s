nonmatching func_8003CB24, 0x7C

glabel func_8003CB24
    /* 2B334 8003CB24 D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* 2B338 8003CB28 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* 2B33C 8003CB2C 2198A000 */  addu       $s3, $a1, $zero
    /* 2B340 8003CB30 1400B1AF */  sw         $s1, 0x14($sp)
    /* 2B344 8003CB34 21880000 */  addu       $s1, $zero, $zero
    /* 2B348 8003CB38 1800B2AF */  sw         $s2, 0x18($sp)
    /* 2B34C 8003CB3C 21908000 */  addu       $s2, $a0, $zero
    /* 2B350 8003CB40 2000BFAF */  sw         $ra, 0x20($sp)
    /* 2B354 8003CB44 1000B0AF */  sw         $s0, 0x10($sp)
    /* 2B358 8003CB48 7C0A508E */  lw         $s0, 0xA7C($s2)
  .L8003CB4C:
    /* 2B35C 8003CB4C 00000000 */  nop
    /* 2B360 8003CB50 0000048E */  lw         $a0, 0x0($s0)
    /* 2B364 8003CB54 2B98020C */  jal        func_800A60AC
    /* 2B368 8003CB58 21286002 */   addu      $a1, $s3, $zero
    /* 2B36C 8003CB5C 08004010 */  beqz       $v0, .L8003CB80
    /* 2B370 8003CB60 01003126 */   addiu     $s1, $s1, 0x1
    /* 2B374 8003CB64 700A428E */  lw         $v0, 0xA70($s2)
    /* 2B378 8003CB68 00000000 */  nop
    /* 2B37C 8003CB6C 2A102202 */  slt        $v0, $s1, $v0
    /* 2B380 8003CB70 F6FF4014 */  bnez       $v0, .L8003CB4C
    /* 2B384 8003CB74 74001026 */   addiu     $s0, $s0, 0x74
    /* 2B388 8003CB78 E1F20008 */  j          .L8003CB84
    /* 2B38C 8003CB7C 21100000 */   addu      $v0, $zero, $zero
  .L8003CB80:
    /* 2B390 8003CB80 21100002 */  addu       $v0, $s0, $zero
  .L8003CB84:
    /* 2B394 8003CB84 2000BF8F */  lw         $ra, 0x20($sp)
    /* 2B398 8003CB88 1C00B38F */  lw         $s3, 0x1C($sp)
    /* 2B39C 8003CB8C 1800B28F */  lw         $s2, 0x18($sp)
    /* 2B3A0 8003CB90 1400B18F */  lw         $s1, 0x14($sp)
    /* 2B3A4 8003CB94 1000B08F */  lw         $s0, 0x10($sp)
    /* 2B3A8 8003CB98 0800E003 */  jr         $ra
    /* 2B3AC 8003CB9C 2800BD27 */   addiu     $sp, $sp, 0x28
endlabel func_8003CB24
