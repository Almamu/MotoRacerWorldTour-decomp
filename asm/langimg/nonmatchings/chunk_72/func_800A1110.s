nonmatching func_800A1110, 0x60

glabel func_800A1110
    /* 8F920 800A1110 21308000 */  addu       $a2, $a0, $zero
    /* 8F924 800A1114 0D80023C */  lui        $v0, %hi(D_800C9D60)
    /* 8F928 800A1118 9416C0AC */  sw         $zero, 0x1694($a2)
    /* 8F92C 800A111C 609D458C */  lw         $a1, %lo(D_800C9D60)($v0)
    /* 8F930 800A1120 FFFF0324 */  addiu      $v1, $zero, -0x1
    /* 8F934 800A1124 0F00A310 */  beq        $a1, $v1, .L800A1164
    /* 8F938 800A1128 00000000 */   nop
    /* 8F93C 800A112C 0C00A004 */  bltz       $a1, .L800A1160
    /* 8F940 800A1130 21100000 */   addu      $v0, $zero, $zero
    /* 8F944 800A1134 0D80023C */  lui        $v0, %hi(D_800C9EEC)
    /* 8F948 800A1138 EC9E448C */  lw         $a0, %lo(D_800C9EEC)($v0)
    /* 8F94C 800A113C 00000000 */  nop
    /* 8F950 800A1140 0000838C */  lw         $v1, 0x0($a0)
    /* 8F954 800A1144 00000000 */  nop
    /* 8F958 800A1148 FFFF6324 */  addiu      $v1, $v1, -0x1
    /* 8F95C 800A114C 21106000 */  addu       $v0, $v1, $zero
    /* 8F960 800A1150 2A186500 */  slt        $v1, $v1, $a1
    /* 8F964 800A1154 02006014 */  bnez       $v1, .L800A1160
    /* 8F968 800A1158 00000000 */   nop
    /* 8F96C 800A115C 2110A000 */  addu       $v0, $a1, $zero
  .L800A1160:
    /* 8F970 800A1160 9416C2AC */  sw         $v0, 0x1694($a2)
  .L800A1164:
    /* 8F974 800A1164 C816C0AC */  sw         $zero, 0x16C8($a2)
    /* 8F978 800A1168 0800E003 */  jr         $ra
    /* 8F97C 800A116C 01000224 */   addiu     $v0, $zero, 0x1
endlabel func_800A1110
