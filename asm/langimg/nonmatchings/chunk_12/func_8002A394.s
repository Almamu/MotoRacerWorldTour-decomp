nonmatching func_8002A394, 0x5C

glabel func_8002A394
    /* 18BA4 8002A394 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 18BA8 8002A398 1000B0AF */  sw         $s0, 0x10($sp)
    /* 18BAC 8002A39C 21808000 */  addu       $s0, $a0, $zero
    /* 18BB0 8002A3A0 1400BFAF */  sw         $ra, 0x14($sp)
    /* 18BB4 8002A3A4 A005038E */  lw         $v1, 0x5A0($s0)
    /* 18BB8 8002A3A8 AC0300AE */  sw         $zero, 0x3AC($s0)
    /* 18BBC 8002A3AC 2000628C */  lw         $v0, 0x20($v1)
    /* 18BC0 8002A3B0 00000000 */  nop
    /* 18BC4 8002A3B4 02004230 */  andi       $v0, $v0, 0x2
    /* 18BC8 8002A3B8 05004010 */  beqz       $v0, .L8002A3D0
    /* 18BCC 8002A3BC 00000000 */   nop
    /* 18BD0 8002A3C0 1EC4000C */  jal        func_80031078
    /* 18BD4 8002A3C4 00000000 */   nop
    /* 18BD8 8002A3C8 F6A80008 */  j          .L8002A3D8
    /* 18BDC 8002A3CC 00000000 */   nop
  .L8002A3D0:
    /* 18BE0 8002A3D0 4EC4000C */  jal        func_80031138
    /* 18BE4 8002A3D4 21200002 */   addu      $a0, $s0, $zero
  .L8002A3D8:
    /* 18BE8 8002A3D8 40C5000C */  jal        func_80031500
    /* 18BEC 8002A3DC 21200002 */   addu      $a0, $s0, $zero
    /* 18BF0 8002A3E0 1400BF8F */  lw         $ra, 0x14($sp)
    /* 18BF4 8002A3E4 1000B08F */  lw         $s0, 0x10($sp)
    /* 18BF8 8002A3E8 0800E003 */  jr         $ra
    /* 18BFC 8002A3EC 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_8002A394
