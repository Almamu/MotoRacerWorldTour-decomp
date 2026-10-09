nonmatching func_80011D10, 0x98

glabel func_80011D10
    /* 520 80011D10 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 524 80011D14 1000BFAF */  sw         $ra, 0x10($sp)
    /* 528 80011D18 21400000 */  addu       $t0, $zero, $zero
    /* 52C 80011D1C FFFF0A24 */  addiu      $t2, $zero, -0x1
    /* 530 80011D20 FEFF0924 */  addiu      $t1, $zero, -0x2
    /* 534 80011D24 0D80043C */  lui        $a0, %hi(D_800CA0FE)
    /* 538 80011D28 FEA08424 */  addiu      $a0, $a0, %lo(D_800CA0FE)
    /* 53C 80011D2C 0D80073C */  lui        $a3, %hi(D_800CA0F8)
    /* 540 80011D30 F8A0E724 */  addiu      $a3, $a3, %lo(D_800CA0F8)
    /* 544 80011D34 0D80063C */  lui        $a2, %hi(D_800CA0FC)
    /* 548 80011D38 FCA0C624 */  addiu      $a2, $a2, %lo(D_800CA0FC)
    /* 54C 80011D3C 21288000 */  addu       $a1, $a0, $zero
  .L80011D40:
    /* 550 80011D40 0000A0A4 */  sh         $zero, 0x0($a1)
    /* 554 80011D44 0000C0A4 */  sh         $zero, 0x0($a2)
    /* 558 80011D48 0000EAA4 */  sh         $t2, 0x0($a3)
    /* 55C 80011D4C 1400E724 */  addiu      $a3, $a3, 0x14
    /* 560 80011D50 1400C624 */  addiu      $a2, $a2, 0x14
    /* 564 80011D54 1400A524 */  addiu      $a1, $a1, 0x14
    /* 568 80011D58 01000825 */  addiu      $t0, $t0, 0x1
    /* 56C 80011D5C 00008294 */  lhu        $v0, 0x0($a0)
    /* 570 80011D60 1E000329 */  slti       $v1, $t0, 0x1E
    /* 574 80011D64 24104900 */  and        $v0, $v0, $t1
    /* 578 80011D68 000082A4 */  sh         $v0, 0x0($a0)
    /* 57C 80011D6C F4FF6014 */  bnez       $v1, .L80011D40
    /* 580 80011D70 14008424 */   addiu     $a0, $a0, 0x14
    /* 584 80011D74 6058848F */  lw         $a0, %gp_rel(D_800C9F50)($gp)
    /* 588 80011D78 3146000C */  jal        func_800118C4
    /* 58C 80011D7C 00000000 */   nop
    /* 590 80011D80 0D80043C */  lui        $a0, %hi(D_800C9F58)
    /* 594 80011D84 589F8424 */  addiu      $a0, $a0, %lo(D_800C9F58)
    /* 598 80011D88 21280000 */  addu       $a1, $zero, $zero
    /* 59C 80011D8C 585880AF */  sw         $zero, %gp_rel(D_800C9F48)($gp)
    /* 5A0 80011D90 56D8020C */  jal        memset
    /* 5A4 80011D94 18000624 */   addiu     $a2, $zero, 0x18
    /* 5A8 80011D98 1000BF8F */  lw         $ra, 0x10($sp)
    /* 5AC 80011D9C 00000000 */  nop
    /* 5B0 80011DA0 0800E003 */  jr         $ra
    /* 5B4 80011DA4 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_80011D10
