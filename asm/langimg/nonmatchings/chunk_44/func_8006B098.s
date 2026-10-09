nonmatching func_8006B098, 0x90

glabel func_8006B098
    /* 598A8 8006B098 D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* 598AC 8006B09C 1000B0AF */  sw         $s0, 0x10($sp)
    /* 598B0 8006B0A0 2180A000 */  addu       $s0, $a1, $zero
    /* 598B4 8006B0A4 2000B4AF */  sw         $s4, 0x20($sp)
    /* 598B8 8006B0A8 21A08000 */  addu       $s4, $a0, $zero
    /* 598BC 8006B0AC 1100022A */  slti       $v0, $s0, 0x11
    /* 598C0 8006B0B0 2400BFAF */  sw         $ra, 0x24($sp)
    /* 598C4 8006B0B4 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* 598C8 8006B0B8 1800B2AF */  sw         $s2, 0x18($sp)
    /* 598CC 8006B0BC 02004014 */  bnez       $v0, .L8006B0C8
    /* 598D0 8006B0C0 1400B1AF */   sw        $s1, 0x14($sp)
    /* 598D4 8006B0C4 10001024 */  addiu      $s0, $zero, 0x10
  .L8006B0C8:
    /* 598D8 8006B0C8 000090AE */  sw         $s0, 0x0($s4)
    /* 598DC 8006B0CC C0201000 */  sll        $a0, $s0, 3
    /* 598E0 8006B0D0 21209000 */  addu       $a0, $a0, $s0
    /* 598E4 8006B0D4 959C020C */  jal        __builtin_vec_new
    /* 598E8 8006B0D8 80200400 */   sll       $a0, $a0, 2
    /* 598EC 8006B0DC 21904000 */  addu       $s2, $v0, $zero
    /* 598F0 8006B0E0 FFFF1026 */  addiu      $s0, $s0, -0x1
    /* 598F4 8006B0E4 07000006 */  bltz       $s0, .L8006B104
    /* 598F8 8006B0E8 21884002 */   addu      $s1, $s2, $zero
    /* 598FC 8006B0EC FFFF1324 */  addiu      $s3, $zero, -0x1
  .L8006B0F0:
    /* 59900 8006B0F0 E0AB010C */  jal        func_8006AF80
    /* 59904 8006B0F4 21202002 */   addu      $a0, $s1, $zero
    /* 59908 8006B0F8 FFFF1026 */  addiu      $s0, $s0, -0x1
    /* 5990C 8006B0FC FCFF1316 */  bne        $s0, $s3, .L8006B0F0
    /* 59910 8006B100 24003126 */   addiu     $s1, $s1, 0x24
  .L8006B104:
    /* 59914 8006B104 2400BF8F */  lw         $ra, 0x24($sp)
    /* 59918 8006B108 140092AE */  sw         $s2, 0x14($s4)
    /* 5991C 8006B10C 2000B48F */  lw         $s4, 0x20($sp)
    /* 59920 8006B110 1C00B38F */  lw         $s3, 0x1C($sp)
    /* 59924 8006B114 1800B28F */  lw         $s2, 0x18($sp)
    /* 59928 8006B118 1400B18F */  lw         $s1, 0x14($sp)
    /* 5992C 8006B11C 1000B08F */  lw         $s0, 0x10($sp)
    /* 59930 8006B120 0800E003 */  jr         $ra
    /* 59934 8006B124 2800BD27 */   addiu     $sp, $sp, 0x28
endlabel func_8006B098
