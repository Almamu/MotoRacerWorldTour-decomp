nonmatching func_8014ADF0, 0xA4

glabel func_8014ADF0
    /* 182BC 8014ADF0 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 182C0 8014ADF4 1400B1AF */  sw         $s1, 0x14($sp)
    /* 182C4 8014ADF8 21888000 */  addu       $s1, $a0, $zero
    /* 182C8 8014ADFC 1800B2AF */  sw         $s2, 0x18($sp)
    /* 182CC 8014AE00 2190A000 */  addu       $s2, $a1, $zero
    /* 182D0 8014AE04 1C00BFAF */  sw         $ra, 0x1C($sp)
    /* 182D4 8014AE08 1B002012 */  beqz       $s1, .L8014AE78
    /* 182D8 8014AE0C 1000B0AF */   sw        $s0, 0x10($sp)
    /* 182DC 8014AE10 1A004012 */  beqz       $s2, .L8014AE7C
    /* 182E0 8014AE14 21100000 */   addu      $v0, $zero, $zero
    /* 182E4 8014AE18 D82B050C */  jal        func_8014AF60
    /* 182E8 8014AE1C 21202002 */   addu      $a0, $s1, $zero
    /* 182EC 8014AE20 21204002 */  addu       $a0, $s2, $zero
    /* 182F0 8014AE24 D82B050C */  jal        func_8014AF60
    /* 182F4 8014AE28 21802202 */   addu      $s0, $s1, $v0
    /* 182F8 8014AE2C 21104202 */  addu       $v0, $s2, $v0
    /* 182FC 8014AE30 11000212 */  beq        $s0, $v0, .L8014AE78
    /* 18300 8014AE34 21182002 */   addu      $v1, $s1, $zero
    /* 18304 8014AE38 00006280 */  lb         $v0, 0x0($v1)
    /* 18308 8014AE3C 00000000 */  nop
    /* 1830C 8014AE40 05004010 */  beqz       $v0, .L8014AE58
    /* 18310 8014AE44 01007124 */   addiu     $s1, $v1, 0x1
  .L8014AE48:
    /* 18314 8014AE48 00002282 */  lb         $v0, 0x0($s1)
    /* 18318 8014AE4C 00000000 */  nop
    /* 1831C 8014AE50 FDFF4014 */  bnez       $v0, .L8014AE48
    /* 18320 8014AE54 01003126 */   addiu     $s1, $s1, 0x1
  .L8014AE58:
    /* 18324 8014AE58 FFFF3126 */  addiu      $s1, $s1, -0x1
  .L8014AE5C:
    /* 18328 8014AE5C 00004292 */  lbu        $v0, 0x0($s2)
    /* 1832C 8014AE60 01005226 */  addiu      $s2, $s2, 0x1
    /* 18330 8014AE64 000022A2 */  sb         $v0, 0x0($s1)
    /* 18334 8014AE68 FCFF4014 */  bnez       $v0, .L8014AE5C
    /* 18338 8014AE6C 01003126 */   addiu     $s1, $s1, 0x1
    /* 1833C 8014AE70 9F2B0508 */  j          .L8014AE7C
    /* 18340 8014AE74 21106000 */   addu      $v0, $v1, $zero
  .L8014AE78:
    /* 18344 8014AE78 21100000 */  addu       $v0, $zero, $zero
  .L8014AE7C:
    /* 18348 8014AE7C 1C00BF8F */  lw         $ra, 0x1C($sp)
    /* 1834C 8014AE80 1800B28F */  lw         $s2, 0x18($sp)
    /* 18350 8014AE84 1400B18F */  lw         $s1, 0x14($sp)
    /* 18354 8014AE88 1000B08F */  lw         $s0, 0x10($sp)
    /* 18358 8014AE8C 0800E003 */  jr         $ra
    /* 1835C 8014AE90 2000BD27 */   addiu     $sp, $sp, 0x20
endlabel func_8014ADF0
    /* 18360 8014AE94 00000000 */  nop
    /* 18364 8014AE98 00000000 */  nop
    /* 18368 8014AE9C 00000000 */  nop
