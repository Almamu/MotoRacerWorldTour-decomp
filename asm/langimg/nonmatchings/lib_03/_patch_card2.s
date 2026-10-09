nonmatching _patch_card2, 0x70

glabel _patch_card2
    /* 9D6D0 800AEEC0 0E80013C */  lui        $at, %hi(D_800DE378)
    /* 9D6D4 800AEEC4 78E33FAC */  sw         $ra, %lo(D_800DE378)($at)
    /* 9D6D8 800AEEC8 E0D6020C */  jal        EnterCriticalSection
    /* 9D6DC 800AEECC 00000000 */   nop
    /* 9D6E0 800AEED0 57000924 */  addiu      $t1, $zero, 0x57
    /* 9D6E4 800AEED4 B0000A24 */  addiu      $t2, $zero, 0xB0
    /* 9D6E8 800AEED8 09F84001 */  jalr       $t2
    /* 9D6EC 800AEEDC 00000000 */   nop
    /* 9D6F0 800AEEE0 6C01428C */  lw         $v0, 0x16C($v0)
    /* 9D6F4 800AEEE4 00000000 */  nop
    /* 9D6F8 800AEEE8 C809438C */  lw         $v1, 0x9C8($v0)
    /* 9D6FC 800AEEEC 0B800A3C */  lui        $t2, %hi(func_800AEE04 + 0x14)
    /* 9D700 800AEEF0 18EE4A25 */  addiu      $t2, $t2, %lo(func_800AEE04 + 0x14)
    /* 9D704 800AEEF4 0B80093C */  lui        $t1, %hi(_patch_card)
    /* 9D708 800AEEF8 2CEE2925 */  addiu      $t1, $t1, %lo(_patch_card)
  .L800AEEFC:
    /* 9D70C 800AEEFC 0000488D */  lw         $t0, 0x0($t2)
    /* 9D710 800AEF00 00000000 */  nop
    /* 9D714 800AEF04 C80948AC */  sw         $t0, 0x9C8($v0)
    /* 9D718 800AEF08 04004A25 */  addiu      $t2, $t2, 0x4
    /* 9D71C 800AEF0C FBFF4915 */  bne        $t2, $t1, .L800AEEFC
    /* 9D720 800AEF10 04004224 */   addiu     $v0, $v0, 0x4
    /* 9D724 800AEF14 A8D6020C */  jal        FlushCache
    /* 9D728 800AEF18 00000000 */   nop
    /* 9D72C 800AEF1C 0E801F3C */  lui        $ra, %hi(D_800DE378)
    /* 9D730 800AEF20 78E3FF8F */  lw         $ra, %lo(D_800DE378)($ra)
    /* 9D734 800AEF24 00000000 */  nop
    /* 9D738 800AEF28 0800E003 */  jr         $ra
    /* 9D73C 800AEF2C 00000000 */   nop
endlabel _patch_card2
