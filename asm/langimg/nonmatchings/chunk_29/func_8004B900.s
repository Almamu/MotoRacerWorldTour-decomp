nonmatching func_8004B900, 0x6C

glabel func_8004B900
    /* 3A110 8004B900 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 3A114 8004B904 1000A4AF */  sw         $a0, 0x10($sp)
    /* 3A118 8004B908 0D80043C */  lui        $a0, %hi(D_800CABC0)
    /* 3A11C 8004B90C C0AB8424 */  addiu      $a0, $a0, %lo(D_800CABC0)
    /* 3A120 8004B910 1800B0AF */  sw         $s0, 0x18($sp)
    /* 3A124 8004B914 2180A000 */  addu       $s0, $a1, $zero
    /* 3A128 8004B918 21280000 */  addu       $a1, $zero, $zero
    /* 3A12C 8004B91C FFFF0624 */  addiu      $a2, $zero, -0x1
    /* 3A130 8004B920 1C00BFAF */  sw         $ra, 0x1C($sp)
    /* 3A134 8004B924 5A14010C */  jal        func_80045168
    /* 3A138 8004B928 01000724 */   addiu     $a3, $zero, 0x1
    /* 3A13C 8004B92C 0D80043C */  lui        $a0, %hi(D_800CABC0)
    /* 3A140 8004B930 C0AB8424 */  addiu      $a0, $a0, %lo(D_800CABC0)
    /* 3A144 8004B934 21280000 */  addu       $a1, $zero, $zero
    /* 3A148 8004B938 FFFF0624 */  addiu      $a2, $zero, -0x1
    /* 3A14C 8004B93C 01000724 */  addiu      $a3, $zero, 0x1
    /* 3A150 8004B940 5A14010C */  jal        func_80045168
    /* 3A154 8004B944 1000B0AF */   sw        $s0, 0x10($sp)
    /* 3A158 8004B948 202D010C */  jal        func_8004B480
    /* 3A15C 8004B94C 00000000 */   nop
    /* 3A160 8004B950 1C00BF8F */  lw         $ra, 0x1C($sp)
    /* 3A164 8004B954 1800B08F */  lw         $s0, 0x18($sp)
    /* 3A168 8004B958 01000324 */  addiu      $v1, $zero, 0x1
    /* 3A16C 8004B95C 0D80013C */  lui        $at, %hi(D_800D5FCC)
    /* 3A170 8004B960 CC5F23AC */  sw         $v1, %lo(D_800D5FCC)($at)
    /* 3A174 8004B964 0800E003 */  jr         $ra
    /* 3A178 8004B968 2000BD27 */   addiu     $sp, $sp, 0x20
endlabel func_8004B900
