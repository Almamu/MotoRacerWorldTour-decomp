nonmatching func_800B62D8, 0x3C

glabel func_800B62D8
    /* A4AE8 800B62D8 21408000 */  addu       $t0, $a0, $zero
    /* A4AEC 800B62DC 2148A000 */  addu       $t1, $a1, $zero
    /* A4AF0 800B62E0 0A00C010 */  beqz       $a2, .L800B630C
    /* A4AF4 800B62E4 21380000 */   addu      $a3, $zero, $zero
  .L800B62E8:
    /* A4AF8 800B62E8 21180701 */  addu       $v1, $t0, $a3
    /* A4AFC 800B62EC 21202701 */  addu       $a0, $t1, $a3
    /* A4B00 800B62F0 00006590 */  lbu        $a1, 0x0($v1)
    /* A4B04 800B62F4 00008290 */  lbu        $v0, 0x0($a0)
    /* A4B08 800B62F8 0100E724 */  addiu      $a3, $a3, 0x1
    /* A4B0C 800B62FC 000062A0 */  sb         $v0, 0x0($v1)
    /* A4B10 800B6300 2B10E600 */  sltu       $v0, $a3, $a2
    /* A4B14 800B6304 F8FF4014 */  bnez       $v0, .L800B62E8
    /* A4B18 800B6308 000085A0 */   sb        $a1, 0x0($a0)
  .L800B630C:
    /* A4B1C 800B630C 0800E003 */  jr         $ra
    /* A4B20 800B6310 00000000 */   nop
endlabel func_800B62D8
    /* A4B24 800B6314 00000000 */  nop
