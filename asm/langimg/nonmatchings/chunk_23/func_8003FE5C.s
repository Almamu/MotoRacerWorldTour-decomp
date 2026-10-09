nonmatching func_8003FE5C, 0x1C

glabel func_8003FE5C
    /* 2E66C 8003FE5C FEFF0324 */  addiu      $v1, $zero, -0x2
    /* 2E670 8003FE60 0000828C */  lw         $v0, 0x0($a0)
    /* 2E674 8003FE64 0100A530 */  andi       $a1, $a1, 0x1
    /* 2E678 8003FE68 24104300 */  and        $v0, $v0, $v1
    /* 2E67C 8003FE6C 25104500 */  or         $v0, $v0, $a1
    /* 2E680 8003FE70 0800E003 */  jr         $ra
    /* 2E684 8003FE74 000082AC */   sw        $v0, 0x0($a0)
endlabel func_8003FE5C
