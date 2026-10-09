nonmatching func_80141B44, 0xC4

glabel func_80141B44
    /* F010 80141B44 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* F014 80141B48 1000B0AF */  sw         $s0, 0x10($sp)
    /* F018 80141B4C 21808000 */  addu       $s0, $a0, $zero
    /* F01C 80141B50 1C80023C */  lui        $v0, %hi(D_801BFEA8)
    /* F020 80141B54 A8FE428C */  lw         $v0, %lo(D_801BFEA8)($v0)
    /* F024 80141B58 21200000 */  addu       $a0, $zero, $zero
    /* F028 80141B5C 0B004010 */  beqz       $v0, .L80141B8C
    /* F02C 80141B60 1400BFAF */   sw        $ra, 0x14($sp)
    /* F030 80141B64 3C00028E */  lw         $v0, 0x3C($s0)
    /* F034 80141B68 00000000 */  nop
    /* F038 80141B6C 00004290 */  lbu        $v0, 0x0($v0)
    /* F03C 80141B70 08000324 */  addiu      $v1, $zero, 0x8
    /* F040 80141B74 02110200 */  srl        $v0, $v0, 4
    /* F044 80141B78 04004314 */  bne        $v0, $v1, .L80141B8C
    /* F048 80141B7C 00000000 */   nop
    /* F04C 80141B80 37000292 */  lbu        $v0, 0x37($s0)
    /* F050 80141B84 00000000 */  nop
    /* F054 80141B88 0100442C */  sltiu      $a0, $v0, 0x1
  .L80141B8C:
    /* F058 80141B8C 1C80013C */  lui        $at, %hi(D_801BFEE0)
    /* F05C 80141B90 06008014 */  bnez       $a0, .L80141BAC
    /* F060 80141B94 E0FE24AC */   sw        $a0, %lo(D_801BFEE0)($at)
    /* F064 80141B98 1C80023C */  lui        $v0, %hi(D_801BFE68)
    /* F068 80141B9C 68FE428C */  lw         $v0, %lo(D_801BFE68)($v0)
    /* F06C 80141BA0 00000000 */  nop
    /* F070 80141BA4 09F84000 */  jalr       $v0
    /* F074 80141BA8 21200002 */   addu      $a0, $s0, $zero
  .L80141BAC:
    /* F078 80141BAC 1C80053C */  lui        $a1, %hi(D_801BFEE0)
    /* F07C 80141BB0 E0FEA58C */  lw         $a1, %lo(D_801BFEE0)($a1)
    /* F080 80141BB4 1C80023C */  lui        $v0, %hi(D_801BFE64)
    /* F084 80141BB8 64FE428C */  lw         $v0, %lo(D_801BFE64)($v0)
    /* F088 80141BBC 00000000 */  nop
    /* F08C 80141BC0 09F84000 */  jalr       $v0
    /* F090 80141BC4 21200002 */   addu      $a0, $s0, $zero
    /* F094 80141BC8 21200002 */  addu       $a0, $s0, $zero
    /* F098 80141BCC 9302050C */  jal        func_80140A4C
    /* F09C 80141BD0 FF004530 */   andi      $a1, $v0, 0xFF
    /* F0A0 80141BD4 21184000 */  addu       $v1, $v0, $zero
    /* F0A4 80141BD8 5A000224 */  addiu      $v0, $zero, 0x5A
    /* F0A8 80141BDC 06006210 */  beq        $v1, $v0, .L80141BF8
    /* F0AC 80141BE0 21106000 */   addu      $v0, $v1, $zero
    /* F0B0 80141BE4 04006010 */  beqz       $v1, .L80141BF8
    /* F0B4 80141BE8 00000000 */   nop
    /* F0B8 80141BEC 02006104 */  bgez       $v1, .L80141BF8
    /* F0BC 80141BF0 FCFF0224 */   addiu     $v0, $zero, -0x4
    /* F0C0 80141BF4 21106000 */  addu       $v0, $v1, $zero
  .L80141BF8:
    /* F0C4 80141BF8 1400BF8F */  lw         $ra, 0x14($sp)
    /* F0C8 80141BFC 1000B08F */  lw         $s0, 0x10($sp)
    /* F0CC 80141C00 0800E003 */  jr         $ra
    /* F0D0 80141C04 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_80141B44
