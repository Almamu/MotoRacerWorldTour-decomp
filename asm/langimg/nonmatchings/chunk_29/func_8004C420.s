nonmatching func_8004C420, 0x10

glabel func_8004C420
    /* 3AC30 8004C420 80280500 */  sll        $a1, $a1, 2
    /* 3AC34 8004C424 21208500 */  addu       $a0, $a0, $a1
    /* 3AC38 8004C428 0800E003 */  jr         $ra
    /* 3AC3C 8004C42C F80386AC */   sw        $a2, 0x3F8($a0)
endlabel func_8004C420
