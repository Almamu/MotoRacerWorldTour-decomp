nonmatching func_80090F94, 0x158

glabel func_80090F94
    /* 7F7A4 80090F94 98FFBD27 */  addiu      $sp, $sp, -0x68
    /* 7F7A8 80090F98 4C00B1AF */  sw         $s1, 0x4C($sp)
    /* 7F7AC 80090F9C 21888000 */  addu       $s1, $a0, $zero
    /* 7F7B0 80090FA0 5C00B5AF */  sw         $s5, 0x5C($sp)
    /* 7F7B4 80090FA4 21A8C000 */  addu       $s5, $a2, $zero
    /* 7F7B8 80090FA8 5000B2AF */  sw         $s2, 0x50($sp)
    /* 7F7BC 80090FAC 1000B227 */  addiu      $s2, $sp, 0x10
    /* 7F7C0 80090FB0 21304002 */  addu       $a2, $s2, $zero
    /* 7F7C4 80090FB4 5400B3AF */  sw         $s3, 0x54($sp)
    /* 7F7C8 80090FB8 C0990500 */  sll        $s3, $a1, 7
    /* 7F7CC 80090FBC 5800B4AF */  sw         $s4, 0x58($sp)
    /* 7F7D0 80090FC0 21A0E000 */  addu       $s4, $a3, $zero
    /* 7F7D4 80090FC4 6400BFAF */  sw         $ra, 0x64($sp)
    /* 7F7D8 80090FC8 6000B6AF */  sw         $s6, 0x60($sp)
    /* 7F7DC 80090FCC 4800B0AF */  sw         $s0, 0x48($sp)
    /* 7F7E0 80090FD0 0800228E */  lw         $v0, 0x8($s1)
    /* 7F7E4 80090FD4 0400238E */  lw         $v1, 0x4($s1)
    /* 7F7E8 80090FD8 7800B08F */  lw         $s0, 0x78($sp)
    /* 7F7EC 80090FDC 21285300 */  addu       $a1, $v0, $s3
    /* 7F7F0 80090FE0 1C006884 */  lh         $t0, 0x1C($v1)
    /* 7F7F4 80090FE4 0C000224 */  addiu      $v0, $zero, 0xC
    /* 7F7F8 80090FE8 0B43020C */  jal        func_80090C2C
    /* 7F7FC 80090FEC 23B04800 */   subu      $s6, $v0, $t0
    /* 7F800 80090FF0 1C000012 */  beqz       $s0, .L80091064
    /* 7F804 80090FF4 2800B027 */   addiu     $s0, $sp, 0x28
    /* 7F808 80090FF8 AE42020C */  jal        func_80090AB8
    /* 7F80C 80090FFC 21202002 */   addu      $a0, $s1, $zero
    /* 7F810 80091000 21202002 */  addu       $a0, $s1, $zero
    /* 7F814 80091004 2800A327 */  addiu      $v1, $sp, 0x28
    /* 7F818 80091008 21286000 */  addu       $a1, $v1, $zero
    /* 7F81C 8009100C 00100624 */  addiu      $a2, $zero, 0x1000
    /* 7F820 80091010 21804000 */  addu       $s0, $v0, $zero
    /* 7F824 80091014 2800A6A7 */  sh         $a2, 0x28($sp)
    /* 7F828 80091018 3C00A0AF */  sw         $zero, 0x3C($sp)
    /* 7F82C 8009101C 2C00A0A7 */  sh         $zero, 0x2C($sp)
    /* 7F830 80091020 2A00A0A7 */  sh         $zero, 0x2A($sp)
    /* 7F834 80091024 080066A4 */  sh         $a2, 0x8($v1)
    /* 7F838 80091028 4000A0AF */  sw         $zero, 0x40($sp)
    /* 7F83C 8009102C 3200A0A7 */  sh         $zero, 0x32($sp)
    /* 7F840 80091030 2E00A0A7 */  sh         $zero, 0x2E($sp)
    /* 7F844 80091034 100066A4 */  sh         $a2, 0x10($v1)
    /* 7F848 80091038 4400A0AF */  sw         $zero, 0x44($sp)
    /* 7F84C 8009103C 3600A0A7 */  sh         $zero, 0x36($sp)
    /* 7F850 80091040 3B44020C */  jal        func_800910EC
    /* 7F854 80091044 3400A0A7 */   sh        $zero, 0x34($sp)
    /* 7F858 80091048 0800248E */  lw         $a0, 0x8($s1)
    /* 7F85C 8009104C 5A34020C */  jal        func_8008D168
    /* 7F860 80091050 00000000 */   nop
    /* 7F864 80091054 21202002 */  addu       $a0, $s1, $zero
    /* 7F868 80091058 E042020C */  jal        func_80090B80
    /* 7F86C 8009105C 21280002 */   addu      $a1, $s0, $zero
    /* 7F870 80091060 2800B027 */  addiu      $s0, $sp, 0x28
  .L80091064:
    /* 7F874 80091064 21200002 */  addu       $a0, $s0, $zero
    /* 7F878 80091068 0800258E */  lw         $a1, 0x8($s1)
    /* 7F87C 8009106C 2130C002 */  addu       $a2, $s6, $zero
    /* 7F880 80091070 2128B300 */  addu       $a1, $a1, $s3
    /* 7F884 80091074 6867020C */  jal        func_80099DA0
    /* 7F888 80091078 1C00A524 */   addiu     $a1, $a1, 0x1C
    /* 7F88C 8009107C 21204002 */  addu       $a0, $s2, $zero
    /* 7F890 80091080 F465020C */  jal        func_800997D0
    /* 7F894 80091084 21280002 */   addu      $a1, $s0, $zero
    /* 7F898 80091088 1C00A427 */  addiu      $a0, $sp, 0x1C
    /* 7F89C 8009108C F465020C */  jal        func_800997D0
    /* 7F8A0 80091090 21280002 */   addu      $a1, $s0, $zero
    /* 7F8A4 80091094 1000A38F */  lw         $v1, 0x10($sp)
    /* 7F8A8 80091098 0400428E */  lw         $v0, 0x4($s2)
    /* 7F8AC 8009109C 0800448E */  lw         $a0, 0x8($s2)
    /* 7F8B0 800910A0 1C00A58F */  lw         $a1, 0x1C($sp)
    /* 7F8B4 800910A4 2000A68F */  lw         $a2, 0x20($sp)
    /* 7F8B8 800910A8 2400A78F */  lw         $a3, 0x24($sp)
    /* 7F8BC 800910AC 6400BF8F */  lw         $ra, 0x64($sp)
    /* 7F8C0 800910B0 6000B68F */  lw         $s6, 0x60($sp)
    /* 7F8C4 800910B4 5400B38F */  lw         $s3, 0x54($sp)
    /* 7F8C8 800910B8 5000B28F */  lw         $s2, 0x50($sp)
    /* 7F8CC 800910BC 4C00B18F */  lw         $s1, 0x4C($sp)
    /* 7F8D0 800910C0 4800B08F */  lw         $s0, 0x48($sp)
    /* 7F8D4 800910C4 0000A3AE */  sw         $v1, 0x0($s5)
    /* 7F8D8 800910C8 0400A2AE */  sw         $v0, 0x4($s5)
    /* 7F8DC 800910CC 0800A4AE */  sw         $a0, 0x8($s5)
    /* 7F8E0 800910D0 5C00B58F */  lw         $s5, 0x5C($sp)
    /* 7F8E4 800910D4 000085AE */  sw         $a1, 0x0($s4)
    /* 7F8E8 800910D8 040086AE */  sw         $a2, 0x4($s4)
    /* 7F8EC 800910DC 080087AE */  sw         $a3, 0x8($s4)
    /* 7F8F0 800910E0 5800B48F */  lw         $s4, 0x58($sp)
    /* 7F8F4 800910E4 0800E003 */  jr         $ra
    /* 7F8F8 800910E8 6800BD27 */   addiu     $sp, $sp, 0x68
endlabel func_80090F94
