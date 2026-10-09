nonmatching func_800AF048, 0x64

glabel func_800AF048
    /* 9D858 800AF048 0E80023C */  lui        $v0, %hi(D_800DE360)
    /* 9D85C 800AF04C 60E3428C */  lw         $v0, %lo(D_800DE360)($v0)
    /* 9D860 800AF050 00000000 */  nop
    /* 9D864 800AF054 13004018 */  blez       $v0, .L800AF0A4
    /* 9D868 800AF058 21580000 */   addu      $t3, $zero, $zero
    /* 9D86C 800AF05C 21604000 */  addu       $t4, $v0, $zero
    /* 9D870 800AF060 0E80023C */  lui        $v0, %hi(D_800DE3F0)
    /* 9D874 800AF064 F0E34224 */  addiu      $v0, $v0, %lo(D_800DE3F0)
    /* 9D878 800AF068 0C004A24 */  addiu      $t2, $v0, 0xC
    /* 9D87C 800AF06C 08004924 */  addiu      $t1, $v0, 0x8
    /* 9D880 800AF070 04004824 */  addiu      $t0, $v0, 0x4
    /* 9D884 800AF074 21184000 */  addu       $v1, $v0, $zero
  .L800AF078:
    /* 9D888 800AF078 000064AC */  sw         $a0, 0x0($v1)
    /* 9D88C 800AF07C 000005AD */  sw         $a1, 0x0($t0)
    /* 9D890 800AF080 000026AD */  sw         $a2, 0x0($t1)
    /* 9D894 800AF084 000047AD */  sw         $a3, 0x0($t2)
    /* 9D898 800AF088 10004A25 */  addiu      $t2, $t2, 0x10
    /* 9D89C 800AF08C 10002925 */  addiu      $t1, $t1, 0x10
    /* 9D8A0 800AF090 10000825 */  addiu      $t0, $t0, 0x10
    /* 9D8A4 800AF094 01006B25 */  addiu      $t3, $t3, 0x1
    /* 9D8A8 800AF098 2A106C01 */  slt        $v0, $t3, $t4
    /* 9D8AC 800AF09C F6FF4014 */  bnez       $v0, .L800AF078
    /* 9D8B0 800AF0A0 10006324 */   addiu     $v1, $v1, 0x10
  .L800AF0A4:
    /* 9D8B4 800AF0A4 0800E003 */  jr         $ra
    /* 9D8B8 800AF0A8 01000224 */   addiu     $v0, $zero, 0x1
endlabel func_800AF048
