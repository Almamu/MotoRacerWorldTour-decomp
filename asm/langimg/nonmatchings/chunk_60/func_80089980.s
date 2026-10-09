nonmatching func_80089980, 0x44

glabel func_80089980
    /* 78190 80089980 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 78194 80089984 1400B1AF */  sw         $s1, 0x14($sp)
    /* 78198 80089988 21888000 */  addu       $s1, $a0, $zero
    /* 7819C 8008998C 1000B0AF */  sw         $s0, 0x10($sp)
    /* 781A0 80089990 1800BFAF */  sw         $ra, 0x18($sp)
    /* 781A4 80089994 8F26020C */  jal        func_80089A3C
    /* 781A8 80089998 2180A000 */   addu      $s0, $a1, $zero
    /* 781AC 8008999C 01001032 */  andi       $s0, $s0, 0x1
    /* 781B0 800899A0 03000012 */  beqz       $s0, .L800899B0
    /* 781B4 800899A4 00000000 */   nop
    /* 781B8 800899A8 679C020C */  jal        __builtin_delete
    /* 781BC 800899AC 21202002 */   addu      $a0, $s1, $zero
  .L800899B0:
    /* 781C0 800899B0 1800BF8F */  lw         $ra, 0x18($sp)
    /* 781C4 800899B4 1400B18F */  lw         $s1, 0x14($sp)
    /* 781C8 800899B8 1000B08F */  lw         $s0, 0x10($sp)
    /* 781CC 800899BC 0800E003 */  jr         $ra
    /* 781D0 800899C0 2000BD27 */   addiu     $sp, $sp, 0x20
endlabel func_80089980
