nonmatching func_8009FCD8, 0x88

glabel func_8009FCD8
    /* 8E4E8 8009FCD8 D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* 8E4EC 8009FCDC 2000BFAF */  sw         $ra, 0x20($sp)
    /* 8E4F0 8009FCE0 1C00B1AF */  sw         $s1, 0x1C($sp)
    /* 8E4F4 8009FCE4 1800B0AF */  sw         $s0, 0x18($sp)
    /* 8E4F8 8009FCE8 800A858C */  lw         $a1, 0xA80($a0)
    /* 8E4FC 8009FCEC 00000000 */  nop
    /* 8E500 8009FCF0 6000B08C */  lw         $s0, 0x60($a1)
    /* 8E504 8009FCF4 A7AF020C */  jal        func_800ABE9C
    /* 8E508 8009FCF8 21200000 */   addu      $a0, $zero, $zero
    /* 8E50C 8009FCFC 3001038E */  lw         $v1, 0x130($s0)
    /* 8E510 8009FD00 01000624 */  addiu      $a2, $zero, 0x1
    /* 8E514 8009FD04 1000A3AF */  sw         $v1, 0x10($sp)
    /* 8E518 8009FD08 1C01028E */  lw         $v0, 0x11C($s0)
    /* 8E51C 8009FD0C 20011126 */  addiu      $s1, $s0, 0x120
    /* 8E520 8009FD10 1400A2AF */  sw         $v0, 0x14($sp)
    /* 8E524 8009FD14 8C00058E */  lw         $a1, 0x8C($s0)
    /* 8E528 8009FD18 2C01078E */  lw         $a3, 0x12C($s0)
    /* 8E52C 8009FD1C 1A1D020C */  jal        func_80087468
    /* 8E530 8009FD20 21202002 */   addu      $a0, $s1, $zero
    /* 8E534 8009FD24 3801038E */  lw         $v1, 0x138($s0)
    /* 8E538 8009FD28 00000000 */  nop
    /* 8E53C 8009FD2C 1000A3AF */  sw         $v1, 0x10($sp)
    /* 8E540 8009FD30 1801028E */  lw         $v0, 0x118($s0)
    /* 8E544 8009FD34 21202002 */  addu       $a0, $s1, $zero
    /* 8E548 8009FD38 1400A2AF */  sw         $v0, 0x14($sp)
    /* 8E54C 8009FD3C 8800058E */  lw         $a1, 0x88($s0)
    /* 8E550 8009FD40 3401078E */  lw         $a3, 0x134($s0)
    /* 8E554 8009FD44 1A1D020C */  jal        func_80087468
    /* 8E558 8009FD48 01000624 */   addiu     $a2, $zero, 0x1
    /* 8E55C 8009FD4C 2000BF8F */  lw         $ra, 0x20($sp)
    /* 8E560 8009FD50 1C00B18F */  lw         $s1, 0x1C($sp)
    /* 8E564 8009FD54 1800B08F */  lw         $s0, 0x18($sp)
    /* 8E568 8009FD58 0800E003 */  jr         $ra
    /* 8E56C 8009FD5C 2800BD27 */   addiu     $sp, $sp, 0x28
endlabel func_8009FCD8
