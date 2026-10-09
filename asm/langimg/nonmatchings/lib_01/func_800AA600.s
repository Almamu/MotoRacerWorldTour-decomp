nonmatching func_800AA600, 0x3C

glabel func_800AA600
    /* 98E10 800AA600 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 98E14 800AA604 05008014 */  bnez       $a0, .L800AA61C
    /* 98E18 800AA608 1000BFAF */   sw        $ra, 0x10($sp)
    /* 98E1C 800AA60C 40AA020C */  jal        func_800AA900
    /* 98E20 800AA610 00000000 */   nop
    /* 98E24 800AA614 8BA90208 */  j          .L800AA62C
    /* 98E28 800AA618 00000000 */   nop
  .L800AA61C:
    /* 98E2C 800AA61C 65AA020C */  jal        func_800AA994
    /* 98E30 800AA620 00000000 */   nop
    /* 98E34 800AA624 02160200 */  srl        $v0, $v0, 24
    /* 98E38 800AA628 01004230 */  andi       $v0, $v0, 0x1
  .L800AA62C:
    /* 98E3C 800AA62C 1000BF8F */  lw         $ra, 0x10($sp)
    /* 98E40 800AA630 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 98E44 800AA634 0800E003 */  jr         $ra
    /* 98E48 800AA638 00000000 */   nop
endlabel func_800AA600
