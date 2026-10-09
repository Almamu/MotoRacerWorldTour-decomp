nonmatching func_8006C82C, 0x30

glabel func_8006C82C
    /* 5B03C 8006C82C E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 5B040 8006C830 1000B0AF */  sw         $s0, 0x10($sp)
    /* 5B044 8006C834 0D80103C */  lui        $s0, %hi(D_800D11D0)
    /* 5B048 8006C838 D0111026 */  addiu      $s0, $s0, %lo(D_800D11D0)
    /* 5B04C 8006C83C 1400BFAF */  sw         $ra, 0x14($sp)
    /* 5B050 8006C840 DD51000C */  jal        func_80014774
    /* 5B054 8006C844 21200002 */   addu      $a0, $s0, $zero
    /* 5B058 8006C848 1400BF8F */  lw         $ra, 0x14($sp)
    /* 5B05C 8006C84C 030000A2 */  sb         $zero, 0x3($s0)
    /* 5B060 8006C850 1000B08F */  lw         $s0, 0x10($sp)
    /* 5B064 8006C854 0800E003 */  jr         $ra
    /* 5B068 8006C858 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_8006C82C
