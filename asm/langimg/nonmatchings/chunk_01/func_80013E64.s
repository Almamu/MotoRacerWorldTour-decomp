nonmatching func_80013E64, 0xD4

glabel func_80013E64
    /* 2674 80013E64 D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* 2678 80013E68 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* 267C 80013E6C 21988000 */  addu       $s3, $a0, $zero
    /* 2680 80013E70 1800B2AF */  sw         $s2, 0x18($sp)
    /* 2684 80013E74 2190A000 */  addu       $s2, $a1, $zero
    /* 2688 80013E78 1400B1AF */  sw         $s1, 0x14($sp)
    /* 268C 80013E7C FFFF1124 */  addiu      $s1, $zero, -0x1
    /* 2690 80013E80 1000B0AF */  sw         $s0, 0x10($sp)
    /* 2694 80013E84 21800000 */  addu       $s0, $zero, $zero
    /* 2698 80013E88 2000BFAF */  sw         $ra, 0x20($sp)
    /* 269C 80013E8C 21206002 */  addu       $a0, $s3, $zero
  .L80013E90:
    /* 26A0 80013E90 EC52000C */  jal        func_80014BB0
    /* 26A4 80013E94 21280002 */   addu      $a1, $s0, $zero
    /* 26A8 80013E98 21204002 */  addu       $a0, $s2, $zero
    /* 26AC 80013E9C 2B98020C */  jal        func_800A60AC
    /* 26B0 80013EA0 21284000 */   addu      $a1, $v0, $zero
    /* 26B4 80013EA4 03004014 */  bnez       $v0, .L80013EB4
    /* 26B8 80013EA8 00000000 */   nop
    /* 26BC 80013EAC B14F0008 */  j          .L80013EC4
    /* 26C0 80013EB0 21880002 */   addu      $s1, $s0, $zero
  .L80013EB4:
    /* 26C4 80013EB4 01001026 */  addiu      $s0, $s0, 0x1
    /* 26C8 80013EB8 0001022E */  sltiu      $v0, $s0, 0x100
    /* 26CC 80013EBC F4FF4014 */  bnez       $v0, .L80013E90
    /* 26D0 80013EC0 21206002 */   addu      $a0, $s3, $zero
  .L80013EC4:
    /* 26D4 80013EC4 FFFF0224 */  addiu      $v0, $zero, -0x1
    /* 26D8 80013EC8 14002216 */  bne        $s1, $v0, .L80013F1C
    /* 26DC 80013ECC 21102002 */   addu      $v0, $s1, $zero
    /* 26E0 80013ED0 21206002 */  addu       $a0, $s3, $zero
    /* 26E4 80013ED4 E951000C */  jal        func_800147A4
    /* 26E8 80013ED8 21284002 */   addu      $a1, $s2, $zero
    /* 26EC 80013EDC 21184000 */  addu       $v1, $v0, $zero
    /* 26F0 80013EE0 0D007110 */  beq        $v1, $s1, .L80013F18
    /* 26F4 80013EE4 FF001024 */   addiu     $s0, $zero, 0xFF
    /* 26F8 80013EE8 FFFF0524 */  addiu      $a1, $zero, -0x1
    /* 26FC 80013EEC 04026426 */  addiu      $a0, $s3, 0x204
  .L80013EF0:
    /* 2700 80013EF0 00008284 */  lh         $v0, 0x0($a0)
    /* 2704 80013EF4 00000000 */  nop
    /* 2708 80013EF8 04004514 */  bne        $v0, $a1, .L80013F0C
    /* 270C 80013EFC 00000000 */   nop
    /* 2710 80013F00 000083A4 */  sh         $v1, 0x0($a0)
    /* 2714 80013F04 C64F0008 */  j          .L80013F18
    /* 2718 80013F08 21880002 */   addu      $s1, $s0, $zero
  .L80013F0C:
    /* 271C 80013F0C FFFF1026 */  addiu      $s0, $s0, -0x1
    /* 2720 80013F10 F7FF0106 */  bgez       $s0, .L80013EF0
    /* 2724 80013F14 FEFF8424 */   addiu     $a0, $a0, -0x2
  .L80013F18:
    /* 2728 80013F18 21102002 */  addu       $v0, $s1, $zero
  .L80013F1C:
    /* 272C 80013F1C 2000BF8F */  lw         $ra, 0x20($sp)
    /* 2730 80013F20 1C00B38F */  lw         $s3, 0x1C($sp)
    /* 2734 80013F24 1800B28F */  lw         $s2, 0x18($sp)
    /* 2738 80013F28 1400B18F */  lw         $s1, 0x14($sp)
    /* 273C 80013F2C 1000B08F */  lw         $s0, 0x10($sp)
    /* 2740 80013F30 0800E003 */  jr         $ra
    /* 2744 80013F34 2800BD27 */   addiu     $sp, $sp, 0x28
endlabel func_80013E64
