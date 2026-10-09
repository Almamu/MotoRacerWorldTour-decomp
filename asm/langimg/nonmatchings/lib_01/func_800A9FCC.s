nonmatching func_800A9FCC, 0xD0

glabel func_800A9FCC
    /* 987DC 800A9FCC E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 987E0 800A9FD0 1000B0AF */  sw         $s0, 0x10($sp)
    /* 987E4 800A9FD4 0C80103C */  lui        $s0, %hi(D_800BD340)
    /* 987E8 800A9FD8 40D31026 */  addiu      $s0, $s0, %lo(D_800BD340)
    /* 987EC 800A9FDC 1400BFAF */  sw         $ra, 0x14($sp)
    /* 987F0 800A9FE0 1000028E */  lw         $v0, 0x10($s0)
    /* 987F4 800A9FE4 0800038E */  lw         $v1, 0x8($s0)
    /* 987F8 800A9FE8 80100200 */  sll        $v0, $v0, 2
    /* 987FC 800A9FEC 21186200 */  addu       $v1, $v1, $v0
    /* 98800 800A9FF0 080003AE */  sw         $v1, 0x8($s0)
    /* 98804 800A9FF4 1400028E */  lw         $v0, 0x14($s0)
    /* 98808 800A9FF8 00000000 */  nop
    /* 9880C 800A9FFC FFFF4224 */  addiu      $v0, $v0, -0x1
    /* 98810 800AA000 140002AE */  sw         $v0, 0x14($s0)
    /* 98814 800AA004 2000028E */  lw         $v0, 0x20($s0)
    /* 98818 800AA008 00000000 */  nop
    /* 9881C 800AA00C 01004224 */  addiu      $v0, $v0, 0x1
    /* 98820 800AA010 200002AE */  sw         $v0, 0x20($s0)
    /* 98824 800AA014 1400028E */  lw         $v0, 0x14($s0)
    /* 98828 800AA018 00000000 */  nop
    /* 9882C 800AA01C 1B004014 */  bnez       $v0, .L800AA08C
    /* 98830 800AA020 00000000 */   nop
    /* 98834 800AA024 2C00048E */  lw         $a0, 0x2C($s0)
    /* 98838 800AA028 AA9D020C */  jal        func_800A76A8
    /* 9883C 800AA02C 00000000 */   nop
    /* 98840 800AA030 0C80023C */  lui        $v0, %hi(D_800BCF84)
    /* 98844 800AA034 84CF428C */  lw         $v0, %lo(D_800BCF84)($v0)
    /* 98848 800AA038 00000000 */  nop
    /* 9884C 800AA03C 01004230 */  andi       $v0, $v0, 0x1
    /* 98850 800AA040 04004010 */  beqz       $v0, .L800AA054
    /* 98854 800AA044 00000000 */   nop
    /* 98858 800AA048 3000048E */  lw         $a0, 0x30($s0)
    /* 9885C 800AA04C B69E020C */  jal        func_800A7AD8
    /* 98860 800AA050 00000000 */   nop
  .L800AA054:
    /* 98864 800AA054 0B80043C */  lui        $a0, %hi(func_800A9D24)
    /* 98868 800AA058 A59D020C */  jal        func_800A7694
    /* 9886C 800AA05C 249D8424 */   addiu     $a0, $a0, %lo(func_800A9D24)
    /* 98870 800AA060 09000424 */  addiu      $a0, $zero, 0x9
    /* 98874 800AA064 FE9D020C */  jal        func_800A77F8
    /* 98878 800AA068 21280000 */   addu      $a1, $zero, $zero
    /* 9887C 800AA06C 0C80033C */  lui        $v1, %hi(D_800BCF80)
    /* 98880 800AA070 80CF638C */  lw         $v1, %lo(D_800BCF80)($v1)
    /* 98884 800AA074 01000224 */  addiu      $v0, $zero, 0x1
    /* 98888 800AA078 04006010 */  beqz       $v1, .L800AA08C
    /* 9888C 800AA07C 240002AE */   sw        $v0, 0x24($s0)
    /* 98890 800AA080 3400058E */  lw         $a1, 0x34($s0)
    /* 98894 800AA084 09F86000 */  jalr       $v1
    /* 98898 800AA088 02000424 */   addiu     $a0, $zero, 0x2
  .L800AA08C:
    /* 9889C 800AA08C 1400BF8F */  lw         $ra, 0x14($sp)
    /* 988A0 800AA090 1000B08F */  lw         $s0, 0x10($sp)
    /* 988A4 800AA094 0800E003 */  jr         $ra
    /* 988A8 800AA098 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_800A9FCC
