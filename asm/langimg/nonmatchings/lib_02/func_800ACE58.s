nonmatching func_800ACE58, 0x98

glabel func_800ACE58
    /* 9B668 800ACE58 00140400 */  sll        $v0, $a0, 16
    /* 9B66C 800ACE5C 03340200 */  sra        $a2, $v0, 16
    /* 9B670 800ACE60 0B00C004 */  bltz       $a2, .L800ACE90
    /* 9B674 800ACE64 21100000 */   addu      $v0, $zero, $zero
    /* 9B678 800ACE68 0C80023C */  lui        $v0, %hi(D_800BF244)
    /* 9B67C 800ACE6C 44F24284 */  lh         $v0, %lo(D_800BF244)($v0)
    /* 9B680 800ACE70 00000000 */  nop
    /* 9B684 800ACE74 FFFF4224 */  addiu      $v0, $v0, -0x1
    /* 9B688 800ACE78 2A104600 */  slt        $v0, $v0, $a2
    /* 9B68C 800ACE7C 0C80063C */  lui        $a2, %hi(D_800BF244)
    /* 9B690 800ACE80 44F2C694 */  lhu        $a2, %lo(D_800BF244)($a2)
    /* 9B694 800ACE84 02004014 */  bnez       $v0, .L800ACE90
    /* 9B698 800ACE88 FFFFC224 */   addiu     $v0, $a2, -0x1
    /* 9B69C 800ACE8C 21108000 */  addu       $v0, $a0, $zero
  .L800ACE90:
    /* 9B6A0 800ACE90 21204000 */  addu       $a0, $v0, $zero
    /* 9B6A4 800ACE94 00140500 */  sll        $v0, $a1, 16
    /* 9B6A8 800ACE98 03340200 */  sra        $a2, $v0, 16
    /* 9B6AC 800ACE9C 0C00C004 */  bltz       $a2, .L800ACED0
    /* 9B6B0 800ACEA0 00000000 */   nop
    /* 9B6B4 800ACEA4 0C80023C */  lui        $v0, %hi(D_800BF246)
    /* 9B6B8 800ACEA8 46F24284 */  lh         $v0, %lo(D_800BF246)($v0)
    /* 9B6BC 800ACEAC 00000000 */  nop
    /* 9B6C0 800ACEB0 FFFF4224 */  addiu      $v0, $v0, -0x1
    /* 9B6C4 800ACEB4 2A104600 */  slt        $v0, $v0, $a2
    /* 9B6C8 800ACEB8 0C80063C */  lui        $a2, %hi(D_800BF246)
    /* 9B6CC 800ACEBC 46F2C694 */  lhu        $a2, %lo(D_800BF246)($a2)
    /* 9B6D0 800ACEC0 05004010 */  beqz       $v0, .L800ACED8
    /* 9B6D4 800ACEC4 FF03A330 */   andi      $v1, $a1, 0x3FF
    /* 9B6D8 800ACEC8 B5B30208 */  j          .L800ACED4
    /* 9B6DC 800ACECC FFFFC524 */   addiu     $a1, $a2, -0x1
  .L800ACED0:
    /* 9B6E0 800ACED0 21280000 */  addu       $a1, $zero, $zero
  .L800ACED4:
    /* 9B6E4 800ACED4 FF03A330 */  andi       $v1, $a1, 0x3FF
  .L800ACED8:
    /* 9B6E8 800ACED8 801A0300 */  sll        $v1, $v1, 10
    /* 9B6EC 800ACEDC FF038230 */  andi       $v0, $a0, 0x3FF
    /* 9B6F0 800ACEE0 00E4043C */  lui        $a0, (0xE4000000 >> 16)
    /* 9B6F4 800ACEE4 25104400 */  or         $v0, $v0, $a0
    /* 9B6F8 800ACEE8 0800E003 */  jr         $ra
    /* 9B6FC 800ACEEC 25106200 */   or        $v0, $v1, $v0
endlabel func_800ACE58
