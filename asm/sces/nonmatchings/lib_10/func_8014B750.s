nonmatching func_8014B750, 0xFC

glabel func_8014B750
    /* 18C1C 8014B750 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 18C20 8014B754 1000B0AF */  sw         $s0, 0x10($sp)
    /* 18C24 8014B758 21808000 */  addu       $s0, $a0, $zero
    /* 18C28 8014B75C 00260400 */  sll        $a0, $a0, 24
    /* 18C2C 8014B760 03260400 */  sra        $a0, $a0, 24
    /* 18C30 8014B764 09000224 */  addiu      $v0, $zero, 0x9
    /* 18C34 8014B768 09008210 */  beq        $a0, $v0, .L8014B790
    /* 18C38 8014B76C 1400BFAF */   sw        $ra, 0x14($sp)
    /* 18C3C 8014B770 0A000224 */  addiu      $v0, $zero, 0xA
    /* 18C40 8014B774 10008214 */  bne        $a0, $v0, .L8014B7B8
    /* 18C44 8014B778 FF000232 */   andi      $v0, $s0, 0xFF
    /* 18C48 8014B77C D42D050C */  jal        func_8014B750
    /* 18C4C 8014B780 0D000424 */   addiu     $a0, $zero, 0xD
    /* 18C50 8014B784 1C80013C */  lui        $at, %hi(D_801C0A24)
    /* 18C54 8014B788 FB2D0508 */  j          .L8014B7EC
    /* 18C58 8014B78C 240A20AC */   sw        $zero, %lo(D_801C0A24)($at)
  .L8014B790:
    /* 18C5C 8014B790 D42D050C */  jal        func_8014B750
    /* 18C60 8014B794 20000424 */   addiu     $a0, $zero, 0x20
    /* 18C64 8014B798 1C80023C */  lui        $v0, %hi(D_801C0A24)
    /* 18C68 8014B79C 240A428C */  lw         $v0, %lo(D_801C0A24)($v0)
    /* 18C6C 8014B7A0 00000000 */  nop
    /* 18C70 8014B7A4 07004230 */  andi       $v0, $v0, 0x7
    /* 18C74 8014B7A8 24004010 */  beqz       $v0, .L8014B83C
    /* 18C78 8014B7AC 00000000 */   nop
    /* 18C7C 8014B7B0 E42D0508 */  j          .L8014B790
    /* 18C80 8014B7B4 00000000 */   nop
  .L8014B7B8:
    /* 18C84 8014B7B8 1C80013C */  lui        $at, %hi(D_801C0995)
    /* 18C88 8014B7BC 21082200 */  addu       $at, $at, $v0
    /* 18C8C 8014B7C0 95092280 */  lb         $v0, %lo(D_801C0995)($at)
    /* 18C90 8014B7C4 00000000 */  nop
    /* 18C94 8014B7C8 97004230 */  andi       $v0, $v0, 0x97
    /* 18C98 8014B7CC 07004010 */  beqz       $v0, .L8014B7EC
    /* 18C9C 8014B7D0 00000000 */   nop
    /* 18CA0 8014B7D4 1C80023C */  lui        $v0, %hi(D_801C0A24)
    /* 18CA4 8014B7D8 240A428C */  lw         $v0, %lo(D_801C0A24)($v0)
    /* 18CA8 8014B7DC 00000000 */  nop
    /* 18CAC 8014B7E0 01004224 */  addiu      $v0, $v0, 0x1
    /* 18CB0 8014B7E4 1C80013C */  lui        $at, %hi(D_801C0A24)
    /* 18CB4 8014B7E8 240A22AC */  sw         $v0, %lo(D_801C0A24)($at)
  .L8014B7EC:
    /* 18CB8 8014B7EC 1C80063C */  lui        $a2, %hi(D_801C0A28)
    /* 18CBC 8014B7F0 280AC68C */  lw         $a2, %lo(D_801C0A28)($a2)
    /* 18CC0 8014B7F4 00000000 */  nop
    /* 18CC4 8014B7F8 2000C228 */  slti       $v0, $a2, 0x20
    /* 18CC8 8014B7FC 07004014 */  bnez       $v0, .L8014B81C
    /* 18CCC 8014B800 00000000 */   nop
    /* 18CD0 8014B804 1D80053C */  lui        $a1, %hi(D_801CFDB8)
    /* 18CD4 8014B808 B8FDA524 */  addiu      $a1, $a1, %lo(D_801CFDB8)
    /* 18CD8 8014B80C 222E050C */  jal        func_8014B888
    /* 18CDC 8014B810 01000424 */   addiu     $a0, $zero, 0x1
    /* 18CE0 8014B814 1C80013C */  lui        $at, %hi(D_801C0A28)
    /* 18CE4 8014B818 280A20AC */  sw         $zero, %lo(D_801C0A28)($at)
  .L8014B81C:
    /* 18CE8 8014B81C 1C80033C */  lui        $v1, %hi(D_801C0A28)
    /* 18CEC 8014B820 280A6324 */  addiu      $v1, $v1, %lo(D_801C0A28)
    /* 18CF0 8014B824 0000628C */  lw         $v0, 0x0($v1)
    /* 18CF4 8014B828 1D80013C */  lui        $at, %hi(D_801CFDB8)
    /* 18CF8 8014B82C 21082200 */  addu       $at, $at, $v0
    /* 18CFC 8014B830 B8FD30A0 */  sb         $s0, %lo(D_801CFDB8)($at)
    /* 18D00 8014B834 01004224 */  addiu      $v0, $v0, 0x1
    /* 18D04 8014B838 000062AC */  sw         $v0, 0x0($v1)
  .L8014B83C:
    /* 18D08 8014B83C 1400BF8F */  lw         $ra, 0x14($sp)
    /* 18D0C 8014B840 1000B08F */  lw         $s0, 0x10($sp)
    /* 18D10 8014B844 0800E003 */  jr         $ra
    /* 18D14 8014B848 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_8014B750
