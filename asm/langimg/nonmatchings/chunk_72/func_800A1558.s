nonmatching func_800A1558, 0x34

glabel func_800A1558
    /* 8FD68 800A1558 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 8FD6C 800A155C 1400BFAF */  sw         $ra, 0x14($sp)
    /* 8FD70 800A1560 4185020C */  jal        func_800A1504
    /* 8FD74 800A1564 1000B0AF */   sw        $s0, 0x10($sp)
    /* 8FD78 800A1568 3385020C */  jal        func_800A14CC
    /* 8FD7C 800A156C 21804000 */   addu      $s0, $v0, $zero
    /* 8FD80 800A1570 21204000 */  addu       $a0, $v0, $zero
    /* 8FD84 800A1574 4A85020C */  jal        func_800A1528
    /* 8FD88 800A1578 21280002 */   addu      $a1, $s0, $zero
    /* 8FD8C 800A157C 1400BF8F */  lw         $ra, 0x14($sp)
    /* 8FD90 800A1580 1000B08F */  lw         $s0, 0x10($sp)
    /* 8FD94 800A1584 0800E003 */  jr         $ra
    /* 8FD98 800A1588 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_800A1558
