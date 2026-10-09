nonmatching func_8006D0BC, 0x70

glabel func_8006D0BC
    /* 5B8CC 8006D0BC D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* 5B8D0 8006D0C0 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* 5B8D4 8006D0C4 2198A000 */  addu       $s3, $a1, $zero
    /* 5B8D8 8006D0C8 1800B2AF */  sw         $s2, 0x18($sp)
    /* 5B8DC 8006D0CC 21900000 */  addu       $s2, $zero, $zero
    /* 5B8E0 8006D0D0 1000B0AF */  sw         $s0, 0x10($sp)
    /* 5B8E4 8006D0D4 00049024 */  addiu      $s0, $a0, 0x400
    /* 5B8E8 8006D0D8 1400B1AF */  sw         $s1, 0x14($sp)
    /* 5B8EC 8006D0DC 21880002 */  addu       $s1, $s0, $zero
    /* 5B8F0 8006D0E0 2000BFAF */  sw         $ra, 0x20($sp)
  .L8006D0E4:
    /* 5B8F4 8006D0E4 0000228E */  lw         $v0, 0x0($s1)
    /* 5B8F8 8006D0E8 00000000 */  nop
    /* 5B8FC 8006D0EC 03005314 */  bne        $v0, $s3, .L8006D0FC
    /* 5B900 8006D0F0 00000000 */   nop
    /* 5B904 8006D0F4 68B3010C */  jal        func_8006CDA0
    /* 5B908 8006D0F8 21200002 */   addu      $a0, $s0, $zero
  .L8006D0FC:
    /* 5B90C 8006D0FC 0C001026 */  addiu      $s0, $s0, 0xC
    /* 5B910 8006D100 01005226 */  addiu      $s2, $s2, 0x1
    /* 5B914 8006D104 1000422E */  sltiu      $v0, $s2, 0x10
    /* 5B918 8006D108 F6FF4014 */  bnez       $v0, .L8006D0E4
    /* 5B91C 8006D10C 0C003126 */   addiu     $s1, $s1, 0xC
    /* 5B920 8006D110 2000BF8F */  lw         $ra, 0x20($sp)
    /* 5B924 8006D114 1C00B38F */  lw         $s3, 0x1C($sp)
    /* 5B928 8006D118 1800B28F */  lw         $s2, 0x18($sp)
    /* 5B92C 8006D11C 1400B18F */  lw         $s1, 0x14($sp)
    /* 5B930 8006D120 1000B08F */  lw         $s0, 0x10($sp)
    /* 5B934 8006D124 0800E003 */  jr         $ra
    /* 5B938 8006D128 2800BD27 */   addiu     $sp, $sp, 0x28
endlabel func_8006D0BC
