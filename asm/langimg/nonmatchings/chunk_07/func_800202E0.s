nonmatching func_800202E0, 0x6C

glabel func_800202E0
    /* EAF0 800202E0 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* EAF4 800202E4 1000B0AF */  sw         $s0, 0x10($sp)
    /* EAF8 800202E8 21808000 */  addu       $s0, $a0, $zero
    /* EAFC 800202EC 40200500 */  sll        $a0, $a1, 1
    /* EB00 800202F0 21208500 */  addu       $a0, $a0, $a1
    /* EB04 800202F4 C0200400 */  sll        $a0, $a0, 3
    /* EB08 800202F8 04008424 */  addiu      $a0, $a0, 0x4
    /* EB0C 800202FC 1400BFAF */  sw         $ra, 0x14($sp)
    /* EB10 80020300 7C80000C */  jal        func_800201F0
    /* EB14 80020304 21200402 */   addu      $a0, $s0, $a0
    /* EB18 80020308 21204000 */  addu       $a0, $v0, $zero
    /* EB1C 8002030C 00830324 */  addiu      $v1, $zero, -0x7D00
    /* EB20 80020310 0A008310 */  beq        $a0, $v1, .L8002033C
    /* EB24 80020314 00000000 */   nop
    /* EB28 80020318 C0100400 */  sll        $v0, $a0, 3
    /* EB2C 8002031C 23104400 */  subu       $v0, $v0, $a0
    /* EB30 80020320 0000038E */  lw         $v1, 0x0($s0)
    /* EB34 80020324 C0100200 */  sll        $v0, $v0, 3
    /* EB38 80020328 21106200 */  addu       $v0, $v1, $v0
  .L8002032C:
    /* EB3C 8002032C 6980000C */  jal        func_800201A4
    /* EB40 80020330 21204000 */   addu      $a0, $v0, $zero
    /* EB44 80020334 FDFF4014 */  bnez       $v0, .L8002032C
    /* EB48 80020338 00000000 */   nop
  .L8002033C:
    /* EB4C 8002033C 1400BF8F */  lw         $ra, 0x14($sp)
    /* EB50 80020340 1000B08F */  lw         $s0, 0x10($sp)
    /* EB54 80020344 0800E003 */  jr         $ra
    /* EB58 80020348 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_800202E0
