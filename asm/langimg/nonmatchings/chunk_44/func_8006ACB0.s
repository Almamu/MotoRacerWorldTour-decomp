nonmatching func_8006ACB0, 0x50

glabel func_8006ACB0
    /* 594C0 8006ACB0 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 594C4 8006ACB4 1400B1AF */  sw         $s1, 0x14($sp)
    /* 594C8 8006ACB8 21888000 */  addu       $s1, $a0, $zero
    /* 594CC 8006ACBC 1800BFAF */  sw         $ra, 0x18($sp)
    /* 594D0 8006ACC0 1000B0AF */  sw         $s0, 0x10($sp)
    /* 594D4 8006ACC4 0400228E */  lw         $v0, 0x4($s1)
    /* 594D8 8006ACC8 00000000 */  nop
    /* 594DC 8006ACCC FFFF5024 */  addiu      $s0, $v0, -0x1
    /* 594E0 8006ACD0 0600001A */  blez       $s0, .L8006ACEC
    /* 594E4 8006ACD4 21202002 */   addu      $a0, $s1, $zero
  .L8006ACD8:
    /* 594E8 8006ACD8 CFAA010C */  jal        func_8006AB3C
    /* 594EC 8006ACDC 21280002 */   addu      $a1, $s0, $zero
    /* 594F0 8006ACE0 FFFF1026 */  addiu      $s0, $s0, -0x1
    /* 594F4 8006ACE4 FCFF0106 */  bgez       $s0, .L8006ACD8
    /* 594F8 8006ACE8 21202002 */   addu      $a0, $s1, $zero
  .L8006ACEC:
    /* 594FC 8006ACEC 1800BF8F */  lw         $ra, 0x18($sp)
    /* 59500 8006ACF0 1400B18F */  lw         $s1, 0x14($sp)
    /* 59504 8006ACF4 1000B08F */  lw         $s0, 0x10($sp)
    /* 59508 8006ACF8 0800E003 */  jr         $ra
    /* 5950C 8006ACFC 2000BD27 */   addiu     $sp, $sp, 0x20
endlabel func_8006ACB0
