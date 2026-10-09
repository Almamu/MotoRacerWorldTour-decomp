nonmatching func_8009F180, 0x78

glabel func_8009F180
    /* 8D990 8009F180 D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* 8D994 8009F184 1800B0AF */  sw         $s0, 0x18($sp)
    /* 8D998 8009F188 21808000 */  addu       $s0, $a0, $zero
    /* 8D99C 8009F18C 2000BFAF */  sw         $ra, 0x20($sp)
    /* 8D9A0 8009F190 1C00B1AF */  sw         $s1, 0x1C($sp)
    /* 8D9A4 8009F194 800A038E */  lw         $v1, 0xA80($s0)
    /* 8D9A8 8009F198 00000000 */  nop
    /* 8D9AC 8009F19C 6000718C */  lw         $s1, 0x60($v1)
    /* 8D9B0 8009F1A0 6F90020C */  jal        func_800A41BC
    /* 8D9B4 8009F1A4 00000000 */   nop
    /* 8D9B8 8009F1A8 8291020C */  jal        func_800A4608
    /* 8D9BC 8009F1AC 01000424 */   addiu     $a0, $zero, 0x1
    /* 8D9C0 8009F1B0 ECED000C */  jal        func_8003B7B0
    /* 8D9C4 8009F1B4 21200002 */   addu      $a0, $s0, $zero
    /* 8D9C8 8009F1B8 AC150224 */  addiu      $v0, $zero, 0x15AC
    /* 8D9CC 8009F1BC 0D80053C */  lui        $a1, %hi(D_800C9CD8)
    /* 8D9D0 8009F1C0 D89CA524 */  addiu      $a1, $a1, %lo(D_800C9CD8)
    /* 8D9D4 8009F1C4 0C80073C */  lui        $a3, %hi(D_800BC884)
    /* 8D9D8 8009F1C8 84C8E78C */  lw         $a3, %lo(D_800BC884)($a3)
    /* 8D9DC 8009F1CC 21300000 */  addu       $a2, $zero, $zero
    /* 8D9E0 8009F1D0 1000A2AF */  sw         $v0, 0x10($sp)
    /* 8D9E4 8009F1D4 0778020C */  jal        func_8009E01C
    /* 8D9E8 8009F1D8 21202002 */   addu      $a0, $s1, $zero
    /* 8D9EC 8009F1DC 3A78020C */  jal        func_8009E0E8
    /* 8D9F0 8009F1E0 21202002 */   addu      $a0, $s1, $zero
    /* 8D9F4 8009F1E4 2000BF8F */  lw         $ra, 0x20($sp)
    /* 8D9F8 8009F1E8 1C00B18F */  lw         $s1, 0x1C($sp)
    /* 8D9FC 8009F1EC 1800B08F */  lw         $s0, 0x18($sp)
    /* 8DA00 8009F1F0 0800E003 */  jr         $ra
    /* 8DA04 8009F1F4 2800BD27 */   addiu     $sp, $sp, 0x28
endlabel func_8009F180
