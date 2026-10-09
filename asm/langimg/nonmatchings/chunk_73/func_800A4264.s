nonmatching func_800A4264, 0x20

glabel func_800A4264
    /* 92A74 800A4264 0D80023C */  lui        $v0, %hi(D_800D606C)
    /* 92A78 800A4268 0D80033C */  lui        $v1, %hi(D_800D60D8)
    /* 92A7C 800A426C 6C6044AC */  sw         $a0, %lo(D_800D606C)($v0)
    /* 92A80 800A4270 0D80043C */  lui        $a0, %hi(D_800D608C)
    /* 92A84 800A4274 01000224 */  addiu      $v0, $zero, 0x1
    /* 92A88 800A4278 D86065AC */  sw         $a1, %lo(D_800D60D8)($v1)
    /* 92A8C 800A427C 0800E003 */  jr         $ra
    /* 92A90 800A4280 8C6086AC */   sw        $a2, %lo(D_800D608C)($a0)
endlabel func_800A4264
