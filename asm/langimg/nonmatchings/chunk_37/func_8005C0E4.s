nonmatching func_8005C0E4, 0x44

glabel func_8005C0E4
    /* 4A8F4 8005C0E4 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 4A8F8 8005C0E8 1400B1AF */  sw         $s1, 0x14($sp)
    /* 4A8FC 8005C0EC 21888000 */  addu       $s1, $a0, $zero
    /* 4A900 8005C0F0 1000B0AF */  sw         $s0, 0x10($sp)
    /* 4A904 8005C0F4 02001024 */  addiu      $s0, $zero, 0x2
    /* 4A908 8005C0F8 1800BFAF */  sw         $ra, 0x18($sp)
    /* 4A90C 8005C0FC 21202002 */  addu       $a0, $s1, $zero
  .L8005C100:
    /* 4A910 8005C100 C170010C */  jal        func_8005C304
    /* 4A914 8005C104 21280002 */   addu      $a1, $s0, $zero
    /* 4A918 8005C108 FFFF1026 */  addiu      $s0, $s0, -0x1
    /* 4A91C 8005C10C FCFF0106 */  bgez       $s0, .L8005C100
    /* 4A920 8005C110 21202002 */   addu      $a0, $s1, $zero
    /* 4A924 8005C114 1800BF8F */  lw         $ra, 0x18($sp)
    /* 4A928 8005C118 1400B18F */  lw         $s1, 0x14($sp)
    /* 4A92C 8005C11C 1000B08F */  lw         $s0, 0x10($sp)
    /* 4A930 8005C120 0800E003 */  jr         $ra
    /* 4A934 8005C124 2000BD27 */   addiu     $sp, $sp, 0x20
endlabel func_8005C0E4
