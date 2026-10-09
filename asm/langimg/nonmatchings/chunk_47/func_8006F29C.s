nonmatching func_8006F29C, 0x504

glabel func_8006F29C
    /* 5DAAC 8006F29C C8FFBD27 */  addiu      $sp, $sp, -0x38
    /* 5DAB0 8006F2A0 FF00063C */  lui        $a2, (0xFF00FF >> 16)
    /* 5DAB4 8006F2A4 FF00C634 */  ori        $a2, $a2, (0xFF00FF & 0xFFFF)
    /* 5DAB8 8006F2A8 2C00B5AF */  sw         $s5, 0x2C($sp)
    /* 5DABC 8006F2AC 0D80153C */  lui        $s5, %hi(D_800D11D0)
    /* 5DAC0 8006F2B0 D011A726 */  addiu      $a3, $s5, %lo(D_800D11D0)
    /* 5DAC4 8006F2B4 E6240324 */  addiu      $v1, $zero, 0x24E6
    /* 5DAC8 8006F2B8 2400B3AF */  sw         $s3, 0x24($sp)
    /* 5DACC 8006F2BC 2198A000 */  addu       $s3, $a1, $zero
    /* 5DAD0 8006F2C0 3000BFAF */  sw         $ra, 0x30($sp)
    /* 5DAD4 8006F2C4 2800B4AF */  sw         $s4, 0x28($sp)
    /* 5DAD8 8006F2C8 2000B2AF */  sw         $s2, 0x20($sp)
    /* 5DADC 8006F2CC 1C00B1AF */  sw         $s1, 0x1C($sp)
    /* 5DAE0 8006F2D0 1800B0AF */  sw         $s0, 0x18($sp)
    /* 5DAE4 8006F2D4 F81CE3AC */  sw         $v1, 0x1CF8($a3)
    /* 5DAE8 8006F2D8 2003628E */  lw         $v0, 0x320($s3)
    /* 5DAEC 8006F2DC 00000000 */  nop
    /* 5DAF0 8006F2E0 24104600 */  and        $v0, $v0, $a2
    /* 5DAF4 8006F2E4 07004010 */  beqz       $v0, .L8006F304
    /* 5DAF8 8006F2E8 21A08000 */   addu      $s4, $a0, $zero
    /* 5DAFC 8006F2EC D01CE28C */  lw         $v0, 0x1CD0($a3)
    /* 5DB00 8006F2F0 00100324 */  addiu      $v1, $zero, 0x1000
    /* 5DB04 8006F2F4 F61CE3A4 */  sh         $v1, 0x1CF6($a3)
    /* 5DB08 8006F2F8 08004424 */  addiu      $a0, $v0, 0x8
    /* 5DB0C 8006F2FC C6BC0108 */  j          .L8006F318
    /* 5DB10 8006F300 14004224 */   addiu     $v0, $v0, 0x14
  .L8006F304:
    /* 5DB14 8006F304 3000628E */  lw         $v0, 0x30($s3)
    /* 5DB18 8006F308 CC0C0324 */  addiu      $v1, $zero, 0xCCC
    /* 5DB1C 8006F30C F61CE3A4 */  sh         $v1, 0x1CF6($a3)
    /* 5DB20 8006F310 64004424 */  addiu      $a0, $v0, 0x64
    /* 5DB24 8006F314 84004224 */  addiu      $v0, $v0, 0x84
  .L8006F318:
    /* 5DB28 8006F318 D41CE4AC */  sw         $a0, 0x1CD4($a3)
    /* 5DB2C 8006F31C D81CE2AC */  sw         $v0, 0x1CD8($a3)
    /* 5DB30 8006F320 D011B026 */  addiu      $s0, $s5, %lo(D_800D11D0)
    /* 5DB34 8006F324 21200002 */  addu       $a0, $s0, $zero
    /* 5DB38 8006F328 44006282 */  lb         $v0, 0x44($s3)
    /* 5DB3C 8006F32C 20000624 */  addiu      $a2, $zero, 0x20
    /* 5DB40 8006F330 21284000 */  addu       $a1, $v0, $zero
    /* 5DB44 8006F334 0F52000C */  jal        func_8001483C
    /* 5DB48 8006F338 FC1C02AE */   sw        $v0, 0x1CFC($s0)
    /* 5DB4C 8006F33C 2C00638E */  lw         $v1, 0x2C($s3)
    /* 5DB50 8006F340 00000000 */  nop
    /* 5DB54 8006F344 EC03628C */  lw         $v0, 0x3EC($v1)
    /* 5DB58 8006F348 00000000 */  nop
    /* 5DB5C 8006F34C FBFF4224 */  addiu      $v0, $v0, -0x5
    /* 5DB60 8006F350 0200422C */  sltiu      $v0, $v0, 0x2
    /* 5DB64 8006F354 0F004010 */  beqz       $v0, .L8006F394
    /* 5DB68 8006F358 00000000 */   nop
    /* 5DB6C 8006F35C 3000648E */  lw         $a0, 0x30($s3)
    /* 5DB70 8006F360 8C8E010C */  jal        func_80063A30
    /* 5DB74 8006F364 00000000 */   nop
    /* 5DB78 8006F368 07004230 */  andi       $v0, $v0, 0x7
    /* 5DB7C 8006F36C 06004228 */  slti       $v0, $v0, 0x6
    /* 5DB80 8006F370 01004238 */  xori       $v0, $v0, 0x1
    /* 5DB84 8006F374 02004010 */  beqz       $v0, .L8006F380
    /* 5DB88 8006F378 01000224 */   addiu     $v0, $zero, 0x1
    /* 5DB8C 8006F37C 030002A2 */  sb         $v0, 0x3($s0)
  .L8006F380:
    /* 5DB90 8006F380 40008426 */  addiu      $a0, $s4, 0x40
    /* 5DB94 8006F384 1DB9010C */  jal        func_8006E474
    /* 5DB98 8006F388 21286002 */   addu      $a1, $s3, $zero
    /* 5DB9C 8006F38C EDBC0108 */  j          .L8006F3B4
    /* 5DBA0 8006F390 00000000 */   nop
  .L8006F394:
    /* 5DBA4 8006F394 3E388283 */  lb         $v0, %gp_rel(D_800C7F2E)($gp)
    /* 5DBA8 8006F398 00000000 */  nop
    /* 5DBAC 8006F39C 02004010 */  beqz       $v0, .L8006F3A8
    /* 5DBB0 8006F3A0 01000224 */   addiu     $v0, $zero, 0x1
    /* 5DBB4 8006F3A4 030002A2 */  sb         $v0, 0x3($s0)
  .L8006F3A8:
    /* 5DBB8 8006F3A8 21208002 */  addu       $a0, $s4, $zero
    /* 5DBBC 8006F3AC D5BA010C */  jal        func_8006EB54
    /* 5DBC0 8006F3B0 21286002 */   addu      $a1, $s3, $zero
  .L8006F3B4:
    /* 5DBC4 8006F3B4 3000728E */  lw         $s2, 0x30($s3)
    /* 5DBC8 8006F3B8 00000000 */  nop
    /* 5DBCC 8006F3BC 59004282 */  lb         $v0, 0x59($s2)
    /* 5DBD0 8006F3C0 00000000 */  nop
    /* 5DBD4 8006F3C4 24004010 */  beqz       $v0, .L8006F458
    /* 5DBD8 8006F3C8 00000000 */   nop
    /* 5DBDC 8006F3CC 70008292 */  lbu        $v0, 0x70($s4)
    /* 5DBE0 8006F3D0 58015082 */  lb         $s0, 0x158($s2)
    /* 5DBE4 8006F3D4 01004238 */  xori       $v0, $v0, 0x1
    /* 5DBE8 8006F3D8 01004230 */  andi       $v0, $v0, 0x1
    /* 5DBEC 8006F3DC 1D004010 */  beqz       $v0, .L8006F454
    /* 5DBF0 8006F3E0 01000232 */   andi      $v0, $s0, 0x1
    /* 5DBF4 8006F3E4 1B004010 */  beqz       $v0, .L8006F454
    /* 5DBF8 8006F3E8 00000000 */   nop
    /* 5DBFC 8006F3EC 2801428E */  lw         $v0, 0x128($s2)
    /* 5DC00 8006F3F0 00000000 */  nop
    /* 5DC04 8006F3F4 23200200 */  negu       $a0, $v0
    /* 5DC08 8006F3F8 01108328 */  slti       $v1, $a0, 0x1001
    /* 5DC0C 8006F3FC 0C006014 */  bnez       $v1, .L8006F430
    /* 5DC10 8006F400 00208228 */   slti      $v0, $a0, 0x2000
    /* 5DC14 8006F404 08004010 */  beqz       $v0, .L8006F428
    /* 5DC18 8006F408 00F08324 */   addiu     $v1, $a0, -0x1000
    /* 5DC1C 8006F40C 00120300 */  sll        $v0, $v1, 8
    /* 5DC20 8006F410 23104300 */  subu       $v0, $v0, $v1
    /* 5DC24 8006F414 07004104 */  bgez       $v0, .L8006F434
    /* 5DC28 8006F418 03230200 */   sra       $a0, $v0, 12
    /* 5DC2C 8006F41C FF0F4224 */  addiu      $v0, $v0, 0xFFF
    /* 5DC30 8006F420 0DBD0108 */  j          .L8006F434
    /* 5DC34 8006F424 03230200 */   sra       $a0, $v0, 12
  .L8006F428:
    /* 5DC38 8006F428 0DBD0108 */  j          .L8006F434
    /* 5DC3C 8006F42C FF000424 */   addiu     $a0, $zero, 0xFF
  .L8006F430:
    /* 5DC40 8006F430 21200000 */  addu       $a0, $zero, $zero
  .L8006F434:
    /* 5DC44 8006F434 07008010 */  beqz       $a0, .L8006F454
    /* 5DC48 8006F438 58000524 */   addiu     $a1, $zero, 0x58
    /* 5DC4C 8006F43C 59000624 */  addiu      $a2, $zero, 0x59
    /* 5DC50 8006F440 5A000724 */  addiu      $a3, $zero, 0x5A
    /* 5DC54 8006F444 FFFF0324 */  addiu      $v1, $zero, -0x1
    /* 5DC58 8006F448 1000A3AF */  sw         $v1, 0x10($sp)
    /* 5DC5C 8006F44C DAB2010C */  jal        func_8006CB68
    /* 5DC60 8006F450 1400A3AF */   sw        $v1, 0x14($sp)
  .L8006F454:
    /* 5DC64 8006F454 700090A2 */  sb         $s0, 0x70($s4)
  .L8006F458:
    /* 5DC68 8006F458 24036282 */  lb         $v0, 0x324($s3)
    /* 5DC6C 8006F45C 00000000 */  nop
    /* 5DC70 8006F460 12004010 */  beqz       $v0, .L8006F4AC
    /* 5DC74 8006F464 00000000 */   nop
    /* 5DC78 8006F468 3C388283 */  lb         $v0, %gp_rel(D_800C7F2C)($gp)
    /* 5DC7C 8006F46C 00000000 */  nop
    /* 5DC80 8006F470 0D004010 */  beqz       $v0, .L8006F4A8
    /* 5DC84 8006F474 D011B026 */   addiu     $s0, $s5, %lo(D_800D11D0)
    /* 5DC88 8006F478 21200002 */  addu       $a0, $s0, $zero
    /* 5DC8C 8006F47C 67000524 */  addiu      $a1, $zero, 0x67
    /* 5DC90 8006F480 A652000C */  jal        func_80014A98
    /* 5DC94 8006F484 21300000 */   addu      $a2, $zero, $zero
    /* 5DC98 8006F488 21200002 */  addu       $a0, $s0, $zero
    /* 5DC9C 8006F48C 21884000 */  addu       $s1, $v0, $zero
    /* 5DCA0 8006F490 21282002 */  addu       $a1, $s1, $zero
    /* 5DCA4 8006F494 DA50000C */  jal        func_80014368
    /* 5DCA8 8006F498 7F000624 */   addiu     $a2, $zero, 0x7F
    /* 5DCAC 8006F49C 21200002 */  addu       $a0, $s0, $zero
    /* 5DCB0 8006F4A0 C652000C */  jal        func_80014B18
    /* 5DCB4 8006F4A4 21282002 */   addu      $a1, $s1, $zero
  .L8006F4A8:
    /* 5DCB8 8006F4A8 240360A2 */  sb         $zero, 0x324($s3)
  .L8006F4AC:
    /* 5DCBC 8006F4AC 88016282 */  lb         $v0, 0x188($s3)
    /* 5DCC0 8006F4B0 00000000 */  nop
    /* 5DCC4 8006F4B4 0D004010 */  beqz       $v0, .L8006F4EC
    /* 5DCC8 8006F4B8 D011B026 */   addiu     $s0, $s5, %lo(D_800D11D0)
    /* 5DCCC 8006F4BC 21200002 */  addu       $a0, $s0, $zero
    /* 5DCD0 8006F4C0 57000524 */  addiu      $a1, $zero, 0x57
    /* 5DCD4 8006F4C4 A652000C */  jal        func_80014A98
    /* 5DCD8 8006F4C8 21300000 */   addu      $a2, $zero, $zero
    /* 5DCDC 8006F4CC 21200002 */  addu       $a0, $s0, $zero
    /* 5DCE0 8006F4D0 21884000 */  addu       $s1, $v0, $zero
    /* 5DCE4 8006F4D4 21282002 */  addu       $a1, $s1, $zero
    /* 5DCE8 8006F4D8 DA50000C */  jal        func_80014368
    /* 5DCEC 8006F4DC 7F000624 */   addiu     $a2, $zero, 0x7F
    /* 5DCF0 8006F4E0 21200002 */  addu       $a0, $s0, $zero
    /* 5DCF4 8006F4E4 C652000C */  jal        func_80014B18
    /* 5DCF8 8006F4E8 21282002 */   addu      $a1, $s1, $zero
  .L8006F4EC:
    /* 5DCFC 8006F4EC 5C004492 */  lbu        $a0, 0x5C($s2)
    /* 5DD00 8006F4F0 00000000 */  nop
    /* 5DD04 8006F4F4 1C008010 */  beqz       $a0, .L8006F568
    /* 5DD08 8006F4F8 FF008230 */   andi      $v0, $a0, 0xFF
    /* 5DD0C 8006F4FC 40180200 */  sll        $v1, $v0, 1
    /* 5DD10 8006F500 05006004 */  bltz       $v1, .L8006F518
    /* 5DD14 8006F504 00016228 */   slti      $v0, $v1, 0x100
    /* 5DD18 8006F508 04004010 */  beqz       $v0, .L8006F51C
    /* 5DD1C 8006F50C FF001024 */   addiu     $s0, $zero, 0xFF
    /* 5DD20 8006F510 47BD0108 */  j          .L8006F51C
    /* 5DD24 8006F514 21806000 */   addu      $s0, $v1, $zero
  .L8006F518:
    /* 5DD28 8006F518 21800000 */  addu       $s0, $zero, $zero
  .L8006F51C:
    /* 5DD2C 8006F51C 00160400 */  sll        $v0, $a0, 24
    /* 5DD30 8006F520 09004104 */  bgez       $v0, .L8006F548
    /* 5DD34 8006F524 21200002 */   addu      $a0, $s0, $zero
    /* 5DD38 8006F528 5E000524 */  addiu      $a1, $zero, 0x5E
    /* 5DD3C 8006F52C FFFF0624 */  addiu      $a2, $zero, -0x1
    /* 5DD40 8006F530 FFFF0724 */  addiu      $a3, $zero, -0x1
    /* 5DD44 8006F534 FFFF0324 */  addiu      $v1, $zero, -0x1
    /* 5DD48 8006F538 1000A3AF */  sw         $v1, 0x10($sp)
    /* 5DD4C 8006F53C DAB2010C */  jal        func_8006CB68
    /* 5DD50 8006F540 1400A3AF */   sw        $v1, 0x14($sp)
    /* 5DD54 8006F544 21200002 */  addu       $a0, $s0, $zero
  .L8006F548:
    /* 5DD58 8006F548 5C000524 */  addiu      $a1, $zero, 0x5C
    /* 5DD5C 8006F54C 5D000624 */  addiu      $a2, $zero, 0x5D
    /* 5DD60 8006F550 FFFF0724 */  addiu      $a3, $zero, -0x1
    /* 5DD64 8006F554 FFFF0324 */  addiu      $v1, $zero, -0x1
    /* 5DD68 8006F558 1000A3AF */  sw         $v1, 0x10($sp)
    /* 5DD6C 8006F55C DAB2010C */  jal        func_8006CB68
    /* 5DD70 8006F560 1400A3AF */   sw        $v1, 0x14($sp)
    /* 5DD74 8006F564 5C0040A2 */  sb         $zero, 0x5C($s2)
  .L8006F568:
    /* 5DD78 8006F568 5D004292 */  lbu        $v0, 0x5D($s2)
    /* 5DD7C 8006F56C 00000000 */  nop
    /* 5DD80 8006F570 09004010 */  beqz       $v0, .L8006F598
    /* 5DD84 8006F574 5C000524 */   addiu     $a1, $zero, 0x5C
    /* 5DD88 8006F578 5D000624 */  addiu      $a2, $zero, 0x5D
    /* 5DD8C 8006F57C FFFF0724 */  addiu      $a3, $zero, -0x1
    /* 5DD90 8006F580 21204000 */  addu       $a0, $v0, $zero
    /* 5DD94 8006F584 FFFF0224 */  addiu      $v0, $zero, -0x1
    /* 5DD98 8006F588 1000A2AF */  sw         $v0, 0x10($sp)
    /* 5DD9C 8006F58C DAB2010C */  jal        func_8006CB68
    /* 5DDA0 8006F590 1400A2AF */   sw        $v0, 0x14($sp)
    /* 5DDA4 8006F594 5D0040A2 */  sb         $zero, 0x5D($s2)
  .L8006F598:
    /* 5DDA8 8006F598 5E004292 */  lbu        $v0, 0x5E($s2)
    /* 5DDAC 8006F59C 00000000 */  nop
    /* 5DDB0 8006F5A0 02004010 */  beqz       $v0, .L8006F5AC
    /* 5DDB4 8006F5A4 D011B026 */   addiu     $s0, $s5, %lo(D_800D11D0)
    /* 5DDB8 8006F5A8 5E0040A2 */  sb         $zero, 0x5E($s2)
  .L8006F5AC:
    /* 5DDBC 8006F5AC 21200002 */  addu       $a0, $s0, $zero
    /* 5DDC0 8006F5B0 78026526 */  addiu      $a1, $s3, 0x278
    /* 5DDC4 8006F5B4 64026626 */  addiu      $a2, $s3, 0x264
    /* 5DDC8 8006F5B8 8E040224 */  addiu      $v0, $zero, 0x48E
    /* 5DDCC 8006F5BC 4C51000C */  jal        func_80014530
    /* 5DDD0 8006F5C0 F81C02AE */   sw        $v0, 0x1CF8($s0)
    /* 5DDD4 8006F5C4 89016382 */  lb         $v1, 0x189($s3)
    /* 5DDD8 8006F5C8 00000000 */  nop
    /* 5DDDC 8006F5CC 5F006010 */  beqz       $v1, .L8006F74C
    /* 5DDE0 8006F5D0 FFFF1124 */   addiu     $s1, $zero, -0x1
    /* 5DDE4 8006F5D4 01036292 */  lbu        $v0, 0x301($s3)
    /* 5DDE8 8006F5D8 00000000 */  nop
    /* 5DDEC 8006F5DC 24004010 */  beqz       $v0, .L8006F670
    /* 5DDF0 8006F5E0 00000000 */   nop
    /* 5DDF4 8006F5E4 5C02628E */  lw         $v0, 0x25C($s3)
    /* 5DDF8 8006F5E8 00000000 */  nop
    /* 5DDFC 8006F5EC 83190200 */  sra        $v1, $v0, 6
    /* 5DE00 8006F5F0 C3170200 */  sra        $v0, $v0, 31
    /* 5DE04 8006F5F4 26186200 */  xor        $v1, $v1, $v0
    /* 5DE08 8006F5F8 23186200 */  subu       $v1, $v1, $v0
    /* 5DE0C 8006F5FC 61006428 */  slti       $a0, $v1, 0x61
    /* 5DE10 8006F600 0F008014 */  bnez       $a0, .L8006F640
    /* 5DE14 8006F604 80036228 */   slti      $v0, $v1, 0x380
    /* 5DE18 8006F608 0B004010 */  beqz       $v0, .L8006F638
    /* 5DE1C 8006F60C EB51023C */   lui       $v0, (0x51EB851F >> 16)
    /* 5DE20 8006F610 1F854234 */  ori        $v0, $v0, (0x51EB851F & 0xFFFF)
    /* 5DE24 8006F614 A0FF6424 */  addiu      $a0, $v1, -0x60
    /* 5DE28 8006F618 001A0400 */  sll        $v1, $a0, 8
    /* 5DE2C 8006F61C 23186400 */  subu       $v1, $v1, $a0
    /* 5DE30 8006F620 18006200 */  mult       $v1, $v0
    /* 5DE34 8006F624 C31F0300 */  sra        $v1, $v1, 31
    /* 5DE38 8006F628 10100000 */  mfhi       $v0
    /* 5DE3C 8006F62C 03120200 */  sra        $v0, $v0, 8
    /* 5DE40 8006F630 91BD0108 */  j          .L8006F644
    /* 5DE44 8006F634 23204300 */   subu      $a0, $v0, $v1
  .L8006F638:
    /* 5DE48 8006F638 91BD0108 */  j          .L8006F644
    /* 5DE4C 8006F63C FF000424 */   addiu     $a0, $zero, 0xFF
  .L8006F640:
    /* 5DE50 8006F640 21200000 */  addu       $a0, $zero, $zero
  .L8006F644:
    /* 5DE54 8006F644 00036292 */  lbu        $v0, 0x300($s3)
    /* 5DE58 8006F648 00000000 */  nop
    /* 5DE5C 8006F64C 0400422C */  sltiu      $v0, $v0, 0x4
    /* 5DE60 8006F650 07004010 */  beqz       $v0, .L8006F670
    /* 5DE64 8006F654 6D000524 */   addiu     $a1, $zero, 0x6D
    /* 5DE68 8006F658 FFFF0624 */  addiu      $a2, $zero, -0x1
    /* 5DE6C 8006F65C FFFF0724 */  addiu      $a3, $zero, -0x1
    /* 5DE70 8006F660 FFFF0324 */  addiu      $v1, $zero, -0x1
    /* 5DE74 8006F664 1000A3AF */  sw         $v1, 0x10($sp)
    /* 5DE78 8006F668 DAB2010C */  jal        func_8006CB68
    /* 5DE7C 8006F66C 1400A3AF */   sw        $v1, 0x14($sp)
  .L8006F670:
    /* 5DE80 8006F670 03036292 */  lbu        $v0, 0x303($s3)
    /* 5DE84 8006F674 00000000 */  nop
    /* 5DE88 8006F678 0300422C */  sltiu      $v0, $v0, 0x3
    /* 5DE8C 8006F67C 2B004014 */  bnez       $v0, .L8006F72C
    /* 5DE90 8006F680 FFFF1024 */   addiu     $s0, $zero, -0x1
    /* 5DE94 8006F684 7800928E */  lw         $s2, 0x78($s4)
    /* 5DE98 8006F688 FFFF0224 */  addiu      $v0, $zero, -0x1
    /* 5DE9C 8006F68C 0F004216 */  bne        $s2, $v0, .L8006F6CC
    /* 5DEA0 8006F690 D011B126 */   addiu     $s1, $s5, %lo(D_800D11D0)
    /* 5DEA4 8006F694 21202002 */  addu       $a0, $s1, $zero
    /* 5DEA8 8006F698 6E000524 */  addiu      $a1, $zero, 0x6E
    /* 5DEAC 8006F69C A652000C */  jal        func_80014A98
    /* 5DEB0 8006F6A0 21300000 */   addu      $a2, $zero, $zero
    /* 5DEB4 8006F6A4 21202002 */  addu       $a0, $s1, $zero
    /* 5DEB8 8006F6A8 21804000 */  addu       $s0, $v0, $zero
    /* 5DEBC 8006F6AC 21280002 */  addu       $a1, $s0, $zero
    /* 5DEC0 8006F6B0 DA50000C */  jal        func_80014368
    /* 5DEC4 8006F6B4 7F000624 */   addiu     $a2, $zero, 0x7F
    /* 5DEC8 8006F6B8 21202002 */  addu       $a0, $s1, $zero
    /* 5DECC 8006F6BC C652000C */  jal        func_80014B18
    /* 5DED0 8006F6C0 21280002 */   addu      $a1, $s0, $zero
    /* 5DED4 8006F6C4 28001212 */  beq        $s0, $s2, .L8006F768
    /* 5DED8 8006F6C8 780090AE */   sw        $s0, 0x78($s4)
  .L8006F6CC:
    /* 5DEDC 8006F6CC 7402648E */  lw         $a0, 0x274($s3)
    /* 5DEE0 8006F6D0 00000000 */  nop
    /* 5DEE4 8006F6D4 67068228 */  slti       $v0, $a0, 0x667
    /* 5DEE8 8006F6D8 0F004014 */  bnez       $v0, .L8006F718
    /* 5DEEC 8006F6DC 21300000 */   addu      $a2, $zero, $zero
    /* 5DEF0 8006F6E0 99198228 */  slti       $v0, $a0, 0x1999
    /* 5DEF4 8006F6E4 0B004010 */  beqz       $v0, .L8006F714
    /* 5DEF8 8006F6E8 5503023C */   lui       $v0, (0x3555E39 >> 16)
    /* 5DEFC 8006F6EC 395E4234 */  ori        $v0, $v0, (0x3555E39 & 0xFFFF)
    /* 5DF00 8006F6F0 9AF98424 */  addiu      $a0, $a0, -0x666
    /* 5DF04 8006F6F4 C0190400 */  sll        $v1, $a0, 7
    /* 5DF08 8006F6F8 23186400 */  subu       $v1, $v1, $a0
    /* 5DF0C 8006F6FC 18006200 */  mult       $v1, $v0
    /* 5DF10 8006F700 C31F0300 */  sra        $v1, $v1, 31
    /* 5DF14 8006F704 10100000 */  mfhi       $v0
    /* 5DF18 8006F708 83110200 */  sra        $v0, $v0, 6
    /* 5DF1C 8006F70C C6BD0108 */  j          .L8006F718
    /* 5DF20 8006F710 23304300 */   subu      $a2, $v0, $v1
  .L8006F714:
    /* 5DF24 8006F714 7F000624 */  addiu      $a2, $zero, 0x7F
  .L8006F718:
    /* 5DF28 8006F718 7800858E */  lw         $a1, 0x78($s4)
    /* 5DF2C 8006F71C DA50000C */  jal        func_80014368
    /* 5DF30 8006F720 D011A426 */   addiu     $a0, $s5, %lo(D_800D11D0)
    /* 5DF34 8006F724 DBBD0108 */  j          .L8006F76C
    /* 5DF38 8006F728 D011A226 */   addiu     $v0, $s5, %lo(D_800D11D0)
  .L8006F72C:
    /* 5DF3C 8006F72C 7800858E */  lw         $a1, 0x78($s4)
    /* 5DF40 8006F730 00000000 */  nop
    /* 5DF44 8006F734 0D00B010 */  beq        $a1, $s0, .L8006F76C
    /* 5DF48 8006F738 D011A226 */   addiu     $v0, $s5, %lo(D_800D11D0)
    /* 5DF4C 8006F73C DD52000C */  jal        func_80014B74
    /* 5DF50 8006F740 D011A426 */   addiu     $a0, $s5, %lo(D_800D11D0)
    /* 5DF54 8006F744 DABD0108 */  j          .L8006F768
    /* 5DF58 8006F748 780090AE */   sw        $s0, 0x78($s4)
  .L8006F74C:
    /* 5DF5C 8006F74C 7800858E */  lw         $a1, 0x78($s4)
    /* 5DF60 8006F750 00000000 */  nop
    /* 5DF64 8006F754 0500B110 */  beq        $a1, $s1, .L8006F76C
    /* 5DF68 8006F758 D011A226 */   addiu     $v0, $s5, %lo(D_800D11D0)
    /* 5DF6C 8006F75C DD52000C */  jal        func_80014B74
    /* 5DF70 8006F760 21200002 */   addu      $a0, $s0, $zero
    /* 5DF74 8006F764 780091AE */  sw         $s1, 0x78($s4)
  .L8006F768:
    /* 5DF78 8006F768 D011A226 */  addiu      $v0, $s5, %lo(D_800D11D0)
  .L8006F76C:
    /* 5DF7C 8006F76C 3000BF8F */  lw         $ra, 0x30($sp)
    /* 5DF80 8006F770 2C00B58F */  lw         $s5, 0x2C($sp)
    /* 5DF84 8006F774 2800B48F */  lw         $s4, 0x28($sp)
    /* 5DF88 8006F778 2400B38F */  lw         $s3, 0x24($sp)
    /* 5DF8C 8006F77C 2000B28F */  lw         $s2, 0x20($sp)
    /* 5DF90 8006F780 1C00B18F */  lw         $s1, 0x1C($sp)
    /* 5DF94 8006F784 1800B08F */  lw         $s0, 0x18($sp)
    /* 5DF98 8006F788 00100324 */  addiu      $v1, $zero, 0x1000
    /* 5DF9C 8006F78C F81C40AC */  sw         $zero, 0x1CF8($v0)
    /* 5DFA0 8006F790 F61C43A4 */  sh         $v1, 0x1CF6($v0)
    /* 5DFA4 8006F794 030040A0 */  sb         $zero, 0x3($v0)
    /* 5DFA8 8006F798 0800E003 */  jr         $ra
    /* 5DFAC 8006F79C 3800BD27 */   addiu     $sp, $sp, 0x38
endlabel func_8006F29C
