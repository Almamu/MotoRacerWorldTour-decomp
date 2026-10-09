nonmatching func_8001184C, 0x4C

glabel func_8001184C
    /* 5C 8001184C D0FFBD27 */  addiu      $sp, $sp, -0x30
    /* 60 80011850 2800B0AF */  sw         $s0, 0x28($sp)
    /* 64 80011854 2C011024 */  addiu      $s0, $zero, 0x12C
    /* 68 80011858 1A460008 */  j          .L80011868
    /* 6C 8001185C 2C00BFAF */   sw        $ra, 0x2C($sp)
  .L80011860:
    /* 70 80011860 07000012 */  beqz       $s0, .L80011880
    /* 74 80011864 00000000 */   nop
  .L80011868:
    /* 78 80011868 B4AA020C */  jal        VSync
    /* 7C 8001186C 21200000 */   addu      $a0, $zero, $zero
    /* 80 80011870 E946000C */  jal        func_80011BA4
    /* 84 80011874 FFFF1026 */   addiu     $s0, $s0, -0x1
    /* 88 80011878 F9FF4014 */  bnez       $v0, .L80011860
    /* 8C 8001187C 00000000 */   nop
  .L80011880:
    /* 90 80011880 B4AA020C */  jal        VSync
    /* 94 80011884 1E000424 */   addiu     $a0, $zero, 0x1E
    /* 98 80011888 2C00BF8F */  lw         $ra, 0x2C($sp)
    /* 9C 8001188C 2800B08F */  lw         $s0, 0x28($sp)
    /* A0 80011890 0800E003 */  jr         $ra
    /* A4 80011894 3000BD27 */   addiu     $sp, $sp, 0x30
endlabel func_8001184C
