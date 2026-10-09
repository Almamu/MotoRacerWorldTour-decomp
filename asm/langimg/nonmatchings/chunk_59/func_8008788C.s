nonmatching func_8008788C, 0x74

glabel func_8008788C
    /* 7609C 8008788C E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 760A0 80087890 1000B0AF */  sw         $s0, 0x10($sp)
    /* 760A4 80087894 21808000 */  addu       $s0, $a0, $zero
    /* 760A8 80087898 1800BFAF */  sw         $ra, 0x18($sp)
    /* 760AC 8008789C 1400B1AF */  sw         $s1, 0x14($sp)
    /* 760B0 800878A0 2800048E */  lw         $a0, 0x28($s0)
    /* 760B4 800878A4 00000000 */  nop
    /* 760B8 800878A8 04008010 */  beqz       $a0, .L800878BC
    /* 760BC 800878AC 2188A000 */   addu      $s1, $a1, $zero
    /* 760C0 800878B0 679C020C */  jal        __builtin_delete
    /* 760C4 800878B4 00000000 */   nop
    /* 760C8 800878B8 280000AE */  sw         $zero, 0x28($s0)
  .L800878BC:
    /* 760CC 800878BC 0400048E */  lw         $a0, 0x4($s0)
    /* 760D0 800878C0 00000000 */  nop
    /* 760D4 800878C4 05008010 */  beqz       $a0, .L800878DC
    /* 760D8 800878C8 01002232 */   andi      $v0, $s1, 0x1
    /* 760DC 800878CC AD05020C */  jal        func_800816B4
    /* 760E0 800878D0 03000524 */   addiu     $a1, $zero, 0x3
    /* 760E4 800878D4 040000AE */  sw         $zero, 0x4($s0)
    /* 760E8 800878D8 01002232 */  andi       $v0, $s1, 0x1
  .L800878DC:
    /* 760EC 800878DC 03004010 */  beqz       $v0, .L800878EC
    /* 760F0 800878E0 00000000 */   nop
    /* 760F4 800878E4 679C020C */  jal        __builtin_delete
    /* 760F8 800878E8 21200002 */   addu      $a0, $s0, $zero
  .L800878EC:
    /* 760FC 800878EC 1800BF8F */  lw         $ra, 0x18($sp)
    /* 76100 800878F0 1400B18F */  lw         $s1, 0x14($sp)
    /* 76104 800878F4 1000B08F */  lw         $s0, 0x10($sp)
    /* 76108 800878F8 0800E003 */  jr         $ra
    /* 7610C 800878FC 2000BD27 */   addiu     $sp, $sp, 0x20
endlabel func_8008788C
