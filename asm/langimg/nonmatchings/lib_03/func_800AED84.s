nonmatching func_800AED84, 0x3C

glabel func_800AED84
    /* 9D594 800AED84 B0000A24 */  addiu      $t2, $zero, 0xB0
    /* 9D598 800AED88 08004001 */  jr         $t2
    /* 9D59C 800AED8C 4C000924 */   addiu     $t1, $zero, 0x4C
    /* 9D5A0 800AED90 00000000 */  nop
    /* 9D5A4 800AED94 0A006F94 */  lhu        $t7, 0xA($v1)
    /* 9D5A8 800AED98 0000083C */  lui        $t0, (0x0 >> 16)
    /* 9D5AC 800AED9C 25C0E201 */  or         $t8, $t7, $v0
    /* 9D5B0 800AEDA0 12001937 */  ori        $t9, $t8, 0x12
    /* 9D5B4 800AEDA4 0A0079A4 */  sh         $t9, 0xA($v1)
    /* 9D5B8 800AEDA8 28000824 */  addiu      $t0, $zero, 0x28
  .L800AEDAC:
    /* 9D5BC 800AEDAC FFFF0825 */  addiu      $t0, $t0, -0x1
    /* 9D5C0 800AEDB0 FEFF0015 */  bnez       $t0, .L800AEDAC
    /* 9D5C4 800AEDB4 00000000 */   nop
    /* 9D5C8 800AEDB8 0800E003 */  jr         $ra
    /* 9D5CC 800AEDBC 00000000 */   nop
endlabel func_800AED84
