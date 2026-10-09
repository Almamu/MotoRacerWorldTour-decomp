/* Handwritten function */
nonmatching func_8008D27C, 0x34

glabel func_8008D27C
    /* 7BA8C 8008D27C 00488448 */  mtc2       $a0, $9 /* handwritten instruction */
    /* 7BA90 8008D280 00508548 */  mtc2       $a1, $10 /* handwritten instruction */
    /* 7BA94 8008D284 00588648 */  mtc2       $a2, $11 /* handwritten instruction */
    /* 7BA98 8008D288 00000000 */  nop
    /* 7BA9C 8008D28C 00000000 */  nop
    /* 7BAA0 8008D290 2804A04A */  sqr        0
    /* 7BAA4 8008D294 00C80248 */  mfc2       $v0, $25 /* handwritten instruction */
    /* 7BAA8 8008D298 00D00348 */  mfc2       $v1, $26 /* handwritten instruction */
    /* 7BAAC 8008D29C 00000000 */  nop
    /* 7BAB0 8008D2A0 21104300 */  addu       $v0, $v0, $v1
    /* 7BAB4 8008D2A4 00D80448 */  mfc2       $a0, $27 /* handwritten instruction */
    /* 7BAB8 8008D2A8 0800E003 */  jr         $ra
    /* 7BABC 8008D2AC 21104400 */   addu      $v0, $v0, $a0
endlabel func_8008D27C
