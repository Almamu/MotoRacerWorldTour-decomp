nonmatching func_8006BECC, 0x80

glabel func_8006BECC
    /* 5A6DC 8006BECC E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 5A6E0 8006BED0 1000B0AF */  sw         $s0, 0x10($sp)
    /* 5A6E4 8006BED4 21808000 */  addu       $s0, $a0, $zero
    /* 5A6E8 8006BED8 14040426 */  addiu      $a0, $s0, 0x414
    /* 5A6EC 8006BEDC 21280000 */  addu       $a1, $zero, $zero
    /* 5A6F0 8006BEE0 0C000624 */  addiu      $a2, $zero, 0xC
    /* 5A6F4 8006BEE4 0D80023C */  lui        $v0, %hi(D_800D5FD8)
    /* 5A6F8 8006BEE8 D85F428C */  lw         $v0, %lo(D_800D5FD8)($v0)
    /* 5A6FC 8006BEEC FDFF0324 */  addiu      $v1, $zero, -0x3
    /* 5A700 8006BEF0 1400BFAF */  sw         $ra, 0x14($sp)
    /* 5A704 8006BEF4 743080AF */  sw         $zero, %gp_rel(D_800C7764)($gp)
    /* 5A708 8006BEF8 24104300 */  and        $v0, $v0, $v1
    /* 5A70C 8006BEFC 0D80013C */  lui        $at, %hi(D_800D5FD8)
    /* 5A710 8006BF00 D85F22AC */  sw         $v0, %lo(D_800D5FD8)($at)
    /* 5A714 8006BF04 000000AE */  sw         $zero, 0x0($s0)
    /* 5A718 8006BF08 100400AE */  sw         $zero, 0x410($s0)
    /* 5A71C 8006BF0C 040000AE */  sw         $zero, 0x4($s0)
    /* 5A720 8006BF10 0C0400AE */  sw         $zero, 0x40C($s0)
    /* 5A724 8006BF14 56D8020C */  jal        memset
    /* 5A728 8006BF18 540400AE */   sw        $zero, 0x454($s0)
    /* 5A72C 8006BF1C 20040426 */  addiu      $a0, $s0, 0x420
    /* 5A730 8006BF20 21280000 */  addu       $a1, $zero, $zero
    /* 5A734 8006BF24 56D8020C */  jal        memset
    /* 5A738 8006BF28 0C000624 */   addiu     $a2, $zero, 0xC
    /* 5A73C 8006BF2C 2C040426 */  addiu      $a0, $s0, 0x42C
    /* 5A740 8006BF30 02000524 */  addiu      $a1, $zero, 0x2
    /* 5A744 8006BF34 465A020C */  jal        func_80096918
    /* 5A748 8006BF38 080000AE */   sw        $zero, 0x8($s0)
    /* 5A74C 8006BF3C 1400BF8F */  lw         $ra, 0x14($sp)
    /* 5A750 8006BF40 1000B08F */  lw         $s0, 0x10($sp)
    /* 5A754 8006BF44 0800E003 */  jr         $ra
    /* 5A758 8006BF48 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_8006BECC
