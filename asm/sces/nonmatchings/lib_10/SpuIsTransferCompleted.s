nonmatching SpuIsTransferCompleted, 0xA4

glabel SpuIsTransferCompleted
    /* 177E4 8014A318 1C80023C */  lui        $v0, %hi(D_801BFF84)
    /* 177E8 8014A31C 84FF428C */  lw         $v0, %lo(D_801BFF84)($v0)
    /* 177EC 8014A320 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 177F0 8014A324 1400B1AF */  sw         $s1, 0x14($sp)
    /* 177F4 8014A328 21888000 */  addu       $s1, $a0, $zero
    /* 177F8 8014A32C 1000B0AF */  sw         $s0, 0x10($sp)
    /* 177FC 8014A330 01001024 */  addiu      $s0, $zero, 0x1
    /* 17800 8014A334 06005010 */  beq        $v0, $s0, .L8014A350
    /* 17804 8014A338 1800BFAF */   sw        $ra, 0x18($sp)
    /* 17808 8014A33C 1C80023C */  lui        $v0, %hi(D_801BFF48)
    /* 1780C 8014A340 48FF428C */  lw         $v0, %lo(D_801BFF48)($v0)
    /* 17810 8014A344 00000000 */  nop
    /* 17814 8014A348 03005014 */  bne        $v0, $s0, .L8014A358
    /* 17818 8014A34C 00000000 */   nop
  .L8014A350:
    /* 1781C 8014A350 EA280508 */  j          .L8014A3A8
    /* 17820 8014A354 01000224 */   addiu     $v0, $zero, 0x1
  .L8014A358:
    /* 17824 8014A358 1C80043C */  lui        $a0, %hi(D_801BFF7C)
    /* 17828 8014A35C 7CFF848C */  lw         $a0, %lo(D_801BFF7C)($a0)
    /* 1782C 8014A360 E72A050C */  jal        TestEvent
    /* 17830 8014A364 00000000 */   nop
    /* 17834 8014A368 0B003016 */  bne        $s1, $s0, .L8014A398
    /* 17838 8014A36C 00000000 */   nop
    /* 1783C 8014A370 0B004014 */  bnez       $v0, .L8014A3A0
    /* 17840 8014A374 01000224 */   addiu     $v0, $zero, 0x1
  .L8014A378:
    /* 17844 8014A378 1C80043C */  lui        $a0, %hi(D_801BFF7C)
    /* 17848 8014A37C 7CFF848C */  lw         $a0, %lo(D_801BFF7C)($a0)
    /* 1784C 8014A380 E72A050C */  jal        TestEvent
    /* 17850 8014A384 00000000 */   nop
    /* 17854 8014A388 FBFF4010 */  beqz       $v0, .L8014A378
    /* 17858 8014A38C 01000224 */   addiu     $v0, $zero, 0x1
    /* 1785C 8014A390 E8280508 */  j          .L8014A3A0
    /* 17860 8014A394 00000000 */   nop
  .L8014A398:
    /* 17864 8014A398 03005014 */  bne        $v0, $s0, .L8014A3A8
    /* 17868 8014A39C 00000000 */   nop
  .L8014A3A0:
    /* 1786C 8014A3A0 1C80013C */  lui        $at, %hi(D_801BFF48)
    /* 17870 8014A3A4 48FF22AC */  sw         $v0, %lo(D_801BFF48)($at)
  .L8014A3A8:
    /* 17874 8014A3A8 1800BF8F */  lw         $ra, 0x18($sp)
    /* 17878 8014A3AC 1400B18F */  lw         $s1, 0x14($sp)
    /* 1787C 8014A3B0 1000B08F */  lw         $s0, 0x10($sp)
    /* 17880 8014A3B4 0800E003 */  jr         $ra
    /* 17884 8014A3B8 2000BD27 */   addiu     $sp, $sp, 0x20
endlabel SpuIsTransferCompleted
    /* 17888 8014A3BC 00000000 */  nop
    /* 1788C 8014A3C0 00000000 */  nop
    /* 17890 8014A3C4 00000000 */  nop
