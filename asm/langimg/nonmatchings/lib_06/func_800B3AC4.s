nonmatching func_800B3AC4, 0xCC

glabel func_800B3AC4
    /* A22D4 800B3AC4 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* A22D8 800B3AC8 1000B0AF */  sw         $s0, 0x10($sp)
    /* A22DC 800B3ACC 21808000 */  addu       $s0, $a0, $zero
    /* A22E0 800B3AD0 06000012 */  beqz       $s0, .L800B3AEC
    /* A22E4 800B3AD4 1400BFAF */   sw        $ra, 0x14($sp)
    /* A22E8 800B3AD8 01000224 */  addiu      $v0, $zero, 0x1
    /* A22EC 800B3ADC 0B000212 */  beq        $s0, $v0, .L800B3B0C
    /* A22F0 800B3AE0 00000000 */   nop
    /* A22F4 800B3AE4 DECE0208 */  j          .L800B3B78
    /* A22F8 800B3AE8 00000000 */   nop
  .L800B3AEC:
    /* A22FC 800B3AEC 0C80033C */  lui        $v1, %hi(D_800C3DB0)
    /* A2300 800B3AF0 B03D638C */  lw         $v1, %lo(D_800C3DB0)($v1)
    /* A2304 800B3AF4 00000000 */  nop
    /* A2308 800B3AF8 AA016294 */  lhu        $v0, 0x1AA($v1)
    /* A230C 800B3AFC 0C80013C */  lui        $at, %hi(D_800C3D44)
    /* A2310 800B3B00 443D20AC */  sw         $zero, %lo(D_800C3D44)($at)
    /* A2314 800B3B04 DDCE0208 */  j          .L800B3B74
    /* A2318 800B3B08 7FFF4230 */   andi      $v0, $v0, 0xFF7F
  .L800B3B0C:
    /* A231C 800B3B0C 0C80023C */  lui        $v0, %hi(D_800C3D48)
    /* A2320 800B3B10 483D428C */  lw         $v0, %lo(D_800C3D48)($v0)
    /* A2324 800B3B14 00000000 */  nop
    /* A2328 800B3B18 0F005010 */  beq        $v0, $s0, .L800B3B58
    /* A232C 800B3B1C 00000000 */   nop
    /* A2330 800B3B20 0C80043C */  lui        $a0, %hi(D_800C3D4C)
    /* A2334 800B3B24 4C3D848C */  lw         $a0, %lo(D_800C3D4C)($a0)
    /* A2338 800B3B28 E5CE020C */  jal        func_800B3B94
    /* A233C 800B3B2C 00000000 */   nop
    /* A2340 800B3B30 09004010 */  beqz       $v0, .L800B3B58
    /* A2344 800B3B34 00000000 */   nop
    /* A2348 800B3B38 0C80033C */  lui        $v1, %hi(D_800C3DB0)
    /* A234C 800B3B3C B03D638C */  lw         $v1, %lo(D_800C3DB0)($v1)
    /* A2350 800B3B40 00000000 */  nop
    /* A2354 800B3B44 AA016294 */  lhu        $v0, 0x1AA($v1)
    /* A2358 800B3B48 0C80013C */  lui        $at, %hi(D_800C3D44)
    /* A235C 800B3B4C 443D20AC */  sw         $zero, %lo(D_800C3D44)($at)
    /* A2360 800B3B50 DDCE0208 */  j          .L800B3B74
    /* A2364 800B3B54 7FFF4230 */   andi      $v0, $v0, 0xFF7F
  .L800B3B58:
    /* A2368 800B3B58 0C80033C */  lui        $v1, %hi(D_800C3DB0)
    /* A236C 800B3B5C B03D638C */  lw         $v1, %lo(D_800C3DB0)($v1)
    /* A2370 800B3B60 00000000 */  nop
    /* A2374 800B3B64 AA016294 */  lhu        $v0, 0x1AA($v1)
    /* A2378 800B3B68 0C80013C */  lui        $at, %hi(D_800C3D44)
    /* A237C 800B3B6C 443D30AC */  sw         $s0, %lo(D_800C3D44)($at)
    /* A2380 800B3B70 80004234 */  ori        $v0, $v0, 0x80
  .L800B3B74:
    /* A2384 800B3B74 AA0162A4 */  sh         $v0, 0x1AA($v1)
  .L800B3B78:
    /* A2388 800B3B78 0C80023C */  lui        $v0, %hi(D_800C3D44)
    /* A238C 800B3B7C 443D428C */  lw         $v0, %lo(D_800C3D44)($v0)
    /* A2390 800B3B80 1400BF8F */  lw         $ra, 0x14($sp)
    /* A2394 800B3B84 1000B08F */  lw         $s0, 0x10($sp)
    /* A2398 800B3B88 0800E003 */  jr         $ra
    /* A239C 800B3B8C 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_800B3AC4
    /* A23A0 800B3B90 00000000 */  nop
