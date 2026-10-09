nonmatching func_800AD830, 0x30

glabel func_800AD830
    /* 9C040 800AD830 0010023C */  lui        $v0, (0x10000000 >> 16)
    /* 9C044 800AD834 0C80033C */  lui        $v1, %hi(D_800BF348)
    /* 9C048 800AD838 48F3638C */  lw         $v1, %lo(D_800BF348)($v1)
    /* 9C04C 800AD83C 25208200 */  or         $a0, $a0, $v0
    /* 9C050 800AD840 000064AC */  sw         $a0, 0x0($v1)
    /* 9C054 800AD844 0C80023C */  lui        $v0, %hi(D_800BF344)
    /* 9C058 800AD848 44F3428C */  lw         $v0, %lo(D_800BF344)($v0)
    /* 9C05C 800AD84C FF00033C */  lui        $v1, (0xFFFFFF >> 16)
    /* 9C060 800AD850 0000428C */  lw         $v0, 0x0($v0)
    /* 9C064 800AD854 FFFF6334 */  ori        $v1, $v1, (0xFFFFFF & 0xFFFF)
    /* 9C068 800AD858 0800E003 */  jr         $ra
    /* 9C06C 800AD85C 24104300 */   and       $v0, $v0, $v1
endlabel func_800AD830
