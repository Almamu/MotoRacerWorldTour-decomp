nonmatching func_8014074C, 0xF0

glabel func_8014074C
    /* DC18 8014074C E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* DC1C 80140750 1000B0AF */  sw         $s0, 0x10($sp)
    /* DC20 80140754 21808000 */  addu       $s0, $a0, $zero
    /* DC24 80140758 1C80053C */  lui        $a1, %hi(D_801BFEA0)
    /* DC28 8014075C A0FEA524 */  addiu      $a1, $a1, %lo(D_801BFEA0)
    /* DC2C 80140760 1400BFAF */  sw         $ra, 0x14($sp)
    /* DC30 80140764 0000A38C */  lw         $v1, 0x0($a1)
    /* DC34 80140768 00000000 */  nop
    /* DC38 8014076C 80100300 */  sll        $v0, $v1, 2
    /* DC3C 80140770 1C80013C */  lui        $at, %hi(D_801BFEE4)
    /* DC40 80140774 21082200 */  addu       $at, $at, $v0
    /* DC44 80140778 E4FE228C */  lw         $v0, %lo(D_801BFEE4)($at)
    /* DC48 8014077C 01006324 */  addiu      $v1, $v1, 0x1
    /* DC4C 80140780 09F84000 */  jalr       $v0
    /* DC50 80140784 0000A3AC */   sw        $v1, 0x0($a1)
    /* DC54 80140788 21204000 */  addu       $a0, $v0, $zero
    /* DC58 8014078C 22008004 */  bltz       $a0, .L80140818
    /* DC5C 80140790 00000000 */   nop
    /* DC60 80140794 1C80033C */  lui        $v1, %hi(D_801BFEA0)
    /* DC64 80140798 A0FE638C */  lw         $v1, %lo(D_801BFEA0)($v1)
    /* DC68 8014079C 00000000 */  nop
    /* DC6C 801407A0 17006010 */  beqz       $v1, .L80140800
    /* DC70 801407A4 03000224 */   addiu     $v0, $zero, 0x3
    /* DC74 801407A8 07006214 */  bne        $v1, $v0, .L801407C8
    /* DC78 801407AC 00000000 */   nop
    /* DC7C 801407B0 3C00028E */  lw         $v0, 0x3C($s0)
    /* DC80 801407B4 00000000 */  nop
    /* DC84 801407B8 00004390 */  lbu        $v1, 0x0($v0)
    /* DC88 801407BC 80000224 */  addiu      $v0, $zero, 0x80
    /* DC8C 801407C0 0C006210 */  beq        $v1, $v0, .L801407F4
    /* DC90 801407C4 00000000 */   nop
  .L801407C8:
    /* DC94 801407C8 B20A050C */  jal        func_80142AC8
    /* DC98 801407CC 3C000424 */   addiu     $a0, $zero, 0x3C
    /* DC9C 801407D0 3103050C */  jal        func_80140CC4
    /* DCA0 801407D4 00000000 */   nop
    /* DCA4 801407D8 06004014 */  bnez       $v0, .L801407F4
    /* DCA8 801407DC 00000000 */   nop
    /* DCAC 801407E0 1C80023C */  lui        $v0, %hi(D_801BFE5C)
    /* DCB0 801407E4 5CFE428C */  lw         $v0, %lo(D_801BFE5C)($v0)
    /* DCB4 801407E8 00000000 */  nop
    /* DCB8 801407EC 09F84000 */  jalr       $v0
    /* DCBC 801407F0 FDFF0424 */   addiu     $a0, $zero, -0x3
  .L801407F4:
    /* DCC0 801407F4 1C80033C */  lui        $v1, %hi(D_801BFEA0)
    /* DCC4 801407F8 A0FE638C */  lw         $v1, %lo(D_801BFEA0)($v1)
    /* DCC8 801407FC 00000000 */  nop
  .L80140800:
    /* DCCC 80140800 05006228 */  slti       $v0, $v1, 0x5
    /* DCD0 80140804 09004014 */  bnez       $v0, .L8014082C
    /* DCD4 80140808 FFFF6224 */   addiu     $v0, $v1, -0x1
    /* DCD8 8014080C 1C80013C */  lui        $at, %hi(D_801BFEA0)
    /* DCDC 80140810 0B020508 */  j          .L8014082C
    /* DCE0 80140814 A0FE22AC */   sw        $v0, %lo(D_801BFEA0)($at)
  .L80140818:
    /* DCE4 80140818 1C80023C */  lui        $v0, %hi(D_801BFE5C)
    /* DCE8 8014081C 5CFE428C */  lw         $v0, %lo(D_801BFE5C)($v0)
    /* DCEC 80140820 00000000 */  nop
    /* DCF0 80140824 09F84000 */  jalr       $v0
    /* DCF4 80140828 00000000 */   nop
  .L8014082C:
    /* DCF8 8014082C 1400BF8F */  lw         $ra, 0x14($sp)
    /* DCFC 80140830 1000B08F */  lw         $s0, 0x10($sp)
    /* DD00 80140834 0800E003 */  jr         $ra
    /* DD04 80140838 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_8014074C
