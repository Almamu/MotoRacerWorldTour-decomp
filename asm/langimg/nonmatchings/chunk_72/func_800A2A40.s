nonmatching func_800A2A40, 0x60

glabel func_800A2A40
    /* 91250 800A2A40 0D80033C */  lui        $v1, %hi(D_800D607C)
    /* 91254 800A2A44 7C60648C */  lw         $a0, %lo(D_800D607C)($v1)
    /* 91258 800A2A48 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 9125C 800A2A4C 1000BFAF */  sw         $ra, 0x10($sp)
    /* 91260 800A2A50 C8D6020C */  jal        TestEvent
    /* 91264 800A2A54 00000000 */   nop
    /* 91268 800A2A58 0D80053C */  lui        $a1, %hi(D_800D60B0)
    /* 9126C 800A2A5C B060A48C */  lw         $a0, %lo(D_800D60B0)($a1)
    /* 91270 800A2A60 C8D6020C */  jal        TestEvent
    /* 91274 800A2A64 00000000 */   nop
    /* 91278 800A2A68 0D80033C */  lui        $v1, %hi(D_800D6074)
    /* 9127C 800A2A6C 7460648C */  lw         $a0, %lo(D_800D6074)($v1)
    /* 91280 800A2A70 C8D6020C */  jal        TestEvent
    /* 91284 800A2A74 00000000 */   nop
    /* 91288 800A2A78 0D80053C */  lui        $a1, %hi(D_800D6084)
    /* 9128C 800A2A7C 8460A48C */  lw         $a0, %lo(D_800D6084)($a1)
    /* 91290 800A2A80 C8D6020C */  jal        TestEvent
    /* 91294 800A2A84 00000000 */   nop
    /* 91298 800A2A88 0D80033C */  lui        $v1, %hi(D_800D60C0)
    /* 9129C 800A2A8C 1000BF8F */  lw         $ra, 0x10($sp)
    /* 912A0 800A2A90 FFFF0224 */  addiu      $v0, $zero, -0x1
    /* 912A4 800A2A94 C06062AC */  sw         $v0, %lo(D_800D60C0)($v1)
    /* 912A8 800A2A98 0800E003 */  jr         $ra
    /* 912AC 800A2A9C 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_800A2A40
