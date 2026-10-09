nonmatching func_80040344, 0xD8

glabel func_80040344
    /* 2EB54 80040344 D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* 2EB58 80040348 2000B4AF */  sw         $s4, 0x20($sp)
    /* 2EB5C 8004034C 21A08000 */  addu       $s4, $a0, $zero
    /* 2EB60 80040350 1000B0AF */  sw         $s0, 0x10($sp)
    /* 2EB64 80040354 2180C000 */  addu       $s0, $a2, $zero
    /* 2EB68 80040358 21200002 */  addu       $a0, $s0, $zero
    /* 2EB6C 8004035C 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* 2EB70 80040360 2198A000 */  addu       $s3, $a1, $zero
    /* 2EB74 80040364 1400B1AF */  sw         $s1, 0x14($sp)
    /* 2EB78 80040368 2188E000 */  addu       $s1, $a3, $zero
    /* 2EB7C 8004036C 2400BFAF */  sw         $ra, 0x24($sp)
    /* 2EB80 80040370 2ED9020C */  jal        strlen
    /* 2EB84 80040374 1800B2AF */   sw        $s2, 0x18($sp)
    /* 2EB88 80040378 21280002 */  addu       $a1, $s0, $zero
    /* 2EB8C 8004037C 3800648E */  lw         $a0, 0x38($s3)
    /* 2EB90 80040380 845F000C */  jal        func_80017E10
    /* 2EB94 80040384 21304000 */   addu      $a2, $v0, $zero
    /* 2EB98 80040388 21804000 */  addu       $s0, $v0, $zero
    /* 2EB9C 8004038C 00F81224 */  addiu      $s2, $zero, -0x800
    /* 2EBA0 80040390 FD074236 */  ori        $v0, $s2, 0x7FD
    /* 2EBA4 80040394 0400048E */  lw         $a0, 0x4($s0)
    /* 2EBA8 80040398 0800232E */  sltiu      $v1, $s1, 0x8
    /* 2EBAC 8004039C 24104400 */  and        $v0, $v0, $a0
    /* 2EBB0 800403A0 15006010 */  beqz       $v1, .L800403F8
    /* 2EBB4 800403A4 040002AE */   sw        $v0, 0x4($s0)
    /* 2EBB8 800403A8 40101100 */  sll        $v0, $s1, 1
    /* 2EBBC 800403AC 21105100 */  addu       $v0, $v0, $s1
    /* 2EBC0 800403B0 0D80033C */  lui        $v1, %hi(D_800C9EE4)
    /* 2EBC4 800403B4 E49E638C */  lw         $v1, %lo(D_800C9EE4)($v1)
    /* 2EBC8 800403B8 80100200 */  sll        $v0, $v0, 2
    /* 2EBCC 800403BC 21104300 */  addu       $v0, $v0, $v1
    /* 2EBD0 800403C0 0000478C */  lw         $a3, 0x0($v0)
    /* 2EBD4 800403C4 00000000 */  nop
    /* 2EBD8 800403C8 0B00E010 */  beqz       $a3, .L800403F8
    /* 2EBDC 800403CC 21208002 */   addu      $a0, $s4, $zero
    /* 2EBE0 800403D0 21286002 */  addu       $a1, $s3, $zero
    /* 2EBE4 800403D4 7F00010C */  jal        func_800401FC
    /* 2EBE8 800403D8 21300002 */   addu      $a2, $s0, $zero
    /* 2EBEC 800403DC 0400038E */  lw         $v1, 0x4($s0)
    /* 2EBF0 800403E0 00000000 */  nop
    /* 2EBF4 800403E4 24107200 */  and        $v0, $v1, $s2
    /* 2EBF8 800403E8 FF076330 */  andi       $v1, $v1, 0x7FF
    /* 2EBFC 800403EC 02006334 */  ori        $v1, $v1, 0x2
    /* 2EC00 800403F0 25104300 */  or         $v0, $v0, $v1
    /* 2EC04 800403F4 040002AE */  sw         $v0, 0x4($s0)
  .L800403F8:
    /* 2EC08 800403F8 21100002 */  addu       $v0, $s0, $zero
    /* 2EC0C 800403FC 2400BF8F */  lw         $ra, 0x24($sp)
    /* 2EC10 80040400 2000B48F */  lw         $s4, 0x20($sp)
    /* 2EC14 80040404 1C00B38F */  lw         $s3, 0x1C($sp)
    /* 2EC18 80040408 1800B28F */  lw         $s2, 0x18($sp)
    /* 2EC1C 8004040C 1400B18F */  lw         $s1, 0x14($sp)
    /* 2EC20 80040410 1000B08F */  lw         $s0, 0x10($sp)
    /* 2EC24 80040414 0800E003 */  jr         $ra
    /* 2EC28 80040418 2800BD27 */   addiu     $sp, $sp, 0x28
endlabel func_80040344
