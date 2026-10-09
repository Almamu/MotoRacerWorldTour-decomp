nonmatching func_8004C3FC, 0x24

glabel func_8004C3FC
    /* 3AC0C 8004C3FC 80280500 */  sll        $a1, $a1, 2
    /* 3AC10 8004C400 21108500 */  addu       $v0, $a0, $a1
    /* 3AC14 8004C404 21184000 */  addu       $v1, $v0, $zero
    /* 3AC18 8004C408 000446AC */  sw         $a2, 0x400($v0)
    /* 3AC1C 8004C40C 080467AC */  sw         $a3, 0x408($v1)
    /* 3AC20 8004C410 1000A28F */  lw         $v0, 0x10($sp)
    /* 3AC24 8004C414 21206000 */  addu       $a0, $v1, $zero
    /* 3AC28 8004C418 0800E003 */  jr         $ra
    /* 3AC2C 8004C41C 100482AC */   sw        $v0, 0x410($a0)
endlabel func_8004C3FC
