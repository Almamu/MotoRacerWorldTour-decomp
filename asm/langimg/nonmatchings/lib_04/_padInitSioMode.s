nonmatching _padInitSioMode, 0x334

glabel _padInitSioMode
    /* 9F2F8 800B0AE8 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 9F2FC 800B0AEC 1000B0AF */  sw         $s0, 0x10($sp)
    /* 9F300 800B0AF0 21808000 */  addu       $s0, $a0, $zero
    /* 9F304 800B0AF4 0C80033C */  lui        $v1, %hi(D_800C3CEC)
    /* 9F308 800B0AF8 EC3C638C */  lw         $v1, %lo(D_800C3CEC)($v1)
    /* 9F30C 800B0AFC 40000224 */  addiu      $v0, $zero, 0x40
    /* 9F310 800B0B00 1800BFAF */  sw         $ra, 0x18($sp)
    /* 9F314 800B0B04 1400B1AF */  sw         $s1, 0x14($sp)
    /* 9F318 800B0B08 0A0062A4 */  sh         $v0, 0xA($v1)
    /* 9F31C 800B0B0C 0D000224 */  addiu      $v0, $zero, 0xD
    /* 9F320 800B0B10 0A0060A4 */  sh         $zero, 0xA($v1)
    /* 9F324 800B0B14 080062A4 */  sh         $v0, 0x8($v1)
    /* 9F328 800B0B18 88000224 */  addiu      $v0, $zero, 0x88
    /* 9F32C 800B0B1C 0E0062A4 */  sh         $v0, 0xE($v1)
    /* 9F330 800B0B20 E8000392 */  lbu        $v1, 0xE8($s0)
    /* 9F334 800B0B24 08000224 */  addiu      $v0, $zero, 0x8
    /* 9F338 800B0B28 02006214 */  bne        $v1, $v0, .L800B0B34
    /* 9F33C 800B0B2C 91000424 */   addiu     $a0, $zero, 0x91
    /* 9F340 800B0B30 50000424 */  addiu      $a0, $zero, 0x50
  .L800B0B34:
    /* 9F344 800B0B34 77CB020C */  jal        setRC2wait
    /* 9F348 800B0B38 00000000 */   nop
    /* 9F34C 800B0B3C 0C80023C */  lui        $v0, %hi(D_800C3CC8)
    /* 9F350 800B0B40 C83C428C */  lw         $v0, %lo(D_800C3CC8)($v0)
    /* 9F354 800B0B44 0C80043C */  lui        $a0, %hi(D_800C3CEC)
    /* 9F358 800B0B48 EC3C848C */  lw         $a0, %lo(D_800C3CEC)($a0)
    /* 9F35C 800B0B4C 02004010 */  beqz       $v0, .L800B0B58
    /* 9F360 800B0B50 03100324 */   addiu     $v1, $zero, 0x1003
    /* 9F364 800B0B54 03300324 */  addiu      $v1, $zero, 0x3003
  .L800B0B58:
    /* 9F368 800B0B58 80100200 */  sll        $v0, $v0, 2
    /* 9F36C 800B0B5C 0A0083A4 */  sh         $v1, 0xA($a0)
    /* 9F370 800B0B60 0C80013C */  lui        $at, %hi(D_800C3CE0)
    /* 9F374 800B0B64 21082200 */  addu       $at, $at, $v0
    /* 9F378 800B0B68 E03C228C */  lw         $v0, %lo(D_800C3CE0)($at)
    /* 9F37C 800B0B6C 0C80033C */  lui        $v1, %hi(D_800C3CE0)
    /* 9F380 800B0B70 34004004 */  bltz       $v0, .L800B0C44
    /* 9F384 800B0B74 E03C6324 */   addiu     $v1, $v1, %lo(D_800C3CE0)
    /* 9F388 800B0B78 1D004018 */  blez       $v0, .L800B0BF0
    /* 9F38C 800B0B7C 00000000 */   nop
    /* 9F390 800B0B80 21886000 */  addu       $s1, $v1, $zero
  .L800B0B84:
    /* 9F394 800B0B84 0C80033C */  lui        $v1, %hi(D_800C3CC8)
    /* 9F398 800B0B88 C83C638C */  lw         $v1, %lo(D_800C3CC8)($v1)
    /* 9F39C 800B0B8C 00000000 */  nop
    /* 9F3A0 800B0B90 80180300 */  sll        $v1, $v1, 2
    /* 9F3A4 800B0B94 21187100 */  addu       $v1, $v1, $s1
    /* 9F3A8 800B0B98 0000628C */  lw         $v0, 0x0($v1)
    /* 9F3AC 800B0B9C 00000000 */  nop
    /* 9F3B0 800B0BA0 FFFF4224 */  addiu      $v0, $v0, -0x1
    /* 9F3B4 800B0BA4 00210200 */  sll        $a0, $v0, 4
    /* 9F3B8 800B0BA8 23208200 */  subu       $a0, $a0, $v0
    /* 9F3BC 800B0BAC 00210400 */  sll        $a0, $a0, 4
    /* 9F3C0 800B0BB0 000062AC */  sw         $v0, 0x0($v1)
    /* 9F3C4 800B0BB4 0C00028E */  lw         $v0, 0xC($s0)
    /* 9F3C8 800B0BB8 0C80033C */  lui        $v1, %hi(D_800C3CA8)
    /* 9F3CC 800B0BBC A83C638C */  lw         $v1, %lo(D_800C3CA8)($v1)
    /* 9F3D0 800B0BC0 00000000 */  nop
    /* 9F3D4 800B0BC4 09F86000 */  jalr       $v1
    /* 9F3D8 800B0BC8 21204400 */   addu      $a0, $v0, $a0
    /* 9F3DC 800B0BCC 0C80023C */  lui        $v0, %hi(D_800C3CC8)
    /* 9F3E0 800B0BD0 C83C428C */  lw         $v0, %lo(D_800C3CC8)($v0)
    /* 9F3E4 800B0BD4 00000000 */  nop
    /* 9F3E8 800B0BD8 80100200 */  sll        $v0, $v0, 2
    /* 9F3EC 800B0BDC 21105100 */  addu       $v0, $v0, $s1
    /* 9F3F0 800B0BE0 0000428C */  lw         $v0, 0x0($v0)
    /* 9F3F4 800B0BE4 00000000 */  nop
    /* 9F3F8 800B0BE8 E6FF401C */  bgtz       $v0, .L800B0B84
    /* 9F3FC 800B0BEC 00000000 */   nop
  .L800B0BF0:
    /* 9F400 800B0BF0 0C80023C */  lui        $v0, %hi(D_800C3CC8)
    /* 9F404 800B0BF4 C83C428C */  lw         $v0, %lo(D_800C3CC8)($v0)
    /* 9F408 800B0BF8 0C80033C */  lui        $v1, %hi(D_800C3CE0)
    /* 9F40C 800B0BFC E03C6324 */  addiu      $v1, $v1, %lo(D_800C3CE0)
    /* 9F410 800B0C00 80100200 */  sll        $v0, $v0, 2
    /* 9F414 800B0C04 21284300 */  addu       $a1, $v0, $v1
    /* 9F418 800B0C08 0000A28C */  lw         $v0, 0x0($a1)
    /* 9F41C 800B0C0C 00000000 */  nop
    /* 9F420 800B0C10 0C004014 */  bnez       $v0, .L800B0C44
    /* 9F424 800B0C14 FFFF0324 */   addiu     $v1, $zero, -0x1
    /* 9F428 800B0C18 21200002 */  addu       $a0, $s0, $zero
    /* 9F42C 800B0C1C 0C80023C */  lui        $v0, %hi(D_800C3CA8)
    /* 9F430 800B0C20 A83C428C */  lw         $v0, %lo(D_800C3CA8)($v0)
    /* 9F434 800B0C24 00000000 */  nop
    /* 9F438 800B0C28 09F84000 */  jalr       $v0
    /* 9F43C 800B0C2C 0000A3AC */   sw        $v1, 0x0($a1)
    /* 9F440 800B0C30 0C80023C */  lui        $v0, %hi(D_800C3CAC)
    /* 9F444 800B0C34 AC3C428C */  lw         $v0, %lo(D_800C3CAC)($v0)
    /* 9F448 800B0C38 00000000 */  nop
    /* 9F44C 800B0C3C 09F84000 */  jalr       $v0
    /* 9F450 800B0C40 21200002 */   addu      $a0, $s0, $zero
  .L800B0C44:
    /* 9F454 800B0C44 0C80033C */  lui        $v1, %hi(D_800C3CEC)
    /* 9F458 800B0C48 EC3C638C */  lw         $v1, %lo(D_800C3CEC)($v1)
    /* 9F45C 800B0C4C 00000000 */  nop
    /* 9F460 800B0C50 04006294 */  lhu        $v0, 0x4($v1)
    /* 9F464 800B0C54 00000000 */  nop
    /* 9F468 800B0C58 00024230 */  andi       $v0, $v0, 0x200
    /* 9F46C 800B0C5C 61004010 */  beqz       $v0, .L800B0DE4
    /* 9F470 800B0C60 00000000 */   nop
    /* 9F474 800B0C64 0A006294 */  lhu        $v0, 0xA($v1)
    /* 9F478 800B0C68 00000000 */  nop
    /* 9F47C 800B0C6C 10004234 */  ori        $v0, $v0, 0x10
    /* 9F480 800B0C70 0A0062A4 */  sh         $v0, 0xA($v1)
    /* 9F484 800B0C74 04006294 */  lhu        $v0, 0x4($v1)
    /* 9F488 800B0C78 00000000 */  nop
    /* 9F48C 800B0C7C 00024230 */  andi       $v0, $v0, 0x200
    /* 9F490 800B0C80 54004010 */  beqz       $v0, .L800B0DD4
    /* 9F494 800B0C84 7FFF0224 */   addiu     $v0, $zero, -0x81
  .L800B0C88:
    /* 9F498 800B0C88 7FCB020C */  jal        chkRC2wait
    /* 9F49C 800B0C8C 00000000 */   nop
    /* 9F4A0 800B0C90 FDFF4010 */  beqz       $v0, .L800B0C88
    /* 9F4A4 800B0C94 64000424 */   addiu     $a0, $zero, 0x64
    /* 9F4A8 800B0C98 0C80033C */  lui        $v1, %hi(D_800C3CEC)
    /* 9F4AC 800B0C9C EC3C638C */  lw         $v1, %lo(D_800C3CEC)($v1)
    /* 9F4B0 800B0CA0 01000224 */  addiu      $v0, $zero, 0x1
    /* 9F4B4 800B0CA4 77CB020C */  jal        setRC2wait
    /* 9F4B8 800B0CA8 000062A0 */   sb        $v0, 0x0($v1)
    /* 9F4BC 800B0CAC BDC4020C */  jal        _padClrIntSio0
    /* 9F4C0 800B0CB0 00000000 */   nop
    /* 9F4C4 800B0CB4 54004010 */  beqz       $v0, .L800B0E08
    /* 9F4C8 800B0CB8 21100000 */   addu      $v0, $zero, $zero
    /* 9F4CC 800B0CBC E1C4020C */  jal        _padWaitRXready
    /* 9F4D0 800B0CC0 00000000 */   nop
    /* 9F4D4 800B0CC4 0C80023C */  lui        $v0, %hi(D_800C3CEC)
    /* 9F4D8 800B0CC8 EC3C428C */  lw         $v0, %lo(D_800C3CEC)($v0)
    /* 9F4DC 800B0CCC AE010424 */  addiu      $a0, $zero, 0x1AE
    /* 9F4E0 800B0CD0 00004290 */  lbu        $v0, 0x0($v0)
    /* 9F4E4 800B0CD4 77CB020C */  jal        setRC2wait
    /* 9F4E8 800B0CD8 00000000 */   nop
    /* 9F4EC 800B0CDC 3DC30208 */  j          .L800B0CF4
    /* 9F4F0 800B0CE0 00000000 */   nop
  .L800B0CE4:
    /* 9F4F4 800B0CE4 7FCB020C */  jal        chkRC2wait
    /* 9F4F8 800B0CE8 00000000 */   nop
    /* 9F4FC 800B0CEC 46004014 */  bnez       $v0, .L800B0E08
    /* 9F500 800B0CF0 21100000 */   addu      $v0, $zero, $zero
  .L800B0CF4:
    /* 9F504 800B0CF4 0C80023C */  lui        $v0, %hi(D_800C3CE8)
    /* 9F508 800B0CF8 E83C428C */  lw         $v0, %lo(D_800C3CE8)($v0)
    /* 9F50C 800B0CFC 00000000 */  nop
    /* 9F510 800B0D00 0000428C */  lw         $v0, 0x0($v0)
    /* 9F514 800B0D04 00000000 */  nop
    /* 9F518 800B0D08 80004230 */  andi       $v0, $v0, 0x80
    /* 9F51C 800B0D0C F5FF4010 */  beqz       $v0, .L800B0CE4
    /* 9F520 800B0D10 3C000424 */   addiu     $a0, $zero, 0x3C
    /* 9F524 800B0D14 0C80033C */  lui        $v1, %hi(D_800C3CEC)
    /* 9F528 800B0D18 EC3C638C */  lw         $v1, %lo(D_800C3CEC)($v1)
    /* 9F52C 800B0D1C 42000224 */  addiu      $v0, $zero, 0x42
    /* 9F530 800B0D20 77CB020C */  jal        setRC2wait
    /* 9F534 800B0D24 000062A0 */   sb        $v0, 0x0($v1)
    /* 9F538 800B0D28 BDC4020C */  jal        _padClrIntSio0
    /* 9F53C 800B0D2C 00000000 */   nop
    /* 9F540 800B0D30 35004010 */  beqz       $v0, .L800B0E08
    /* 9F544 800B0D34 21100000 */   addu      $v0, $zero, $zero
    /* 9F548 800B0D38 E1C4020C */  jal        _padWaitRXready
    /* 9F54C 800B0D3C 00000000 */   nop
    /* 9F550 800B0D40 0C80023C */  lui        $v0, %hi(D_800C3CEC)
    /* 9F554 800B0D44 EC3C428C */  lw         $v0, %lo(D_800C3CEC)($v0)
    /* 9F558 800B0D48 AE010424 */  addiu      $a0, $zero, 0x1AE
    /* 9F55C 800B0D4C 00004290 */  lbu        $v0, 0x0($v0)
    /* 9F560 800B0D50 77CB020C */  jal        setRC2wait
    /* 9F564 800B0D54 00000000 */   nop
    /* 9F568 800B0D58 5CC30208 */  j          .L800B0D70
    /* 9F56C 800B0D5C 00000000 */   nop
  .L800B0D60:
    /* 9F570 800B0D60 7FCB020C */  jal        chkRC2wait
    /* 9F574 800B0D64 00000000 */   nop
    /* 9F578 800B0D68 27004014 */  bnez       $v0, .L800B0E08
    /* 9F57C 800B0D6C 21100000 */   addu      $v0, $zero, $zero
  .L800B0D70:
    /* 9F580 800B0D70 0C80023C */  lui        $v0, %hi(D_800C3CE8)
    /* 9F584 800B0D74 E83C428C */  lw         $v0, %lo(D_800C3CE8)($v0)
    /* 9F588 800B0D78 00000000 */  nop
    /* 9F58C 800B0D7C 0000428C */  lw         $v0, 0x0($v0)
    /* 9F590 800B0D80 00000000 */  nop
    /* 9F594 800B0D84 80004230 */  andi       $v0, $v0, 0x80
    /* 9F598 800B0D88 F5FF4010 */  beqz       $v0, .L800B0D60
    /* 9F59C 800B0D8C 3C000424 */   addiu     $a0, $zero, 0x3C
    /* 9F5A0 800B0D90 0C80033C */  lui        $v1, %hi(D_800C3CEC)
    /* 9F5A4 800B0D94 EC3C638C */  lw         $v1, %lo(D_800C3CEC)($v1)
    /* 9F5A8 800B0D98 01000224 */  addiu      $v0, $zero, 0x1
    /* 9F5AC 800B0D9C 77CB020C */  jal        setRC2wait
    /* 9F5B0 800B0DA0 000062A0 */   sb        $v0, 0x0($v1)
    /* 9F5B4 800B0DA4 BDC4020C */  jal        _padClrIntSio0
    /* 9F5B8 800B0DA8 00000000 */   nop
    /* 9F5BC 800B0DAC 16004010 */  beqz       $v0, .L800B0E08
    /* 9F5C0 800B0DB0 21100000 */   addu      $v0, $zero, $zero
    /* 9F5C4 800B0DB4 E1C4020C */  jal        _padWaitRXready
    /* 9F5C8 800B0DB8 00000000 */   nop
    /* 9F5CC 800B0DBC 0C80033C */  lui        $v1, %hi(D_800C3CEC)
    /* 9F5D0 800B0DC0 EC3C638C */  lw         $v1, %lo(D_800C3CEC)($v1)
    /* 9F5D4 800B0DC4 21100000 */  addu       $v0, $zero, $zero
    /* 9F5D8 800B0DC8 00006390 */  lbu        $v1, 0x0($v1)
    /* 9F5DC 800B0DCC 82C30208 */  j          .L800B0E08
    /* 9F5E0 800B0DD0 00000000 */   nop
  .L800B0DD4:
    /* 9F5E4 800B0DD4 0C80033C */  lui        $v1, %hi(D_800C3CE8)
    /* 9F5E8 800B0DD8 E83C638C */  lw         $v1, %lo(D_800C3CE8)($v1)
    /* 9F5EC 800B0DDC 00000000 */  nop
    /* 9F5F0 800B0DE0 000062AC */  sw         $v0, 0x0($v1)
  .L800B0DE4:
    /* 9F5F4 800B0DE4 50000292 */  lbu        $v0, 0x50($s0)
    /* 9F5F8 800B0DE8 00000000 */  nop
    /* 9F5FC 800B0DEC 06004010 */  beqz       $v0, .L800B0E08
    /* 9F600 800B0DF0 01000224 */   addiu     $v0, $zero, 0x1
    /* 9F604 800B0DF4 36000392 */  lbu        $v1, 0x36($s0)
    /* 9F608 800B0DF8 00000000 */  nop
    /* 9F60C 800B0DFC 02006014 */  bnez       $v1, .L800B0E08
    /* 9F610 800B0E00 21100000 */   addu      $v0, $zero, $zero
    /* 9F614 800B0E04 01000224 */  addiu      $v0, $zero, 0x1
  .L800B0E08:
    /* 9F618 800B0E08 1800BF8F */  lw         $ra, 0x18($sp)
    /* 9F61C 800B0E0C 1400B18F */  lw         $s1, 0x14($sp)
    /* 9F620 800B0E10 1000B08F */  lw         $s0, 0x10($sp)
    /* 9F624 800B0E14 0800E003 */  jr         $ra
    /* 9F628 800B0E18 2000BD27 */   addiu     $sp, $sp, 0x20
endlabel _padInitSioMode
