nonmatching _patch_card, 0x94

glabel _patch_card
    /* 9D63C 800AEE2C 0E80013C */  lui        $at, %hi(D_800DE378)
    /* 9D640 800AEE30 78E33FAC */  sw         $ra, %lo(D_800DE378)($at)
    /* 9D644 800AEE34 E0D6020C */  jal        EnterCriticalSection
    /* 9D648 800AEE38 00000000 */   nop
    /* 9D64C 800AEE3C 56000924 */  addiu      $t1, $zero, 0x56
    /* 9D650 800AEE40 B0000A24 */  addiu      $t2, $zero, 0xB0
    /* 9D654 800AEE44 09F84001 */  jalr       $t2
    /* 9D658 800AEE48 00000000 */   nop
    /* 9D65C 800AEE4C 1800428C */  lw         $v0, 0x18($v0)
    /* 9D660 800AEE50 00000000 */  nop
    /* 9D664 800AEE54 7000438C */  lw         $v1, 0x70($v0)
    /* 9D668 800AEE58 00000000 */  nop
    /* 9D66C 800AEE5C FFFF6930 */  andi       $t1, $v1, 0xFFFF
    /* 9D670 800AEE60 004C0900 */  sll        $t1, $t1, 16
    /* 9D674 800AEE64 7400438C */  lw         $v1, 0x74($v0)
    /* 9D678 800AEE68 00000000 */  nop
    /* 9D67C 800AEE6C FFFF6A30 */  andi       $t2, $v1, 0xFFFF
    /* 9D680 800AEE70 21182A01 */  addu       $v1, $t1, $t2
    /* 9D684 800AEE74 28006224 */  addiu      $v0, $v1, 0x28
    /* 9D688 800AEE78 0B800A3C */  lui        $t2, %hi(func_800AEE04)
    /* 9D68C 800AEE7C 04EE4A25 */  addiu      $t2, $t2, %lo(func_800AEE04)
    /* 9D690 800AEE80 0B80093C */  lui        $t1, %hi(func_800AEE04 + 0x14)
    /* 9D694 800AEE84 18EE2925 */  addiu      $t1, $t1, %lo(func_800AEE04 + 0x14)
  .L800AEE88:
    /* 9D698 800AEE88 0000438D */  lw         $v1, 0x0($t2)
    /* 9D69C 800AEE8C 00000000 */  nop
    /* 9D6A0 800AEE90 000043AC */  sw         $v1, 0x0($v0)
    /* 9D6A4 800AEE94 04004A25 */  addiu      $t2, $t2, 0x4
    /* 9D6A8 800AEE98 FBFF4915 */  bne        $t2, $t1, .L800AEE88
    /* 9D6AC 800AEE9C 04004224 */   addiu     $v0, $v0, 0x4
    /* 9D6B0 800AEEA0 0100013C */  lui        $at, (0x10000 >> 16)
    /* 9D6B4 800AEEA4 A8D6020C */  jal        FlushCache
    /* 9D6B8 800AEEA8 FCDF22AC */   sw        $v0, -0x2004($at)
    /* 9D6BC 800AEEAC 0E801F3C */  lui        $ra, %hi(D_800DE378)
    /* 9D6C0 800AEEB0 78E3FF8F */  lw         $ra, %lo(D_800DE378)($ra)
    /* 9D6C4 800AEEB4 00000000 */  nop
    /* 9D6C8 800AEEB8 0800E003 */  jr         $ra
    /* 9D6CC 800AEEBC 00000000 */   nop
endlabel _patch_card
