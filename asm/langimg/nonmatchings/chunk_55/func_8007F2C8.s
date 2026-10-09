nonmatching func_8007F2C8, 0x74

glabel func_8007F2C8
    /* 6DAD8 8007F2C8 21400000 */  addu       $t0, $zero, $zero
    /* 6DADC 8007F2CC FF00A530 */  andi       $a1, $a1, 0xFF
    /* 6DAE0 8007F2D0 FF00C630 */  andi       $a2, $a2, 0xFF
    /* 6DAE4 8007F2D4 08008294 */  lhu        $v0, 0x8($a0)
    /* 6DAE8 8007F2D8 00000000 */  nop
    /* 6DAEC 8007F2DC 15004010 */  beqz       $v0, .L8007F334
    /* 6DAF0 8007F2E0 18008324 */   addiu     $v1, $a0, 0x18
    /* 6DAF4 8007F2E4 21484000 */  addu       $t1, $v0, $zero
    /* 6DAF8 8007F2E8 1A008724 */  addiu      $a3, $a0, 0x1A
    /* 6DAFC 8007F2EC 19008424 */  addiu      $a0, $a0, 0x19
  .L8007F2F0:
    /* 6DB00 8007F2F0 00006280 */  lb         $v0, 0x0($v1)
    /* 6DB04 8007F2F4 00000000 */  nop
    /* 6DB08 8007F2F8 08004514 */  bne        $v0, $a1, .L8007F31C
    /* 6DB0C 8007F2FC 00000000 */   nop
    /* 6DB10 8007F300 00008280 */  lb         $v0, 0x0($a0)
    /* 6DB14 8007F304 00000000 */  nop
    /* 6DB18 8007F308 04004614 */  bne        $v0, $a2, .L8007F31C
    /* 6DB1C 8007F30C 00000000 */   nop
    /* 6DB20 8007F310 0000E284 */  lh         $v0, 0x0($a3)
    /* 6DB24 8007F314 0800E003 */  jr         $ra
    /* 6DB28 8007F318 00000000 */   nop
  .L8007F31C:
    /* 6DB2C 8007F31C 0400E724 */  addiu      $a3, $a3, 0x4
    /* 6DB30 8007F320 04008424 */  addiu      $a0, $a0, 0x4
    /* 6DB34 8007F324 01000825 */  addiu      $t0, $t0, 0x1
    /* 6DB38 8007F328 2A100901 */  slt        $v0, $t0, $t1
    /* 6DB3C 8007F32C F0FF4014 */  bnez       $v0, .L8007F2F0
    /* 6DB40 8007F330 04006324 */   addiu     $v1, $v1, 0x4
  .L8007F334:
    /* 6DB44 8007F334 0800E003 */  jr         $ra
    /* 6DB48 8007F338 21100000 */   addu      $v0, $zero, $zero
endlabel func_8007F2C8
