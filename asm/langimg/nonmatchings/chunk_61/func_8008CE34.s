nonmatching func_8008CE34, 0x124

glabel func_8008CE34
    /* 7B644 8008CE34 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 7B648 8008CE38 1000B0AF */  sw         $s0, 0x10($sp)
    /* 7B64C 8008CE3C 21808000 */  addu       $s0, $a0, $zero
    /* 7B650 8008CE40 1400BFAF */  sw         $ra, 0x14($sp)
    /* 7B654 8008CE44 0000038E */  lw         $v1, 0x0($s0)
    /* 7B658 8008CE48 00000000 */  nop
    /* 7B65C 8008CE4C 3E006010 */  beqz       $v1, .L8008CF48
    /* 7B660 8008CE50 01000224 */   addiu     $v0, $zero, 0x1
    /* 7B664 8008CE54 13006214 */  bne        $v1, $v0, .L8008CEA4
    /* 7B668 8008CE58 00000000 */   nop
    /* 7B66C 8008CE5C 6000028E */  lw         $v0, 0x60($s0)
    /* 7B670 8008CE60 00000000 */  nop
    /* 7B674 8008CE64 38004010 */  beqz       $v0, .L8008CF48
    /* 7B678 8008CE68 00000000 */   nop
    /* 7B67C 8008CE6C 6400028E */  lw         $v0, 0x64($s0)
    /* 7B680 8008CE70 00000000 */  nop
    /* 7B684 8008CE74 34004010 */  beqz       $v0, .L8008CF48
    /* 7B688 8008CE78 00000000 */   nop
    /* 7B68C 8008CE7C 6800028E */  lw         $v0, 0x68($s0)
    /* 7B690 8008CE80 00000000 */  nop
    /* 7B694 8008CE84 30004010 */  beqz       $v0, .L8008CF48
    /* 7B698 8008CE88 00000000 */   nop
    /* 7B69C 8008CE8C 6C00028E */  lw         $v0, 0x6C($s0)
    /* 7B6A0 8008CE90 00000000 */  nop
    /* 7B6A4 8008CE94 2C004010 */  beqz       $v0, .L8008CF48
    /* 7B6A8 8008CE98 80000824 */   addiu     $t0, $zero, 0x80
    /* 7B6AC 8008CE9C B5330208 */  j          .L8008CED4
    /* 7B6B0 8008CEA0 80000724 */   addiu     $a3, $zero, 0x80
  .L8008CEA4:
    /* 7B6B4 8008CEA4 D633020C */  jal        func_8008CF58
    /* 7B6B8 8008CEA8 21200002 */   addu      $a0, $s0, $zero
    /* 7B6BC 8008CEAC 1800028E */  lw         $v0, 0x18($s0)
    /* 7B6C0 8008CEB0 1C00048E */  lw         $a0, 0x1C($s0)
    /* 7B6C4 8008CEB4 00000000 */  nop
    /* 7B6C8 8008CEB8 80180400 */  sll        $v1, $a0, 2
    /* 7B6CC 8008CEBC 21186400 */  addu       $v1, $v1, $a0
    /* 7B6D0 8008CEC0 80180300 */  sll        $v1, $v1, 2
    /* 7B6D4 8008CEC4 02006104 */  bgez       $v1, .L8008CED0
    /* 7B6D8 8008CEC8 40400200 */   sll       $t0, $v0, 1
    /* 7B6DC 8008CECC 0F006324 */  addiu      $v1, $v1, 0xF
  .L8008CED0:
    /* 7B6E0 8008CED0 03390300 */  sra        $a3, $v1, 4
  .L8008CED4:
    /* 7B6E4 8008CED4 8888023C */  lui        $v0, (0x88888889 >> 16)
    /* 7B6E8 8008CED8 0D80033C */  lui        $v1, %hi(D_800D6108)
    /* 7B6EC 8008CEDC 0861638C */  lw         $v1, %lo(D_800D6108)($v1)
    /* 7B6F0 8008CEE0 89884234 */  ori        $v0, $v0, (0x88888889 & 0xFFFF)
    /* 7B6F4 8008CEE4 18006200 */  mult       $v1, $v0
    /* 7B6F8 8008CEE8 10000424 */  addiu      $a0, $zero, 0x10
    /* 7B6FC 8008CEEC 10100000 */  mfhi       $v0
    /* 7B700 8008CEF0 21104300 */  addu       $v0, $v0, $v1
    /* 7B704 8008CEF4 43110200 */  sra        $v0, $v0, 5
    /* 7B708 8008CEF8 C31F0300 */  sra        $v1, $v1, 31
    /* 7B70C 8008CEFC 23104300 */  subu       $v0, $v0, $v1
    /* 7B710 8008CF00 1A008200 */  div        $zero, $a0, $v0
    /* 7B714 8008CF04 12200000 */  mflo       $a0
    /* 7B718 8008CF08 0C00038E */  lw         $v1, 0xC($s0)
    /* 7B71C 8008CF0C 1400058E */  lw         $a1, 0x14($s0)
    /* 7B720 8008CF10 04188300 */  sllv       $v1, $v1, $a0
    /* 7B724 8008CF14 2128A300 */  addu       $a1, $a1, $v1
    /* 7B728 8008CF18 1A00A700 */  div        $zero, $a1, $a3
    /* 7B72C 8008CF1C 10300000 */  mfhi       $a2
    /* 7B730 8008CF20 0800028E */  lw         $v0, 0x8($s0)
    /* 7B734 8008CF24 1000038E */  lw         $v1, 0x10($s0)
    /* 7B738 8008CF28 04108200 */  sllv       $v0, $v0, $a0
    /* 7B73C 8008CF2C 140005AE */  sw         $a1, 0x14($s0)
    /* 7B740 8008CF30 21186200 */  addu       $v1, $v1, $v0
    /* 7B744 8008CF34 FFFF0225 */  addiu      $v0, $t0, -0x1
    /* 7B748 8008CF38 100003AE */  sw         $v1, 0x10($s0)
    /* 7B74C 8008CF3C 24186200 */  and        $v1, $v1, $v0
    /* 7B750 8008CF40 100003AE */  sw         $v1, 0x10($s0)
    /* 7B754 8008CF44 140006AE */  sw         $a2, 0x14($s0)
  .L8008CF48:
    /* 7B758 8008CF48 1400BF8F */  lw         $ra, 0x14($sp)
    /* 7B75C 8008CF4C 1000B08F */  lw         $s0, 0x10($sp)
    /* 7B760 8008CF50 0800E003 */  jr         $ra
    /* 7B764 8008CF54 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_8008CE34
