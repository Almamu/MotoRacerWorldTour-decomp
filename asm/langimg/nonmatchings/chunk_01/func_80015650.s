nonmatching func_80015650, 0x28

glabel func_80015650
    /* 3E60 80015650 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 3E64 80015654 0D80043C */  lui        $a0, %hi(D_800CC4F8)
    /* 3E68 80015658 1000BFAF */  sw         $ra, 0x10($sp)
    /* 3E6C 8001565C 9D9C020C */  jal        func_800A7274
    /* 3E70 80015660 F8C48424 */   addiu     $a0, $a0, %lo(D_800CC4F8)
    /* 3E74 80015664 1000BF8F */  lw         $ra, 0x10($sp)
    /* 3E78 80015668 0D80033C */  lui        $v1, %hi(D_800CC690)
    /* 3E7C 8001566C 90C662AC */  sw         $v0, %lo(D_800CC690)($v1)
    /* 3E80 80015670 0800E003 */  jr         $ra
    /* 3E84 80015674 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_80015650
