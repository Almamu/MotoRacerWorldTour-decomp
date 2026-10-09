nonmatching func_80050CA4, 0xD8

glabel func_80050CA4
    /* 3F4B4 80050CA4 D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* 3F4B8 80050CA8 2000B4AF */  sw         $s4, 0x20($sp)
    /* 3F4BC 80050CAC 21A08000 */  addu       $s4, $a0, $zero
    /* 3F4C0 80050CB0 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* 3F4C4 80050CB4 E8029326 */  addiu      $s3, $s4, 0x2E8
    /* 3F4C8 80050CB8 1800B2AF */  sw         $s2, 0x18($sp)
    /* 3F4CC 80050CBC 21900000 */  addu       $s2, $zero, $zero
    /* 3F4D0 80050CC0 1400B1AF */  sw         $s1, 0x14($sp)
    /* 3F4D4 80050CC4 B0039126 */  addiu      $s1, $s4, 0x3B0
    /* 3F4D8 80050CC8 1000B0AF */  sw         $s0, 0x10($sp)
    /* 3F4DC 80050CCC 18039026 */  addiu      $s0, $s4, 0x318
    /* 3F4E0 80050CD0 2400BFAF */  sw         $ra, 0x24($sp)
  .L80050CD4:
    /* 3F4E4 80050CD4 0000068E */  lw         $a2, 0x0($s0)
    /* 3F4E8 80050CD8 00000000 */  nop
    /* 3F4EC 80050CDC 0900C010 */  beqz       $a2, .L80050D04
    /* 3F4F0 80050CE0 03000524 */   addiu     $a1, $zero, 0x3
    /* 3F4F4 80050CE4 5000C28C */  lw         $v0, 0x50($a2)
    /* 3F4F8 80050CE8 00000000 */  nop
    /* 3F4FC 80050CEC 08004484 */  lh         $a0, 0x8($v0)
    /* 3F500 80050CF0 0C00438C */  lw         $v1, 0xC($v0)
    /* 3F504 80050CF4 00000000 */  nop
    /* 3F508 80050CF8 09F86000 */  jalr       $v1
    /* 3F50C 80050CFC 2120C400 */   addu      $a0, $a2, $a0
    /* 3F510 80050D00 000000AE */  sw         $zero, 0x0($s0)
  .L80050D04:
    /* 3F514 80050D04 B207020C */  jal        func_80081EC8
    /* 3F518 80050D08 54006426 */   addiu     $a0, $s3, 0x54
    /* 3F51C 80050D0C B207020C */  jal        func_80081EC8
    /* 3F520 80050D10 21202002 */   addu      $a0, $s1, $zero
    /* 3F524 80050D14 01005226 */  addiu      $s2, $s2, 0x1
    /* 3F528 80050D18 68051026 */  addiu      $s0, $s0, 0x568
    /* 3F52C 80050D1C 68053126 */  addiu      $s1, $s1, 0x568
    /* 3F530 80050D20 0500422A */  slti       $v0, $s2, 0x5
    /* 3F534 80050D24 EBFF4014 */  bnez       $v0, .L80050CD4
    /* 3F538 80050D28 68057326 */   addiu     $s3, $s3, 0x568
    /* 3F53C 80050D2C 581F868E */  lw         $a2, 0x1F58($s4)
    /* 3F540 80050D30 00000000 */  nop
    /* 3F544 80050D34 0900C010 */  beqz       $a2, .L80050D5C
    /* 3F548 80050D38 03000524 */   addiu     $a1, $zero, 0x3
    /* 3F54C 80050D3C 5000C28C */  lw         $v0, 0x50($a2)
    /* 3F550 80050D40 00000000 */  nop
    /* 3F554 80050D44 08004484 */  lh         $a0, 0x8($v0)
    /* 3F558 80050D48 0C00438C */  lw         $v1, 0xC($v0)
    /* 3F55C 80050D4C 00000000 */  nop
    /* 3F560 80050D50 09F86000 */  jalr       $v1
    /* 3F564 80050D54 2120C400 */   addu      $a0, $a2, $a0
    /* 3F568 80050D58 581F80AE */  sw         $zero, 0x1F58($s4)
  .L80050D5C:
    /* 3F56C 80050D5C 2400BF8F */  lw         $ra, 0x24($sp)
    /* 3F570 80050D60 2000B48F */  lw         $s4, 0x20($sp)
    /* 3F574 80050D64 1C00B38F */  lw         $s3, 0x1C($sp)
    /* 3F578 80050D68 1800B28F */  lw         $s2, 0x18($sp)
    /* 3F57C 80050D6C 1400B18F */  lw         $s1, 0x14($sp)
    /* 3F580 80050D70 1000B08F */  lw         $s0, 0x10($sp)
    /* 3F584 80050D74 0800E003 */  jr         $ra
    /* 3F588 80050D78 2800BD27 */   addiu     $sp, $sp, 0x28
endlabel func_80050CA4
