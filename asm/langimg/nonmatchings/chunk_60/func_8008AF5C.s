nonmatching func_8008AF5C, 0xA4

glabel func_8008AF5C
    /* 7976C 8008AF5C D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* 79770 8008AF60 1800B2AF */  sw         $s2, 0x18($sp)
    /* 79774 8008AF64 21908000 */  addu       $s2, $a0, $zero
    /* 79778 8008AF68 2400BFAF */  sw         $ra, 0x24($sp)
    /* 7977C 8008AF6C 2000B4AF */  sw         $s4, 0x20($sp)
    /* 79780 8008AF70 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* 79784 8008AF74 1400B1AF */  sw         $s1, 0x14($sp)
    /* 79788 8008AF78 1000B0AF */  sw         $s0, 0x10($sp)
    /* 7978C 8008AF7C 08004296 */  lhu        $v0, 0x8($s2)
    /* 79790 8008AF80 2C00508E */  lw         $s0, 0x2C($s2)
    /* 79794 8008AF84 00000000 */  nop
    /* 79798 8008AF88 15000012 */  beqz       $s0, .L8008AFE0
    /* 7979C 8008AF8C 01005330 */   andi      $s3, $v0, 0x1
    /* 797A0 8008AF90 01001424 */  addiu      $s4, $zero, 0x1
  .L8008AF94:
    /* 797A4 8008AF94 2C000396 */  lhu        $v1, 0x2C($s0)
    /* 797A8 8008AF98 08004296 */  lhu        $v0, 0x8($s2)
    /* 797AC 8008AF9C 00000000 */  nop
    /* 797B0 8008AFA0 0B006214 */  bne        $v1, $v0, .L8008AFD0
    /* 797B4 8008AFA4 2E000226 */   addiu     $v0, $s0, 0x2E
    /* 797B8 8008AFA8 21885300 */  addu       $s1, $v0, $s3
    /* 797BC 8008AFAC 00002382 */  lb         $v1, 0x0($s1)
    /* 797C0 8008AFB0 00000000 */  nop
    /* 797C4 8008AFB4 06006014 */  bnez       $v1, .L8008AFD0
    /* 797C8 8008AFB8 21204002 */   addu      $a0, $s2, $zero
    /* 797CC 8008AFBC 3800068E */  lw         $a2, 0x38($s0)
    /* 797D0 8008AFC0 35000782 */  lb         $a3, 0x35($s0)
    /* 797D4 8008AFC4 472A020C */  jal        func_8008A91C
    /* 797D8 8008AFC8 21280002 */   addu      $a1, $s0, $zero
    /* 797DC 8008AFCC 000034A2 */  sb         $s4, 0x0($s1)
  .L8008AFD0:
    /* 797E0 8008AFD0 0400108E */  lw         $s0, 0x4($s0)
    /* 797E4 8008AFD4 00000000 */  nop
    /* 797E8 8008AFD8 EEFF0016 */  bnez       $s0, .L8008AF94
    /* 797EC 8008AFDC 00000000 */   nop
  .L8008AFE0:
    /* 797F0 8008AFE0 2400BF8F */  lw         $ra, 0x24($sp)
    /* 797F4 8008AFE4 2000B48F */  lw         $s4, 0x20($sp)
    /* 797F8 8008AFE8 1C00B38F */  lw         $s3, 0x1C($sp)
    /* 797FC 8008AFEC 1800B28F */  lw         $s2, 0x18($sp)
    /* 79800 8008AFF0 1400B18F */  lw         $s1, 0x14($sp)
    /* 79804 8008AFF4 1000B08F */  lw         $s0, 0x10($sp)
    /* 79808 8008AFF8 0800E003 */  jr         $ra
    /* 7980C 8008AFFC 2800BD27 */   addiu     $sp, $sp, 0x28
endlabel func_8008AF5C
