nonmatching func_800402D0, 0x74

glabel func_800402D0
    /* 2EAE0 800402D0 D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* 2EAE4 800402D4 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* 2EAE8 800402D8 21988000 */  addu       $s3, $a0, $zero
    /* 2EAEC 800402DC 1000B0AF */  sw         $s0, 0x10($sp)
    /* 2EAF0 800402E0 2180C000 */  addu       $s0, $a2, $zero
    /* 2EAF4 800402E4 21200002 */  addu       $a0, $s0, $zero
    /* 2EAF8 800402E8 1400B1AF */  sw         $s1, 0x14($sp)
    /* 2EAFC 800402EC 2188A000 */  addu       $s1, $a1, $zero
    /* 2EB00 800402F0 1800B2AF */  sw         $s2, 0x18($sp)
    /* 2EB04 800402F4 2000BFAF */  sw         $ra, 0x20($sp)
    /* 2EB08 800402F8 2ED9020C */  jal        strlen
    /* 2EB0C 800402FC 2190E000 */   addu      $s2, $a3, $zero
    /* 2EB10 80040300 21280002 */  addu       $a1, $s0, $zero
    /* 2EB14 80040304 3800248E */  lw         $a0, 0x38($s1)
    /* 2EB18 80040308 845F000C */  jal        func_80017E10
    /* 2EB1C 8004030C 21304000 */   addu      $a2, $v0, $zero
    /* 2EB20 80040310 05004010 */  beqz       $v0, .L80040328
    /* 2EB24 80040314 21206002 */   addu      $a0, $s3, $zero
    /* 2EB28 80040318 21282002 */  addu       $a1, $s1, $zero
    /* 2EB2C 8004031C 21304000 */  addu       $a2, $v0, $zero
    /* 2EB30 80040320 8D00010C */  jal        func_80040234
    /* 2EB34 80040324 21384002 */   addu      $a3, $s2, $zero
  .L80040328:
    /* 2EB38 80040328 2000BF8F */  lw         $ra, 0x20($sp)
    /* 2EB3C 8004032C 1C00B38F */  lw         $s3, 0x1C($sp)
    /* 2EB40 80040330 1800B28F */  lw         $s2, 0x18($sp)
    /* 2EB44 80040334 1400B18F */  lw         $s1, 0x14($sp)
    /* 2EB48 80040338 1000B08F */  lw         $s0, 0x10($sp)
    /* 2EB4C 8004033C 0800E003 */  jr         $ra
    /* 2EB50 80040340 2800BD27 */   addiu     $sp, $sp, 0x28
endlabel func_800402D0
