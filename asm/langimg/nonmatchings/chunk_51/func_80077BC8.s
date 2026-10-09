nonmatching func_80077BC8, 0x1C

glabel func_80077BC8
    /* 663D8 80077BC8 0000A284 */  lh         $v0, 0x0($a1)
    /* 663DC 80077BCC 0400A384 */  lh         $v1, 0x4($a1)
    /* 663E0 80077BD0 0800A684 */  lh         $a2, 0x8($a1)
    /* 663E4 80077BD4 000082A4 */  sh         $v0, 0x0($a0)
    /* 663E8 80077BD8 020083A4 */  sh         $v1, 0x2($a0)
    /* 663EC 80077BDC 0800E003 */  jr         $ra
    /* 663F0 80077BE0 040086A4 */   sh        $a2, 0x4($a0)
endlabel func_80077BC8
