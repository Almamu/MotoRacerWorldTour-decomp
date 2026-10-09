nonmatching PadSetActAlign, 0x38

glabel PadSetActAlign
    /* 9EF18 800B0708 0C80023C */  lui        $v0, %hi(D_800C3C9C)
    /* 9EF1C 800B070C 9C3C428C */  lw         $v0, %lo(D_800C3C9C)($v0)
    /* 9EF20 800B0710 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 9EF24 800B0714 1000B0AF */  sw         $s0, 0x10($sp)
    /* 9EF28 800B0718 1400BFAF */  sw         $ra, 0x14($sp)
    /* 9EF2C 800B071C 09F84000 */  jalr       $v0
    /* 9EF30 800B0720 2180A000 */   addu      $s0, $a1, $zero
    /* 9EF34 800B0724 21204000 */  addu       $a0, $v0, $zero
    /* 9EF38 800B0728 6CC6020C */  jal        _padSetActAlign
    /* 9EF3C 800B072C 21280002 */   addu      $a1, $s0, $zero
    /* 9EF40 800B0730 1400BF8F */  lw         $ra, 0x14($sp)
    /* 9EF44 800B0734 1000B08F */  lw         $s0, 0x10($sp)
    /* 9EF48 800B0738 0800E003 */  jr         $ra
    /* 9EF4C 800B073C 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel PadSetActAlign
