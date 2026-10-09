nonmatching func_800794E8, 0xB8

glabel func_800794E8
    /* 67CF8 800794E8 D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* 67CFC 800794EC 1C00B1AF */  sw         $s1, 0x1C($sp)
    /* 67D00 800794F0 21888000 */  addu       $s1, $a0, $zero
    /* 67D04 800794F4 21200000 */  addu       $a0, $zero, $zero
    /* 67D08 800794F8 1800B0AF */  sw         $s0, 0x18($sp)
    /* 67D0C 800794FC 2000BFAF */  sw         $ra, 0x20($sp)
    /* 67D10 80079500 A7AF020C */  jal        func_800ABE9C
    /* 67D14 80079504 2180A000 */   addu      $s0, $a1, $zero
    /* 67D18 80079508 19000016 */  bnez       $s0, .L80079570
    /* 67D1C 8007950C 21200002 */   addu      $a0, $s0, $zero
    /* 67D20 80079510 1000A427 */  addiu      $a0, $sp, 0x10
    /* 67D24 80079514 21280000 */  addu       $a1, $zero, $zero
    /* 67D28 80079518 21300000 */  addu       $a2, $zero, $zero
    /* 67D2C 8007951C 21380000 */  addu       $a3, $zero, $zero
    /* 67D30 80079520 1000A0A7 */  sh         $zero, 0x10($sp)
    /* 67D34 80079524 1200A0A7 */  sh         $zero, 0x12($sp)
    /* 67D38 80079528 28012396 */  lhu        $v1, 0x128($s1)
    /* 67D3C 8007952C 00020224 */  addiu      $v0, $zero, 0x200
    /* 67D40 80079530 1600A2A7 */  sh         $v0, 0x16($sp)
    /* 67D44 80079534 08B0020C */  jal        func_800AC020
    /* 67D48 80079538 1400A3A7 */   sh        $v1, 0x14($sp)
    /* 67D4C 8007953C 1000A427 */  addiu      $a0, $sp, 0x10
    /* 67D50 80079540 21280000 */  addu       $a1, $zero, $zero
    /* 67D54 80079544 FF010624 */  addiu      $a2, $zero, 0x1FF
    /* 67D58 80079548 FE010224 */  addiu      $v0, $zero, 0x1FE
    /* 67D5C 8007954C 1000A0A7 */  sh         $zero, 0x10($sp)
    /* 67D60 80079550 28012796 */  lhu        $a3, 0x128($s1)
    /* 67D64 80079554 01000324 */  addiu      $v1, $zero, 0x1
    /* 67D68 80079558 1200A2A7 */  sh         $v0, 0x12($sp)
    /* 67D6C 8007955C 1600A3A7 */  sh         $v1, 0x16($sp)
    /* 67D70 80079560 44B0020C */  jal        func_800AC110
    /* 67D74 80079564 1400A7A7 */   sh        $a3, 0x14($sp)
    /* 67D78 80079568 60E50108 */  j          .L80079580
    /* 67D7C 8007956C 00000000 */   nop
  .L80079570:
    /* 67D80 80079570 21280000 */  addu       $a1, $zero, $zero
    /* 67D84 80079574 21300000 */  addu       $a2, $zero, $zero
    /* 67D88 80079578 08B0020C */  jal        func_800AC020
    /* 67D8C 8007957C 21380000 */   addu      $a3, $zero, $zero
  .L80079580:
    /* 67D90 80079580 A7AF020C */  jal        func_800ABE9C
    /* 67D94 80079584 21200000 */   addu      $a0, $zero, $zero
    /* 67D98 80079588 2000BF8F */  lw         $ra, 0x20($sp)
    /* 67D9C 8007958C 1C00B18F */  lw         $s1, 0x1C($sp)
    /* 67DA0 80079590 1800B08F */  lw         $s0, 0x18($sp)
    /* 67DA4 80079594 01000224 */  addiu      $v0, $zero, 0x1
    /* 67DA8 80079598 0800E003 */  jr         $ra
    /* 67DAC 8007959C 2800BD27 */   addiu     $sp, $sp, 0x28
endlabel func_800794E8
