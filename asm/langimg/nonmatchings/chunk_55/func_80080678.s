nonmatching func_80080678, 0x5C

glabel func_80080678
    /* 6EE88 80080678 0043828F */  lw         $v0, %gp_rel(D_800C89F0)($gp)
    /* 6EE8C 8008067C 00000000 */  nop
    /* 6EE90 80080680 0B004014 */  bnez       $v0, .L800806B0
    /* 6EE94 80080684 00000000 */   nop
    /* 6EE98 80080688 FC42828F */  lw         $v0, %gp_rel(D_800C89EC)($gp)
    /* 6EE9C 8008068C 00000000 */  nop
    /* 6EEA0 80080690 20004224 */  addiu      $v0, $v0, 0x20
    /* 6EEA4 80080694 FC4282AF */  sw         $v0, %gp_rel(D_800C89EC)($gp)
    /* 6EEA8 80080698 81004228 */  slti       $v0, $v0, 0x81
    /* 6EEAC 8008069C 02004014 */  bnez       $v0, .L800806A8
    /* 6EEB0 800806A0 01000224 */   addiu     $v0, $zero, 0x1
    /* 6EEB4 800806A4 004382AF */  sw         $v0, %gp_rel(D_800C89F0)($gp)
  .L800806A8:
    /* 6EEB8 800806A8 0800E003 */  jr         $ra
    /* 6EEBC 800806AC 00000000 */   nop
  .L800806B0:
    /* 6EEC0 800806B0 FC42828F */  lw         $v0, %gp_rel(D_800C89EC)($gp)
    /* 6EEC4 800806B4 00000000 */  nop
    /* 6EEC8 800806B8 E0FF4224 */  addiu      $v0, $v0, -0x20
    /* 6EECC 800806BC FC4282AF */  sw         $v0, %gp_rel(D_800C89EC)($gp)
    /* 6EED0 800806C0 02004104 */  bgez       $v0, .L800806CC
    /* 6EED4 800806C4 00000000 */   nop
    /* 6EED8 800806C8 004380AF */  sw         $zero, %gp_rel(D_800C89F0)($gp)
  .L800806CC:
    /* 6EEDC 800806CC 0800E003 */  jr         $ra
    /* 6EEE0 800806D0 00000000 */   nop
endlabel func_80080678
