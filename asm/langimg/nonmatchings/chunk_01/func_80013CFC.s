nonmatching func_80013CFC, 0xBC

glabel func_80013CFC
    /* 250C 80013CFC E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 2510 80013D00 1800B2AF */  sw         $s2, 0x18($sp)
    /* 2514 80013D04 21908000 */  addu       $s2, $a0, $zero
    /* 2518 80013D08 1C00BFAF */  sw         $ra, 0x1C($sp)
    /* 251C 80013D0C 1400B1AF */  sw         $s1, 0x14($sp)
    /* 2520 80013D10 104D000C */  jal        func_80013440
    /* 2524 80013D14 1000B0AF */   sw        $s0, 0x10($sp)
    /* 2528 80013D18 21800000 */  addu       $s0, $zero, $zero
    /* 252C 80013D1C 0C1C5126 */  addiu      $s1, $s2, 0x1C0C
    /* 2530 80013D20 40000224 */  addiu      $v0, $zero, 0x40
    /* 2534 80013D24 010040A2 */  sb         $zero, 0x1($s2)
    /* 2538 80013D28 841C40A6 */  sh         $zero, 0x1C84($s2)
    /* 253C 80013D2C 080240AE */  sw         $zero, 0x208($s2)
    /* 2540 80013D30 020040A2 */  sb         $zero, 0x2($s2)
    /* 2544 80013D34 C81C40AE */  sw         $zero, 0x1CC8($s2)
    /* 2548 80013D38 F41C42A6 */  sh         $v0, 0x1CF4($s2)
    /* 254C 80013D3C F81C40AE */  sw         $zero, 0x1CF8($s2)
  .L80013D40:
    /* 2550 80013D40 124D000C */  jal        func_80013448
    /* 2554 80013D44 21202002 */   addu      $a0, $s1, $zero
    /* 2558 80013D48 01001026 */  addiu      $s0, $s0, 0x1
    /* 255C 80013D4C 0200022A */  slti       $v0, $s0, 0x2
    /* 2560 80013D50 FBFF4014 */  bnez       $v0, .L80013D40
    /* 2564 80013D54 3C003126 */   addiu     $s1, $s1, 0x3C
    /* 2568 80013D58 21800000 */  addu       $s0, $zero, $zero
    /* 256C 80013D5C 1C024326 */  addiu      $v1, $s2, 0x21C
  .L80013D60:
    /* 2570 80013D60 000060AC */  sw         $zero, 0x0($v1)
    /* 2574 80013D64 01001026 */  addiu      $s0, $s0, 0x1
    /* 2578 80013D68 4000022A */  slti       $v0, $s0, 0x40
    /* 257C 80013D6C FCFF4014 */  bnez       $v0, .L80013D60
    /* 2580 80013D70 68006324 */   addiu     $v1, $v1, 0x68
    /* 2584 80013D74 40000224 */  addiu      $v0, $zero, 0x40
    /* 2588 80013D78 861C42A6 */  sh         $v0, 0x1C86($s2)
    /* 258C 80013D7C 21800000 */  addu       $s0, $zero, $zero
    /* 2590 80013D80 881C4526 */  addiu      $a1, $s2, 0x1C88
    /* 2594 80013D84 3F000624 */  addiu      $a2, $zero, 0x3F
  .L80013D88:
    /* 2598 80013D88 2110B000 */  addu       $v0, $a1, $s0
    /* 259C 80013D8C 2318D000 */  subu       $v1, $a2, $s0
    /* 25A0 80013D90 01001026 */  addiu      $s0, $s0, 0x1
    /* 25A4 80013D94 4000042A */  slti       $a0, $s0, 0x40
    /* 25A8 80013D98 FBFF8014 */  bnez       $a0, .L80013D88
    /* 25AC 80013D9C 000043A0 */   sb        $v1, 0x0($v0)
    /* 25B0 80013DA0 1C00BF8F */  lw         $ra, 0x1C($sp)
    /* 25B4 80013DA4 1800B28F */  lw         $s2, 0x18($sp)
    /* 25B8 80013DA8 1400B18F */  lw         $s1, 0x14($sp)
    /* 25BC 80013DAC 1000B08F */  lw         $s0, 0x10($sp)
    /* 25C0 80013DB0 0800E003 */  jr         $ra
    /* 25C4 80013DB4 2000BD27 */   addiu     $sp, $sp, 0x20
endlabel func_80013CFC
