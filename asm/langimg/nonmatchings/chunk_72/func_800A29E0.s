nonmatching func_800A29E0, 0x60

glabel func_800A29E0
    /* 911F0 800A29E0 0D80033C */  lui        $v1, %hi(D_800D6080)
    /* 911F4 800A29E4 8060648C */  lw         $a0, %lo(D_800D6080)($v1)
    /* 911F8 800A29E8 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 911FC 800A29EC 1000BFAF */  sw         $ra, 0x10($sp)
    /* 91200 800A29F0 C8D6020C */  jal        TestEvent
    /* 91204 800A29F4 00000000 */   nop
    /* 91208 800A29F8 0D80053C */  lui        $a1, %hi(D_800D60B8)
    /* 9120C 800A29FC B860A48C */  lw         $a0, %lo(D_800D60B8)($a1)
    /* 91210 800A2A00 C8D6020C */  jal        TestEvent
    /* 91214 800A2A04 00000000 */   nop
    /* 91218 800A2A08 0D80033C */  lui        $v1, %hi(D_800D6078)
    /* 9121C 800A2A0C 7860648C */  lw         $a0, %lo(D_800D6078)($v1)
    /* 91220 800A2A10 C8D6020C */  jal        TestEvent
    /* 91224 800A2A14 00000000 */   nop
    /* 91228 800A2A18 0D80053C */  lui        $a1, %hi(D_800D6088)
    /* 9122C 800A2A1C 8860A48C */  lw         $a0, %lo(D_800D6088)($a1)
    /* 91230 800A2A20 C8D6020C */  jal        TestEvent
    /* 91234 800A2A24 00000000 */   nop
    /* 91238 800A2A28 0D80033C */  lui        $v1, %hi(D_800D6094)
    /* 9123C 800A2A2C 1000BF8F */  lw         $ra, 0x10($sp)
    /* 91240 800A2A30 FFFF0224 */  addiu      $v0, $zero, -0x1
    /* 91244 800A2A34 946062AC */  sw         $v0, %lo(D_800D6094)($v1)
    /* 91248 800A2A38 0800E003 */  jr         $ra
    /* 9124C 800A2A3C 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_800A29E0
