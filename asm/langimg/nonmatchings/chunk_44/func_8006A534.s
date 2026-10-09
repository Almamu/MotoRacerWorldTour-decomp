nonmatching func_8006A534, 0x9C

glabel func_8006A534
    /* 58D44 8006A534 D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* 58D48 8006A538 1800B2AF */  sw         $s2, 0x18($sp)
    /* 58D4C 8006A53C 21908000 */  addu       $s2, $a0, $zero
    /* 58D50 8006A540 1000B0AF */  sw         $s0, 0x10($sp)
    /* 58D54 8006A544 00840500 */  sll        $s0, $a1, 16
    /* 58D58 8006A548 03841000 */  sra        $s0, $s0, 16
    /* 58D5C 8006A54C 80201000 */  sll        $a0, $s0, 2
    /* 58D60 8006A550 21209000 */  addu       $a0, $a0, $s0
    /* 58D64 8006A554 00210400 */  sll        $a0, $a0, 4
    /* 58D68 8006A558 2400BFAF */  sw         $ra, 0x24($sp)
    /* 58D6C 8006A55C 2000B4AF */  sw         $s4, 0x20($sp)
    /* 58D70 8006A560 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* 58D74 8006A564 1400B1AF */  sw         $s1, 0x14($sp)
    /* 58D78 8006A568 000045A6 */  sh         $a1, 0x0($s2)
    /* 58D7C 8006A56C 959C020C */  jal        __builtin_vec_new
    /* 58D80 8006A570 020046A6 */   sh        $a2, 0x2($s2)
    /* 58D84 8006A574 21984000 */  addu       $s3, $v0, $zero
    /* 58D88 8006A578 FFFF1026 */  addiu      $s0, $s0, -0x1
    /* 58D8C 8006A57C 07000006 */  bltz       $s0, .L8006A59C
    /* 58D90 8006A580 21886002 */   addu      $s1, $s3, $zero
    /* 58D94 8006A584 FFFF1424 */  addiu      $s4, $zero, -0x1
  .L8006A588:
    /* 58D98 8006A588 96A8010C */  jal        func_8006A258
    /* 58D9C 8006A58C 21202002 */   addu      $a0, $s1, $zero
    /* 58DA0 8006A590 FFFF1026 */  addiu      $s0, $s0, -0x1
    /* 58DA4 8006A594 FCFF1416 */  bne        $s0, $s4, .L8006A588
    /* 58DA8 8006A598 50003126 */   addiu     $s1, $s1, 0x50
  .L8006A59C:
    /* 58DAC 8006A59C 02004486 */  lh         $a0, 0x2($s2)
    /* 58DB0 8006A5A0 959C020C */  jal        __builtin_vec_new
    /* 58DB4 8006A5A4 040053AE */   sw        $s3, 0x4($s2)
    /* 58DB8 8006A5A8 2400BF8F */  lw         $ra, 0x24($sp)
    /* 58DBC 8006A5AC 2000B48F */  lw         $s4, 0x20($sp)
    /* 58DC0 8006A5B0 1C00B38F */  lw         $s3, 0x1C($sp)
    /* 58DC4 8006A5B4 080042AE */  sw         $v0, 0x8($s2)
    /* 58DC8 8006A5B8 0C0042AE */  sw         $v0, 0xC($s2)
    /* 58DCC 8006A5BC 1800B28F */  lw         $s2, 0x18($sp)
    /* 58DD0 8006A5C0 1400B18F */  lw         $s1, 0x14($sp)
    /* 58DD4 8006A5C4 1000B08F */  lw         $s0, 0x10($sp)
    /* 58DD8 8006A5C8 0800E003 */  jr         $ra
    /* 58DDC 8006A5CC 2800BD27 */   addiu     $sp, $sp, 0x28
endlabel func_8006A534
