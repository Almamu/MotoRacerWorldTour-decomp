nonmatching func_800A1C10, 0x64

glabel func_800A1C10
    /* 90420 800A1C10 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 90424 800A1C14 1000B0AF */  sw         $s0, 0x10($sp)
    /* 90428 800A1C18 1400BFAF */  sw         $ra, 0x14($sp)
    /* 9042C 800A1C1C 319D020C */  jal        CdInit
    /* 90430 800A1C20 21808000 */   addu      $s0, $a0, $zero
    /* 90434 800A1C24 989D020C */  jal        func_800A7660
    /* 90438 800A1C28 21200000 */   addu      $a0, $zero, $zero
    /* 9043C 800A1C2C A155000C */  jal        func_80015684
    /* 90440 800A1C30 21200002 */   addu      $a0, $s0, $zero
    /* 90444 800A1C34 FA58020C */  jal        func_800963E8
    /* 90448 800A1C38 00000000 */   nop
    /* 9044C 800A1C3C 08004010 */  beqz       $v0, .L800A1C60
    /* 90450 800A1C40 00000000 */   nop
    /* 90454 800A1C44 9455000C */  jal        func_80015650
    /* 90458 800A1C48 00000000 */   nop
    /* 9045C 800A1C4C 21184000 */  addu       $v1, $v0, $zero
    /* 90460 800A1C50 04006010 */  beqz       $v1, .L800A1C64
    /* 90464 800A1C54 FFFF0224 */   addiu     $v0, $zero, -0x1
    /* 90468 800A1C58 19870208 */  j          .L800A1C64
    /* 9046C 800A1C5C 01000224 */   addiu     $v0, $zero, 0x1
  .L800A1C60:
    /* 90470 800A1C60 FFFF0224 */  addiu      $v0, $zero, -0x1
  .L800A1C64:
    /* 90474 800A1C64 1400BF8F */  lw         $ra, 0x14($sp)
    /* 90478 800A1C68 1000B08F */  lw         $s0, 0x10($sp)
    /* 9047C 800A1C6C 0800E003 */  jr         $ra
    /* 90480 800A1C70 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_800A1C10
