nonmatching func_80089AA4, 0x54

glabel func_80089AA4
    /* 782B4 80089AA4 21308000 */  addu       $a2, $a0, $zero
    /* 782B8 80089AA8 0C00C78C */  lw         $a3, 0xC($a2)
    /* 782BC 80089AAC 0400C294 */  lhu        $v0, 0x4($a2)
    /* 782C0 80089AB0 00000000 */  nop
    /* 782C4 80089AB4 0200C2A4 */  sh         $v0, 0x2($a2)
    /* 782C8 80089AB8 00140200 */  sll        $v0, $v0, 16
    /* 782CC 80089ABC 0C004018 */  blez       $v0, .L80089AF0
    /* 782D0 80089AC0 21280000 */   addu      $a1, $zero, $zero
  .L80089AC4:
    /* 782D4 80089AC4 80180500 */  sll        $v1, $a1, 2
    /* 782D8 80089AC8 0800C28C */  lw         $v0, 0x8($a2)
    /* 782DC 80089ACC 0100A524 */  addiu      $a1, $a1, 0x1
    /* 782E0 80089AD0 21186200 */  addu       $v1, $v1, $v0
    /* 782E4 80089AD4 000067AC */  sw         $a3, 0x0($v1)
    /* 782E8 80089AD8 0000C484 */  lh         $a0, 0x0($a2)
    /* 782EC 80089ADC 0400C284 */  lh         $v0, 0x4($a2)
    /* 782F0 80089AE0 00000000 */  nop
    /* 782F4 80089AE4 2A10A200 */  slt        $v0, $a1, $v0
    /* 782F8 80089AE8 F6FF4014 */  bnez       $v0, .L80089AC4
    /* 782FC 80089AEC 2138E400 */   addu      $a3, $a3, $a0
  .L80089AF0:
    /* 78300 80089AF0 0800E003 */  jr         $ra
    /* 78304 80089AF4 00000000 */   nop
endlabel func_80089AA4
