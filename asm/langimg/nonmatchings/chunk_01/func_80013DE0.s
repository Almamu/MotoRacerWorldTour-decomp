nonmatching func_80013DE0, 0x84

glabel func_80013DE0
    /* 25F0 80013DE0 D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* 25F4 80013DE4 1400B1AF */  sw         $s1, 0x14($sp)
    /* 25F8 80013DE8 21880000 */  addu       $s1, $zero, $zero
    /* 25FC 80013DEC 1800B2AF */  sw         $s2, 0x18($sp)
    /* 2600 80013DF0 21900000 */  addu       $s2, $zero, $zero
    /* 2604 80013DF4 2000B4AF */  sw         $s4, 0x20($sp)
    /* 2608 80013DF8 21A08000 */  addu       $s4, $a0, $zero
    /* 260C 80013DFC 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* 2610 80013E00 2198A000 */  addu       $s3, $a1, $zero
    /* 2614 80013E04 2128C000 */  addu       $a1, $a2, $zero
    /* 2618 80013E08 2400BFAF */  sw         $ra, 0x24($sp)
    /* 261C 80013E0C 0C00601A */  blez       $s3, .L80013E40
    /* 2620 80013E10 1000B0AF */   sw        $s0, 0x10($sp)
    /* 2624 80013E14 2180A000 */  addu       $s0, $a1, $zero
  .L80013E18:
    /* 2628 80013E18 21208002 */  addu       $a0, $s4, $zero
    /* 262C 80013E1C F251000C */  jal        func_800147C8
    /* 2630 80013E20 21280002 */   addu      $a1, $s0, $zero
    /* 2634 80013E24 02004010 */  beqz       $v0, .L80013E30
    /* 2638 80013E28 00000000 */   nop
    /* 263C 80013E2C 01005226 */  addiu      $s2, $s2, 0x1
  .L80013E30:
    /* 2640 80013E30 01003126 */  addiu      $s1, $s1, 0x1
    /* 2644 80013E34 2A103302 */  slt        $v0, $s1, $s3
    /* 2648 80013E38 F7FF4014 */  bnez       $v0, .L80013E18
    /* 264C 80013E3C 08001026 */   addiu     $s0, $s0, 0x8
  .L80013E40:
    /* 2650 80013E40 21104002 */  addu       $v0, $s2, $zero
    /* 2654 80013E44 2400BF8F */  lw         $ra, 0x24($sp)
    /* 2658 80013E48 2000B48F */  lw         $s4, 0x20($sp)
    /* 265C 80013E4C 1C00B38F */  lw         $s3, 0x1C($sp)
    /* 2660 80013E50 1800B28F */  lw         $s2, 0x18($sp)
    /* 2664 80013E54 1400B18F */  lw         $s1, 0x14($sp)
    /* 2668 80013E58 1000B08F */  lw         $s0, 0x10($sp)
    /* 266C 80013E5C 0800E003 */  jr         $ra
    /* 2670 80013E60 2800BD27 */   addiu     $sp, $sp, 0x28
endlabel func_80013DE0
