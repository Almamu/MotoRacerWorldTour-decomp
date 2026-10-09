nonmatching func_800487D0, 0x54

glabel func_800487D0
    /* 36FE0 800487D0 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 36FE4 800487D4 1800B0AF */  sw         $s0, 0x18($sp)
    /* 36FE8 800487D8 21808000 */  addu       $s0, $a0, $zero
    /* 36FEC 800487DC 0D80043C */  lui        $a0, %hi(D_800CABC0)
    /* 36FF0 800487E0 C0AB8424 */  addiu      $a0, $a0, %lo(D_800CABC0)
    /* 36FF4 800487E4 21280000 */  addu       $a1, $zero, $zero
    /* 36FF8 800487E8 FFFF0624 */  addiu      $a2, $zero, -0x1
    /* 36FFC 800487EC 01000724 */  addiu      $a3, $zero, 0x1
    /* 37000 800487F0 1C00BFAF */  sw         $ra, 0x1C($sp)
    /* 37004 800487F4 5A14010C */  jal        func_80045168
    /* 37008 800487F8 1000B0AF */   sw        $s0, 0x10($sp)
    /* 3700C 800487FC A400048E */  lw         $a0, 0xA4($s0)
    /* 37010 80048800 00000000 */  nop
    /* 37014 80048804 03008010 */  beqz       $a0, .L80048814
    /* 37018 80048808 01000524 */   addiu     $a1, $zero, 0x1
    /* 3701C 8004880C CDED000C */  jal        func_8003B734
    /* 37020 80048810 01000624 */   addiu     $a2, $zero, 0x1
  .L80048814:
    /* 37024 80048814 1C00BF8F */  lw         $ra, 0x1C($sp)
    /* 37028 80048818 1800B08F */  lw         $s0, 0x18($sp)
    /* 3702C 8004881C 0800E003 */  jr         $ra
    /* 37030 80048820 2000BD27 */   addiu     $sp, $sp, 0x20
endlabel func_800487D0
