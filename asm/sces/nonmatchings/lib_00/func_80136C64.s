nonmatching func_80136C64, 0x24

glabel func_80136C64
    /* 4130 80136C64 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 4134 80136C68 03008010 */  beqz       $a0, .L80136C78
    /* 4138 80136C6C 1000BFAF */   sw        $ra, 0x10($sp)
    /* 413C 80136C70 9B29050C */  jal        func_8014A66C
    /* 4140 80136C74 00000000 */   nop
  .L80136C78:
    /* 4144 80136C78 1000BF8F */  lw         $ra, 0x10($sp)
    /* 4148 80136C7C 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 414C 80136C80 0800E003 */  jr         $ra
    /* 4150 80136C84 00000000 */   nop
endlabel func_80136C64
