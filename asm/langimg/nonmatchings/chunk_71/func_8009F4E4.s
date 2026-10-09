nonmatching func_8009F4E4, 0x74

glabel func_8009F4E4
    /* 8DCF4 8009F4E4 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 8DCF8 8009F4E8 84000224 */  addiu      $v0, $zero, 0x84
    /* 8DCFC 8009F4EC 1000BFAF */  sw         $ra, 0x10($sp)
    /* 8DD00 8009F4F0 500182AC */  sw         $v0, 0x150($a0)
    /* 8DD04 8009F4F4 0D80063C */  lui        $a2, %hi(D_800C886C)
    /* 8DD08 8009F4F8 6C88C68C */  lw         $a2, %lo(D_800C886C)($a2)
    /* 8DD0C 8009F4FC 0700A014 */  bnez       $a1, .L8009F51C
    /* 8DD10 8009F500 00000000 */   nop
    /* 8DD14 8009F504 B00A828C */  lw         $v0, 0xAB0($a0)
    /* 8DD18 8009F508 A40A838C */  lw         $v1, 0xAA4($a0)
    /* 8DD1C 8009F50C 80100200 */  sll        $v0, $v0, 2
    /* 8DD20 8009F510 21186200 */  addu       $v1, $v1, $v0
    /* 8DD24 8009F514 487D0208 */  j          .L8009F520
    /* 8DD28 8009F518 08006324 */   addiu     $v1, $v1, 0x8
  .L8009F51C:
    /* 8DD2C 8009F51C 980A838C */  lw         $v1, 0xA98($a0)
  .L8009F520:
    /* 8DD30 8009F520 00000000 */  nop
    /* 8DD34 8009F524 FC00628C */  lw         $v0, 0xFC($v1)
    /* 8DD38 8009F528 00000000 */  nop
    /* 8DD3C 8009F52C 6001C2AC */  sw         $v0, 0x160($a2)
    /* 8DD40 8009F530 0001638C */  lw         $v1, 0x100($v1)
    /* 8DD44 8009F534 2120C000 */  addu       $a0, $a2, $zero
    /* 8DD48 8009F538 B7E4010C */  jal        func_800792DC
    /* 8DD4C 8009F53C 6401C3AC */   sw        $v1, 0x164($a2)
    /* 8DD50 8009F540 E6BE020C */  jal        func_800AFB98
    /* 8DD54 8009F544 02000424 */   addiu     $a0, $zero, 0x2
    /* 8DD58 8009F548 1000BF8F */  lw         $ra, 0x10($sp)
    /* 8DD5C 8009F54C 00000000 */  nop
    /* 8DD60 8009F550 0800E003 */  jr         $ra
    /* 8DD64 8009F554 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_8009F4E4
