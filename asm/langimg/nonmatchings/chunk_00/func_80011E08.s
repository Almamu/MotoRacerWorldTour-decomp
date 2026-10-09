nonmatching func_80011E08, 0x3C

glabel func_80011E08
    /* 618 80011E08 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 61C 80011E0C 1000BFAF */  sw         $ra, 0x10($sp)
    /* 620 80011E10 E147000C */  jal        func_80011F84
    /* 624 80011E14 00000000 */   nop
    /* 628 80011E18 1346000C */  jal        func_8001184C
    /* 62C 80011E1C 00000000 */   nop
    /* 630 80011E20 B1CE020C */  jal        SpuSetReverb
    /* 634 80011E24 21200000 */   addu      $a0, $zero, $zero
    /* 638 80011E28 91CE020C */  jal        SpuQuit
    /* 63C 80011E2C 00000000 */   nop
    /* 640 80011E30 1000BF8F */  lw         $ra, 0x10($sp)
    /* 644 80011E34 01000224 */  addiu      $v0, $zero, 0x1
    /* 648 80011E38 0C0080AF */  sw         $zero, %gp_rel(D_800C46FC)($gp)
    /* 64C 80011E3C 0800E003 */  jr         $ra
    /* 650 80011E40 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_80011E08
