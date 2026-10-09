nonmatching func_800B1EDC, 0x8C

glabel func_800B1EDC
    /* A06EC 800B1EDC E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* A06F0 800B1EE0 1000B0AF */  sw         $s0, 0x10($sp)
    /* A06F4 800B1EE4 21808000 */  addu       $s0, $a0, $zero
    /* A06F8 800B1EE8 1400BFAF */  sw         $ra, 0x14($sp)
    /* A06FC 800B1EEC 3C00028E */  lw         $v0, 0x3C($s0)
    /* A0700 800B1EF0 00000000 */  nop
    /* A0704 800B1EF4 00004290 */  lbu        $v0, 0x0($v0)
    /* A0708 800B1EF8 08000324 */  addiu      $v1, $zero, 0x8
    /* A070C 800B1EFC 02110200 */  srl        $v0, $v0, 4
    /* A0710 800B1F00 04004314 */  bne        $v0, $v1, .L800B1F14
    /* A0714 800B1F04 21280000 */   addu      $a1, $zero, $zero
    /* A0718 800B1F08 36000292 */  lbu        $v0, 0x36($s0)
    /* A071C 800B1F0C 00000000 */  nop
    /* A0720 800B1F10 0100452C */  sltiu      $a1, $v0, 0x1
  .L800B1F14:
    /* A0724 800B1F14 0C80023C */  lui        $v0, %hi(D_800C3C90)
    /* A0728 800B1F18 903C428C */  lw         $v0, %lo(D_800C3C90)($v0)
    /* A072C 800B1F1C 00000000 */  nop
    /* A0730 800B1F20 09F84000 */  jalr       $v0
    /* A0734 800B1F24 21200002 */   addu      $a0, $s0, $zero
    /* A0738 800B1F28 21200002 */  addu       $a0, $s0, $zero
    /* A073C 800B1F2C 2FC4020C */  jal        func_800B10BC
    /* A0740 800B1F30 FF004530 */   andi      $a1, $v0, 0xFF
    /* A0744 800B1F34 21184000 */  addu       $v1, $v0, $zero
    /* A0748 800B1F38 5A000224 */  addiu      $v0, $zero, 0x5A
    /* A074C 800B1F3C 06006210 */  beq        $v1, $v0, .L800B1F58
    /* A0750 800B1F40 21106000 */   addu      $v0, $v1, $zero
    /* A0754 800B1F44 04006010 */  beqz       $v1, .L800B1F58
    /* A0758 800B1F48 00000000 */   nop
    /* A075C 800B1F4C 02006104 */  bgez       $v1, .L800B1F58
    /* A0760 800B1F50 F7FF0224 */   addiu     $v0, $zero, -0x9
    /* A0764 800B1F54 21106000 */  addu       $v0, $v1, $zero
  .L800B1F58:
    /* A0768 800B1F58 1400BF8F */  lw         $ra, 0x14($sp)
    /* A076C 800B1F5C 1000B08F */  lw         $s0, 0x10($sp)
    /* A0770 800B1F60 0800E003 */  jr         $ra
    /* A0774 800B1F64 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_800B1EDC
