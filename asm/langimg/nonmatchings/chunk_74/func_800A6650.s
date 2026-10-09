nonmatching func_800A6650, 0x138

glabel func_800A6650
    /* 94E60 800A6650 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 94E64 800A6654 1000B0AF */  sw         $s0, 0x10($sp)
    /* 94E68 800A6658 21808000 */  addu       $s0, $a0, $zero
    /* 94E6C 800A665C 01000424 */  addiu      $a0, $zero, 0x1
    /* 94E70 800A6660 1800BFAF */  sw         $ra, 0x18($sp)
    /* 94E74 800A6664 AC88020C */  jal        func_800A22B0
    /* 94E78 800A6668 1400B1AF */   sw        $s1, 0x14($sp)
    /* 94E7C 800A666C 21200002 */  addu       $a0, $s0, $zero
    /* 94E80 800A6670 21280000 */  addu       $a1, $zero, $zero
    /* 94E84 800A6674 AB81020C */  jal        func_800A06AC
    /* 94E88 800A6678 21300000 */   addu      $a2, $zero, $zero
    /* 94E8C 800A667C 21804000 */  addu       $s0, $v0, $zero
    /* 94E90 800A6680 08000426 */  addiu      $a0, $s0, 0x8
    /* 94E94 800A6684 0D80023C */  lui        $v0, %hi(D_800C886C)
    /* 94E98 800A6688 0000058E */  lw         $a1, 0x0($s0)
    /* 94E9C 800A668C 6C88518C */  lw         $s1, %lo(D_800C886C)($v0)
    /* 94EA0 800A6690 82280500 */  srl        $a1, $a1, 2
    /* 94EA4 800A6694 80280500 */  sll        $a1, $a1, 2
    /* 94EA8 800A6698 6399020C */  jal        func_800A658C
    /* 94EAC 800A669C 21288500 */   addu      $a1, $a0, $a1
    /* 94EB0 800A66A0 B755000C */  jal        func_800156DC
    /* 94EB4 800A66A4 00000000 */   nop
    /* 94EB8 800A66A8 DFB1010C */  jal        func_8006C77C
    /* 94EBC 800A66AC 00000000 */   nop
    /* 94EC0 800A66B0 0EBB020C */  jal        func_800AEC38
    /* 94EC4 800A66B4 00000000 */   nop
    /* 94EC8 800A66B8 00E5010C */  jal        func_80079400
    /* 94ECC 800A66BC 21202002 */   addu      $a0, $s1, $zero
    /* 94ED0 800A66C0 69AB020C */  jal        func_800AADA4
    /* 94ED4 800A66C4 00000000 */   nop
    /* 94ED8 800A66C8 A8D6020C */  jal        func_800B5AA0
    /* 94EDC 800A66CC 00000000 */   nop
    /* 94EE0 800A66D0 0800028E */  lw         $v0, 0x8($s0)
    /* 94EE4 800A66D4 00000000 */  nop
    /* 94EE8 800A66D8 09F84000 */  jalr       $v0
    /* 94EEC 800A66DC 00000000 */   nop
    /* 94EF0 800A66E0 38AB020C */  jal        func_800AACE0
    /* 94EF4 800A66E4 00000000 */   nop
    /* 94EF8 800A66E8 F5AE020C */  jal        func_800ABBD4
    /* 94EFC 800A66EC 03000424 */   addiu     $a0, $zero, 0x3
    /* 94F00 800A66F0 F0E4010C */  jal        func_800793C0
    /* 94F04 800A66F4 21202002 */   addu      $a0, $s1, $zero
    /* 94F08 800A66F8 03000012 */  beqz       $s0, .L800A6708
    /* 94F0C 800A66FC 00000000 */   nop
    /* 94F10 800A6700 59D5020C */  jal        func_800B5564
    /* 94F14 800A6704 21200002 */   addu      $a0, $s0, $zero
  .L800A6708:
    /* 94F18 800A6708 21200000 */  addu       $a0, $zero, $zero
    /* 94F1C 800A670C FCBA020C */  jal        func_800AEBF0
    /* 94F20 800A6710 02000524 */   addiu     $a1, $zero, 0x2
    /* 94F24 800A6714 319D020C */  jal        func_800A74C4
    /* 94F28 800A6718 00000000 */   nop
    /* 94F2C 800A671C A155000C */  jal        func_80015684
    /* 94F30 800A6720 21200000 */   addu      $a0, $zero, $zero
    /* 94F34 800A6724 81AF020C */  jal        func_800ABE04
    /* 94F38 800A6728 21200000 */   addu      $a0, $zero, $zero
    /* 94F3C 800A672C 6800238E */  lw         $v1, 0x68($s1)
    /* 94F40 800A6730 00000000 */  nop
    /* 94F44 800A6734 40006484 */  lh         $a0, 0x40($v1)
    /* 94F48 800A6738 4400628C */  lw         $v0, 0x44($v1)
    /* 94F4C 800A673C 00000000 */  nop
    /* 94F50 800A6740 09F84000 */  jalr       $v0
    /* 94F54 800A6744 21202402 */   addu      $a0, $s1, $a0
    /* 94F58 800A6748 6800238E */  lw         $v1, 0x68($s1)
    /* 94F5C 800A674C 21280000 */  addu       $a1, $zero, $zero
    /* 94F60 800A6750 20006484 */  lh         $a0, 0x20($v1)
    /* 94F64 800A6754 2400628C */  lw         $v0, 0x24($v1)
    /* 94F68 800A6758 00000000 */  nop
    /* 94F6C 800A675C 09F84000 */  jalr       $v0
    /* 94F70 800A6760 21202402 */   addu      $a0, $s1, $a0
    /* 94F74 800A6764 81AF020C */  jal        func_800ABE04
    /* 94F78 800A6768 01000424 */   addiu     $a0, $zero, 0x1
    /* 94F7C 800A676C D4B1010C */  jal        func_8006C750
    /* 94F80 800A6770 00000000 */   nop
    /* 94F84 800A6774 1800BF8F */  lw         $ra, 0x18($sp)
    /* 94F88 800A6778 1400B18F */  lw         $s1, 0x14($sp)
    /* 94F8C 800A677C 1000B08F */  lw         $s0, 0x10($sp)
    /* 94F90 800A6780 0800E003 */  jr         $ra
    /* 94F94 800A6784 2000BD27 */   addiu     $sp, $sp, 0x20
endlabel func_800A6650
