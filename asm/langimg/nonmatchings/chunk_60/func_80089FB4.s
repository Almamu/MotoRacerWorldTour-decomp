nonmatching func_80089FB4, 0x68

glabel func_80089FB4
    /* 787C4 80089FB4 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 787C8 80089FB8 1000B0AF */  sw         $s0, 0x10($sp)
    /* 787CC 80089FBC 21808000 */  addu       $s0, $a0, $zero
    /* 787D0 80089FC0 1400BFAF */  sw         $ra, 0x14($sp)
    /* 787D4 80089FC4 0400048E */  lw         $a0, 0x4($s0)
    /* 787D8 80089FC8 00000000 */  nop
    /* 787DC 80089FCC 04008010 */  beqz       $a0, .L80089FE0
    /* 787E0 80089FD0 00000000 */   nop
    /* 787E4 80089FD4 59D5020C */  jal        func_800B5564
    /* 787E8 80089FD8 00000000 */   nop
    /* 787EC 80089FDC 040000AE */  sw         $zero, 0x4($s0)
  .L80089FE0:
    /* 787F0 80089FE0 0800048E */  lw         $a0, 0x8($s0)
    /* 787F4 80089FE4 00000000 */  nop
    /* 787F8 80089FE8 04008010 */  beqz       $a0, .L80089FFC
    /* 787FC 80089FEC 00000000 */   nop
    /* 78800 80089FF0 59D5020C */  jal        func_800B5564
    /* 78804 80089FF4 00000000 */   nop
    /* 78808 80089FF8 080000AE */  sw         $zero, 0x8($s0)
  .L80089FFC:
    /* 7880C 80089FFC 21200002 */  addu       $a0, $s0, $zero
    /* 78810 8008A000 21280000 */  addu       $a1, $zero, $zero
    /* 78814 8008A004 56D8020C */  jal        memset
    /* 78818 8008A008 10000624 */   addiu     $a2, $zero, 0x10
    /* 7881C 8008A00C 1400BF8F */  lw         $ra, 0x14($sp)
    /* 78820 8008A010 1000B08F */  lw         $s0, 0x10($sp)
    /* 78824 8008A014 0800E003 */  jr         $ra
    /* 78828 8008A018 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_80089FB4
