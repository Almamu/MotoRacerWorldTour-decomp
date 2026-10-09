nonmatching func_8003EC6C, 0x24

glabel func_8003EC6C
    /* 2D47C 8003EC6C 80100500 */  sll        $v0, $a1, 2
    /* 2D480 8003EC70 21104500 */  addu       $v0, $v0, $a1
    /* 2D484 8003EC74 80100200 */  sll        $v0, $v0, 2
    /* 2D488 8003EC78 23104500 */  subu       $v0, $v0, $a1
    /* 2D48C 8003EC7C BC0A838C */  lw         $v1, 0xABC($a0)
    /* 2D490 8003EC80 C0100200 */  sll        $v0, $v0, 3
    /* 2D494 8003EC84 21104300 */  addu       $v0, $v0, $v1
    /* 2D498 8003EC88 0800E003 */  jr         $ra
    /* 2D49C 8003EC8C 040046AC */   sw        $a2, 0x4($v0)
endlabel func_8003EC6C
