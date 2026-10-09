nonmatching func_80030CF0, 0xC

glabel func_80030CF0
    /* 1F500 80030CF0 4F018280 */  lb         $v0, 0x14F($a0)
    /* 1F504 80030CF4 0800E003 */  jr         $ra
    /* 1F508 80030CF8 2B100200 */   sltu      $v0, $zero, $v0
endlabel func_80030CF0
