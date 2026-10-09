nonmatching func_8005D12C, 0x30

glabel func_8005D12C
    /* 4B93C 8005D12C E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 4B940 8005D130 1000BFAF */  sw         $ra, 0x10($sp)
    /* 4B944 8005D134 5C13010C */  jal        func_80044D70
    /* 4B948 8005D138 00000000 */   nop
    /* 4B94C 8005D13C 0D80033C */  lui        $v1, %hi(D_800C9EFC)
    /* 4B950 8005D140 FC9E638C */  lw         $v1, %lo(D_800C9EFC)($v1)
    /* 4B954 8005D144 1000BF8F */  lw         $ra, 0x10($sp)
    /* 4B958 8005D148 01000224 */  addiu      $v0, $zero, 0x1
    /* 4B95C 8005D14C 0D80013C */  lui        $at, %hi(D_800C8C0C)
    /* 4B960 8005D150 0C8C23AC */  sw         $v1, %lo(D_800C8C0C)($at)
    /* 4B964 8005D154 0800E003 */  jr         $ra
    /* 4B968 8005D158 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_8005D12C
