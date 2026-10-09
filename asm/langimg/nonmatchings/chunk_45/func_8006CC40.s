nonmatching func_8006CC40, 0xC0

glabel func_8006CC40
    /* 5B450 8006CC40 D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* 5B454 8006CC44 1800B2AF */  sw         $s2, 0x18($sp)
    /* 5B458 8006CC48 21900000 */  addu       $s2, $zero, $zero
    /* 5B45C 8006CC4C 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* 5B460 8006CC50 21988000 */  addu       $s3, $a0, $zero
    /* 5B464 8006CC54 2400BFAF */  sw         $ra, 0x24($sp)
    /* 5B468 8006CC58 2000B4AF */  sw         $s4, 0x20($sp)
    /* 5B46C 8006CC5C 1400B1AF */  sw         $s1, 0x14($sp)
    /* 5B470 8006CC60 1000B0AF */  sw         $s0, 0x10($sp)
    /* 5B474 8006CC64 08006286 */  lh         $v0, 0x8($s3)
    /* 5B478 8006CC68 00000000 */  nop
    /* 5B47C 8006CC6C 1C004018 */  blez       $v0, .L8006CCE0
    /* 5B480 8006CC70 21A0A000 */   addu      $s4, $a1, $zero
  .L8006CC74:
    /* 5B484 8006CC74 0000628E */  lw         $v0, 0x0($s3)
    /* 5B488 8006CC78 80191200 */  sll        $v1, $s2, 6
    /* 5B48C 8006CC7C 21884300 */  addu       $s1, $v0, $v1
    /* 5B490 8006CC80 0C002482 */  lb         $a0, 0xC($s1)
    /* 5B494 8006CC84 00000000 */  nop
    /* 5B498 8006CC88 10008018 */  blez       $a0, .L8006CCCC
    /* 5B49C 8006CC8C 21800000 */   addu      $s0, $zero, $zero
  .L8006CC90:
    /* 5B4A0 8006CC90 0400238E */  lw         $v1, 0x4($s1)
    /* 5B4A4 8006CC94 80101000 */  sll        $v0, $s0, 2
    /* 5B4A8 8006CC98 21104300 */  addu       $v0, $v0, $v1
    /* 5B4AC 8006CC9C 0000458C */  lw         $a1, 0x0($v0)
    /* 5B4B0 8006CCA0 994F000C */  jal        func_80013E64
    /* 5B4B4 8006CCA4 21208002 */   addu      $a0, $s4, $zero
    /* 5B4B8 8006CCA8 0800268E */  lw         $a2, 0x8($s1)
    /* 5B4BC 8006CCAC 40181000 */  sll        $v1, $s0, 1
    /* 5B4C0 8006CCB0 21186600 */  addu       $v1, $v1, $a2
    /* 5B4C4 8006CCB4 000062A4 */  sh         $v0, 0x0($v1)
    /* 5B4C8 8006CCB8 0C002482 */  lb         $a0, 0xC($s1)
    /* 5B4CC 8006CCBC 01001026 */  addiu      $s0, $s0, 0x1
    /* 5B4D0 8006CCC0 2A200402 */  slt        $a0, $s0, $a0
    /* 5B4D4 8006CCC4 F2FF8014 */  bnez       $a0, .L8006CC90
    /* 5B4D8 8006CCC8 00000000 */   nop
  .L8006CCCC:
    /* 5B4DC 8006CCCC 08006286 */  lh         $v0, 0x8($s3)
    /* 5B4E0 8006CCD0 01005226 */  addiu      $s2, $s2, 0x1
    /* 5B4E4 8006CCD4 2A104202 */  slt        $v0, $s2, $v0
    /* 5B4E8 8006CCD8 E6FF4014 */  bnez       $v0, .L8006CC74
    /* 5B4EC 8006CCDC 00000000 */   nop
  .L8006CCE0:
    /* 5B4F0 8006CCE0 2400BF8F */  lw         $ra, 0x24($sp)
    /* 5B4F4 8006CCE4 2000B48F */  lw         $s4, 0x20($sp)
    /* 5B4F8 8006CCE8 1C00B38F */  lw         $s3, 0x1C($sp)
    /* 5B4FC 8006CCEC 1800B28F */  lw         $s2, 0x18($sp)
    /* 5B500 8006CCF0 1400B18F */  lw         $s1, 0x14($sp)
    /* 5B504 8006CCF4 1000B08F */  lw         $s0, 0x10($sp)
    /* 5B508 8006CCF8 0800E003 */  jr         $ra
    /* 5B50C 8006CCFC 2800BD27 */   addiu     $sp, $sp, 0x28
endlabel func_8006CC40
