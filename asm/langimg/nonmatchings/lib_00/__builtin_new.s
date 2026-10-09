nonmatching __builtin_new, 0x54

glabel __builtin_new
    /* 959D0 800A71C0 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 959D4 800A71C4 1000B0AF */  sw         $s0, 0x10($sp)
    /* 959D8 800A71C8 21808000 */  addu       $s0, $a0, $zero
    /* 959DC 800A71CC 08000016 */  bnez       $s0, .L800A71F0
    /* 959E0 800A71D0 1400BFAF */   sw        $ra, 0x14($sp)
    /* 959E4 800A71D4 7C9C0208 */  j          .L800A71F0
    /* 959E8 800A71D8 01001034 */   ori       $s0, $zero, 0x1
  .L800A71DC:
    /* 959EC 800A71DC 0D80023C */  lui        $v0, %hi(__new_handler)
    /* 959F0 800A71E0 409F428C */  lw         $v0, %lo(__new_handler)($v0)
    /* 959F4 800A71E4 00000000 */  nop
    /* 959F8 800A71E8 09F84000 */  jalr       $v0
    /* 959FC 800A71EC 00000000 */   nop
  .L800A71F0:
    /* 95A00 800A71F0 D3D4020C */  jal        malloc
    /* 95A04 800A71F4 21200002 */   addu      $a0, $s0, $zero
    /* 95A08 800A71F8 F8FF4010 */  beqz       $v0, .L800A71DC
    /* 95A0C 800A71FC 00000000 */   nop
    /* 95A10 800A7200 1400BF8F */  lw         $ra, 0x14($sp)
    /* 95A14 800A7204 1000B08F */  lw         $s0, 0x10($sp)
    /* 95A18 800A7208 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 95A1C 800A720C 0800E003 */  jr         $ra
    /* 95A20 800A7210 00000000 */   nop
endlabel __builtin_new
