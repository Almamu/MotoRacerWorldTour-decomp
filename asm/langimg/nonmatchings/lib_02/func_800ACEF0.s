nonmatching func_800ACEF0, 0x1C

glabel func_800ACEF0
    /* 9B700 800ACEF0 FF07A530 */  andi       $a1, $a1, 0x7FF
    /* 9B704 800ACEF4 C02A0500 */  sll        $a1, $a1, 11
    /* 9B708 800ACEF8 FF078230 */  andi       $v0, $a0, 0x7FF
    /* 9B70C 800ACEFC 00E5033C */  lui        $v1, (0xE5000000 >> 16)
    /* 9B710 800ACF00 25104300 */  or         $v0, $v0, $v1
    /* 9B714 800ACF04 0800E003 */  jr         $ra
    /* 9B718 800ACF08 2510A200 */   or        $v0, $a1, $v0
endlabel func_800ACEF0
