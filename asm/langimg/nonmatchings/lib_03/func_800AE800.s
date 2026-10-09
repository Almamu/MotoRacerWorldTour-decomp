nonmatching func_800AE800, 0xA8

glabel func_800AE800
    /* 9D010 800AE800 D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* 9D014 800AE804 1400B1AF */  sw         $s1, 0x14($sp)
    /* 9D018 800AE808 64001124 */  addiu      $s1, $zero, 0x64
    /* 9D01C 800AE80C 0E80023C */  lui        $v0, %hi(D_800DE358)
    /* 9D020 800AE810 58E34224 */  addiu      $v0, $v0, %lo(D_800DE358)
    /* 9D024 800AE814 80200400 */  sll        $a0, $a0, 2
    /* 9D028 800AE818 1800B2AF */  sw         $s2, 0x18($sp)
    /* 9D02C 800AE81C 21908200 */  addu       $s2, $a0, $v0
    /* 9D030 800AE820 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* 9D034 800AE824 2198A000 */  addu       $s3, $a1, $zero
    /* 9D038 800AE828 02000524 */  addiu      $a1, $zero, 0x2
    /* 9D03C 800AE82C 2000BFAF */  sw         $ra, 0x20($sp)
    /* 9D040 800AE830 1000B0AF */  sw         $s0, 0x10($sp)
    /* 9D044 800AE834 0000448E */  lw         $a0, 0x0($s2)
    /* 9D048 800AE838 4FC1020C */  jal        PadInfoMode
    /* 9D04C 800AE83C 21300000 */   addu      $a2, $zero, $zero
    /* 9D050 800AE840 21804000 */  addu       $s0, $v0, $zero
    /* 9D054 800AE844 11000012 */  beqz       $s0, .L800AE88C
    /* 9D058 800AE848 21100002 */   addu      $v0, $s0, $zero
    /* 9D05C 800AE84C 1CBA0208 */  j          .L800AE870
    /* 9D060 800AE850 00000000 */   nop
  .L800AE854:
    /* 9D064 800AE854 B4AA020C */  jal        VSync
    /* 9D068 800AE858 0A000424 */   addiu     $a0, $zero, 0xA
    /* 9D06C 800AE85C FFFF3126 */  addiu      $s1, $s1, -0x1
    /* 9D070 800AE860 03002106 */  bgez       $s1, .L800AE870
    /* 9D074 800AE864 00000000 */   nop
    /* 9D078 800AE868 22BA0208 */  j          .L800AE888
    /* 9D07C 800AE86C FFFF1024 */   addiu     $s0, $zero, -0x1
  .L800AE870:
    /* 9D080 800AE870 0000448E */  lw         $a0, 0x0($s2)
    /* 9D084 800AE874 21286002 */  addu       $a1, $s3, $zero
    /* 9D088 800AE878 D0C1020C */  jal        PadSetMainMode
    /* 9D08C 800AE87C 21300000 */   addu      $a2, $zero, $zero
    /* 9D090 800AE880 F4FF4010 */  beqz       $v0, .L800AE854
    /* 9D094 800AE884 00000000 */   nop
  .L800AE888:
    /* 9D098 800AE888 21100002 */  addu       $v0, $s0, $zero
  .L800AE88C:
    /* 9D09C 800AE88C 2000BF8F */  lw         $ra, 0x20($sp)
    /* 9D0A0 800AE890 1C00B38F */  lw         $s3, 0x1C($sp)
    /* 9D0A4 800AE894 1800B28F */  lw         $s2, 0x18($sp)
    /* 9D0A8 800AE898 1400B18F */  lw         $s1, 0x14($sp)
    /* 9D0AC 800AE89C 1000B08F */  lw         $s0, 0x10($sp)
    /* 9D0B0 800AE8A0 0800E003 */  jr         $ra
    /* 9D0B4 800AE8A4 2800BD27 */   addiu     $sp, $sp, 0x28
endlabel func_800AE800
