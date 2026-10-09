nonmatching func_800A1C74, 0x84

glabel func_800A1C74
    /* 90484 800A1C74 D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* 90488 800A1C78 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* 9048C 800A1C7C 21988000 */  addu       $s3, $a0, $zero
    /* 90490 800A1C80 1800B2AF */  sw         $s2, 0x18($sp)
    /* 90494 800A1C84 2190A000 */  addu       $s2, $a1, $zero
    /* 90498 800A1C88 2000BFAF */  sw         $ra, 0x20($sp)
    /* 9049C 800A1C8C 1400B1AF */  sw         $s1, 0x14($sp)
    /* 904A0 800A1C90 F486020C */  jal        func_800A1BD0
    /* 904A4 800A1C94 1000B0AF */   sw        $s0, 0x10($sp)
    /* 904A8 800A1C98 B4AA020C */  jal        VSync
    /* 904AC 800A1C9C 21200000 */   addu      $a0, $zero, $zero
    /* 904B0 800A1CA0 2C870208 */  j          .L800A1CB0
    /* 904B4 800A1CA4 02001024 */   addiu     $s0, $zero, 0x2
  .L800A1CA8:
    /* 904B8 800A1CA8 07000012 */  beqz       $s0, .L800A1CC8
    /* 904BC 800A1CAC 00000000 */   nop
  .L800A1CB0:
    /* 904C0 800A1CB0 21206002 */  addu       $a0, $s3, $zero
    /* 904C4 800A1CB4 EDA4020C */  jal        CdSearchFile
    /* 904C8 800A1CB8 21284002 */   addu      $a1, $s2, $zero
    /* 904CC 800A1CBC 21884000 */  addu       $s1, $v0, $zero
    /* 904D0 800A1CC0 F9FF2012 */  beqz       $s1, .L800A1CA8
    /* 904D4 800A1CC4 FFFF1026 */   addiu     $s0, $s0, -0x1
  .L800A1CC8:
    /* 904D8 800A1CC8 F886020C */  jal        func_800A1BE0
    /* 904DC 800A1CCC 00000000 */   nop
    /* 904E0 800A1CD0 B4AA020C */  jal        VSync
    /* 904E4 800A1CD4 21200000 */   addu      $a0, $zero, $zero
    /* 904E8 800A1CD8 21102002 */  addu       $v0, $s1, $zero
    /* 904EC 800A1CDC 2000BF8F */  lw         $ra, 0x20($sp)
    /* 904F0 800A1CE0 1C00B38F */  lw         $s3, 0x1C($sp)
    /* 904F4 800A1CE4 1800B28F */  lw         $s2, 0x18($sp)
    /* 904F8 800A1CE8 1400B18F */  lw         $s1, 0x14($sp)
    /* 904FC 800A1CEC 1000B08F */  lw         $s0, 0x10($sp)
    /* 90500 800A1CF0 0800E003 */  jr         $ra
    /* 90504 800A1CF4 2800BD27 */   addiu     $sp, $sp, 0x28
endlabel func_800A1C74
