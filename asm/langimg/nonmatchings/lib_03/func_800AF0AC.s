nonmatching func_800AF0AC, 0x64

glabel func_800AF0AC
    /* 9D8BC 800AF0AC 0E80023C */  lui        $v0, %hi(D_800DE360)
    /* 9D8C0 800AF0B0 60E3428C */  lw         $v0, %lo(D_800DE360)($v0)
    /* 9D8C4 800AF0B4 00000000 */  nop
    /* 9D8C8 800AF0B8 13004018 */  blez       $v0, .L800AF108
    /* 9D8CC 800AF0BC 21580000 */   addu      $t3, $zero, $zero
    /* 9D8D0 800AF0C0 21604000 */  addu       $t4, $v0, $zero
    /* 9D8D4 800AF0C4 0E80023C */  lui        $v0, %hi(D_800DE398)
    /* 9D8D8 800AF0C8 98E34224 */  addiu      $v0, $v0, %lo(D_800DE398)
    /* 9D8DC 800AF0CC 0C004A24 */  addiu      $t2, $v0, 0xC
    /* 9D8E0 800AF0D0 08004924 */  addiu      $t1, $v0, 0x8
    /* 9D8E4 800AF0D4 04004824 */  addiu      $t0, $v0, 0x4
    /* 9D8E8 800AF0D8 21184000 */  addu       $v1, $v0, $zero
  .L800AF0DC:
    /* 9D8EC 800AF0DC 000064AC */  sw         $a0, 0x0($v1)
    /* 9D8F0 800AF0E0 000005AD */  sw         $a1, 0x0($t0)
    /* 9D8F4 800AF0E4 000026AD */  sw         $a2, 0x0($t1)
    /* 9D8F8 800AF0E8 000047AD */  sw         $a3, 0x0($t2)
    /* 9D8FC 800AF0EC 10004A25 */  addiu      $t2, $t2, 0x10
    /* 9D900 800AF0F0 10002925 */  addiu      $t1, $t1, 0x10
    /* 9D904 800AF0F4 10000825 */  addiu      $t0, $t0, 0x10
    /* 9D908 800AF0F8 01006B25 */  addiu      $t3, $t3, 0x1
    /* 9D90C 800AF0FC 2A106C01 */  slt        $v0, $t3, $t4
    /* 9D910 800AF100 F6FF4014 */  bnez       $v0, .L800AF0DC
    /* 9D914 800AF104 10006324 */   addiu     $v1, $v1, 0x10
  .L800AF108:
    /* 9D918 800AF108 0800E003 */  jr         $ra
    /* 9D91C 800AF10C 01000224 */   addiu     $v0, $zero, 0x1
endlabel func_800AF0AC
