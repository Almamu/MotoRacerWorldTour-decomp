nonmatching func_80134C68, 0x28

glabel func_80134C68
    /* 2134 80134C68 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 2138 80134C6C 0100A530 */  andi       $a1, $a1, 0x1
    /* 213C 80134C70 0300A010 */  beqz       $a1, .L80134C80
    /* 2140 80134C74 1000BFAF */   sw        $ra, 0x10($sp)
    /* 2144 80134C78 19DB040C */  jal        func_80136C64
    /* 2148 80134C7C 00000000 */   nop
  .L80134C80:
    /* 214C 80134C80 1000BF8F */  lw         $ra, 0x10($sp)
    /* 2150 80134C84 00000000 */  nop
    /* 2154 80134C88 0800E003 */  jr         $ra
    /* 2158 80134C8C 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_80134C68
