nonmatching func_8004041C, 0x60

glabel func_8004041C
    /* 2EC2C 8004041C E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 2EC30 80040420 1400B1AF */  sw         $s1, 0x14($sp)
    /* 2EC34 80040424 2188C000 */  addu       $s1, $a2, $zero
    /* 2EC38 80040428 21202002 */  addu       $a0, $s1, $zero
    /* 2EC3C 8004042C 1000B0AF */  sw         $s0, 0x10($sp)
    /* 2EC40 80040430 1800BFAF */  sw         $ra, 0x18($sp)
    /* 2EC44 80040434 2ED9020C */  jal        strlen
    /* 2EC48 80040438 2180A000 */   addu      $s0, $a1, $zero
    /* 2EC4C 8004043C 21282002 */  addu       $a1, $s1, $zero
    /* 2EC50 80040440 3800048E */  lw         $a0, 0x38($s0)
    /* 2EC54 80040444 845F000C */  jal        func_80017E10
    /* 2EC58 80040448 21304000 */   addu      $a2, $v0, $zero
    /* 2EC5C 8004044C 00F80424 */  addiu      $a0, $zero, -0x800
    /* 2EC60 80040450 0400438C */  lw         $v1, 0x4($v0)
    /* 2EC64 80040454 1800BF8F */  lw         $ra, 0x18($sp)
    /* 2EC68 80040458 1400B18F */  lw         $s1, 0x14($sp)
    /* 2EC6C 8004045C 1000B08F */  lw         $s0, 0x10($sp)
    /* 2EC70 80040460 24206400 */  and        $a0, $v1, $a0
    /* 2EC74 80040464 FF076330 */  andi       $v1, $v1, 0x7FF
    /* 2EC78 80040468 02006334 */  ori        $v1, $v1, 0x2
    /* 2EC7C 8004046C 25208300 */  or         $a0, $a0, $v1
    /* 2EC80 80040470 040044AC */  sw         $a0, 0x4($v0)
    /* 2EC84 80040474 0800E003 */  jr         $ra
    /* 2EC88 80040478 2000BD27 */   addiu     $sp, $sp, 0x20
endlabel func_8004041C
