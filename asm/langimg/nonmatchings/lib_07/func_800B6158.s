nonmatching func_800B6158, 0x30

glabel func_800B6158
    /* A4968 800B6158 09008010 */  beqz       $a0, .L800B6180
    /* A496C 800B615C 21100000 */   addu      $v0, $zero, $zero
    /* A4970 800B6160 0300C01C */  bgtz       $a2, .L800B6170
    /* A4974 800B6164 21108000 */   addu      $v0, $a0, $zero
    /* A4978 800B6168 60D80208 */  j          .L800B6180
    /* A497C 800B616C 21100000 */   addu      $v0, $zero, $zero
  .L800B6170:
    /* A4980 800B6170 000085A0 */  sb         $a1, 0x0($a0)
    /* A4984 800B6174 FFFFC624 */  addiu      $a2, $a2, -0x1
    /* A4988 800B6178 FDFFC01C */  bgtz       $a2, .L800B6170
    /* A498C 800B617C 01008424 */   addiu     $a0, $a0, 0x1
  .L800B6180:
    /* A4990 800B6180 0800E003 */  jr         $ra
    /* A4994 800B6184 00000000 */   nop
endlabel func_800B6158
