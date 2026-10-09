nonmatching PadInfoMode, 0xF8

glabel PadInfoMode
    /* D310 8013FE44 1C80023C */  lui        $v0, %hi(D_801BFE70)
    /* D314 8013FE48 70FE428C */  lw         $v0, %lo(D_801BFE70)($v0)
    /* D318 8013FE4C E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* D31C 8013FE50 1000B0AF */  sw         $s0, 0x10($sp)
    /* D320 8013FE54 2180A000 */  addu       $s0, $a1, $zero
    /* D324 8013FE58 1400B1AF */  sw         $s1, 0x14($sp)
    /* D328 8013FE5C 1800BFAF */  sw         $ra, 0x18($sp)
    /* D32C 8013FE60 09F84000 */  jalr       $v0
    /* D330 8013FE64 2188C000 */   addu      $s1, $a2, $zero
    /* D334 8013FE68 21184000 */  addu       $v1, $v0, $zero
    /* D338 8013FE6C 03000224 */  addiu      $v0, $zero, 0x3
    /* D33C 8013FE70 16000212 */  beq        $s0, $v0, .L8013FECC
    /* D340 8013FE74 0400022A */   slti      $v0, $s0, 0x4
    /* D344 8013FE78 07004010 */  beqz       $v0, .L8013FE98
    /* D348 8013FE7C 01000224 */   addiu     $v0, $zero, 0x1
    /* D34C 8013FE80 0C000212 */  beq        $s0, $v0, .L8013FEB4
    /* D350 8013FE84 02000224 */   addiu     $v0, $zero, 0x2
    /* D354 8013FE88 0D000212 */  beq        $s0, $v0, .L8013FEC0
    /* D358 8013FE8C 21100000 */   addu      $v0, $zero, $zero
    /* D35C 8013FE90 CAFF0408 */  j          .L8013FF28
    /* D360 8013FE94 00000000 */   nop
  .L8013FE98:
    /* D364 8013FE98 04000224 */  addiu      $v0, $zero, 0x4
    /* D368 8013FE9C 0E000212 */  beq        $s0, $v0, .L8013FED8
    /* D36C 8013FEA0 64000224 */   addiu     $v0, $zero, 0x64
    /* D370 8013FEA4 1C000212 */  beq        $s0, $v0, .L8013FF18
    /* D374 8013FEA8 21100000 */   addu      $v0, $zero, $zero
    /* D378 8013FEAC CAFF0408 */  j          .L8013FF28
    /* D37C 8013FEB0 00000000 */   nop
  .L8013FEB4:
    /* D380 8013FEB4 E8006290 */  lbu        $v0, 0xE8($v1)
    /* D384 8013FEB8 CAFF0408 */  j          .L8013FF28
    /* D388 8013FEBC 00000000 */   nop
  .L8013FEC0:
    /* D38C 8013FEC0 E6006294 */  lhu        $v0, 0xE6($v1)
    /* D390 8013FEC4 CAFF0408 */  j          .L8013FF28
    /* D394 8013FEC8 00000000 */   nop
  .L8013FECC:
    /* D398 8013FECC E4006290 */  lbu        $v0, 0xE4($v1)
    /* D39C 8013FED0 CAFF0408 */  j          .L8013FF28
    /* D3A0 8013FED4 00000000 */   nop
  .L8013FED8:
    /* D3A4 8013FED8 04002106 */  bgez       $s1, .L8013FEEC
    /* D3A8 8013FEDC 00000000 */   nop
    /* D3AC 8013FEE0 E3006290 */  lbu        $v0, 0xE3($v1)
    /* D3B0 8013FEE4 CAFF0408 */  j          .L8013FF28
    /* D3B4 8013FEE8 00000000 */   nop
  .L8013FEEC:
    /* D3B8 8013FEEC E3006290 */  lbu        $v0, 0xE3($v1)
    /* D3BC 8013FEF0 00000000 */  nop
    /* D3C0 8013FEF4 2A102202 */  slt        $v0, $s1, $v0
    /* D3C4 8013FEF8 0A004010 */  beqz       $v0, .L8013FF24
    /* D3C8 8013FEFC 40101100 */   sll       $v0, $s1, 1
    /* D3CC 8013FF00 0000638C */  lw         $v1, 0x0($v1)
    /* D3D0 8013FF04 00000000 */  nop
    /* D3D4 8013FF08 21104300 */  addu       $v0, $v0, $v1
    /* D3D8 8013FF0C 00004294 */  lhu        $v0, 0x0($v0)
    /* D3DC 8013FF10 CAFF0408 */  j          .L8013FF28
    /* D3E0 8013FF14 00000000 */   nop
  .L8013FF18:
    /* D3E4 8013FF18 4C00628C */  lw         $v0, 0x4C($v1)
    /* D3E8 8013FF1C CAFF0408 */  j          .L8013FF28
    /* D3EC 8013FF20 00000000 */   nop
  .L8013FF24:
    /* D3F0 8013FF24 21100000 */  addu       $v0, $zero, $zero
  .L8013FF28:
    /* D3F4 8013FF28 1800BF8F */  lw         $ra, 0x18($sp)
    /* D3F8 8013FF2C 1400B18F */  lw         $s1, 0x14($sp)
    /* D3FC 8013FF30 1000B08F */  lw         $s0, 0x10($sp)
    /* D400 8013FF34 0800E003 */  jr         $ra
    /* D404 8013FF38 2000BD27 */   addiu     $sp, $sp, 0x20
endlabel PadInfoMode
