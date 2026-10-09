nonmatching func_800A6818, 0x38

glabel func_800A6818
    /* 95028 800A6818 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 9502C 800A681C 1400BFAF */  sw         $ra, 0x14($sp)
    /* 95030 800A6820 7C54000C */  jal        func_800151F0
    /* 95034 800A6824 1000B0AF */   sw        $s0, 0x10($sp)
    /* 95038 800A6828 21804000 */  addu       $s0, $v0, $zero
    /* 9503C 800A682C 04000012 */  beqz       $s0, .L800A6840
    /* 95040 800A6830 21100002 */   addu      $v0, $s0, $zero
    /* 95044 800A6834 8054000C */  jal        func_80015200
    /* 95048 800A6838 21200000 */   addu      $a0, $zero, $zero
    /* 9504C 800A683C 21100002 */  addu       $v0, $s0, $zero
  .L800A6840:
    /* 95050 800A6840 1400BF8F */  lw         $ra, 0x14($sp)
    /* 95054 800A6844 1000B08F */  lw         $s0, 0x10($sp)
    /* 95058 800A6848 0800E003 */  jr         $ra
    /* 9505C 800A684C 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_800A6818
