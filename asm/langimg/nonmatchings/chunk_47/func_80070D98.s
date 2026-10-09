nonmatching func_80070D98, 0x18

glabel func_80070D98
    /* 5F5A8 80070D98 80180500 */  sll        $v1, $a1, 2
    /* 5F5AC 80070D9C 21186500 */  addu       $v1, $v1, $a1
    /* 5F5B0 80070DA0 0C00828C */  lw         $v0, 0xC($a0)
    /* 5F5B4 80070DA4 80180300 */  sll        $v1, $v1, 2
    /* 5F5B8 80070DA8 0800E003 */  jr         $ra
    /* 5F5BC 80070DAC 21104300 */   addu      $v0, $v0, $v1
endlabel func_80070D98
