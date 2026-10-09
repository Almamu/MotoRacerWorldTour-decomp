nonmatching func_800A14B8, 0x14

glabel func_800A14B8
    /* 8FCC8 800A14B8 0D80033C */  lui        $v1, %hi(D_800C9EE8)
    /* 8FCCC 800A14BC E89E628C */  lw         $v0, %lo(D_800C9EE8)($v1)
    /* 8FCD0 800A14C0 80200400 */  sll        $a0, $a0, 2
    /* 8FCD4 800A14C4 0800E003 */  jr         $ra
    /* 8FCD8 800A14C8 21104400 */   addu      $v0, $v0, $a0
endlabel func_800A14B8
