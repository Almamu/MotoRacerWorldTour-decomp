nonmatching func_80040DB8, 0x60

glabel func_80040DB8
    /* 2F5C8 80040DB8 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 2F5CC 80040DBC 1000B0AF */  sw         $s0, 0x10($sp)
    /* 2F5D0 80040DC0 21808000 */  addu       $s0, $a0, $zero
    /* 2F5D4 80040DC4 1400BFAF */  sw         $ra, 0x14($sp)
    /* 2F5D8 80040DC8 6000048E */  lw         $a0, 0x60($s0)
    /* 2F5DC 80040DCC 03BF020C */  jal        func_800AFC0C
    /* 2F5E0 80040DD0 21280002 */   addu      $a1, $s0, $zero
    /* 2F5E4 80040DD4 F974020C */  jal        func_8009D3E4
    /* 2F5E8 80040DD8 00000000 */   nop
    /* 2F5EC 80040DDC 8603010C */  jal        func_80040E18
    /* 2F5F0 80040DE0 21200002 */   addu      $a0, $s0, $zero
    /* 2F5F4 80040DE4 0D80043C */  lui        $a0, %hi(D_800C89E8)
    /* 2F5F8 80040DE8 E889848C */  lw         $a0, %lo(D_800C89E8)($a0)
    /* 2F5FC 80040DEC 00000000 */  nop
    /* 2F600 80040DF0 05008010 */  beqz       $a0, .L80040E08
    /* 2F604 80040DF4 00000000 */   nop
    /* 2F608 80040DF8 1F04020C */  jal        func_8008107C
    /* 2F60C 80040DFC 03000524 */   addiu     $a1, $zero, 0x3
    /* 2F610 80040E00 0D80013C */  lui        $at, %hi(D_800C89E8)
    /* 2F614 80040E04 E88920AC */  sw         $zero, %lo(D_800C89E8)($at)
  .L80040E08:
    /* 2F618 80040E08 1400BF8F */  lw         $ra, 0x14($sp)
    /* 2F61C 80040E0C 1000B08F */  lw         $s0, 0x10($sp)
    /* 2F620 80040E10 0800E003 */  jr         $ra
    /* 2F624 80040E14 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_80040DB8
