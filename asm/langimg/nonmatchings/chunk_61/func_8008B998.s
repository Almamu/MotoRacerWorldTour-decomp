nonmatching func_8008B998, 0xB8

glabel func_8008B998
    /* 7A1A8 8008B998 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 7A1AC 8008B99C 1000B0AF */  sw         $s0, 0x10($sp)
    /* 7A1B0 8008B9A0 21808000 */  addu       $s0, $a0, $zero
    /* 7A1B4 8008B9A4 1800BFAF */  sw         $ra, 0x18($sp)
    /* 7A1B8 8008B9A8 1400B1AF */  sw         $s1, 0x14($sp)
    /* 7A1BC 8008B9AC 76000286 */  lh         $v0, 0x76($s0)
    /* 7A1C0 8008B9B0 00000000 */  nop
    /* 7A1C4 8008B9B4 11004014 */  bnez       $v0, .L8008B9FC
    /* 7A1C8 8008B9B8 2188A000 */   addu      $s1, $a1, $zero
    /* 7A1CC 8008B9BC E266020C */  jal        func_80099B88
    /* 7A1D0 8008B9C0 2C000426 */   addiu     $a0, $s0, 0x2C
    /* 7A1D4 8008B9C4 3800038E */  lw         $v1, 0x38($s0)
    /* 7A1D8 8008B9C8 00000000 */  nop
    /* 7A1DC 8008B9CC 21104300 */  addu       $v0, $v0, $v1
    /* 7A1E0 8008B9D0 08004004 */  bltz       $v0, .L8008B9F4
    /* 7A1E4 8008B9D4 3C000426 */   addiu     $a0, $s0, 0x3C
    /* 7A1E8 8008B9D8 E266020C */  jal        func_80099B88
    /* 7A1EC 8008B9DC 21282002 */   addu      $a1, $s1, $zero
    /* 7A1F0 8008B9E0 4800038E */  lw         $v1, 0x48($s0)
    /* 7A1F4 8008B9E4 00000000 */  nop
    /* 7A1F8 8008B9E8 21104300 */  addu       $v0, $v0, $v1
    /* 7A1FC 8008B9EC 13004104 */  bgez       $v0, .L8008BA3C
    /* 7A200 8008B9F0 01000224 */   addiu     $v0, $zero, 0x1
  .L8008B9F4:
    /* 7A204 8008B9F4 8F2E0208 */  j          .L8008BA3C
    /* 7A208 8008B9F8 21100000 */   addu      $v0, $zero, $zero
  .L8008B9FC:
    /* 7A20C 8008B9FC 2C000426 */  addiu      $a0, $s0, 0x2C
    /* 7A210 8008BA00 E266020C */  jal        func_80099B88
    /* 7A214 8008BA04 21282002 */   addu      $a1, $s1, $zero
    /* 7A218 8008BA08 3800038E */  lw         $v1, 0x38($s0)
    /* 7A21C 8008BA0C 00000000 */  nop
    /* 7A220 8008BA10 21104300 */  addu       $v0, $v0, $v1
    /* 7A224 8008BA14 08004104 */  bgez       $v0, .L8008BA38
    /* 7A228 8008BA18 3C000426 */   addiu     $a0, $s0, 0x3C
    /* 7A22C 8008BA1C E266020C */  jal        func_80099B88
    /* 7A230 8008BA20 21282002 */   addu      $a1, $s1, $zero
    /* 7A234 8008BA24 4800038E */  lw         $v1, 0x48($s0)
    /* 7A238 8008BA28 00000000 */  nop
    /* 7A23C 8008BA2C 21204300 */  addu       $a0, $v0, $v1
    /* 7A240 8008BA30 02008004 */  bltz       $a0, .L8008BA3C
    /* 7A244 8008BA34 21100000 */   addu      $v0, $zero, $zero
  .L8008BA38:
    /* 7A248 8008BA38 01000224 */  addiu      $v0, $zero, 0x1
  .L8008BA3C:
    /* 7A24C 8008BA3C 1800BF8F */  lw         $ra, 0x18($sp)
    /* 7A250 8008BA40 1400B18F */  lw         $s1, 0x14($sp)
    /* 7A254 8008BA44 1000B08F */  lw         $s0, 0x10($sp)
    /* 7A258 8008BA48 0800E003 */  jr         $ra
    /* 7A25C 8008BA4C 2000BD27 */   addiu     $sp, $sp, 0x20
endlabel func_8008B998
