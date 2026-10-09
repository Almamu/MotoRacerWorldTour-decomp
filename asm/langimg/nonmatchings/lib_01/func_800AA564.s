nonmatching func_800AA564, 0x7C

glabel func_800AA564
    /* 98D74 800AA564 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 98D78 800AA568 0100A230 */  andi       $v0, $a1, 0x1
    /* 98D7C 800AA56C 06004010 */  beqz       $v0, .L800AA588
    /* 98D80 800AA570 1000BFAF */   sw        $ra, 0x10($sp)
    /* 98D84 800AA574 FFF7033C */  lui        $v1, (0xF7FFFFFF >> 16)
    /* 98D88 800AA578 0000828C */  lw         $v0, 0x0($a0)
    /* 98D8C 800AA57C FFFF6334 */  ori        $v1, $v1, (0xF7FFFFFF & 0xFFFF)
    /* 98D90 800AA580 65A90208 */  j          .L800AA594
    /* 98D94 800AA584 24104300 */   and       $v0, $v0, $v1
  .L800AA588:
    /* 98D98 800AA588 0000828C */  lw         $v0, 0x0($a0)
    /* 98D9C 800AA58C 0008033C */  lui        $v1, (0x8000000 >> 16)
    /* 98DA0 800AA590 25104300 */  or         $v0, $v0, $v1
  .L800AA594:
    /* 98DA4 800AA594 000082AC */  sw         $v0, 0x0($a0)
    /* 98DA8 800AA598 0200A230 */  andi       $v0, $a1, 0x2
    /* 98DAC 800AA59C 04004010 */  beqz       $v0, .L800AA5B0
    /* 98DB0 800AA5A0 0002033C */   lui       $v1, (0x2000000 >> 16)
    /* 98DB4 800AA5A4 0000828C */  lw         $v0, 0x0($a0)
    /* 98DB8 800AA5A8 70A90208 */  j          .L800AA5C0
    /* 98DBC 800AA5AC 25104300 */   or        $v0, $v0, $v1
  .L800AA5B0:
    /* 98DC0 800AA5B0 FFFD033C */  lui        $v1, (0xFDFFFFFF >> 16)
    /* 98DC4 800AA5B4 0000828C */  lw         $v0, 0x0($a0)
    /* 98DC8 800AA5B8 FFFF6334 */  ori        $v1, $v1, (0xFDFFFFFF & 0xFFFF)
    /* 98DCC 800AA5BC 24104300 */  and        $v0, $v0, $v1
  .L800AA5C0:
    /* 98DD0 800AA5C0 000082AC */  sw         $v0, 0x0($a0)
    /* 98DD4 800AA5C4 00008594 */  lhu        $a1, 0x0($a0)
    /* 98DD8 800AA5C8 D4A9020C */  jal        func_800AA750
    /* 98DDC 800AA5CC 00000000 */   nop
    /* 98DE0 800AA5D0 1000BF8F */  lw         $ra, 0x10($sp)
    /* 98DE4 800AA5D4 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 98DE8 800AA5D8 0800E003 */  jr         $ra
    /* 98DEC 800AA5DC 00000000 */   nop
endlabel func_800AA564
