nonmatching func_800B25B8, 0xBC

glabel func_800B25B8
    /* A0DC8 800B25B8 45008290 */  lbu        $v0, 0x45($a0)
    /* A0DCC 800B25BC 36008590 */  lbu        $a1, 0x36($a0)
    /* A0DD0 800B25C0 00000000 */  nop
    /* A0DD4 800B25C4 0600A010 */  beqz       $a1, .L800B25E0
    /* A0DD8 800B25C8 FDFF4324 */   addiu     $v1, $v0, -0x3
    /* A0DDC 800B25CC 4D000224 */  addiu      $v0, $zero, 0x4D
    /* A0DE0 800B25D0 1500A210 */  beq        $a1, $v0, .L800B2628
    /* A0DE4 800B25D4 00000000 */   nop
    /* A0DE8 800B25D8 92C90208 */  j          .L800B2648
    /* A0DEC 800B25DC 00000000 */   nop
  .L800B25E0:
    /* A0DF0 800B25E0 06006228 */  slti       $v0, $v1, 0x6
    /* A0DF4 800B25E4 05004010 */  beqz       $v0, .L800B25FC
    /* A0DF8 800B25E8 21108300 */   addu      $v0, $a0, $v1
    /* A0DFC 800B25EC 57004290 */  lbu        $v0, 0x57($v0)
    /* A0E00 800B25F0 00000000 */  nop
    /* A0E04 800B25F4 1D004010 */  beqz       $v0, .L800B266C
    /* A0E08 800B25F8 21100000 */   addu      $v0, $zero, $zero
  .L800B25FC:
    /* A0E0C 800B25FC 34008290 */  lbu        $v0, 0x34($a0)
    /* A0E10 800B2600 00000000 */  nop
    /* A0E14 800B2604 2A106200 */  slt        $v0, $v1, $v0
    /* A0E18 800B2608 18004010 */  beqz       $v0, .L800B266C
    /* A0E1C 800B260C 21100000 */   addu      $v0, $zero, $zero
    /* A0E20 800B2610 2800828C */  lw         $v0, 0x28($a0)
    /* A0E24 800B2614 00000000 */  nop
    /* A0E28 800B2618 21104300 */  addu       $v0, $v0, $v1
  .L800B261C:
    /* A0E2C 800B261C 00004290 */  lbu        $v0, 0x0($v0)
    /* A0E30 800B2620 9BC90208 */  j          .L800B266C
    /* A0E34 800B2624 00000000 */   nop
  .L800B2628:
    /* A0E38 800B2628 35008290 */  lbu        $v0, 0x35($a0)
    /* A0E3C 800B262C 00000000 */  nop
    /* A0E40 800B2630 2A106200 */  slt        $v0, $v1, $v0
    /* A0E44 800B2634 0D004010 */  beqz       $v0, .L800B266C
    /* A0E48 800B2638 FF000224 */   addiu     $v0, $zero, 0xFF
    /* A0E4C 800B263C 2C00828C */  lw         $v0, 0x2C($a0)
    /* A0E50 800B2640 87C90208 */  j          .L800B261C
    /* A0E54 800B2644 21104300 */   addu      $v0, $v0, $v1
  .L800B2648:
    /* A0E58 800B2648 35008290 */  lbu        $v0, 0x35($a0)
    /* A0E5C 800B264C 00000000 */  nop
    /* A0E60 800B2650 2A106200 */  slt        $v0, $v1, $v0
    /* A0E64 800B2654 05004010 */  beqz       $v0, .L800B266C
    /* A0E68 800B2658 21100000 */   addu      $v0, $zero, $zero
    /* A0E6C 800B265C 2C00828C */  lw         $v0, 0x2C($a0)
    /* A0E70 800B2660 00000000 */  nop
    /* A0E74 800B2664 21104300 */  addu       $v0, $v0, $v1
    /* A0E78 800B2668 00004290 */  lbu        $v0, 0x0($v0)
  .L800B266C:
    /* A0E7C 800B266C 0800E003 */  jr         $ra
    /* A0E80 800B2670 00000000 */   nop
endlabel func_800B25B8
