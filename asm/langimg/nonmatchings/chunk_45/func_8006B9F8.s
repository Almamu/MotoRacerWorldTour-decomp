nonmatching func_8006B9F8, 0x88

glabel func_8006B9F8
    /* 5A208 8006B9F8 D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* 5A20C 8006B9FC 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* 5A210 8006BA00 FFFF1324 */  addiu      $s3, $zero, -0x1
    /* 5A214 8006BA04 1800B2AF */  sw         $s2, 0x18($sp)
    /* 5A218 8006BA08 21900000 */  addu       $s2, $zero, $zero
    /* 5A21C 8006BA0C 1400B1AF */  sw         $s1, 0x14($sp)
    /* 5A220 8006BA10 2188A000 */  addu       $s1, $a1, $zero
    /* 5A224 8006BA14 1000B0AF */  sw         $s0, 0x10($sp)
    /* 5A228 8006BA18 21808000 */  addu       $s0, $a0, $zero
    /* 5A22C 8006BA1C 1000201A */  blez       $s1, .L8006BA60
    /* 5A230 8006BA20 2000BFAF */   sw        $ra, 0x20($sp)
    /* 5A234 8006BA24 8EAE0108 */  j          .L8006BA38
    /* 5A238 8006BA28 00000000 */   nop
  .L8006BA2C:
    /* 5A23C 8006BA2C 01005226 */  addiu      $s2, $s2, 0x1
    /* 5A240 8006BA30 0B002012 */  beqz       $s1, .L8006BA60
    /* 5A244 8006BA34 50001026 */   addiu     $s0, $s0, 0x50
  .L8006BA38:
    /* 5A248 8006BA38 0C00038E */  lw         $v1, 0xC($s0)
    /* 5A24C 8006BA3C 00000000 */  nop
    /* 5A250 8006BA40 30006484 */  lh         $a0, 0x30($v1)
    /* 5A254 8006BA44 3400628C */  lw         $v0, 0x34($v1)
    /* 5A258 8006BA48 00000000 */  nop
    /* 5A25C 8006BA4C 09F84000 */  jalr       $v0
    /* 5A260 8006BA50 21200402 */   addu      $a0, $s0, $a0
    /* 5A264 8006BA54 F5FF4014 */  bnez       $v0, .L8006BA2C
    /* 5A268 8006BA58 FFFF3126 */   addiu     $s1, $s1, -0x1
    /* 5A26C 8006BA5C 21984002 */  addu       $s3, $s2, $zero
  .L8006BA60:
    /* 5A270 8006BA60 21106002 */  addu       $v0, $s3, $zero
    /* 5A274 8006BA64 2000BF8F */  lw         $ra, 0x20($sp)
    /* 5A278 8006BA68 1C00B38F */  lw         $s3, 0x1C($sp)
    /* 5A27C 8006BA6C 1800B28F */  lw         $s2, 0x18($sp)
    /* 5A280 8006BA70 1400B18F */  lw         $s1, 0x14($sp)
    /* 5A284 8006BA74 1000B08F */  lw         $s0, 0x10($sp)
    /* 5A288 8006BA78 0800E003 */  jr         $ra
    /* 5A28C 8006BA7C 2800BD27 */   addiu     $sp, $sp, 0x28
endlabel func_8006B9F8
