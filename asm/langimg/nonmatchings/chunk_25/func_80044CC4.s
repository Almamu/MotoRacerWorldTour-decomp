nonmatching func_80044CC4, 0x48

glabel func_80044CC4
    /* 334D4 80044CC4 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 334D8 80044CC8 1000B0AF */  sw         $s0, 0x10($sp)
    /* 334DC 80044CCC 1400BFAF */  sw         $ra, 0x14($sp)
    /* 334E0 80044CD0 25FF000C */  jal        func_8003FC94
    /* 334E4 80044CD4 21808000 */   addu      $s0, $a0, $zero
    /* 334E8 80044CD8 21100002 */  addu       $v0, $s0, $zero
    /* 334EC 80044CDC 1400BF8F */  lw         $ra, 0x14($sp)
    /* 334F0 80044CE0 0C80033C */  lui        $v1, %hi(D_800C55E8)
    /* 334F4 80044CE4 E8556324 */  addiu      $v1, $v1, %lo(D_800C55E8)
    /* 334F8 80044CE8 680003AE */  sw         $v1, 0x68($s0)
    /* 334FC 80044CEC 700000AE */  sw         $zero, 0x70($s0)
    /* 33500 80044CF0 740000AE */  sw         $zero, 0x74($s0)
    /* 33504 80044CF4 780000AE */  sw         $zero, 0x78($s0)
    /* 33508 80044CF8 7C0000AE */  sw         $zero, 0x7C($s0)
    /* 3350C 80044CFC 800000AE */  sw         $zero, 0x80($s0)
    /* 33510 80044D00 1000B08F */  lw         $s0, 0x10($sp)
    /* 33514 80044D04 0800E003 */  jr         $ra
    /* 33518 80044D08 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_80044CC4
