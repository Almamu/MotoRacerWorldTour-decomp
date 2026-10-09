nonmatching func_8004BEE0, 0x50

glabel func_8004BEE0
    /* 3A6F0 8004BEE0 E06B828F */  lw         $v0, %gp_rel(D_800CB2D0)($gp)
    /* 3A6F4 8004BEE4 01000324 */  addiu      $v1, $zero, 0x1
    /* 3A6F8 8004BEE8 01004224 */  addiu      $v0, $v0, 0x1
    /* 3A6FC 8004BEEC E06B82AF */  sw         $v0, %gp_rel(D_800CB2D0)($gp)
    /* 3A700 8004BEF0 0D004314 */  bne        $v0, $v1, .L8004BF28
    /* 3A704 8004BEF4 00000000 */   nop
    /* 3A708 8004BEF8 0D80023C */  lui        $v0, %hi(D_800CB2D8)
    /* 3A70C 8004BEFC D8B24224 */  addiu      $v0, $v0, %lo(D_800CB2D8)
    /* 3A710 8004BF00 0C80033C */  lui        $v1, %hi(D_800C64B0)
    /* 3A714 8004BF04 B0646324 */  addiu      $v1, $v1, %lo(D_800C64B0)
    /* 3A718 8004BF08 100043AC */  sw         $v1, 0x10($v0)
    /* 3A71C 8004BF0C 0C80033C */  lui        $v1, %hi(D_800C6488)
    /* 3A720 8004BF10 88646324 */  addiu      $v1, $v1, %lo(D_800C6488)
    /* 3A724 8004BF14 E86B80AF */  sw         $zero, %gp_rel(D_800CB2D8)($gp)
    /* 3A728 8004BF18 EC6B80AF */  sw         $zero, %gp_rel(D_800CB2DC)($gp)
    /* 3A72C 8004BF1C F06B80AF */  sw         $zero, %gp_rel(D_800CB2E0)($gp)
    /* 3A730 8004BF20 F46B80AF */  sw         $zero, %gp_rel(D_800CB2E4)($gp)
    /* 3A734 8004BF24 100043AC */  sw         $v1, 0x10($v0)
  .L8004BF28:
    /* 3A738 8004BF28 0800E003 */  jr         $ra
    /* 3A73C 8004BF2C 00000000 */   nop
endlabel func_8004BEE0
