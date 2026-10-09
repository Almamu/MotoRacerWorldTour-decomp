nonmatching func_8002E7EC, 0x70

glabel func_8002E7EC
    /* 1CFFC 8002E7EC E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 1D000 8002E7F0 21308000 */  addu       $a2, $a0, $zero
    /* 1D004 8002E7F4 3003C224 */  addiu      $v0, $a2, 0x330
    /* 1D008 8002E7F8 1000BFAF */  sw         $ra, 0x10($sp)
    /* 1D00C 8002E7FC 3003C38C */  lw         $v1, 0x330($a2)
    /* 1D010 8002E800 0400448C */  lw         $a0, 0x4($v0)
    /* 1D014 8002E804 0800458C */  lw         $a1, 0x8($v0)
    /* 1D018 8002E808 5403C3AC */  sw         $v1, 0x354($a2)
    /* 1D01C 8002E80C 5403C324 */  addiu      $v1, $a2, 0x354
    /* 1D020 8002E810 040064AC */  sw         $a0, 0x4($v1)
    /* 1D024 8002E814 080065AC */  sw         $a1, 0x8($v1)
    /* 1D028 8002E818 5800C290 */  lbu        $v0, 0x58($a2)
    /* 1D02C 8002E81C 00000000 */  nop
    /* 1D030 8002E820 FFFF4224 */  addiu      $v0, $v0, -0x1
    /* 1D034 8002E824 0200422C */  sltiu      $v0, $v0, 0x2
    /* 1D038 8002E828 08004010 */  beqz       $v0, .L8002E84C
    /* 1D03C 8002E82C 00000000 */   nop
    /* 1D040 8002E830 CC00C68C */  lw         $a2, 0xCC($a2)
    /* 1D044 8002E834 00000000 */  nop
    /* 1D048 8002E838 0400C010 */  beqz       $a2, .L8002E84C
    /* 1D04C 8002E83C 21206000 */   addu      $a0, $v1, $zero
    /* 1D050 8002E840 1A000524 */  addiu      $a1, $zero, 0x1A
    /* 1D054 8002E844 518B000C */  jal        func_80022D44
    /* 1D058 8002E848 0C000724 */   addiu     $a3, $zero, 0xC
  .L8002E84C:
    /* 1D05C 8002E84C 1000BF8F */  lw         $ra, 0x10($sp)
    /* 1D060 8002E850 00000000 */  nop
    /* 1D064 8002E854 0800E003 */  jr         $ra
    /* 1D068 8002E858 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_8002E7EC
