nonmatching func_8006A4D8, 0x5C

glabel func_8006A4D8
    /* 58CE8 8006A4D8 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 58CEC 8006A4DC 1000B0AF */  sw         $s0, 0x10($sp)
    /* 58CF0 8006A4E0 21808000 */  addu       $s0, $a0, $zero
    /* 58CF4 8006A4E4 1400BFAF */  sw         $ra, 0x14($sp)
    /* 58CF8 8006A4E8 0400048E */  lw         $a0, 0x4($s0)
    /* 58CFC 8006A4EC 000000A6 */  sh         $zero, 0x0($s0)
    /* 58D00 8006A4F0 04008010 */  beqz       $a0, .L8006A504
    /* 58D04 8006A4F4 020000A6 */   sh        $zero, 0x2($s0)
    /* 58D08 8006A4F8 8D9C020C */  jal        __builtin_vec_delete
    /* 58D0C 8006A4FC 00000000 */   nop
    /* 58D10 8006A500 040000AE */  sw         $zero, 0x4($s0)
  .L8006A504:
    /* 58D14 8006A504 0800048E */  lw         $a0, 0x8($s0)
    /* 58D18 8006A508 00000000 */  nop
    /* 58D1C 8006A50C 04008010 */  beqz       $a0, .L8006A520
    /* 58D20 8006A510 00000000 */   nop
    /* 58D24 8006A514 8D9C020C */  jal        __builtin_vec_delete
    /* 58D28 8006A518 00000000 */   nop
    /* 58D2C 8006A51C 080000AE */  sw         $zero, 0x8($s0)
  .L8006A520:
    /* 58D30 8006A520 1400BF8F */  lw         $ra, 0x14($sp)
    /* 58D34 8006A524 0C0000AE */  sw         $zero, 0xC($s0)
    /* 58D38 8006A528 1000B08F */  lw         $s0, 0x10($sp)
    /* 58D3C 8006A52C 0800E003 */  jr         $ra
    /* 58D40 8006A530 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_8006A4D8
