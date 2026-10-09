nonmatching func_8006CE24, 0x44

glabel func_8006CE24
    /* 5B634 8006CE24 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 5B638 8006CE28 1400BFAF */  sw         $ra, 0x14($sp)
    /* 5B63C 8006CE2C 1000B0AF */  sw         $s0, 0x10($sp)
    /* 5B640 8006CE30 0800908C */  lw         $s0, 0x8($a0)
    /* 5B644 8006CE34 00000000 */  nop
    /* 5B648 8006CE38 07000012 */  beqz       $s0, .L8006CE58
    /* 5B64C 8006CE3C 00000000 */   nop
  .L8006CE40:
    /* 5B650 8006CE40 2CB5010C */  jal        func_8006D4B0
    /* 5B654 8006CE44 21200002 */   addu      $a0, $s0, $zero
    /* 5B658 8006CE48 0800108E */  lw         $s0, 0x8($s0)
    /* 5B65C 8006CE4C 00000000 */  nop
    /* 5B660 8006CE50 FBFF0016 */  bnez       $s0, .L8006CE40
    /* 5B664 8006CE54 00000000 */   nop
  .L8006CE58:
    /* 5B668 8006CE58 1400BF8F */  lw         $ra, 0x14($sp)
    /* 5B66C 8006CE5C 1000B08F */  lw         $s0, 0x10($sp)
    /* 5B670 8006CE60 0800E003 */  jr         $ra
    /* 5B674 8006CE64 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_8006CE24
