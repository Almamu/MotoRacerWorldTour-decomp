nonmatching func_8008A0C0, 0x74

glabel func_8008A0C0
    /* 788D0 8008A0C0 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 788D4 8008A0C4 1400B1AF */  sw         $s1, 0x14($sp)
    /* 788D8 8008A0C8 21888000 */  addu       $s1, $a0, $zero
    /* 788DC 8008A0CC 1000B0AF */  sw         $s0, 0x10($sp)
    /* 788E0 8008A0D0 1800BFAF */  sw         $ra, 0x18($sp)
    /* 788E4 8008A0D4 7428020C */  jal        func_8008A1D0
    /* 788E8 8008A0D8 2180A000 */   addu      $s0, $a1, $zero
    /* 788EC 8008A0DC 4C002426 */  addiu      $a0, $s1, 0x4C
    /* 788F0 8008A0E0 6026020C */  jal        func_80089980
    /* 788F4 8008A0E4 02000524 */   addiu     $a1, $zero, 0x2
    /* 788F8 8008A0E8 3C002426 */  addiu      $a0, $s1, 0x3C
    /* 788FC 8008A0EC 6026020C */  jal        func_80089980
    /* 78900 8008A0F0 02000524 */   addiu     $a1, $zero, 0x2
    /* 78904 8008A0F4 2C002426 */  addiu      $a0, $s1, 0x2C
    /* 78908 8008A0F8 C627020C */  jal        func_80089F18
    /* 7890C 8008A0FC 02000524 */   addiu     $a1, $zero, 0x2
    /* 78910 8008A100 0C002426 */  addiu      $a0, $s1, 0xC
    /* 78914 8008A104 CA26020C */  jal        func_80089B28
    /* 78918 8008A108 02000524 */   addiu     $a1, $zero, 0x2
    /* 7891C 8008A10C 01001032 */  andi       $s0, $s0, 0x1
    /* 78920 8008A110 03000012 */  beqz       $s0, .L8008A120
    /* 78924 8008A114 00000000 */   nop
    /* 78928 8008A118 679C020C */  jal        __builtin_delete
    /* 7892C 8008A11C 21202002 */   addu      $a0, $s1, $zero
  .L8008A120:
    /* 78930 8008A120 1800BF8F */  lw         $ra, 0x18($sp)
    /* 78934 8008A124 1400B18F */  lw         $s1, 0x14($sp)
    /* 78938 8008A128 1000B08F */  lw         $s0, 0x10($sp)
    /* 7893C 8008A12C 0800E003 */  jr         $ra
    /* 78940 8008A130 2000BD27 */   addiu     $sp, $sp, 0x20
endlabel func_8008A0C0
