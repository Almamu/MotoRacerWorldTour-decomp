nonmatching func_800790DC, 0x48

glabel func_800790DC
    /* 678EC 800790DC E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 678F0 800790E0 1000B0AF */  sw         $s0, 0x10($sp)
    /* 678F4 800790E4 21808000 */  addu       $s0, $a0, $zero
    /* 678F8 800790E8 0B80023C */  lui        $v0, %hi(D_800B77E0)
    /* 678FC 800790EC E0774224 */  addiu      $v0, $v0, %lo(D_800B77E0)
    /* 67900 800790F0 1400B1AF */  sw         $s1, 0x14($sp)
    /* 67904 800790F4 2188A000 */  addu       $s1, $a1, $zero
    /* 67908 800790F8 1800BFAF */  sw         $ra, 0x18($sp)
    /* 6790C 800790FC CAE4010C */  jal        func_80079328
    /* 67910 80079100 680002AE */   sw        $v0, 0x68($s0)
    /* 67914 80079104 21200002 */  addu       $a0, $s0, $zero
    /* 67918 80079108 8DE2010C */  jal        func_80078A34
    /* 6791C 8007910C 21282002 */   addu      $a1, $s1, $zero
    /* 67920 80079110 1800BF8F */  lw         $ra, 0x18($sp)
    /* 67924 80079114 1400B18F */  lw         $s1, 0x14($sp)
    /* 67928 80079118 1000B08F */  lw         $s0, 0x10($sp)
    /* 6792C 8007911C 0800E003 */  jr         $ra
    /* 67930 80079120 2000BD27 */   addiu     $sp, $sp, 0x20
endlabel func_800790DC
