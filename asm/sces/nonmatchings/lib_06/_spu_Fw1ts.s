nonmatching _spu_Fw1ts, 0x5C

glabel _spu_Fw1ts
    /* 10B84 801436B8 F8FFBD27 */  addiu      $sp, $sp, -0x8
    /* 10B88 801436BC 0D000224 */  addiu      $v0, $zero, 0xD
    /* 10B8C 801436C0 0400A2AF */  sw         $v0, 0x4($sp)
    /* 10B90 801436C4 BE0D0508 */  j          .L801436F8
    /* 10B94 801436C8 0000A0AF */   sw        $zero, 0x0($sp)
  .L801436CC:
    /* 10B98 801436CC 0400A38F */  lw         $v1, 0x4($sp)
    /* 10B9C 801436D0 00000000 */  nop
    /* 10BA0 801436D4 40100300 */  sll        $v0, $v1, 1
    /* 10BA4 801436D8 21104300 */  addu       $v0, $v0, $v1
    /* 10BA8 801436DC 80100200 */  sll        $v0, $v0, 2
    /* 10BAC 801436E0 21104300 */  addu       $v0, $v0, $v1
    /* 10BB0 801436E4 0400A2AF */  sw         $v0, 0x4($sp)
    /* 10BB4 801436E8 0000A28F */  lw         $v0, 0x0($sp)
    /* 10BB8 801436EC 00000000 */  nop
    /* 10BBC 801436F0 01004224 */  addiu      $v0, $v0, 0x1
    /* 10BC0 801436F4 0000A2AF */  sw         $v0, 0x0($sp)
  .L801436F8:
    /* 10BC4 801436F8 0000A28F */  lw         $v0, 0x0($sp)
    /* 10BC8 801436FC 00000000 */  nop
    /* 10BCC 80143700 3C004228 */  slti       $v0, $v0, 0x3C
    /* 10BD0 80143704 F1FF4014 */  bnez       $v0, .L801436CC
    /* 10BD4 80143708 00000000 */   nop
    /* 10BD8 8014370C 0800E003 */  jr         $ra
    /* 10BDC 80143710 0800BD27 */   addiu     $sp, $sp, 0x8
endlabel _spu_Fw1ts
    /* 10BE0 80143714 00000000 */  nop
    /* 10BE4 80143718 00000000 */  nop
    /* 10BE8 8014371C 00000000 */  nop
