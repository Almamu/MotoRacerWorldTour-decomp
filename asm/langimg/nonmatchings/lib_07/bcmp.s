nonmatching bcmp, 0x4C

glabel bcmp
    /* A48D8 800B60C8 39D80208 */  j          .L800B60E4
    /* A48DC 800B60CC 00000000 */   nop
  .L800B60D0:
    /* A48E0 800B60D0 FFFFC624 */  addiu      $a2, $a2, -0x1
    /* A48E4 800B60D4 0300C01C */  bgtz       $a2, .L800B60E4
    /* A48E8 800B60D8 0100A524 */   addiu     $a1, $a1, 0x1
    /* A48EC 800B60DC 43D80208 */  j          .L800B610C
    /* A48F0 800B60E0 21100000 */   addu      $v0, $zero, $zero
  .L800B60E4:
    /* A48F4 800B60E4 00008390 */  lbu        $v1, 0x0($a0)
    /* A48F8 800B60E8 0000A290 */  lbu        $v0, 0x0($a1)
    /* A48FC 800B60EC 00000000 */  nop
    /* A4900 800B60F0 F7FF6210 */  beq        $v1, $v0, .L800B60D0
    /* A4904 800B60F4 01008424 */   addiu     $a0, $a0, 0x1
    /* A4908 800B60F8 FFFF8424 */  addiu      $a0, $a0, -0x1
    /* A490C 800B60FC 00008390 */  lbu        $v1, 0x0($a0)
    /* A4910 800B6100 0000A290 */  lbu        $v0, 0x0($a1)
    /* A4914 800B6104 00000000 */  nop
    /* A4918 800B6108 23106200 */  subu       $v0, $v1, $v0
  .L800B610C:
    /* A491C 800B610C 0800E003 */  jr         $ra
    /* A4920 800B6110 00000000 */   nop
endlabel bcmp
    /* A4924 800B6114 00000000 */  nop
