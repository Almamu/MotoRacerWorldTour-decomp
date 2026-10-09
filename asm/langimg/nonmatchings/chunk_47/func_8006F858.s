nonmatching func_8006F858, 0x34

glabel func_8006F858
    /* 5E068 8006F858 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 5E06C 8006F85C 40110400 */  sll        $v0, $a0, 5
    /* 5E070 8006F860 23104400 */  subu       $v0, $v0, $a0
    /* 5E074 8006F864 80100200 */  sll        $v0, $v0, 2
    /* 5E078 8006F868 0D80043C */  lui        $a0, %hi(D_800CB5E0)
    /* 5E07C 8006F86C E0B58424 */  addiu      $a0, $a0, %lo(D_800CB5E0)
    /* 5E080 8006F870 1000BFAF */  sw         $ra, 0x10($sp)
    /* 5E084 8006F874 9CBC010C */  jal        func_8006F270
    /* 5E088 8006F878 21204400 */   addu      $a0, $v0, $a0
    /* 5E08C 8006F87C 1000BF8F */  lw         $ra, 0x10($sp)
    /* 5E090 8006F880 00000000 */  nop
    /* 5E094 8006F884 0800E003 */  jr         $ra
    /* 5E098 8006F888 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_8006F858
