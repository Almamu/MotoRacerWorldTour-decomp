nonmatching func_8013D224, 0x98

glabel func_8013D224
    /* A6F0 8013D224 00140400 */  sll        $v0, $a0, 16
    /* A6F4 8013D228 03340200 */  sra        $a2, $v0, 16
    /* A6F8 8013D22C 0B00C004 */  bltz       $a2, .L8013D25C
    /* A6FC 8013D230 21100000 */   addu      $v0, $zero, $zero
    /* A700 8013D234 1C80023C */  lui        $v0, %hi(D_801BFC3C)
    /* A704 8013D238 3CFC4284 */  lh         $v0, %lo(D_801BFC3C)($v0)
    /* A708 8013D23C 00000000 */  nop
    /* A70C 8013D240 FFFF4224 */  addiu      $v0, $v0, -0x1
    /* A710 8013D244 2A104600 */  slt        $v0, $v0, $a2
    /* A714 8013D248 1C80063C */  lui        $a2, %hi(D_801BFC3C)
    /* A718 8013D24C 3CFCC694 */  lhu        $a2, %lo(D_801BFC3C)($a2)
    /* A71C 8013D250 02004014 */  bnez       $v0, .L8013D25C
    /* A720 8013D254 FFFFC224 */   addiu     $v0, $a2, -0x1
    /* A724 8013D258 21108000 */  addu       $v0, $a0, $zero
  .L8013D25C:
    /* A728 8013D25C 21204000 */  addu       $a0, $v0, $zero
    /* A72C 8013D260 00140500 */  sll        $v0, $a1, 16
    /* A730 8013D264 03340200 */  sra        $a2, $v0, 16
    /* A734 8013D268 0C00C004 */  bltz       $a2, .L8013D29C
    /* A738 8013D26C 00000000 */   nop
    /* A73C 8013D270 1C80023C */  lui        $v0, %hi(D_801BFC3E)
    /* A740 8013D274 3EFC4284 */  lh         $v0, %lo(D_801BFC3E)($v0)
    /* A744 8013D278 00000000 */  nop
    /* A748 8013D27C FFFF4224 */  addiu      $v0, $v0, -0x1
    /* A74C 8013D280 2A104600 */  slt        $v0, $v0, $a2
    /* A750 8013D284 1C80063C */  lui        $a2, %hi(D_801BFC3E)
    /* A754 8013D288 3EFCC694 */  lhu        $a2, %lo(D_801BFC3E)($a2)
    /* A758 8013D28C 05004010 */  beqz       $v0, .L8013D2A4
    /* A75C 8013D290 FF03A330 */   andi      $v1, $a1, 0x3FF
    /* A760 8013D294 A8F40408 */  j          .L8013D2A0
    /* A764 8013D298 FFFFC524 */   addiu     $a1, $a2, -0x1
  .L8013D29C:
    /* A768 8013D29C 21280000 */  addu       $a1, $zero, $zero
  .L8013D2A0:
    /* A76C 8013D2A0 FF03A330 */  andi       $v1, $a1, 0x3FF
  .L8013D2A4:
    /* A770 8013D2A4 801A0300 */  sll        $v1, $v1, 10
    /* A774 8013D2A8 FF038230 */  andi       $v0, $a0, 0x3FF
    /* A778 8013D2AC 00E4043C */  lui        $a0, (0xE4000000 >> 16)
    /* A77C 8013D2B0 25104400 */  or         $v0, $v0, $a0
    /* A780 8013D2B4 0800E003 */  jr         $ra
    /* A784 8013D2B8 25106200 */   or        $v0, $v1, $v0
endlabel func_8013D224
