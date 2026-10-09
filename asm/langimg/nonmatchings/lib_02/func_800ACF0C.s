nonmatching func_800ACF0C, 0x80

glabel func_800ACF0C
    /* 9B71C 800ACF0C 03008014 */  bnez       $a0, .L800ACF1C
    /* 9B720 800ACF10 F0FFBD27 */   addiu     $sp, $sp, -0x10
    /* 9B724 800ACF14 E1B30208 */  j          .L800ACF84
    /* 9B728 800ACF18 21100000 */   addu      $v0, $zero, $zero
  .L800ACF1C:
    /* 9B72C 800ACF1C 00008590 */  lbu        $a1, 0x0($a0)
    /* 9B730 800ACF20 00000000 */  nop
    /* 9B734 800ACF24 C2280500 */  srl        $a1, $a1, 3
    /* 9B738 800ACF28 0000A5AF */  sw         $a1, 0x0($sp)
    /* 9B73C 800ACF2C 04008684 */  lh         $a2, 0x4($a0)
    /* 9B740 800ACF30 00000000 */  nop
    /* 9B744 800ACF34 23300600 */  negu       $a2, $a2
    /* 9B748 800ACF38 FF00C630 */  andi       $a2, $a2, 0xFF
    /* 9B74C 800ACF3C C3300600 */  sra        $a2, $a2, 3
    /* 9B750 800ACF40 0800A6AF */  sw         $a2, 0x8($sp)
    /* 9B754 800ACF44 02008290 */  lbu        $v0, 0x2($a0)
    /* 9B758 800ACF48 802A0500 */  sll        $a1, $a1, 10
    /* 9B75C 800ACF4C C2100200 */  srl        $v0, $v0, 3
    /* 9B760 800ACF50 0400A2AF */  sw         $v0, 0x4($sp)
    /* 9B764 800ACF54 C0130200 */  sll        $v0, $v0, 15
    /* 9B768 800ACF58 06008384 */  lh         $v1, 0x6($a0)
    /* 9B76C 800ACF5C 00E2043C */  lui        $a0, (0xE2000000 >> 16)
    /* 9B770 800ACF60 2528A400 */  or         $a1, $a1, $a0
    /* 9B774 800ACF64 25104500 */  or         $v0, $v0, $a1
    /* 9B778 800ACF68 23180300 */  negu       $v1, $v1
    /* 9B77C 800ACF6C FF006330 */  andi       $v1, $v1, 0xFF
    /* 9B780 800ACF70 C3180300 */  sra        $v1, $v1, 3
    /* 9B784 800ACF74 40210300 */  sll        $a0, $v1, 5
    /* 9B788 800ACF78 25104400 */  or         $v0, $v0, $a0
    /* 9B78C 800ACF7C 25104600 */  or         $v0, $v0, $a2
    /* 9B790 800ACF80 0C00A3AF */  sw         $v1, 0xC($sp)
  .L800ACF84:
    /* 9B794 800ACF84 0800E003 */  jr         $ra
    /* 9B798 800ACF88 1000BD27 */   addiu     $sp, $sp, 0x10
endlabel func_800ACF0C
