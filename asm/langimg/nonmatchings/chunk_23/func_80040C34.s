nonmatching func_80040C34, 0x94

glabel func_80040C34
    /* 2F444 80040C34 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 2F448 80040C38 1000B0AF */  sw         $s0, 0x10($sp)
    /* 2F44C 80040C3C 21808000 */  addu       $s0, $a0, $zero
    /* 2F450 80040C40 1800BFAF */  sw         $ra, 0x18($sp)
    /* 2F454 80040C44 1400B1AF */  sw         $s1, 0x14($sp)
    /* 2F458 80040C48 6800038E */  lw         $v1, 0x68($s0)
    /* 2F45C 80040C4C 01000524 */  addiu      $a1, $zero, 0x1
    /* 2F460 80040C50 A0006484 */  lh         $a0, 0xA0($v1)
    /* 2F464 80040C54 A400628C */  lw         $v0, 0xA4($v1)
    /* 2F468 80040C58 00000000 */  nop
    /* 2F46C 80040C5C 09F84000 */  jalr       $v0
    /* 2F470 80040C60 21200402 */   addu      $a0, $s0, $a0
    /* 2F474 80040C64 0D80043C */  lui        $a0, %hi(D_800CBC94)
    /* 2F478 80040C68 94BC8424 */  addiu      $a0, $a0, %lo(D_800CBC94)
    /* 2F47C 80040C6C 1800058E */  lw         $a1, 0x18($s0)
    /* 2F480 80040C70 F1E3010C */  jal        func_80078FC4
    /* 2F484 80040C74 21884000 */   addu      $s1, $v0, $zero
    /* 2F488 80040C78 21304000 */  addu       $a2, $v0, $zero
    /* 2F48C 80040C7C 0D00C010 */  beqz       $a2, .L80040CB4
    /* 2F490 80040C80 21102002 */   addu      $v0, $s1, $zero
    /* 2F494 80040C84 A000028E */  lw         $v0, 0xA0($s0)
    /* 2F498 80040C88 6800C38C */  lw         $v1, 0x68($a2)
    /* 2F49C 80040C8C 0800458C */  lw         $a1, 0x8($v0)
    /* 2F4A0 80040C90 70006484 */  lh         $a0, 0x70($v1)
    /* 2F4A4 80040C94 7400628C */  lw         $v0, 0x74($v1)
    /* 2F4A8 80040C98 00000000 */  nop
    /* 2F4AC 80040C9C 09F84000 */  jalr       $v0
    /* 2F4B0 80040CA0 2120C400 */   addu      $a0, $a2, $a0
    /* 2F4B4 80040CA4 9C00038E */  lw         $v1, 0x9C($s0)
    /* 2F4B8 80040CA8 00000000 */  nop
    /* 2F4BC 80040CAC 9C0043AC */  sw         $v1, 0x9C($v0)
    /* 2F4C0 80040CB0 21102002 */  addu       $v0, $s1, $zero
  .L80040CB4:
    /* 2F4C4 80040CB4 1800BF8F */  lw         $ra, 0x18($sp)
    /* 2F4C8 80040CB8 1400B18F */  lw         $s1, 0x14($sp)
    /* 2F4CC 80040CBC 1000B08F */  lw         $s0, 0x10($sp)
    /* 2F4D0 80040CC0 0800E003 */  jr         $ra
    /* 2F4D4 80040CC4 2000BD27 */   addiu     $sp, $sp, 0x20
endlabel func_80040C34
