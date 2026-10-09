nonmatching func_80089F5C, 0x58

glabel func_80089F5C
    /* 7876C 80089F5C E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 78770 80089F60 1400B1AF */  sw         $s1, 0x14($sp)
    /* 78774 80089F64 21888000 */  addu       $s1, $a0, $zero
    /* 78778 80089F68 1000B0AF */  sw         $s0, 0x10($sp)
    /* 7877C 80089F6C 2180A000 */  addu       $s0, $a1, $zero
    /* 78780 80089F70 21200002 */  addu       $a0, $s0, $zero
    /* 78784 80089F74 68000524 */  addiu      $a1, $zero, 0x68
    /* 78788 80089F78 1800BFAF */  sw         $ra, 0x18($sp)
    /* 7878C 80089F7C 64D6020C */  jal        func_800B5990
    /* 78790 80089F80 0E0030A6 */   sh        $s0, 0xE($s1)
    /* 78794 80089F84 21200002 */  addu       $a0, $s0, $zero
    /* 78798 80089F88 04000524 */  addiu      $a1, $zero, 0x4
    /* 7879C 80089F8C 64D6020C */  jal        func_800B5990
    /* 787A0 80089F90 040022AE */   sw        $v0, 0x4($s1)
    /* 787A4 80089F94 21202002 */  addu       $a0, $s1, $zero
    /* 787A8 80089F98 0728020C */  jal        func_8008A01C
    /* 787AC 80089F9C 080022AE */   sw        $v0, 0x8($s1)
    /* 787B0 80089FA0 1800BF8F */  lw         $ra, 0x18($sp)
    /* 787B4 80089FA4 1400B18F */  lw         $s1, 0x14($sp)
    /* 787B8 80089FA8 1000B08F */  lw         $s0, 0x10($sp)
    /* 787BC 80089FAC 0800E003 */  jr         $ra
    /* 787C0 80089FB0 2000BD27 */   addiu     $sp, $sp, 0x20
endlabel func_80089F5C
