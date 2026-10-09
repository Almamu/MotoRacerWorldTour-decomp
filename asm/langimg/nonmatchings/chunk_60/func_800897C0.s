nonmatching func_800897C0, 0x3C

glabel func_800897C0
    /* 77FD0 800897C0 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 77FD4 800897C4 1000B0AF */  sw         $s0, 0x10($sp)
    /* 77FD8 800897C8 1400BFAF */  sw         $ra, 0x14($sp)
    /* 77FDC 800897CC 4225020C */  jal        func_80089508
    /* 77FE0 800897D0 21808000 */   addu      $s0, $a0, $zero
    /* 77FE4 800897D4 21100002 */  addu       $v0, $s0, $zero
    /* 77FE8 800897D8 0D80033C */  lui        $v1, %hi(D_800C8CC4)
    /* 77FEC 800897DC C48C6324 */  addiu      $v1, $v1, %lo(D_800C8CC4)
    /* 77FF0 800897E0 1400BF8F */  lw         $ra, 0x14($sp)
    /* 77FF4 800897E4 01000424 */  addiu      $a0, $zero, 0x1
    /* 77FF8 800897E8 140003AE */  sw         $v1, 0x14($s0)
    /* 77FFC 800897EC 000004AE */  sw         $a0, 0x0($s0)
    /* 78000 800897F0 1000B08F */  lw         $s0, 0x10($sp)
    /* 78004 800897F4 0800E003 */  jr         $ra
    /* 78008 800897F8 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_800897C0
