nonmatching func_800AEE04, 0x24

glabel func_800AEE04
    /* 9D614 800AEE04 01A0023C */  lui        $v0, %hi(D_A000DFAC)
    /* 9D618 800AEE08 ACDF4224 */  addiu      $v0, $v0, %lo(D_A000DFAC)
    /* 9D61C 800AEE0C 08004000 */  jr         $v0
    /* 9D620 800AEE10 00000000 */   nop
    /* 9D624 800AEE14 00000000 */  nop
    /* 9D628 800AEE18 01A0083C */  lui        $t0, %hi(D_A000DF80)
    /* 9D62C 800AEE1C 80DF0825 */  addiu      $t0, $t0, %lo(D_A000DF80)
    /* 9D630 800AEE20 09F80001 */  jalr       $t0
    /* 9D634 800AEE24 00000000 */   nop
endlabel func_800AEE04
    /* 9D638 800AEE28 00000000 */  nop
