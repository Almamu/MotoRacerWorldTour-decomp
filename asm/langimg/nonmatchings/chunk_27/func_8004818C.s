nonmatching func_8004818C, 0x54

glabel func_8004818C
    /* 3699C 8004818C E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 369A0 80048190 1000B0AF */  sw         $s0, 0x10($sp)
    /* 369A4 80048194 21808000 */  addu       $s0, $a0, $zero
    /* 369A8 80048198 1400BFAF */  sw         $ra, 0x14($sp)
    /* 369AC 8004819C 6800038E */  lw         $v1, 0x68($s0)
    /* 369B0 800481A0 00000000 */  nop
    /* 369B4 800481A4 A8006484 */  lh         $a0, 0xA8($v1)
    /* 369B8 800481A8 AC00628C */  lw         $v0, 0xAC($v1)
    /* 369BC 800481AC 00000000 */  nop
    /* 369C0 800481B0 09F84000 */  jalr       $v0
    /* 369C4 800481B4 21200402 */   addu      $a0, $s0, $a0
    /* 369C8 800481B8 04004010 */  beqz       $v0, .L800481CC
    /* 369CC 800481BC 21180000 */   addu      $v1, $zero, $zero
    /* 369D0 800481C0 87FF000C */  jal        func_8003FE1C
    /* 369D4 800481C4 21200002 */   addu      $a0, $s0, $zero
    /* 369D8 800481C8 2B180200 */  sltu       $v1, $zero, $v0
  .L800481CC:
    /* 369DC 800481CC 1400BF8F */  lw         $ra, 0x14($sp)
    /* 369E0 800481D0 1000B08F */  lw         $s0, 0x10($sp)
    /* 369E4 800481D4 21106000 */  addu       $v0, $v1, $zero
    /* 369E8 800481D8 0800E003 */  jr         $ra
    /* 369EC 800481DC 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_8004818C
