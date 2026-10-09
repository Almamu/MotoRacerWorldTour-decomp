nonmatching func_80038370, 0x68

glabel func_80038370
    /* 26B80 80038370 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 26B84 80038374 1000B0AF */  sw         $s0, 0x10($sp)
    /* 26B88 80038378 21808000 */  addu       $s0, $a0, $zero
    /* 26B8C 8003837C 1800BFAF */  sw         $ra, 0x18($sp)
    /* 26B90 80038380 1400B1AF */  sw         $s1, 0x14($sp)
    /* 26B94 80038384 5000028E */  lw         $v0, 0x50($s0)
    /* 26B98 80038388 2188A000 */  addu       $s1, $a1, $zero
    /* 26B9C 8003838C FFFF4224 */  addiu      $v0, $v0, -0x1
    /* 26BA0 80038390 0B004004 */  bltz       $v0, .L800383C0
    /* 26BA4 80038394 500002AE */   sw        $v0, 0x50($s0)
    /* 26BA8 80038398 21284000 */  addu       $a1, $v0, $zero
    /* 26BAC 8003839C 21302002 */  addu       $a2, $s1, $zero
    /* 26BB0 800383A0 F6E0000C */  jal        func_800383D8
    /* 26BB4 800383A4 21380000 */   addu      $a3, $zero, $zero
    /* 26BB8 800383A8 21202002 */  addu       $a0, $s1, $zero
    /* 26BBC 800383AC 3F000682 */  lb         $a2, 0x3F($s0)
    /* 26BC0 800383B0 0AFF000C */  jal        func_8003FC28
    /* 26BC4 800383B4 03000524 */   addiu     $a1, $zero, 0x3
    /* 26BC8 800383B8 F1E00008 */  j          .L800383C4
    /* 26BCC 800383BC 00000000 */   nop
  .L800383C0:
    /* 26BD0 800383C0 500000AE */  sw         $zero, 0x50($s0)
  .L800383C4:
    /* 26BD4 800383C4 1800BF8F */  lw         $ra, 0x18($sp)
    /* 26BD8 800383C8 1400B18F */  lw         $s1, 0x14($sp)
    /* 26BDC 800383CC 1000B08F */  lw         $s0, 0x10($sp)
    /* 26BE0 800383D0 0800E003 */  jr         $ra
    /* 26BE4 800383D4 2000BD27 */   addiu     $sp, $sp, 0x20
endlabel func_80038370
