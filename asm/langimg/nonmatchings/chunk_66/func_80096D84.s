nonmatching func_80096D84, 0xA4

glabel func_80096D84
    /* 85594 80096D84 0400A5AF */  sw         $a1, 0x4($sp)
    /* 85598 80096D88 0800A6AF */  sw         $a2, 0x8($sp)
    /* 8559C 80096D8C 0C00A7AF */  sw         $a3, 0xC($sp)
    /* 855A0 80096D90 D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* 855A4 80096D94 1800B2AF */  sw         $s2, 0x18($sp)
    /* 855A8 80096D98 21900000 */  addu       $s2, $zero, $zero
    /* 855AC 80096D9C 1000B0AF */  sw         $s0, 0x10($sp)
    /* 855B0 80096DA0 2180A000 */  addu       $s0, $a1, $zero
    /* 855B4 80096DA4 1400B1AF */  sw         $s1, 0x14($sp)
    /* 855B8 80096DA8 3000B127 */  addiu      $s1, $sp, 0x30
    /* 855BC 80096DAC 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* 855C0 80096DB0 21988000 */  addu       $s3, $a0, $zero
    /* 855C4 80096DB4 FFFF0224 */  addiu      $v0, $zero, -0x1
    /* 855C8 80096DB8 2400BFAF */  sw         $ra, 0x24($sp)
    /* 855CC 80096DBC 2000B4AF */  sw         $s4, 0x20($sp)
    /* 855D0 80096DC0 10000212 */  beq        $s0, $v0, .L80096E04
    /* 855D4 80096DC4 2C00A5AF */   sw        $a1, 0x2C($sp)
    /* 855D8 80096DC8 FFFF1424 */  addiu      $s4, $zero, -0x1
    /* 855DC 80096DCC 21206002 */  addu       $a0, $s3, $zero
  .L80096DD0:
    /* 855E0 80096DD0 DD5A020C */  jal        func_80096B74
    /* 855E4 80096DD4 01000524 */   addiu     $a1, $zero, 0x1
    /* 855E8 80096DD8 05004010 */  beqz       $v0, .L80096DF0
    /* 855EC 80096DDC 21206002 */   addu      $a0, $s3, $zero
    /* 855F0 80096DE0 DD5A020C */  jal        func_80096B74
    /* 855F4 80096DE4 21280002 */   addu      $a1, $s0, $zero
    /* 855F8 80096DE8 815B0208 */  j          .L80096E04
    /* 855FC 80096DEC 21904000 */   addu      $s2, $v0, $zero
  .L80096DF0:
    /* 85600 80096DF0 04003126 */  addiu      $s1, $s1, 0x4
    /* 85604 80096DF4 FCFF308E */  lw         $s0, -0x4($s1)
    /* 85608 80096DF8 00000000 */  nop
    /* 8560C 80096DFC F4FF1416 */  bne        $s0, $s4, .L80096DD0
    /* 85610 80096E00 00000000 */   nop
  .L80096E04:
    /* 85614 80096E04 21104002 */  addu       $v0, $s2, $zero
    /* 85618 80096E08 2400BF8F */  lw         $ra, 0x24($sp)
    /* 8561C 80096E0C 2000B48F */  lw         $s4, 0x20($sp)
    /* 85620 80096E10 1C00B38F */  lw         $s3, 0x1C($sp)
    /* 85624 80096E14 1800B28F */  lw         $s2, 0x18($sp)
    /* 85628 80096E18 1400B18F */  lw         $s1, 0x14($sp)
    /* 8562C 80096E1C 1000B08F */  lw         $s0, 0x10($sp)
    /* 85630 80096E20 0800E003 */  jr         $ra
    /* 85634 80096E24 2800BD27 */   addiu     $sp, $sp, 0x28
endlabel func_80096D84
