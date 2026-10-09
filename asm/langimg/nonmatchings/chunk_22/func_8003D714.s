nonmatching func_8003D714, 0x28

glabel func_8003D714
    /* 2BF24 8003D714 F4FFA28C */  lw         $v0, -0xC($a1)
    /* 2BF28 8003D718 00000000 */  nop
    /* 2BF2C 8003D71C 04004010 */  beqz       $v0, .L8003D730
    /* 2BF30 8003D720 00000000 */   nop
    /* 2BF34 8003D724 F8FFA28C */  lw         $v0, -0x8($a1)
    /* 2BF38 8003D728 0800E003 */  jr         $ra
    /* 2BF3C 8003D72C 00000000 */   nop
  .L8003D730:
    /* 2BF40 8003D730 FCFFA28C */  lw         $v0, -0x4($a1)
    /* 2BF44 8003D734 0800E003 */  jr         $ra
    /* 2BF48 8003D738 00000000 */   nop
endlabel func_8003D714
