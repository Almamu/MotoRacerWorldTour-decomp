nonmatching func_8002034C, 0x5C

glabel func_8002034C
    /* EB5C 8002034C E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* EB60 80020350 1000B0AF */  sw         $s0, 0x10($sp)
    /* EB64 80020354 21808000 */  addu       $s0, $a0, $zero
    /* EB68 80020358 C0180500 */  sll        $v1, $a1, 3
    /* EB6C 8002035C 23186500 */  subu       $v1, $v1, $a1
    /* EB70 80020360 1400BFAF */  sw         $ra, 0x14($sp)
    /* EB74 80020364 0000048E */  lw         $a0, 0x0($s0)
    /* EB78 80020368 C0180300 */  sll        $v1, $v1, 3
    /* EB7C 8002036C 5580000C */  jal        func_80020154
    /* EB80 80020370 21208300 */   addu      $a0, $a0, $v1
    /* EB84 80020374 FFFF0324 */  addiu      $v1, $zero, -0x1
    /* EB88 80020378 07004310 */  beq        $v0, $v1, .L80020398
    /* EB8C 8002037C 00000000 */   nop
    /* EB90 80020380 40200200 */  sll        $a0, $v0, 1
    /* EB94 80020384 21208200 */  addu       $a0, $a0, $v0
    /* EB98 80020388 C0200400 */  sll        $a0, $a0, 3
    /* EB9C 8002038C 04008424 */  addiu      $a0, $a0, 0x4
    /* EBA0 80020390 7C80000C */  jal        func_800201F0
    /* EBA4 80020394 21200402 */   addu      $a0, $s0, $a0
  .L80020398:
    /* EBA8 80020398 1400BF8F */  lw         $ra, 0x14($sp)
    /* EBAC 8002039C 1000B08F */  lw         $s0, 0x10($sp)
    /* EBB0 800203A0 0800E003 */  jr         $ra
    /* EBB4 800203A4 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_8002034C
