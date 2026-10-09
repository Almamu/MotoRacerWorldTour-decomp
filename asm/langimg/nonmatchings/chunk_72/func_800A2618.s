nonmatching func_800A2618, 0x44

glabel func_800A2618
    /* 90E28 800A2618 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 90E2C 800A261C 1000BFAF */  sw         $ra, 0x10($sp)
    /* 90E30 800A2620 98AA020C */  jal        _card_chan
    /* 90E34 800A2624 00000000 */   nop
    /* 90E38 800A2628 0D80043C */  lui        $a0, %hi(D_800D60C0)
    /* 90E3C 800A262C 02000324 */  addiu      $v1, $zero, 0x2
    /* 90E40 800A2630 0D80053C */  lui        $a1, %hi(D_800D60C8)
    /* 90E44 800A2634 C860A524 */  addiu      $a1, $a1, %lo(D_800D60C8)
    /* 90E48 800A2638 C06083AC */  sw         $v1, %lo(D_800D60C0)($a0)
    /* 90E4C 800A263C 0800A38C */  lw         $v1, 0x8($a1)
    /* 90E50 800A2640 1000BF8F */  lw         $ra, 0x10($sp)
    /* 90E54 800A2644 0D80043C */  lui        $a0, %hi(D_800D6070)
    /* 90E58 800A2648 706082AC */  sw         $v0, %lo(D_800D6070)($a0)
    /* 90E5C 800A264C 01006324 */  addiu      $v1, $v1, 0x1
    /* 90E60 800A2650 0800A3AC */  sw         $v1, 0x8($a1)
    /* 90E64 800A2654 0800E003 */  jr         $ra
    /* 90E68 800A2658 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_800A2618
