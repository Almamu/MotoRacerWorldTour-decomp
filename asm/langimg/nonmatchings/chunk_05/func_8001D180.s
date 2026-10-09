nonmatching func_8001D180, 0x44

glabel func_8001D180
    /* B990 8001D180 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* B994 8001D184 1400B1AF */  sw         $s1, 0x14($sp)
    /* B998 8001D188 21888000 */  addu       $s1, $a0, $zero
    /* B99C 8001D18C 1000B0AF */  sw         $s0, 0x10($sp)
    /* B9A0 8001D190 1800BFAF */  sw         $ra, 0x18($sp)
    /* B9A4 8001D194 6776000C */  jal        func_8001D99C
    /* B9A8 8001D198 2180A000 */   addu      $s0, $a1, $zero
    /* B9AC 8001D19C 01001032 */  andi       $s0, $s0, 0x1
    /* B9B0 8001D1A0 03000012 */  beqz       $s0, .L8001D1B0
    /* B9B4 8001D1A4 00000000 */   nop
    /* B9B8 8001D1A8 679C020C */  jal        __builtin_delete
    /* B9BC 8001D1AC 21202002 */   addu      $a0, $s1, $zero
  .L8001D1B0:
    /* B9C0 8001D1B0 1800BF8F */  lw         $ra, 0x18($sp)
    /* B9C4 8001D1B4 1400B18F */  lw         $s1, 0x14($sp)
    /* B9C8 8001D1B8 1000B08F */  lw         $s0, 0x10($sp)
    /* B9CC 8001D1BC 0800E003 */  jr         $ra
    /* B9D0 8001D1C0 2000BD27 */   addiu     $sp, $sp, 0x20
endlabel func_8001D180
