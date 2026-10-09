nonmatching func_8004F83C, 0xCC

glabel func_8004F83C
    /* 3E04C 8004F83C 98FFBD27 */  addiu      $sp, $sp, -0x68
    /* 3E050 8004F840 5C00B3AF */  sw         $s3, 0x5C($sp)
    /* 3E054 8004F844 2198A000 */  addu       $s3, $a1, $zero
    /* 3E058 8004F848 5000B0AF */  sw         $s0, 0x50($sp)
    /* 3E05C 8004F84C 1000B027 */  addiu      $s0, $sp, 0x10
    /* 3E060 8004F850 21280002 */  addu       $a1, $s0, $zero
    /* 3E064 8004F854 5800B2AF */  sw         $s2, 0x58($sp)
    /* 3E068 8004F858 2000B227 */  addiu      $s2, $sp, 0x20
    /* 3E06C 8004F85C 6400BFAF */  sw         $ra, 0x64($sp)
    /* 3E070 8004F860 6000B4AF */  sw         $s4, 0x60($sp)
    /* 3E074 8004F864 5400B1AF */  sw         $s1, 0x54($sp)
    /* 3E078 8004F868 0000688E */  lw         $t0, 0x0($s3)
    /* 3E07C 8004F86C 0400698E */  lw         $t1, 0x4($s3)
    /* 3E080 8004F870 08006A8E */  lw         $t2, 0x8($s3)
    /* 3E084 8004F874 1000A8AF */  sw         $t0, 0x10($sp)
    /* 3E088 8004F878 1400A9AF */  sw         $t1, 0x14($sp)
    /* 3E08C 8004F87C 1800AAAF */  sw         $t2, 0x18($sp)
    /* 3E090 8004F880 423E010C */  jal        func_8004F908
    /* 3E094 8004F884 21384002 */   addu      $a3, $s2, $zero
    /* 3E098 8004F888 21A04000 */  addu       $s4, $v0, $zero
    /* 3E09C 8004F88C 02008332 */  andi       $v1, $s4, 0x2
    /* 3E0A0 8004F890 14006010 */  beqz       $v1, .L8004F8E4
    /* 3E0A4 8004F894 21200002 */   addu      $a0, $s0, $zero
    /* 3E0A8 8004F898 0D66020C */  jal        func_80099834
    /* 3E0AC 8004F89C 21286002 */   addu      $a1, $s3, $zero
    /* 3E0B0 8004F8A0 21200002 */  addu       $a0, $s0, $zero
    /* 3E0B4 8004F8A4 21284002 */  addu       $a1, $s2, $zero
    /* 3E0B8 8004F8A8 3000B127 */  addiu      $s1, $sp, 0x30
    /* 3E0BC 8004F8AC E266020C */  jal        func_80099B88
    /* 3E0C0 8004F8B0 4000B027 */   addiu     $s0, $sp, 0x40
    /* 3E0C4 8004F8B4 21200002 */  addu       $a0, $s0, $zero
    /* 3E0C8 8004F8B8 21284000 */  addu       $a1, $v0, $zero
    /* 3E0CC 8004F8BC B565020C */  jal        func_800996D4
    /* 3E0D0 8004F8C0 21304002 */   addu      $a2, $s2, $zero
    /* 3E0D4 8004F8C4 21202002 */  addu       $a0, $s1, $zero
    /* 3E0D8 8004F8C8 21280002 */  addu       $a1, $s0, $zero
    /* 3E0DC 8004F8CC D765020C */  jal        func_8009975C
    /* 3E0E0 8004F8D0 00100624 */   addiu     $a2, $zero, 0x1000
    /* 3E0E4 8004F8D4 3400A0AF */  sw         $zero, 0x34($sp)
    /* 3E0E8 8004F8D8 21206002 */  addu       $a0, $s3, $zero
    /* 3E0EC 8004F8DC F465020C */  jal        func_800997D0
    /* 3E0F0 8004F8E0 21282002 */   addu      $a1, $s1, $zero
  .L8004F8E4:
    /* 3E0F4 8004F8E4 21108002 */  addu       $v0, $s4, $zero
    /* 3E0F8 8004F8E8 6400BF8F */  lw         $ra, 0x64($sp)
    /* 3E0FC 8004F8EC 6000B48F */  lw         $s4, 0x60($sp)
    /* 3E100 8004F8F0 5C00B38F */  lw         $s3, 0x5C($sp)
    /* 3E104 8004F8F4 5800B28F */  lw         $s2, 0x58($sp)
    /* 3E108 8004F8F8 5400B18F */  lw         $s1, 0x54($sp)
    /* 3E10C 8004F8FC 5000B08F */  lw         $s0, 0x50($sp)
    /* 3E110 8004F900 0800E003 */  jr         $ra
    /* 3E114 8004F904 6800BD27 */   addiu     $sp, $sp, 0x68
endlabel func_8004F83C
