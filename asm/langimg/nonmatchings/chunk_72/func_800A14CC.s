nonmatching func_800A14CC, 0x1C

glabel func_800A14CC
    /* 8FCDC 800A14CC 0D80053C */  lui        $a1, %hi(D_800C9EE8)
    /* 8FCE0 800A14D0 0D80033C */  lui        $v1, %hi(D_800D4914)
    /* 8FCE4 800A14D4 1449628C */  lw         $v0, %lo(D_800D4914)($v1)
    /* 8FCE8 800A14D8 E89EA48C */  lw         $a0, %lo(D_800C9EE8)($a1)
    /* 8FCEC 800A14DC 80100200 */  sll        $v0, $v0, 2
    /* 8FCF0 800A14E0 0800E003 */  jr         $ra
    /* 8FCF4 800A14E4 21108200 */   addu      $v0, $a0, $v0
endlabel func_800A14CC
