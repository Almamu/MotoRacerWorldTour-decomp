nonmatching func_8006D6C8, 0x80

glabel func_8006D6C8
    /* 5BED8 8006D6C8 B0FFBD27 */  addiu      $sp, $sp, -0x50
    /* 5BEDC 8006D6CC 21308000 */  addu       $a2, $a0, $zero
    /* 5BEE0 8006D6D0 4800BFAF */  sw         $ra, 0x48($sp)
    /* 5BEE4 8006D6D4 1000C78C */  lw         $a3, 0x10($a2)
    /* 5BEE8 8006D6D8 FFFF0224 */  addiu      $v0, $zero, -0x1
    /* 5BEEC 8006D6DC 1600E210 */  beq        $a3, $v0, .L8006D738
    /* 5BEF0 8006D6E0 01000224 */   addiu     $v0, $zero, 0x1
    /* 5BEF4 8006D6E4 09000324 */  addiu      $v1, $zero, 0x9
    /* 5BEF8 8006D6E8 1000A2A7 */  sh         $v0, 0x10($sp)
    /* 5BEFC 8006D6EC 89000224 */  addiu      $v0, $zero, 0x89
    /* 5BF00 8006D6F0 1000A3A7 */  sh         $v1, 0x10($sp)
    /* 5BF04 8006D6F4 0400C58C */  lw         $a1, 0x4($a2)
    /* 5BF08 8006D6F8 2400C494 */  lhu        $a0, 0x24($a2)
    /* 5BF0C 8006D6FC 2000C384 */  lh         $v1, 0x20($a2)
    /* 5BF10 8006D700 1000A627 */  addiu      $a2, $sp, 0x10
    /* 5BF14 8006D704 1000A2A7 */  sh         $v0, 0x10($sp)
    /* 5BF18 8006D708 1200A4A7 */  sh         $a0, 0x12($sp)
    /* 5BF1C 8006D70C 0D80043C */  lui        $a0, %hi(D_800D11D0)
    /* 5BF20 8006D710 1C00A3AF */  sw         $v1, 0x1C($sp)
    /* 5BF24 8006D714 3C00A284 */  lh         $v0, 0x3C($a1)
    /* 5BF28 8006D718 D0118424 */  addiu      $a0, $a0, %lo(D_800D11D0)
    /* 5BF2C 8006D71C 00130200 */  sll        $v0, $v0, 12
    /* 5BF30 8006D720 2400A2AF */  sw         $v0, 0x24($sp)
    /* 5BF34 8006D724 3E00A384 */  lh         $v1, 0x3E($a1)
    /* 5BF38 8006D728 2128E000 */  addu       $a1, $a3, $zero
    /* 5BF3C 8006D72C 001B0300 */  sll        $v1, $v1, 12
    /* 5BF40 8006D730 2E51000C */  jal        func_800144B8
    /* 5BF44 8006D734 2800A3AF */   sw        $v1, 0x28($sp)
  .L8006D738:
    /* 5BF48 8006D738 4800BF8F */  lw         $ra, 0x48($sp)
    /* 5BF4C 8006D73C 00000000 */  nop
    /* 5BF50 8006D740 0800E003 */  jr         $ra
    /* 5BF54 8006D744 5000BD27 */   addiu     $sp, $sp, 0x50
endlabel func_8006D6C8
