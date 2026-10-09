nonmatching func_80014634, 0x48

glabel func_80014634
    /* 2E44 80014634 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 2E48 80014638 1000B0AF */  sw         $s0, 0x10($sp)
    /* 2E4C 8001463C 21808000 */  addu       $s0, $a0, $zero
    /* 2E50 80014640 97510008 */  j          .L8001465C
    /* 2E54 80014644 1400BFAF */   sw        $ra, 0x14($sp)
  .L80014648:
    /* 2E58 80014648 B4AA020C */  jal        func_800AAAD0
    /* 2E5C 8001464C 21200000 */   addu      $a0, $zero, $zero
    /* 2E60 80014650 21200002 */  addu       $a0, $s0, $zero
    /* 2E64 80014654 CE4F000C */  jal        func_80013F38
    /* 2E68 80014658 14000524 */   addiu     $a1, $zero, 0x14
  .L8001465C:
    /* 2E6C 8001465C 6A51000C */  jal        func_800145A8
    /* 2E70 80014660 21200002 */   addu      $a0, $s0, $zero
    /* 2E74 80014664 F8FF4014 */  bnez       $v0, .L80014648
    /* 2E78 80014668 00000000 */   nop
    /* 2E7C 8001466C 1400BF8F */  lw         $ra, 0x14($sp)
    /* 2E80 80014670 1000B08F */  lw         $s0, 0x10($sp)
    /* 2E84 80014674 0800E003 */  jr         $ra
    /* 2E88 80014678 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_80014634
