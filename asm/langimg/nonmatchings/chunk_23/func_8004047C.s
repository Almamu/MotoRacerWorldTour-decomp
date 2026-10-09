nonmatching func_8004047C, 0x54

glabel func_8004047C
    /* 2EC8C 8004047C E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 2EC90 80040480 1400B1AF */  sw         $s1, 0x14($sp)
    /* 2EC94 80040484 2188C000 */  addu       $s1, $a2, $zero
    /* 2EC98 80040488 21202002 */  addu       $a0, $s1, $zero
    /* 2EC9C 8004048C 1000B0AF */  sw         $s0, 0x10($sp)
    /* 2ECA0 80040490 1800BFAF */  sw         $ra, 0x18($sp)
    /* 2ECA4 80040494 2ED9020C */  jal        strlen
    /* 2ECA8 80040498 2180A000 */   addu      $s0, $a1, $zero
    /* 2ECAC 8004049C 21282002 */  addu       $a1, $s1, $zero
    /* 2ECB0 800404A0 3800048E */  lw         $a0, 0x38($s0)
    /* 2ECB4 800404A4 845F000C */  jal        func_80017E10
    /* 2ECB8 800404A8 21304000 */   addu      $a2, $v0, $zero
    /* 2ECBC 800404AC FDFF0324 */  addiu      $v1, $zero, -0x3
    /* 2ECC0 800404B0 0400448C */  lw         $a0, 0x4($v0)
    /* 2ECC4 800404B4 1800BF8F */  lw         $ra, 0x18($sp)
    /* 2ECC8 800404B8 1400B18F */  lw         $s1, 0x14($sp)
    /* 2ECCC 800404BC 1000B08F */  lw         $s0, 0x10($sp)
    /* 2ECD0 800404C0 24186400 */  and        $v1, $v1, $a0
    /* 2ECD4 800404C4 040043AC */  sw         $v1, 0x4($v0)
    /* 2ECD8 800404C8 0800E003 */  jr         $ra
    /* 2ECDC 800404CC 2000BD27 */   addiu     $sp, $sp, 0x20
endlabel func_8004047C
