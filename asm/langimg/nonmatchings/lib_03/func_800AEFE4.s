nonmatching func_800AEFE4, 0x64

glabel func_800AEFE4
    /* 9D7F4 800AEFE4 0E80023C */  lui        $v0, %hi(D_800DE360)
    /* 9D7F8 800AEFE8 60E3428C */  lw         $v0, %lo(D_800DE360)($v0)
    /* 9D7FC 800AEFEC 00000000 */  nop
    /* 9D800 800AEFF0 13004018 */  blez       $v0, .L800AF040
    /* 9D804 800AEFF4 21580000 */   addu      $t3, $zero, $zero
    /* 9D808 800AEFF8 21604000 */  addu       $t4, $v0, $zero
    /* 9D80C 800AEFFC 0E80023C */  lui        $v0, %hi(D_800DE3B8)
    /* 9D810 800AF000 B8E34224 */  addiu      $v0, $v0, %lo(D_800DE3B8)
    /* 9D814 800AF004 0C004A24 */  addiu      $t2, $v0, 0xC
    /* 9D818 800AF008 08004924 */  addiu      $t1, $v0, 0x8
    /* 9D81C 800AF00C 04004824 */  addiu      $t0, $v0, 0x4
    /* 9D820 800AF010 21184000 */  addu       $v1, $v0, $zero
  .L800AF014:
    /* 9D824 800AF014 000064AC */  sw         $a0, 0x0($v1)
    /* 9D828 800AF018 000005AD */  sw         $a1, 0x0($t0)
    /* 9D82C 800AF01C 000026AD */  sw         $a2, 0x0($t1)
    /* 9D830 800AF020 000047AD */  sw         $a3, 0x0($t2)
    /* 9D834 800AF024 10004A25 */  addiu      $t2, $t2, 0x10
    /* 9D838 800AF028 10002925 */  addiu      $t1, $t1, 0x10
    /* 9D83C 800AF02C 10000825 */  addiu      $t0, $t0, 0x10
    /* 9D840 800AF030 01006B25 */  addiu      $t3, $t3, 0x1
    /* 9D844 800AF034 2A106C01 */  slt        $v0, $t3, $t4
    /* 9D848 800AF038 F6FF4014 */  bnez       $v0, .L800AF014
    /* 9D84C 800AF03C 10006324 */   addiu     $v1, $v1, 0x10
  .L800AF040:
    /* 9D850 800AF040 0800E003 */  jr         $ra
    /* 9D854 800AF044 01000224 */   addiu     $v0, $zero, 0x1
endlabel func_800AEFE4
