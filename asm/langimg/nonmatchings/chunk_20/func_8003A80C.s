nonmatching func_8003A80C, 0x60

glabel func_8003A80C
    /* 2901C 8003A80C E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 29020 8003A810 1000B0AF */  sw         $s0, 0x10($sp)
    /* 29024 8003A814 21808000 */  addu       $s0, $a0, $zero
    /* 29028 8003A818 1400B1AF */  sw         $s1, 0x14($sp)
    /* 2902C 8003A81C 2188A000 */  addu       $s1, $a1, $zero
    /* 29030 8003A820 21202002 */  addu       $a0, $s1, $zero
    /* 29034 8003A824 1800B2AF */  sw         $s2, 0x18($sp)
    /* 29038 8003A828 1C00BFAF */  sw         $ra, 0x1C($sp)
    /* 2903C 8003A82C 2ED9020C */  jal        strlen
    /* 29040 8003A830 2190C000 */   addu      $s2, $a2, $zero
    /* 29044 8003A834 21282002 */  addu       $a1, $s1, $zero
    /* 29048 8003A838 3800048E */  lw         $a0, 0x38($s0)
    /* 2904C 8003A83C 845F000C */  jal        func_80017E10
    /* 29050 8003A840 21304000 */   addu      $a2, $v0, $zero
    /* 29054 8003A844 21200002 */  addu       $a0, $s0, $zero
    /* 29058 8003A848 21284000 */  addu       $a1, $v0, $zero
    /* 2905C 8003A84C D8E9000C */  jal        func_8003A760
    /* 29060 8003A850 21304002 */   addu      $a2, $s2, $zero
    /* 29064 8003A854 1C00BF8F */  lw         $ra, 0x1C($sp)
    /* 29068 8003A858 1800B28F */  lw         $s2, 0x18($sp)
    /* 2906C 8003A85C 1400B18F */  lw         $s1, 0x14($sp)
    /* 29070 8003A860 1000B08F */  lw         $s0, 0x10($sp)
    /* 29074 8003A864 0800E003 */  jr         $ra
    /* 29078 8003A868 2000BD27 */   addiu     $sp, $sp, 0x20
endlabel func_8003A80C
