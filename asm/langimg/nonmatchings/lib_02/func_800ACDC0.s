nonmatching func_800ACDC0, 0x98

glabel func_800ACDC0
    /* 9B5D0 800ACDC0 00140400 */  sll        $v0, $a0, 16
    /* 9B5D4 800ACDC4 03340200 */  sra        $a2, $v0, 16
    /* 9B5D8 800ACDC8 0B00C004 */  bltz       $a2, .L800ACDF8
    /* 9B5DC 800ACDCC 21100000 */   addu      $v0, $zero, $zero
    /* 9B5E0 800ACDD0 0C80023C */  lui        $v0, %hi(D_800BF244)
    /* 9B5E4 800ACDD4 44F24284 */  lh         $v0, %lo(D_800BF244)($v0)
    /* 9B5E8 800ACDD8 00000000 */  nop
    /* 9B5EC 800ACDDC FFFF4224 */  addiu      $v0, $v0, -0x1
    /* 9B5F0 800ACDE0 2A104600 */  slt        $v0, $v0, $a2
    /* 9B5F4 800ACDE4 0C80063C */  lui        $a2, %hi(D_800BF244)
    /* 9B5F8 800ACDE8 44F2C694 */  lhu        $a2, %lo(D_800BF244)($a2)
    /* 9B5FC 800ACDEC 02004014 */  bnez       $v0, .L800ACDF8
    /* 9B600 800ACDF0 FFFFC224 */   addiu     $v0, $a2, -0x1
    /* 9B604 800ACDF4 21108000 */  addu       $v0, $a0, $zero
  .L800ACDF8:
    /* 9B608 800ACDF8 21204000 */  addu       $a0, $v0, $zero
    /* 9B60C 800ACDFC 00140500 */  sll        $v0, $a1, 16
    /* 9B610 800ACE00 03340200 */  sra        $a2, $v0, 16
    /* 9B614 800ACE04 0C00C004 */  bltz       $a2, .L800ACE38
    /* 9B618 800ACE08 00000000 */   nop
    /* 9B61C 800ACE0C 0C80023C */  lui        $v0, %hi(D_800BF246)
    /* 9B620 800ACE10 46F24284 */  lh         $v0, %lo(D_800BF246)($v0)
    /* 9B624 800ACE14 00000000 */  nop
    /* 9B628 800ACE18 FFFF4224 */  addiu      $v0, $v0, -0x1
    /* 9B62C 800ACE1C 2A104600 */  slt        $v0, $v0, $a2
    /* 9B630 800ACE20 0C80063C */  lui        $a2, %hi(D_800BF246)
    /* 9B634 800ACE24 46F2C694 */  lhu        $a2, %lo(D_800BF246)($a2)
    /* 9B638 800ACE28 05004010 */  beqz       $v0, .L800ACE40
    /* 9B63C 800ACE2C FF03A330 */   andi      $v1, $a1, 0x3FF
    /* 9B640 800ACE30 8FB30208 */  j          .L800ACE3C
    /* 9B644 800ACE34 FFFFC524 */   addiu     $a1, $a2, -0x1
  .L800ACE38:
    /* 9B648 800ACE38 21280000 */  addu       $a1, $zero, $zero
  .L800ACE3C:
    /* 9B64C 800ACE3C FF03A330 */  andi       $v1, $a1, 0x3FF
  .L800ACE40:
    /* 9B650 800ACE40 801A0300 */  sll        $v1, $v1, 10
    /* 9B654 800ACE44 FF038230 */  andi       $v0, $a0, 0x3FF
    /* 9B658 800ACE48 00E3043C */  lui        $a0, (0xE3000000 >> 16)
    /* 9B65C 800ACE4C 25104400 */  or         $v0, $v0, $a0
    /* 9B660 800ACE50 0800E003 */  jr         $ra
    /* 9B664 800ACE54 25106200 */   or        $v0, $v1, $v0
endlabel func_800ACDC0
