nonmatching func_800AEBF0, 0x48

glabel func_800AEBF0
    /* 9D400 800AEBF0 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 9D404 800AEBF4 1000BFAF */  sw         $ra, 0x10($sp)
    /* 9D408 800AEBF8 A8BA020C */  jal        func_800AEAA0
    /* 9D40C 800AEBFC 00000000 */   nop
    /* 9D410 800AEC00 09004010 */  beqz       $v0, .L800AEC28
    /* 9D414 800AEC04 21100000 */   addu      $v0, $zero, $zero
    /* 9D418 800AEC08 2ABA020C */  jal        func_800AE8A8
    /* 9D41C 800AEC0C 00000000 */   nop
    /* 9D420 800AEC10 0E80033C */  lui        $v1, %hi(D_800DE410)
    /* 9D424 800AEC14 10E462AC */  sw         $v0, %lo(D_800DE410)($v1)
    /* 9D428 800AEC18 01000224 */  addiu      $v0, $zero, 0x1
    /* 9D42C 800AEC1C 0C80043C */  lui        $a0, %hi(D_800C3C64)
    /* 9D430 800AEC20 01000324 */  addiu      $v1, $zero, 0x1
    /* 9D434 800AEC24 643C83AC */  sw         $v1, %lo(D_800C3C64)($a0)
  .L800AEC28:
    /* 9D438 800AEC28 1000BF8F */  lw         $ra, 0x10($sp)
    /* 9D43C 800AEC2C 00000000 */  nop
    /* 9D440 800AEC30 0800E003 */  jr         $ra
    /* 9D444 800AEC34 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_800AEBF0
