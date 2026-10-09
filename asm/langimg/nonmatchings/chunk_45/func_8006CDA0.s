nonmatching func_8006CDA0, 0x68

glabel func_8006CDA0
    /* 5B5B0 8006CDA0 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 5B5B4 8006CDA4 1800B2AF */  sw         $s2, 0x18($sp)
    /* 5B5B8 8006CDA8 21908000 */  addu       $s2, $a0, $zero
    /* 5B5BC 8006CDAC 1C00BFAF */  sw         $ra, 0x1C($sp)
    /* 5B5C0 8006CDB0 1400B1AF */  sw         $s1, 0x14($sp)
    /* 5B5C4 8006CDB4 1000B0AF */  sw         $s0, 0x10($sp)
    /* 5B5C8 8006CDB8 0800518E */  lw         $s1, 0x8($s2)
    /* 5B5CC 8006CDBC 00000000 */  nop
    /* 5B5D0 8006CDC0 09002012 */  beqz       $s1, .L8006CDE8
    /* 5B5D4 8006CDC4 00000000 */   nop
  .L8006CDC8:
    /* 5B5D8 8006CDC8 0800308E */  lw         $s0, 0x8($s1)
    /* 5B5DC 8006CDCC F9B5010C */  jal        func_8006D7E4
    /* 5B5E0 8006CDD0 21202002 */   addu      $a0, $s1, $zero
    /* 5B5E4 8006CDD4 000020AE */  sw         $zero, 0x0($s1)
    /* 5B5E8 8006CDD8 080020AE */  sw         $zero, 0x8($s1)
    /* 5B5EC 8006CDDC 21880002 */  addu       $s1, $s0, $zero
    /* 5B5F0 8006CDE0 F9FF2016 */  bnez       $s1, .L8006CDC8
    /* 5B5F4 8006CDE4 00000000 */   nop
  .L8006CDE8:
    /* 5B5F8 8006CDE8 64B3010C */  jal        func_8006CD90
    /* 5B5FC 8006CDEC 21204002 */   addu      $a0, $s2, $zero
    /* 5B600 8006CDF0 1C00BF8F */  lw         $ra, 0x1C($sp)
    /* 5B604 8006CDF4 1800B28F */  lw         $s2, 0x18($sp)
    /* 5B608 8006CDF8 1400B18F */  lw         $s1, 0x14($sp)
    /* 5B60C 8006CDFC 1000B08F */  lw         $s0, 0x10($sp)
    /* 5B610 8006CE00 0800E003 */  jr         $ra
    /* 5B614 8006CE04 2000BD27 */   addiu     $sp, $sp, 0x20
endlabel func_8006CDA0
