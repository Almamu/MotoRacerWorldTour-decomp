nonmatching func_8006D7E4, 0x60

glabel func_8006D7E4
    /* 5BFF4 8006D7E4 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 5BFF8 8006D7E8 1000B0AF */  sw         $s0, 0x10($sp)
    /* 5BFFC 8006D7EC 21808000 */  addu       $s0, $a0, $zero
    /* 5C000 8006D7F0 1800BFAF */  sw         $ra, 0x18($sp)
    /* 5C004 8006D7F4 1400B1AF */  sw         $s1, 0x14($sp)
    /* 5C008 8006D7F8 2A000282 */  lb         $v0, 0x2A($s0)
    /* 5C00C 8006D7FC 00000000 */  nop
    /* 5C010 8006D800 0B004014 */  bnez       $v0, .L8006D830
    /* 5C014 8006D804 FFFF1124 */   addiu     $s1, $zero, -0x1
    /* 5C018 8006D808 1000058E */  lw         $a1, 0x10($s0)
    /* 5C01C 8006D80C 00000000 */  nop
    /* 5C020 8006D810 0600B110 */  beq        $a1, $s1, .L8006D82C
    /* 5C024 8006D814 01000224 */   addiu     $v0, $zero, 0x1
    /* 5C028 8006D818 0D80043C */  lui        $a0, %hi(D_800D11D0)
    /* 5C02C 8006D81C DD52000C */  jal        func_80014B74
    /* 5C030 8006D820 D0118424 */   addiu     $a0, $a0, %lo(D_800D11D0)
    /* 5C034 8006D824 100011AE */  sw         $s1, 0x10($s0)
    /* 5C038 8006D828 01000224 */  addiu      $v0, $zero, 0x1
  .L8006D82C:
    /* 5C03C 8006D82C 2A0002A2 */  sb         $v0, 0x2A($s0)
  .L8006D830:
    /* 5C040 8006D830 1800BF8F */  lw         $ra, 0x18($sp)
    /* 5C044 8006D834 1400B18F */  lw         $s1, 0x14($sp)
    /* 5C048 8006D838 1000B08F */  lw         $s0, 0x10($sp)
    /* 5C04C 8006D83C 0800E003 */  jr         $ra
    /* 5C050 8006D840 2000BD27 */   addiu     $sp, $sp, 0x20
endlabel func_8006D7E4
