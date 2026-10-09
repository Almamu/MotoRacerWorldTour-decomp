nonmatching func_8013D2D8, 0x80

glabel func_8013D2D8
    /* A7A4 8013D2D8 03008014 */  bnez       $a0, .L8013D2E8
    /* A7A8 8013D2DC F0FFBD27 */   addiu     $sp, $sp, -0x10
    /* A7AC 8013D2E0 D4F40408 */  j          .L8013D350
    /* A7B0 8013D2E4 21100000 */   addu      $v0, $zero, $zero
  .L8013D2E8:
    /* A7B4 8013D2E8 00008590 */  lbu        $a1, 0x0($a0)
    /* A7B8 8013D2EC 00000000 */  nop
    /* A7BC 8013D2F0 C2280500 */  srl        $a1, $a1, 3
    /* A7C0 8013D2F4 0000A5AF */  sw         $a1, 0x0($sp)
    /* A7C4 8013D2F8 04008684 */  lh         $a2, 0x4($a0)
    /* A7C8 8013D2FC 00000000 */  nop
    /* A7CC 8013D300 23300600 */  negu       $a2, $a2
    /* A7D0 8013D304 FF00C630 */  andi       $a2, $a2, 0xFF
    /* A7D4 8013D308 C3300600 */  sra        $a2, $a2, 3
    /* A7D8 8013D30C 0800A6AF */  sw         $a2, 0x8($sp)
    /* A7DC 8013D310 02008290 */  lbu        $v0, 0x2($a0)
    /* A7E0 8013D314 802A0500 */  sll        $a1, $a1, 10
    /* A7E4 8013D318 C2100200 */  srl        $v0, $v0, 3
    /* A7E8 8013D31C 0400A2AF */  sw         $v0, 0x4($sp)
    /* A7EC 8013D320 C0130200 */  sll        $v0, $v0, 15
    /* A7F0 8013D324 06008384 */  lh         $v1, 0x6($a0)
    /* A7F4 8013D328 00E2043C */  lui        $a0, (0xE2000000 >> 16)
    /* A7F8 8013D32C 2528A400 */  or         $a1, $a1, $a0
    /* A7FC 8013D330 25104500 */  or         $v0, $v0, $a1
    /* A800 8013D334 23180300 */  negu       $v1, $v1
    /* A804 8013D338 FF006330 */  andi       $v1, $v1, 0xFF
    /* A808 8013D33C C3180300 */  sra        $v1, $v1, 3
    /* A80C 8013D340 40210300 */  sll        $a0, $v1, 5
    /* A810 8013D344 25104400 */  or         $v0, $v0, $a0
    /* A814 8013D348 25104600 */  or         $v0, $v0, $a2
    /* A818 8013D34C 0C00A3AF */  sw         $v1, 0xC($sp)
  .L8013D350:
    /* A81C 8013D350 0800E003 */  jr         $ra
    /* A820 8013D354 1000BD27 */   addiu     $sp, $sp, 0x10
endlabel func_8013D2D8
