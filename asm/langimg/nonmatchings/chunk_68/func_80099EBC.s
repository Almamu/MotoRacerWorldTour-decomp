nonmatching func_80099EBC, 0x38

glabel func_80099EBC
    /* 886CC 80099EBC 0000A884 */  lh         $t0, 0x0($a1)
    /* 886D0 80099EC0 0200A984 */  lh         $t1, 0x2($a1)
    /* 886D4 80099EC4 0000C284 */  lh         $v0, 0x0($a2)
    /* 886D8 80099EC8 0400A784 */  lh         $a3, 0x4($a1)
    /* 886DC 80099ECC 0200C384 */  lh         $v1, 0x2($a2)
    /* 886E0 80099ED0 0400C584 */  lh         $a1, 0x4($a2)
    /* 886E4 80099ED4 21400201 */  addu       $t0, $t0, $v0
    /* 886E8 80099ED8 21482301 */  addu       $t1, $t1, $v1
    /* 886EC 80099EDC 2138E500 */  addu       $a3, $a3, $a1
    /* 886F0 80099EE0 21108000 */  addu       $v0, $a0, $zero
    /* 886F4 80099EE4 000048A4 */  sh         $t0, 0x0($v0)
    /* 886F8 80099EE8 020049A4 */  sh         $t1, 0x2($v0)
    /* 886FC 80099EEC 0800E003 */  jr         $ra
    /* 88700 80099EF0 040047A4 */   sh        $a3, 0x4($v0)
endlabel func_80099EBC
