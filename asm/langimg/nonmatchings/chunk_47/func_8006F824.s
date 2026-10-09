nonmatching func_8006F824, 0x34

glabel func_8006F824
    /* 5E034 8006F824 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 5E038 8006F828 40110400 */  sll        $v0, $a0, 5
    /* 5E03C 8006F82C 23104400 */  subu       $v0, $v0, $a0
    /* 5E040 8006F830 80100200 */  sll        $v0, $v0, 2
    /* 5E044 8006F834 0D80043C */  lui        $a0, %hi(D_800CB5E0)
    /* 5E048 8006F838 E0B58424 */  addiu      $a0, $a0, %lo(D_800CB5E0)
    /* 5E04C 8006F83C 1000BFAF */  sw         $ra, 0x10($sp)
    /* 5E050 8006F840 78BC010C */  jal        func_8006F1E0
    /* 5E054 8006F844 21204400 */   addu      $a0, $v0, $a0
    /* 5E058 8006F848 1000BF8F */  lw         $ra, 0x10($sp)
    /* 5E05C 8006F84C 00000000 */  nop
    /* 5E060 8006F850 0800E003 */  jr         $ra
    /* 5E064 8006F854 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_8006F824
