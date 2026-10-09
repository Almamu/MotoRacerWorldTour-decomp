nonmatching func_800A7554, 0x3C

glabel func_800A7554
    /* 95D64 800A7554 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 95D68 800A7558 1000BFAF */  sw         $ra, 0x10($sp)
    /* 95D6C 800A755C 67A3020C */  jal        func_800A8D9C
    /* 95D70 800A7560 00000000 */   nop
    /* 95D74 800A7564 05004014 */  bnez       $v0, .L800A757C
    /* 95D78 800A7568 00000000 */   nop
    /* 95D7C 800A756C 2BA3020C */  jal        func_800A8CAC
    /* 95D80 800A7570 00000000 */   nop
    /* 95D84 800A7574 609D0208 */  j          .L800A7580
    /* 95D88 800A7578 0100422C */   sltiu     $v0, $v0, 0x1
  .L800A757C:
    /* 95D8C 800A757C 21100000 */  addu       $v0, $zero, $zero
  .L800A7580:
    /* 95D90 800A7580 1000BF8F */  lw         $ra, 0x10($sp)
    /* 95D94 800A7584 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 95D98 800A7588 0800E003 */  jr         $ra
    /* 95D9C 800A758C 00000000 */   nop
endlabel func_800A7554
