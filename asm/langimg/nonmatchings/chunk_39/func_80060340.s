nonmatching func_80060340, 0xD0

glabel func_80060340
    /* 4EB50 80060340 D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* 4EB54 80060344 2000B4AF */  sw         $s4, 0x20($sp)
    /* 4EB58 80060348 21A0A000 */  addu       $s4, $a1, $zero
    /* 4EB5C 8006034C 2400BFAF */  sw         $ra, 0x24($sp)
    /* 4EB60 80060350 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* 4EB64 80060354 1800B2AF */  sw         $s2, 0x18($sp)
    /* 4EB68 80060358 1400B1AF */  sw         $s1, 0x14($sp)
    /* 4EB6C 8006035C 24008012 */  beqz       $s4, .L800603F0
    /* 4EB70 80060360 1000B0AF */   sw        $s0, 0x10($sp)
    /* 4EB74 80060364 00010524 */  addiu      $a1, $zero, 0x100
    /* 4EB78 80060368 0000D28C */  lw         $s2, 0x0($a2)
    /* 4EB7C 8006036C F002908E */  lw         $s0, 0x2F0($s4)
    /* 4EB80 80060370 0000918C */  lw         $s1, 0x0($a0)
    /* 4EB84 80060374 40181200 */  sll        $v1, $s2, 1
    /* 4EB88 80060378 21987200 */  addu       $s3, $v1, $s2
    /* 4EB8C 8006037C 00111300 */  sll        $v0, $s3, 4
    /* 4EB90 80060380 21106202 */  addu       $v0, $s3, $v0
    /* 4EB94 80060384 00110200 */  sll        $v0, $v0, 4
    /* 4EB98 80060388 21800202 */  addu       $s0, $s0, $v0
    /* 4EB9C 8006038C 21200002 */  addu       $a0, $s0, $zero
    /* 4EBA0 80060390 207D010C */  jal        func_8005F480
    /* 4EBA4 80060394 21302002 */   addu      $a2, $s1, $zero
    /* 4EBA8 80060398 2B101100 */  sltu       $v0, $zero, $s1
    /* 4EBAC 8006039C FF000324 */  addiu      $v1, $zero, 0xFF
    /* 4EBB0 800603A0 13002316 */  bne        $s1, $v1, .L800603F0
    /* 4EBB4 800603A4 0E0002A2 */   sb        $v0, 0xE($s0)
    /* 4EBB8 800603A8 7803838E */  lw         $v1, 0x378($s4)
    /* 4EBBC 800603AC 0A004006 */  bltz       $s2, .L800603D8
    /* 4EBC0 800603B0 21280000 */   addu      $a1, $zero, $zero
    /* 4EBC4 800603B4 80101300 */  sll        $v0, $s3, 2
    /* 4EBC8 800603B8 23105200 */  subu       $v0, $v0, $s2
    /* 4EBCC 800603BC 80100200 */  sll        $v0, $v0, 2
    /* 4EBD0 800603C0 23105200 */  subu       $v0, $v0, $s2
    /* 4EBD4 800603C4 80100200 */  sll        $v0, $v0, 2
    /* 4EBD8 800603C8 21105200 */  addu       $v0, $v0, $s2
    /* 4EBDC 800603CC C0100200 */  sll        $v0, $v0, 3
    /* 4EBE0 800603D0 E8024224 */  addiu      $v0, $v0, 0x2E8
    /* 4EBE4 800603D4 21286200 */  addu       $a1, $v1, $v0
  .L800603D8:
    /* 4EBE8 800603D8 01000224 */  addiu      $v0, $zero, 0x1
    /* 4EBEC 800603DC 2403A2A0 */  sb         $v0, 0x324($a1)
    /* 4EBF0 800603E0 F403848E */  lw         $a0, 0x3F4($s4)
    /* 4EBF4 800603E4 EC03868E */  lw         $a2, 0x3EC($s4)
    /* 4EBF8 800603E8 95CF010C */  jal        func_80073E54
    /* 4EBFC 800603EC 00000000 */   nop
  .L800603F0:
    /* 4EC00 800603F0 2400BF8F */  lw         $ra, 0x24($sp)
    /* 4EC04 800603F4 2000B48F */  lw         $s4, 0x20($sp)
    /* 4EC08 800603F8 1C00B38F */  lw         $s3, 0x1C($sp)
    /* 4EC0C 800603FC 1800B28F */  lw         $s2, 0x18($sp)
    /* 4EC10 80060400 1400B18F */  lw         $s1, 0x14($sp)
    /* 4EC14 80060404 1000B08F */  lw         $s0, 0x10($sp)
    /* 4EC18 80060408 0800E003 */  jr         $ra
    /* 4EC1C 8006040C 2800BD27 */   addiu     $sp, $sp, 0x28
endlabel func_80060340
