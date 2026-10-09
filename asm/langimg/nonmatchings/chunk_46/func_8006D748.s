nonmatching func_8006D748, 0x9C

glabel func_8006D748
    /* 5BF58 8006D748 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 5BF5C 8006D74C 1000B0AF */  sw         $s0, 0x10($sp)
    /* 5BF60 8006D750 21808000 */  addu       $s0, $a0, $zero
    /* 5BF64 8006D754 FFFF0224 */  addiu      $v0, $zero, -0x1
    /* 5BF68 8006D758 1800BFAF */  sw         $ra, 0x18($sp)
    /* 5BF6C 8006D75C 1400B1AF */  sw         $s1, 0x14($sp)
    /* 5BF70 8006D760 0400048E */  lw         $a0, 0x4($s0)
    /* 5BF74 8006D764 01000324 */  addiu      $v1, $zero, 0x1
    /* 5BF78 8006D768 100002AE */  sw         $v0, 0x10($s0)
    /* 5BF7C 8006D76C 2A0003A2 */  sb         $v1, 0x2A($s0)
    /* 5BF80 8006D770 2E008694 */  lhu        $a2, 0x2E($a0)
    /* 5BF84 8006D774 00000000 */  nop
    /* 5BF88 8006D778 0600C230 */  andi       $v0, $a2, 0x6
    /* 5BF8C 8006D77C 08004010 */  beqz       $v0, .L8006D7A0
    /* 5BF90 8006D780 0D80113C */   lui       $s1, %hi(D_800D11D0)
    /* 5BF94 8006D784 D0112426 */  addiu      $a0, $s1, %lo(D_800D11D0)
    /* 5BF98 8006D788 0400C630 */  andi       $a2, $a2, 0x4
    /* 5BF9C 8006D78C 0100C62C */  sltiu      $a2, $a2, 0x1
    /* 5BFA0 8006D790 C0320600 */  sll        $a2, $a2, 11
    /* 5BFA4 8006D794 0E000586 */  lh         $a1, 0xE($s0)
    /* 5BFA8 8006D798 EBB50108 */  j          .L8006D7AC
    /* 5BFAC 8006D79C 5600C634 */   ori       $a2, $a2, 0x56
  .L8006D7A0:
    /* 5BFB0 8006D7A0 D0112426 */  addiu      $a0, $s1, %lo(D_800D11D0)
    /* 5BFB4 8006D7A4 0E000586 */  lh         $a1, 0xE($s0)
    /* 5BFB8 8006D7A8 21300000 */  addu       $a2, $zero, $zero
  .L8006D7AC:
    /* 5BFBC 8006D7AC A652000C */  jal        func_80014A98
    /* 5BFC0 8006D7B0 00000000 */   nop
    /* 5BFC4 8006D7B4 100002AE */  sw         $v0, 0x10($s0)
    /* 5BFC8 8006D7B8 B2B5010C */  jal        func_8006D6C8
    /* 5BFCC 8006D7BC 21200002 */   addu      $a0, $s0, $zero
    /* 5BFD0 8006D7C0 1000058E */  lw         $a1, 0x10($s0)
    /* 5BFD4 8006D7C4 C652000C */  jal        func_80014B18
    /* 5BFD8 8006D7C8 D0112426 */   addiu     $a0, $s1, %lo(D_800D11D0)
    /* 5BFDC 8006D7CC 1800BF8F */  lw         $ra, 0x18($sp)
    /* 5BFE0 8006D7D0 1400B18F */  lw         $s1, 0x14($sp)
    /* 5BFE4 8006D7D4 2A0000A2 */  sb         $zero, 0x2A($s0)
    /* 5BFE8 8006D7D8 1000B08F */  lw         $s0, 0x10($sp)
    /* 5BFEC 8006D7DC 0800E003 */  jr         $ra
    /* 5BFF0 8006D7E0 2000BD27 */   addiu     $sp, $sp, 0x20
endlabel func_8006D748
