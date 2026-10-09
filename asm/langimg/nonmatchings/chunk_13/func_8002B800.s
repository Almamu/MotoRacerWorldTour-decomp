nonmatching func_8002B800, 0x11C

glabel func_8002B800
    /* 1A010 8002B800 B0FFBD27 */  addiu      $sp, $sp, -0x50
    /* 1A014 8002B804 4400B5AF */  sw         $s5, 0x44($sp)
    /* 1A018 8002B808 01001524 */  addiu      $s5, $zero, 0x1
    /* 1A01C 8002B80C 3400B1AF */  sw         $s1, 0x34($sp)
    /* 1A020 8002B810 2188A000 */  addu       $s1, $a1, $zero
    /* 1A024 8002B814 21202002 */  addu       $a0, $s1, $zero
    /* 1A028 8002B818 3000B0AF */  sw         $s0, 0x30($sp)
    /* 1A02C 8002B81C 2180C000 */  addu       $s0, $a2, $zero
    /* 1A030 8002B820 21280002 */  addu       $a1, $s0, $zero
    /* 1A034 8002B824 4000B4AF */  sw         $s4, 0x40($sp)
    /* 1A038 8002B828 4800BFAF */  sw         $ra, 0x48($sp)
    /* 1A03C 8002B82C 3C00B3AF */  sw         $s3, 0x3C($sp)
    /* 1A040 8002B830 3800B2AF */  sw         $s2, 0x38($sp)
    /* 1A044 8002B834 0000088E */  lw         $t0, 0x0($s0)
    /* 1A048 8002B838 0400098E */  lw         $t1, 0x4($s0)
    /* 1A04C 8002B83C 08000A8E */  lw         $t2, 0x8($s0)
    /* 1A050 8002B840 2000A8AF */  sw         $t0, 0x20($sp)
    /* 1A054 8002B844 2400A9AF */  sw         $t1, 0x24($sp)
    /* 1A058 8002B848 2800AAAF */  sw         $t2, 0x28($sp)
    /* 1A05C 8002B84C 6000B38F */  lw         $s3, 0x60($sp)
    /* 1A060 8002B850 6400B28F */  lw         $s2, 0x64($sp)
    /* 1A064 8002B854 D46C000C */  jal        func_8001B350
    /* 1A068 8002B858 21A0E000 */   addu      $s4, $a3, $zero
    /* 1A06C 8002B85C FFFF0324 */  addiu      $v1, $zero, -0x1
    /* 1A070 8002B860 11004310 */  beq        $v0, $v1, .L8002B8A8
    /* 1A074 8002B864 00000000 */   nop
    /* 1A078 8002B868 2000A28F */  lw         $v0, 0x20($sp)
    /* 1A07C 8002B86C 2400A38F */  lw         $v1, 0x24($sp)
    /* 1A080 8002B870 2800A48F */  lw         $a0, 0x28($sp)
    /* 1A084 8002B874 000002AE */  sw         $v0, 0x0($s0)
    /* 1A088 8002B878 040003AE */  sw         $v1, 0x4($s0)
    /* 1A08C 8002B87C 080004AE */  sw         $a0, 0x8($s0)
    /* 1A090 8002B880 02006106 */  bgez       $s3, .L8002B88C
    /* 1A094 8002B884 040013AE */   sw        $s3, 0x4($s0)
    /* 1A098 8002B888 040000AE */  sw         $zero, 0x4($s0)
  .L8002B88C:
    /* 1A09C 8002B88C 1000A527 */  addiu      $a1, $sp, 0x10
    /* 1A0A0 8002B890 21A80000 */  addu       $s5, $zero, $zero
    /* 1A0A4 8002B894 0004023C */  lui        $v0, (0x4000000 >> 16)
    /* 1A0A8 8002B898 1000A0AF */  sw         $zero, 0x10($sp)
    /* 1A0AC 8002B89C 0400A2AC */  sw         $v0, 0x4($a1)
    /* 1A0B0 8002B8A0 37AE0008 */  j          .L8002B8DC
    /* 1A0B4 8002B8A4 0800A0AC */   sw        $zero, 0x8($a1)
  .L8002B8A8:
    /* 1A0B8 8002B8A8 07004012 */  beqz       $s2, .L8002B8C8
    /* 1A0BC 8002B8AC 21280002 */   addu      $a1, $s0, $zero
    /* 1A0C0 8002B8B0 0000248E */  lw         $a0, 0x0($s1)
    /* 1A0C4 8002B8B4 FD6B000C */  jal        func_8001AFF4
    /* 1A0C8 8002B8B8 1000A627 */   addiu     $a2, $sp, 0x10
    /* 1A0CC 8002B8BC 1000A527 */  addiu      $a1, $sp, 0x10
    /* 1A0D0 8002B8C0 37AE0008 */  j          .L8002B8DC
    /* 1A0D4 8002B8C4 040002AE */   sw        $v0, 0x4($s0)
  .L8002B8C8:
    /* 1A0D8 8002B8C8 0000248E */  lw         $a0, 0x0($s1)
    /* 1A0DC 8002B8CC 2130A000 */  addu       $a2, $a1, $zero
    /* 1A0E0 8002B8D0 576C000C */  jal        func_8001B15C
    /* 1A0E4 8002B8D4 1000A727 */   addiu     $a3, $sp, 0x10
    /* 1A0E8 8002B8D8 1000A527 */  addiu      $a1, $sp, 0x10
  .L8002B8DC:
    /* 1A0EC 8002B8DC 2110A002 */  addu       $v0, $s5, $zero
    /* 1A0F0 8002B8E0 1000A38F */  lw         $v1, 0x10($sp)
    /* 1A0F4 8002B8E4 0400A48C */  lw         $a0, 0x4($a1)
    /* 1A0F8 8002B8E8 0800A58C */  lw         $a1, 0x8($a1)
    /* 1A0FC 8002B8EC 4800BF8F */  lw         $ra, 0x48($sp)
    /* 1A100 8002B8F0 4400B58F */  lw         $s5, 0x44($sp)
    /* 1A104 8002B8F4 3C00B38F */  lw         $s3, 0x3C($sp)
    /* 1A108 8002B8F8 3800B28F */  lw         $s2, 0x38($sp)
    /* 1A10C 8002B8FC 3400B18F */  lw         $s1, 0x34($sp)
    /* 1A110 8002B900 3000B08F */  lw         $s0, 0x30($sp)
    /* 1A114 8002B904 000083AE */  sw         $v1, 0x0($s4)
    /* 1A118 8002B908 040084AE */  sw         $a0, 0x4($s4)
    /* 1A11C 8002B90C 080085AE */  sw         $a1, 0x8($s4)
    /* 1A120 8002B910 4000B48F */  lw         $s4, 0x40($sp)
    /* 1A124 8002B914 0800E003 */  jr         $ra
    /* 1A128 8002B918 5000BD27 */   addiu     $sp, $sp, 0x50
endlabel func_8002B800
