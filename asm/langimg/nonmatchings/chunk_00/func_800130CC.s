nonmatching func_800130CC, 0x3C

glabel func_800130CC
    /* 18DC 800130CC E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 18E0 800130D0 1000B0AF */  sw         $s0, 0x10($sp)
    /* 18E4 800130D4 1400BFAF */  sw         $ra, 0x14($sp)
    /* 18E8 800130D8 D24C000C */  jal        func_80013348
    /* 18EC 800130DC 21800000 */   addu      $s0, $zero, $zero
    /* 18F0 800130E0 04004010 */  beqz       $v0, .L800130F4
    /* 18F4 800130E4 00000000 */   nop
    /* 18F8 800130E8 04004284 */  lh         $v0, 0x4($v0)
    /* 18FC 800130EC 00000000 */  nop
    /* 1900 800130F0 2B800200 */  sltu       $s0, $zero, $v0
  .L800130F4:
    /* 1904 800130F4 21100002 */  addu       $v0, $s0, $zero
    /* 1908 800130F8 1400BF8F */  lw         $ra, 0x14($sp)
    /* 190C 800130FC 1000B08F */  lw         $s0, 0x10($sp)
    /* 1910 80013100 0800E003 */  jr         $ra
    /* 1914 80013104 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_800130CC
