nonmatching func_80012F40, 0x3C

glabel func_80012F40
    /* 1750 80012F40 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 1754 80012F44 1000B0AF */  sw         $s0, 0x10($sp)
    /* 1758 80012F48 1400BFAF */  sw         $ra, 0x14($sp)
    /* 175C 80012F4C D24C000C */  jal        func_80013348
    /* 1760 80012F50 21800000 */   addu      $s0, $zero, $zero
    /* 1764 80012F54 04004010 */  beqz       $v0, .L80012F68
    /* 1768 80012F58 00000000 */   nop
    /* 176C 80012F5C 964B000C */  jal        func_80012E58
    /* 1770 80012F60 21204000 */   addu      $a0, $v0, $zero
    /* 1774 80012F64 01001024 */  addiu      $s0, $zero, 0x1
  .L80012F68:
    /* 1778 80012F68 21100002 */  addu       $v0, $s0, $zero
    /* 177C 80012F6C 1400BF8F */  lw         $ra, 0x14($sp)
    /* 1780 80012F70 1000B08F */  lw         $s0, 0x10($sp)
    /* 1784 80012F74 0800E003 */  jr         $ra
    /* 1788 80012F78 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_80012F40
