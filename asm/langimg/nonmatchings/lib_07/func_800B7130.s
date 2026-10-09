nonmatching func_800B7130, 0x3C

glabel func_800B7130
    /* A5940 800B7130 00009FAC */  sw         $ra, 0x0($a0)
    /* A5944 800B7134 2C009CAC */  sw         $gp, 0x2C($a0)
    /* A5948 800B7138 04009DAC */  sw         $sp, 0x4($a0)
    /* A594C 800B713C 08009EAC */  sw         $fp, 0x8($a0)
    /* A5950 800B7140 0C0090AC */  sw         $s0, 0xC($a0)
    /* A5954 800B7144 100091AC */  sw         $s1, 0x10($a0)
    /* A5958 800B7148 140092AC */  sw         $s2, 0x14($a0)
    /* A595C 800B714C 180093AC */  sw         $s3, 0x18($a0)
    /* A5960 800B7150 1C0094AC */  sw         $s4, 0x1C($a0)
    /* A5964 800B7154 200095AC */  sw         $s5, 0x20($a0)
    /* A5968 800B7158 240096AC */  sw         $s6, 0x24($a0)
    /* A596C 800B715C 280097AC */  sw         $s7, 0x28($a0)
    /* A5970 800B7160 21100000 */  addu       $v0, $zero, $zero
    /* A5974 800B7164 0800E003 */  jr         $ra
    /* A5978 800B7168 00000000 */   nop
endlabel func_800B7130
