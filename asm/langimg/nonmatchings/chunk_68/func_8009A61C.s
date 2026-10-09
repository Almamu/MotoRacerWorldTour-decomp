nonmatching func_8009A61C, 0x124

glabel func_8009A61C
    /* 88E2C 8009A61C D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* 88E30 8009A620 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* 88E34 8009A624 21988000 */  addu       $s3, $a0, $zero
    /* 88E38 8009A628 2400BFAF */  sw         $ra, 0x24($sp)
    /* 88E3C 8009A62C 2000B4AF */  sw         $s4, 0x20($sp)
    /* 88E40 8009A630 1800B2AF */  sw         $s2, 0x18($sp)
    /* 88E44 8009A634 1400B1AF */  sw         $s1, 0x14($sp)
    /* 88E48 8009A638 1000B0AF */  sw         $s0, 0x10($sp)
    /* 88E4C 8009A63C 980A708E */  lw         $s0, 0xA98($s3)
    /* 88E50 8009A640 800A638E */  lw         $v1, 0xA80($s3)
    /* 88E54 8009A644 9C0A728E */  lw         $s2, 0xA9C($s3)
    /* 88E58 8009A648 6000748C */  lw         $s4, 0x60($v1)
    /* 88E5C 8009A64C 2ABA020C */  jal        func_800AE8A8
    /* 88E60 8009A650 08005126 */   addiu     $s1, $s2, 0x8
    /* 88E64 8009A654 21204000 */  addu       $a0, $v0, $zero
    /* 88E68 8009A658 00008A8C */  lw         $t2, 0x0($a0)
    /* 88E6C 8009A65C 00000000 */  nop
    /* 88E70 8009A660 03004229 */  slti       $v0, $t2, 0x3
    /* 88E74 8009A664 02004014 */  bnez       $v0, .L8009A670
    /* 88E78 8009A668 00000000 */   nop
    /* 88E7C 8009A66C 02000A24 */  addiu      $t2, $zero, 0x2
  .L8009A670:
    /* 88E80 8009A670 1401028E */  lw         $v0, 0x114($s0)
    /* 88E84 8009A674 00000000 */  nop
    /* 88E88 8009A678 180022AE */  sw         $v0, 0x18($s1)
    /* 88E8C 8009A67C 1801038E */  lw         $v1, 0x118($s0)
    /* 88E90 8009A680 21300000 */  addu       $a2, $zero, $zero
    /* 88E94 8009A684 1C004019 */  blez       $t2, .L8009A6F8
    /* 88E98 8009A688 1C0023AE */   sw        $v1, 0x1C($s1)
    /* 88E9C 8009A68C 04008B24 */  addiu      $t3, $a0, 0x4
    /* 88EA0 8009A690 07000C24 */  addiu      $t4, $zero, 0x7
    /* 88EA4 8009A694 20004526 */  addiu      $a1, $s2, 0x20
    /* 88EA8 8009A698 1C010926 */  addiu      $t1, $s0, 0x11C
    /* 88EAC 8009A69C 14010826 */  addiu      $t0, $s0, 0x114
    /* 88EB0 8009A6A0 E0008726 */  addiu      $a3, $s4, 0xE0
  .L8009A6A4:
    /* 88EB4 8009A6A4 21106601 */  addu       $v0, $t3, $a2
    /* 88EB8 8009A6A8 00004380 */  lb         $v1, 0x0($v0)
    /* 88EBC 8009A6AC 00000000 */  nop
    /* 88EC0 8009A6B0 0000E3AC */  sw         $v1, 0x0($a3)
    /* 88EC4 8009A6B4 00004480 */  lb         $a0, 0x0($v0)
    /* 88EC8 8009A6B8 00000000 */  nop
    /* 88ECC 8009A6BC 04008C10 */  beq        $a0, $t4, .L8009A6D0
    /* 88ED0 8009A6C0 00000000 */   nop
    /* 88ED4 8009A6C4 0000028D */  lw         $v0, 0x0($t0)
    /* 88ED8 8009A6C8 B7690208 */  j          .L8009A6DC
    /* 88EDC 8009A6CC 0000A2AC */   sw        $v0, 0x0($a1)
  .L8009A6D0:
    /* 88EE0 8009A6D0 0000228D */  lw         $v0, 0x0($t1)
    /* 88EE4 8009A6D4 00000000 */  nop
    /* 88EE8 8009A6D8 0000A2AC */  sw         $v0, 0x0($a1)
  .L8009A6DC:
    /* 88EEC 8009A6DC 0400A524 */  addiu      $a1, $a1, 0x4
    /* 88EF0 8009A6E0 04002925 */  addiu      $t1, $t1, 0x4
    /* 88EF4 8009A6E4 04000825 */  addiu      $t0, $t0, 0x4
    /* 88EF8 8009A6E8 0100C624 */  addiu      $a2, $a2, 0x1
    /* 88EFC 8009A6EC 2A10CA00 */  slt        $v0, $a2, $t2
    /* 88F00 8009A6F0 ECFF4014 */  bnez       $v0, .L8009A6A4
    /* 88F04 8009A6F4 0400E724 */   addiu     $a3, $a3, 0x4
  .L8009A6F8:
    /* 88F08 8009A6F8 21206002 */  addu       $a0, $s3, $zero
    /* 88F0C 8009A6FC 21280000 */  addu       $a1, $zero, $zero
    /* 88F10 8009A700 0A80103C */  lui        $s0, %hi(func_8009A524)
    /* 88F14 8009A704 24A51026 */  addiu      $s0, $s0, %lo(func_8009A524)
    /* 88F18 8009A708 1BFB000C */  jal        func_8003EC6C
    /* 88F1C 8009A70C 21300002 */   addu      $a2, $s0, $zero
    /* 88F20 8009A710 21206002 */  addu       $a0, $s3, $zero
    /* 88F24 8009A714 01000524 */  addiu      $a1, $zero, 0x1
    /* 88F28 8009A718 1BFB000C */  jal        func_8003EC6C
    /* 88F2C 8009A71C 21300002 */   addu      $a2, $s0, $zero
    /* 88F30 8009A720 2400BF8F */  lw         $ra, 0x24($sp)
    /* 88F34 8009A724 2000B48F */  lw         $s4, 0x20($sp)
    /* 88F38 8009A728 1C00B38F */  lw         $s3, 0x1C($sp)
    /* 88F3C 8009A72C 1800B28F */  lw         $s2, 0x18($sp)
    /* 88F40 8009A730 1400B18F */  lw         $s1, 0x14($sp)
    /* 88F44 8009A734 1000B08F */  lw         $s0, 0x10($sp)
    /* 88F48 8009A738 0800E003 */  jr         $ra
    /* 88F4C 8009A73C 2800BD27 */   addiu     $sp, $sp, 0x28
endlabel func_8009A61C
