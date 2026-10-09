nonmatching func_800A0558, 0x2C

glabel func_800A0558
    /* 8ED68 800A0558 21208600 */  addu       $a0, $a0, $a2
    /* 8ED6C 800A055C 0700C010 */  beqz       $a2, .L800A057C
    /* 8ED70 800A0560 2128A600 */   addu      $a1, $a1, $a2
  .L800A0564:
    /* 8ED74 800A0564 FFFF8424 */  addiu      $a0, $a0, -0x1
    /* 8ED78 800A0568 FFFFA524 */  addiu      $a1, $a1, -0x1
    /* 8ED7C 800A056C 0000A290 */  lbu        $v0, 0x0($a1)
    /* 8ED80 800A0570 FFFFC624 */  addiu      $a2, $a2, -0x1
    /* 8ED84 800A0574 FBFFC014 */  bnez       $a2, .L800A0564
    /* 8ED88 800A0578 000082A0 */   sb        $v0, 0x0($a0)
  .L800A057C:
    /* 8ED8C 800A057C 0800E003 */  jr         $ra
    /* 8ED90 800A0580 00000000 */   nop
endlabel func_800A0558
