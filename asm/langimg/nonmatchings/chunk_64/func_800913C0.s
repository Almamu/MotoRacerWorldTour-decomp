nonmatching func_800913C0, 0x54

glabel func_800913C0
    /* 7FBD0 800913C0 00008580 */  lb         $a1, 0x0($a0)
    /* 7FBD4 800913C4 0800868C */  lw         $a2, 0x8($a0)
    /* 7FBD8 800913C8 1000A010 */  beqz       $a1, .L8009140C
    /* 7FBDC 800913CC 2118C000 */   addu      $v1, $a2, $zero
  .L800913D0:
    /* 7FBE0 800913D0 36006294 */  lhu        $v0, 0x36($v1)
    /* 7FBE4 800913D4 00000000 */  nop
    /* 7FBE8 800913D8 00104230 */  andi       $v0, $v0, 0x1000
    /* 7FBEC 800913DC 08004014 */  bnez       $v0, .L80091400
    /* 7FBF0 800913E0 80006624 */   addiu     $a2, $v1, 0x80
    /* 7FBF4 800913E4 0400648C */  lw         $a0, 0x4($v1)
    /* 7FBF8 800913E8 00000000 */  nop
    /* 7FBFC 800913EC 02008010 */  beqz       $a0, .L800913F8
    /* 7FC00 800913F0 21100000 */   addu      $v0, $zero, $zero
    /* 7FC04 800913F4 1000828C */  lw         $v0, 0x10($a0)
  .L800913F8:
    /* 7FC08 800913F8 00000000 */  nop
    /* 7FC0C 800913FC 0C0062AC */  sw         $v0, 0xC($v1)
  .L80091400:
    /* 7FC10 80091400 FFFFA524 */  addiu      $a1, $a1, -0x1
    /* 7FC14 80091404 F2FFA014 */  bnez       $a1, .L800913D0
    /* 7FC18 80091408 2118C000 */   addu      $v1, $a2, $zero
  .L8009140C:
    /* 7FC1C 8009140C 0800E003 */  jr         $ra
    /* 7FC20 80091410 00000000 */   nop
endlabel func_800913C0
