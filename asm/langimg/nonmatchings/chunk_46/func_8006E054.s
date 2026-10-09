nonmatching func_8006E054, 0x34

glabel func_8006E054
    /* 5C864 8006E054 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 5C868 8006E058 1000B0AF */  sw         $s0, 0x10($sp)
    /* 5C86C 8006E05C 21808000 */  addu       $s0, $a0, $zero
    /* 5C870 8006E060 0D80023C */  lui        $v0, %hi(D_800C8428)
    /* 5C874 8006E064 28844224 */  addiu      $v0, $v0, %lo(D_800C8428)
    /* 5C878 8006E068 1400BFAF */  sw         $ra, 0x14($sp)
    /* 5C87C 8006E06C 22B8010C */  jal        func_8006E088
    /* 5C880 8006E070 0C0002AE */   sw        $v0, 0xC($s0)
    /* 5C884 8006E074 21100002 */  addu       $v0, $s0, $zero
    /* 5C888 8006E078 1400BF8F */  lw         $ra, 0x14($sp)
    /* 5C88C 8006E07C 1000B08F */  lw         $s0, 0x10($sp)
    /* 5C890 8006E080 0800E003 */  jr         $ra
    /* 5C894 8006E084 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_8006E054
