nonmatching func_800B6ED8, 0x50

glabel func_800B6ED8
    /* A56E8 800B6ED8 11008010 */  beqz       $a0, .L800B6F20
    /* A56EC 800B6EDC 21100000 */   addu      $v0, $zero, $zero
    /* A56F0 800B6EE0 0F00C018 */  blez       $a2, .L800B6F20
    /* A56F4 800B6EE4 00000000 */   nop
    /* A56F8 800B6EE8 BEDB0208 */  j          .L800B6EF8
    /* A56FC 800B6EEC FFFFC624 */   addiu     $a2, $a2, -0x1
  .L800B6EF0:
    /* A5700 800B6EF0 C8DB0208 */  j          .L800B6F20
    /* A5704 800B6EF4 FFFF8224 */   addiu     $v0, $a0, -0x1
  .L800B6EF8:
    /* A5708 800B6EF8 0900C004 */  bltz       $a2, .L800B6F20
    /* A570C 800B6EFC 21100000 */   addu      $v0, $zero, $zero
    /* A5710 800B6F00 FF00A530 */  andi       $a1, $a1, 0xFF
  .L800B6F04:
    /* A5714 800B6F04 00008290 */  lbu        $v0, 0x0($a0)
    /* A5718 800B6F08 00000000 */  nop
    /* A571C 800B6F0C F8FF4510 */  beq        $v0, $a1, .L800B6EF0
    /* A5720 800B6F10 01008424 */   addiu     $a0, $a0, 0x1
    /* A5724 800B6F14 FFFFC624 */  addiu      $a2, $a2, -0x1
    /* A5728 800B6F18 FAFFC104 */  bgez       $a2, .L800B6F04
    /* A572C 800B6F1C 21100000 */   addu      $v0, $zero, $zero
  .L800B6F20:
    /* A5730 800B6F20 0800E003 */  jr         $ra
    /* A5734 800B6F24 00000000 */   nop
endlabel func_800B6ED8
