nonmatching func_8013DC50, 0x2B0

glabel func_8013DC50
    /* B11C 8013DC50 D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* B120 8013DC54 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* B124 8013DC58 21988000 */  addu       $s3, $a0, $zero
    /* B128 8013DC5C 1000B0AF */  sw         $s0, 0x10($sp)
    /* B12C 8013DC60 2180A000 */  addu       $s0, $a1, $zero
    /* B130 8013DC64 1400B1AF */  sw         $s1, 0x14($sp)
    /* B134 8013DC68 2188C000 */  addu       $s1, $a2, $zero
    /* B138 8013DC6C 1800B2AF */  sw         $s2, 0x18($sp)
    /* B13C 8013DC70 2000BFAF */  sw         $ra, 0x20($sp)
    /* B140 8013DC74 FBF8040C */  jal        func_8013E3EC
    /* B144 8013DC78 2190E000 */   addu      $s2, $a3, $zero
    /* B148 8013DC7C 27F70408 */  j          .L8013DC9C
    /* B14C 8013DC80 00000000 */   nop
  .L8013DC84:
    /* B150 8013DC84 08F9040C */  jal        func_8013E420
    /* B154 8013DC88 00000000 */   nop
    /* B158 8013DC8C 95004014 */  bnez       $v0, .L8013DEE4
    /* B15C 8013DC90 FFFF0224 */   addiu     $v0, $zero, -0x1
    /* B160 8013DC94 C0F7040C */  jal        func_8013DF00
    /* B164 8013DC98 00000000 */   nop
  .L8013DC9C:
    /* B168 8013DC9C 1C80023C */  lui        $v0, %hi(D_801BFD60)
    /* B16C 8013DCA0 60FD428C */  lw         $v0, %lo(D_801BFD60)($v0)
    /* B170 8013DCA4 1C80033C */  lui        $v1, %hi(D_801BFD64)
    /* B174 8013DCA8 64FD638C */  lw         $v1, %lo(D_801BFD64)($v1)
    /* B178 8013DCAC 01004224 */  addiu      $v0, $v0, 0x1
    /* B17C 8013DCB0 3F004230 */  andi       $v0, $v0, 0x3F
    /* B180 8013DCB4 F3FF4310 */  beq        $v0, $v1, .L8013DC84
    /* B184 8013DCB8 00000000 */   nop
    /* B188 8013DCBC E7EC040C */  jal        func_8013B39C
    /* B18C 8013DCC0 21200000 */   addu      $a0, $zero, $zero
    /* B190 8013DCC4 1C80043C */  lui        $a0, %hi(D_801BFC38)
    /* B194 8013DCC8 38FC8424 */  addiu      $a0, $a0, %lo(D_801BFC38)
    /* B198 8013DCCC 1C80013C */  lui        $at, %hi(D_801BFD68)
    /* B19C 8013DCD0 68FD22AC */  sw         $v0, %lo(D_801BFD68)($at)
    /* B1A0 8013DCD4 01008390 */  lbu        $v1, 0x1($a0)
    /* B1A4 8013DCD8 01000224 */  addiu      $v0, $zero, 0x1
    /* B1A8 8013DCDC 14006010 */  beqz       $v1, .L8013DD30
    /* B1AC 8013DCE0 080082AC */   sw        $v0, 0x8($a0)
    /* B1B0 8013DCE4 1C80033C */  lui        $v1, %hi(D_801BFD60)
    /* B1B4 8013DCE8 60FD638C */  lw         $v1, %lo(D_801BFD60)($v1)
    /* B1B8 8013DCEC 1C80023C */  lui        $v0, %hi(D_801BFD64)
    /* B1BC 8013DCF0 64FD428C */  lw         $v0, %lo(D_801BFD64)($v0)
    /* B1C0 8013DCF4 00000000 */  nop
    /* B1C4 8013DCF8 1E006214 */  bne        $v1, $v0, .L8013DD74
    /* B1C8 8013DCFC 00000000 */   nop
    /* B1CC 8013DD00 1C80023C */  lui        $v0, %hi(D_801BFD4C)
    /* B1D0 8013DD04 4CFD428C */  lw         $v0, %lo(D_801BFD4C)($v0)
    /* B1D4 8013DD08 00000000 */  nop
    /* B1D8 8013DD0C 0000428C */  lw         $v0, 0x0($v0)
    /* B1DC 8013DD10 0001033C */  lui        $v1, (0x1000000 >> 16)
    /* B1E0 8013DD14 24104300 */  and        $v0, $v0, $v1
    /* B1E4 8013DD18 16004014 */  bnez       $v0, .L8013DD74
    /* B1E8 8013DD1C 00000000 */   nop
    /* B1EC 8013DD20 0C00828C */  lw         $v0, 0xC($a0)
    /* B1F0 8013DD24 00000000 */  nop
    /* B1F4 8013DD28 12004014 */  bnez       $v0, .L8013DD74
    /* B1F8 8013DD2C 00000000 */   nop
  .L8013DD30:
    /* B1FC 8013DD30 1C80033C */  lui        $v1, %hi(D_801BFD40)
    /* B200 8013DD34 40FD638C */  lw         $v1, %lo(D_801BFD40)($v1)
    /* B204 8013DD38 0004043C */  lui        $a0, (0x4000000 >> 16)
  .L8013DD3C:
    /* B208 8013DD3C 0000628C */  lw         $v0, 0x0($v1)
    /* B20C 8013DD40 00000000 */  nop
    /* B210 8013DD44 24104400 */  and        $v0, $v0, $a0
    /* B214 8013DD48 FCFF4010 */  beqz       $v0, .L8013DD3C
    /* B218 8013DD4C 00000000 */   nop
    /* B21C 8013DD50 21200002 */  addu       $a0, $s0, $zero
    /* B220 8013DD54 09F86002 */  jalr       $s3
    /* B224 8013DD58 21284002 */   addu      $a1, $s2, $zero
    /* B228 8013DD5C 1C80043C */  lui        $a0, %hi(D_801BFD68)
    /* B22C 8013DD60 68FD848C */  lw         $a0, %lo(D_801BFD68)($a0)
    /* B230 8013DD64 E7EC040C */  jal        func_8013B39C
    /* B234 8013DD68 00000000 */   nop
    /* B238 8013DD6C B9F70408 */  j          .L8013DEE4
    /* B23C 8013DD70 21100000 */   addu      $v0, $zero, $zero
  .L8013DD74:
    /* B240 8013DD74 1480053C */  lui        $a1, %hi(func_8013DF00)
    /* B244 8013DD78 00DFA524 */  addiu      $a1, $a1, %lo(func_8013DF00)
    /* B248 8013DD7C BEEC040C */  jal        func_8013B2F8
    /* B24C 8013DD80 02000424 */   addiu     $a0, $zero, 0x2
    /* B250 8013DD84 2A002012 */  beqz       $s1, .L8013DE30
    /* B254 8013DD88 21300000 */   addu      $a2, $zero, $zero
    /* B258 8013DD8C 1D80083C */  lui        $t0, %hi(D_801CCE74)
    /* B25C 8013DD90 74CE0825 */  addiu      $t0, $t0, %lo(D_801CCE74)
    /* B260 8013DD94 21380002 */  addu       $a3, $s0, $zero
    /* B264 8013DD98 21102002 */  addu       $v0, $s1, $zero
  .L8013DD9C:
    /* B268 8013DD9C 02004104 */  bgez       $v0, .L8013DDA8
    /* B26C 8013DDA0 00000000 */   nop
    /* B270 8013DDA4 03004224 */  addiu      $v0, $v0, 0x3
  .L8013DDA8:
    /* B274 8013DDA8 83100200 */  sra        $v0, $v0, 2
    /* B278 8013DDAC 2A10C200 */  slt        $v0, $a2, $v0
    /* B27C 8013DDB0 0E004010 */  beqz       $v0, .L8013DDEC
    /* B280 8013DDB4 80200600 */   sll       $a0, $a2, 2
    /* B284 8013DDB8 0000E58C */  lw         $a1, 0x0($a3)
    /* B288 8013DDBC 0400E724 */  addiu      $a3, $a3, 0x4
    /* B28C 8013DDC0 1C80033C */  lui        $v1, %hi(D_801BFD60)
    /* B290 8013DDC4 60FD638C */  lw         $v1, %lo(D_801BFD60)($v1)
    /* B294 8013DDC8 0100C624 */  addiu      $a2, $a2, 0x1
    /* B298 8013DDCC 40100300 */  sll        $v0, $v1, 1
    /* B29C 8013DDD0 21104300 */  addu       $v0, $v0, $v1
    /* B2A0 8013DDD4 40110200 */  sll        $v0, $v0, 5
    /* B2A4 8013DDD8 21104800 */  addu       $v0, $v0, $t0
    /* B2A8 8013DDDC 21208200 */  addu       $a0, $a0, $v0
    /* B2AC 8013DDE0 000085AC */  sw         $a1, 0x0($a0)
    /* B2B0 8013DDE4 67F70408 */  j          .L8013DD9C
    /* B2B4 8013DDE8 21102002 */   addu      $v0, $s1, $zero
  .L8013DDEC:
    /* B2B8 8013DDEC 1C80023C */  lui        $v0, %hi(D_801BFD60)
    /* B2BC 8013DDF0 60FD428C */  lw         $v0, %lo(D_801BFD60)($v0)
    /* B2C0 8013DDF4 1C80033C */  lui        $v1, %hi(D_801BFD60)
    /* B2C4 8013DDF8 60FD638C */  lw         $v1, %lo(D_801BFD60)($v1)
    /* B2C8 8013DDFC 40200200 */  sll        $a0, $v0, 1
    /* B2CC 8013DE00 21208200 */  addu       $a0, $a0, $v0
    /* B2D0 8013DE04 40210400 */  sll        $a0, $a0, 5
    /* B2D4 8013DE08 40100300 */  sll        $v0, $v1, 1
    /* B2D8 8013DE0C 21104300 */  addu       $v0, $v0, $v1
    /* B2DC 8013DE10 40110200 */  sll        $v0, $v0, 5
    /* B2E0 8013DE14 1D80033C */  lui        $v1, %hi(D_801CCE74)
    /* B2E4 8013DE18 74CE6324 */  addiu      $v1, $v1, %lo(D_801CCE74)
    /* B2E8 8013DE1C 21104300 */  addu       $v0, $v0, $v1
    /* B2EC 8013DE20 1D80013C */  lui        $at, %hi(D_801CCE6C)
    /* B2F0 8013DE24 21082400 */  addu       $at, $at, $a0
    /* B2F4 8013DE28 95F70408 */  j          .L8013DE54
    /* B2F8 8013DE2C 6CCE22AC */   sw        $v0, %lo(D_801CCE6C)($at)
  .L8013DE30:
    /* B2FC 8013DE30 1C80033C */  lui        $v1, %hi(D_801BFD60)
    /* B300 8013DE34 60FD638C */  lw         $v1, %lo(D_801BFD60)($v1)
    /* B304 8013DE38 00000000 */  nop
    /* B308 8013DE3C 40100300 */  sll        $v0, $v1, 1
    /* B30C 8013DE40 21104300 */  addu       $v0, $v0, $v1
    /* B310 8013DE44 40110200 */  sll        $v0, $v0, 5
    /* B314 8013DE48 1D80013C */  lui        $at, %hi(D_801CCE6C)
    /* B318 8013DE4C 21082200 */  addu       $at, $at, $v0
    /* B31C 8013DE50 6CCE30AC */  sw         $s0, %lo(D_801CCE6C)($at)
  .L8013DE54:
    /* B320 8013DE54 1C80033C */  lui        $v1, %hi(D_801BFD60)
    /* B324 8013DE58 60FD638C */  lw         $v1, %lo(D_801BFD60)($v1)
    /* B328 8013DE5C 00000000 */  nop
    /* B32C 8013DE60 40100300 */  sll        $v0, $v1, 1
    /* B330 8013DE64 21104300 */  addu       $v0, $v0, $v1
    /* B334 8013DE68 40110200 */  sll        $v0, $v0, 5
    /* B338 8013DE6C 1D80013C */  lui        $at, %hi(D_801CCE70)
    /* B33C 8013DE70 21082200 */  addu       $at, $at, $v0
    /* B340 8013DE74 70CE32AC */  sw         $s2, %lo(D_801CCE70)($at)
    /* B344 8013DE78 1C80033C */  lui        $v1, %hi(D_801BFD60)
    /* B348 8013DE7C 60FD638C */  lw         $v1, %lo(D_801BFD60)($v1)
    /* B34C 8013DE80 00000000 */  nop
    /* B350 8013DE84 40100300 */  sll        $v0, $v1, 1
    /* B354 8013DE88 21104300 */  addu       $v0, $v0, $v1
    /* B358 8013DE8C 40110200 */  sll        $v0, $v0, 5
    /* B35C 8013DE90 1D80013C */  lui        $at, %hi(D_801CCE68)
    /* B360 8013DE94 21082200 */  addu       $at, $at, $v0
    /* B364 8013DE98 68CE33AC */  sw         $s3, %lo(D_801CCE68)($at)
    /* B368 8013DE9C 1C80023C */  lui        $v0, %hi(D_801BFD60)
    /* B36C 8013DEA0 60FD428C */  lw         $v0, %lo(D_801BFD60)($v0)
    /* B370 8013DEA4 1C80043C */  lui        $a0, %hi(D_801BFD68)
    /* B374 8013DEA8 68FD848C */  lw         $a0, %lo(D_801BFD68)($a0)
    /* B378 8013DEAC 01004224 */  addiu      $v0, $v0, 0x1
    /* B37C 8013DEB0 3F004230 */  andi       $v0, $v0, 0x3F
    /* B380 8013DEB4 1C80013C */  lui        $at, %hi(D_801BFD60)
    /* B384 8013DEB8 E7EC040C */  jal        func_8013B39C
    /* B388 8013DEBC 60FD22AC */   sw        $v0, %lo(D_801BFD60)($at)
    /* B38C 8013DEC0 C0F7040C */  jal        func_8013DF00
    /* B390 8013DEC4 00000000 */   nop
    /* B394 8013DEC8 1C80023C */  lui        $v0, %hi(D_801BFD60)
    /* B398 8013DECC 60FD428C */  lw         $v0, %lo(D_801BFD60)($v0)
    /* B39C 8013DED0 1C80033C */  lui        $v1, %hi(D_801BFD64)
    /* B3A0 8013DED4 64FD638C */  lw         $v1, %lo(D_801BFD64)($v1)
    /* B3A4 8013DED8 00000000 */  nop
    /* B3A8 8013DEDC 23104300 */  subu       $v0, $v0, $v1
    /* B3AC 8013DEE0 3F004230 */  andi       $v0, $v0, 0x3F
  .L8013DEE4:
    /* B3B0 8013DEE4 2000BF8F */  lw         $ra, 0x20($sp)
    /* B3B4 8013DEE8 1C00B38F */  lw         $s3, 0x1C($sp)
    /* B3B8 8013DEEC 1800B28F */  lw         $s2, 0x18($sp)
    /* B3BC 8013DEF0 1400B18F */  lw         $s1, 0x14($sp)
    /* B3C0 8013DEF4 1000B08F */  lw         $s0, 0x10($sp)
    /* B3C4 8013DEF8 0800E003 */  jr         $ra
    /* B3C8 8013DEFC 2800BD27 */   addiu     $sp, $sp, 0x28
endlabel func_8013DC50
