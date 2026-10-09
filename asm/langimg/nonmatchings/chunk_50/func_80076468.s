nonmatching func_80076468, 0x54

glabel func_80076468
    /* 64C78 80076468 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 64C7C 8007646C 1000B0AF */  sw         $s0, 0x10($sp)
    /* 64C80 80076470 1400BFAF */  sw         $ra, 0x14($sp)
    /* 64C84 80076474 4DD1010C */  jal        func_80074534
    /* 64C88 80076478 21808000 */   addu      $s0, $a0, $zero
    /* 64C8C 8007647C 21100002 */  addu       $v0, $s0, $zero
    /* 64C90 80076480 0D80033C */  lui        $v1, %hi(D_800C87B4)
    /* 64C94 80076484 B4876324 */  addiu      $v1, $v1, %lo(D_800C87B4)
    /* 64C98 80076488 1400BF8F */  lw         $ra, 0x14($sp)
    /* 64C9C 8007648C 0D80043C */  lui        $a0, %hi(D_800C877C)
    /* 64CA0 80076490 7C878424 */  addiu      $a0, $a0, %lo(D_800C877C)
    /* 64CA4 80076494 340003AE */  sw         $v1, 0x34($s0)
    /* 64CA8 80076498 04000324 */  addiu      $v1, $zero, 0x4
    /* 64CAC 8007649C 340004AE */  sw         $a0, 0x34($s0)
    /* 64CB0 800764A0 FFFF0424 */  addiu      $a0, $zero, -0x1
    /* 64CB4 800764A4 940000A2 */  sb         $zero, 0x94($s0)
    /* 64CB8 800764A8 000003AE */  sw         $v1, 0x0($s0)
    /* 64CBC 800764AC 9C0004AE */  sw         $a0, 0x9C($s0)
    /* 64CC0 800764B0 1000B08F */  lw         $s0, 0x10($sp)
    /* 64CC4 800764B4 0800E003 */  jr         $ra
    /* 64CC8 800764B8 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_80076468
