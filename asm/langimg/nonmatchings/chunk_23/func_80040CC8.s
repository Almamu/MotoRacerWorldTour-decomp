nonmatching func_80040CC8, 0x54

glabel func_80040CC8
    /* 2F4D8 80040CC8 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 2F4DC 80040CCC 1000B0AF */  sw         $s0, 0x10($sp)
    /* 2F4E0 80040CD0 21808000 */  addu       $s0, $a0, $zero
    /* 2F4E4 80040CD4 1400BFAF */  sw         $ra, 0x14($sp)
    /* 2F4E8 80040CD8 6800038E */  lw         $v1, 0x68($s0)
    /* 2F4EC 80040CDC 00000000 */  nop
    /* 2F4F0 80040CE0 A8006484 */  lh         $a0, 0xA8($v1)
    /* 2F4F4 80040CE4 AC00628C */  lw         $v0, 0xAC($v1)
    /* 2F4F8 80040CE8 00000000 */  nop
    /* 2F4FC 80040CEC 09F84000 */  jalr       $v0
    /* 2F500 80040CF0 21200402 */   addu      $a0, $s0, $a0
    /* 2F504 80040CF4 04004010 */  beqz       $v0, .L80040D08
    /* 2F508 80040CF8 21180000 */   addu      $v1, $zero, $zero
    /* 2F50C 80040CFC 87FF000C */  jal        func_8003FE1C
    /* 2F510 80040D00 21200002 */   addu      $a0, $s0, $zero
    /* 2F514 80040D04 2B180200 */  sltu       $v1, $zero, $v0
  .L80040D08:
    /* 2F518 80040D08 1400BF8F */  lw         $ra, 0x14($sp)
    /* 2F51C 80040D0C 1000B08F */  lw         $s0, 0x10($sp)
    /* 2F520 80040D10 21106000 */  addu       $v0, $v1, $zero
    /* 2F524 80040D14 0800E003 */  jr         $ra
    /* 2F528 80040D18 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_80040CC8
