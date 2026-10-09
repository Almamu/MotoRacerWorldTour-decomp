nonmatching func_800B70F4, 0x3C

glabel func_800B70F4
    /* A5904 800B70F4 0C80063C */  lui        $a2, %hi(D_800C46E4)
    /* A5908 800B70F8 E446C68C */  lw         $a2, %lo(D_800C46E4)($a2)
    /* A590C 800B70FC E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* A5910 800B7100 0700C018 */  blez       $a2, .L800B7120
    /* A5914 800B7104 1000BFAF */   sw        $ra, 0x10($sp)
    /* A5918 800B7108 0E80053C */  lui        $a1, %hi(D_800DE790)
    /* A591C 800B710C 90E7A524 */  addiu      $a1, $a1, %lo(D_800DE790)
    /* A5920 800B7110 F8D6020C */  jal        func_800B5BE0
    /* A5924 800B7114 01000424 */   addiu     $a0, $zero, 0x1
    /* A5928 800B7118 0C80013C */  lui        $at, %hi(D_800C46E4)
    /* A592C 800B711C E44620AC */  sw         $zero, %lo(D_800C46E4)($at)
  .L800B7120:
    /* A5930 800B7120 1000BF8F */  lw         $ra, 0x10($sp)
    /* A5934 800B7124 1800BD27 */  addiu      $sp, $sp, 0x18
    /* A5938 800B7128 0800E003 */  jr         $ra
    /* A593C 800B712C 00000000 */   nop
endlabel func_800B70F4
