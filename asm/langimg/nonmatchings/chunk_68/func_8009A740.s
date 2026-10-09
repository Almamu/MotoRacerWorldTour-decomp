nonmatching func_8009A740, 0x24

glabel func_8009A740
    /* 88F50 8009A740 0800C280 */  lb         $v0, 0x8($a2)
    /* 88F54 8009A744 800A858C */  lw         $a1, 0xA80($a0)
    /* 88F58 8009A748 05000424 */  addiu      $a0, $zero, 0x5
    /* 88F5C 8009A74C CFFF4224 */  addiu      $v0, $v0, -0x31
    /* 88F60 8009A750 6000A38C */  lw         $v1, 0x60($a1)
    /* 88F64 8009A754 80100200 */  sll        $v0, $v0, 2
    /* 88F68 8009A758 21186200 */  addu       $v1, $v1, $v0
    /* 88F6C 8009A75C 0800E003 */  jr         $ra
    /* 88F70 8009A760 F40064AC */   sw        $a0, 0xF4($v1)
endlabel func_8009A740
