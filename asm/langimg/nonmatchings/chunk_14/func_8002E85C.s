nonmatching func_8002E85C, 0x128

glabel func_8002E85C
    /* 1D06C 8002E85C A8FFBD27 */  addiu      $sp, $sp, -0x58
    /* 1D070 8002E860 21388000 */  addu       $a3, $a0, $zero
    /* 1D074 8002E864 4800B2AF */  sw         $s2, 0x48($sp)
    /* 1D078 8002E868 2190A000 */  addu       $s2, $a1, $zero
    /* 1D07C 8002E86C 5000BFAF */  sw         $ra, 0x50($sp)
    /* 1D080 8002E870 4C00B3AF */  sw         $s3, 0x4C($sp)
    /* 1D084 8002E874 4400B1AF */  sw         $s1, 0x44($sp)
    /* 1D088 8002E878 4000B0AF */  sw         $s0, 0x40($sp)
    /* 1D08C 8002E87C 5800E290 */  lbu        $v0, 0x58($a3)
    /* 1D090 8002E880 00000000 */  nop
    /* 1D094 8002E884 FFFF4224 */  addiu      $v0, $v0, -0x1
    /* 1D098 8002E888 0200422C */  sltiu      $v0, $v0, 0x2
    /* 1D09C 8002E88C 28004010 */  beqz       $v0, .L8002E930
    /* 1D0A0 8002E890 2198C000 */   addu      $s3, $a2, $zero
    /* 1D0A4 8002E894 3000B127 */  addiu      $s1, $sp, 0x30
    /* 1D0A8 8002E898 21202002 */  addu       $a0, $s1, $zero
    /* 1D0AC 8002E89C 1000A227 */  addiu      $v0, $sp, 0x10
    /* 1D0B0 8002E8A0 3003E88C */  lw         $t0, 0x330($a3)
    /* 1D0B4 8002E8A4 3403E98C */  lw         $t1, 0x334($a3)
    /* 1D0B8 8002E8A8 3803EA8C */  lw         $t2, 0x338($a3)
    /* 1D0BC 8002E8AC 1000A8AF */  sw         $t0, 0x10($sp)
    /* 1D0C0 8002E8B0 1400A9AF */  sw         $t1, 0x14($sp)
    /* 1D0C4 8002E8B4 1800AAAF */  sw         $t2, 0x18($sp)
    /* 1D0C8 8002E8B8 1000A38F */  lw         $v1, 0x10($sp)
    /* 1D0CC 8002E8BC 0400468C */  lw         $a2, 0x4($v0)
    /* 1D0D0 8002E8C0 0800478C */  lw         $a3, 0x8($v0)
    /* 1D0D4 8002E8C4 2000B027 */  addiu      $s0, $sp, 0x20
    /* 1D0D8 8002E8C8 000043AE */  sw         $v1, 0x0($s2)
    /* 1D0DC 8002E8CC 040046AE */  sw         $a2, 0x4($s2)
    /* 1D0E0 8002E8D0 488B000C */  jal        func_80022D20
    /* 1D0E4 8002E8D4 080047AE */   sw        $a3, 0x8($s2)
    /* 1D0E8 8002E8D8 21200002 */  addu       $a0, $s0, $zero
    /* 1D0EC 8002E8DC E965020C */  jal        func_800997A4
    /* 1D0F0 8002E8E0 21282002 */   addu      $a1, $s1, $zero
    /* 1D0F4 8002E8E4 21200002 */  addu       $a0, $s0, $zero
    /* 1D0F8 8002E8E8 3A64020C */  jal        func_800990E8
    /* 1D0FC 8002E8EC 1A000524 */   addiu     $a1, $zero, 0x1A
    /* 1D100 8002E8F0 21202002 */  addu       $a0, $s1, $zero
    /* 1D104 8002E8F4 21280002 */  addu       $a1, $s0, $zero
    /* 1D108 8002E8F8 21304002 */  addu       $a2, $s2, $zero
    /* 1D10C 8002E8FC D866020C */  jal        func_80099B60
    /* 1D110 8002E900 1A000724 */   addiu     $a3, $zero, 0x1A
    /* 1D114 8002E904 21206002 */  addu       $a0, $s3, $zero
    /* 1D118 8002E908 3000A28F */  lw         $v0, 0x30($sp)
    /* 1D11C 8002E90C 3400A38F */  lw         $v1, 0x34($sp)
    /* 1D120 8002E910 3800A68F */  lw         $a2, 0x38($sp)
    /* 1D124 8002E914 1A000524 */  addiu      $a1, $zero, 0x1A
    /* 1D128 8002E918 000062AE */  sw         $v0, 0x0($s3)
    /* 1D12C 8002E91C 040063AE */  sw         $v1, 0x4($s3)
    /* 1D130 8002E920 3A64020C */  jal        func_800990E8
    /* 1D134 8002E924 080066AE */   sw        $a2, 0x8($s3)
    /* 1D138 8002E928 5ABA0008 */  j          .L8002E968
    /* 1D13C 8002E92C 00000000 */   nop
  .L8002E930:
    /* 1D140 8002E930 3C03E224 */  addiu      $v0, $a3, 0x33C
    /* 1D144 8002E934 3C03E38C */  lw         $v1, 0x33C($a3)
    /* 1D148 8002E938 0400448C */  lw         $a0, 0x4($v0)
    /* 1D14C 8002E93C 0800458C */  lw         $a1, 0x8($v0)
    /* 1D150 8002E940 4803E224 */  addiu      $v0, $a3, 0x348
    /* 1D154 8002E944 000043AE */  sw         $v1, 0x0($s2)
    /* 1D158 8002E948 040044AE */  sw         $a0, 0x4($s2)
    /* 1D15C 8002E94C 080045AE */  sw         $a1, 0x8($s2)
    /* 1D160 8002E950 4803E38C */  lw         $v1, 0x348($a3)
    /* 1D164 8002E954 0400448C */  lw         $a0, 0x4($v0)
    /* 1D168 8002E958 0800458C */  lw         $a1, 0x8($v0)
    /* 1D16C 8002E95C 000063AE */  sw         $v1, 0x0($s3)
    /* 1D170 8002E960 040064AE */  sw         $a0, 0x4($s3)
    /* 1D174 8002E964 080065AE */  sw         $a1, 0x8($s3)
  .L8002E968:
    /* 1D178 8002E968 5000BF8F */  lw         $ra, 0x50($sp)
    /* 1D17C 8002E96C 4C00B38F */  lw         $s3, 0x4C($sp)
    /* 1D180 8002E970 4800B28F */  lw         $s2, 0x48($sp)
    /* 1D184 8002E974 4400B18F */  lw         $s1, 0x44($sp)
    /* 1D188 8002E978 4000B08F */  lw         $s0, 0x40($sp)
    /* 1D18C 8002E97C 0800E003 */  jr         $ra
    /* 1D190 8002E980 5800BD27 */   addiu     $sp, $sp, 0x58
endlabel func_8002E85C
