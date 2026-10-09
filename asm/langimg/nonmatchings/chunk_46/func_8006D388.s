nonmatching func_8006D388, 0x58

glabel func_8006D388
    /* 5BB98 8006D388 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 5BB9C 8006D38C 1800B2AF */  sw         $s2, 0x18($sp)
    /* 5BBA0 8006D390 21908000 */  addu       $s2, $a0, $zero
    /* 5BBA4 8006D394 1400B1AF */  sw         $s1, 0x14($sp)
    /* 5BBA8 8006D398 2188A000 */  addu       $s1, $a1, $zero
    /* 5BBAC 8006D39C 1000B0AF */  sw         $s0, 0x10($sp)
    /* 5BBB0 8006D3A0 21800000 */  addu       $s0, $zero, $zero
    /* 5BBB4 8006D3A4 1C00BFAF */  sw         $ra, 0x1C($sp)
    /* 5BBB8 8006D3A8 21204002 */  addu       $a0, $s2, $zero
  .L8006D3AC:
    /* 5BBBC 8006D3AC 21282002 */  addu       $a1, $s1, $zero
    /* 5BBC0 8006D3B0 B8B4010C */  jal        func_8006D2E0
    /* 5BBC4 8006D3B4 21300002 */   addu      $a2, $s0, $zero
    /* 5BBC8 8006D3B8 01001026 */  addiu      $s0, $s0, 0x1
    /* 5BBCC 8006D3BC 0200022E */  sltiu      $v0, $s0, 0x2
    /* 5BBD0 8006D3C0 FAFF4014 */  bnez       $v0, .L8006D3AC
    /* 5BBD4 8006D3C4 21204002 */   addu      $a0, $s2, $zero
    /* 5BBD8 8006D3C8 1C00BF8F */  lw         $ra, 0x1C($sp)
    /* 5BBDC 8006D3CC 1800B28F */  lw         $s2, 0x18($sp)
    /* 5BBE0 8006D3D0 1400B18F */  lw         $s1, 0x14($sp)
    /* 5BBE4 8006D3D4 1000B08F */  lw         $s0, 0x10($sp)
    /* 5BBE8 8006D3D8 0800E003 */  jr         $ra
    /* 5BBEC 8006D3DC 2000BD27 */   addiu     $sp, $sp, 0x20
endlabel func_8006D388
