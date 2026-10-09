nonmatching PadInitDirect, 0x660

glabel PadInitDirect
    /* A0AFC 800B22EC E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* A0B00 800B22F0 1400B1AF */  sw         $s1, 0x14($sp)
    /* A0B04 800B22F4 21888000 */  addu       $s1, $a0, $zero
    /* A0B08 800B22F8 1800B2AF */  sw         $s2, 0x18($sp)
    /* A0B0C 800B22FC 1C00BFAF */  sw         $ra, 0x1C($sp)
    /* A0B10 800B2300 1000B0AF */  sw         $s0, 0x10($sp)
    /* A0B14 800B2304 0C80013C */  lui        $at, %hi(D_800C3CC0)
    /* A0B18 800B2308 C03C20AC */  sw         $zero, %lo(D_800C3CC0)($at)
    /* A0B1C 800B230C 0C80013C */  lui        $at, %hi(D_800C3CD4)
    /* A0B20 800B2310 D43C20AC */  sw         $zero, %lo(D_800C3CD4)($at)
    /* A0B24 800B2314 53CA020C */  jal        _padInitDirSeq
    /* A0B28 800B2318 2190A000 */   addu      $s2, $a1, $zero
    /* A0B2C 800B231C 0E80103C */  lui        $s0, %hi(D_800DE4E0)
    /* A0B30 800B2320 E0E41026 */  addiu      $s0, $s0, %lo(D_800DE4E0)
    /* A0B34 800B2324 0B80023C */  lui        $v0, %hi(D_800B24B4)
    /* A0B38 800B2328 B4244224 */  addiu      $v0, $v0, %lo(D_800B24B4)
    /* A0B3C 800B232C 0C80013C */  lui        $at, %hi(D_800C3C88)
    /* A0B40 800B2330 883C22AC */  sw         $v0, %lo(D_800C3C88)($at)
    /* A0B44 800B2334 0B80023C */  lui        $v0, %hi(D_800B244C)
    /* A0B48 800B2338 4C244224 */  addiu      $v0, $v0, %lo(D_800B244C)
    /* A0B4C 800B233C 0C80013C */  lui        $at, %hi(_padFuncClrInfo)
    /* A0B50 800B2340 8C3C22AC */  sw         $v0, %lo(_padFuncClrInfo)($at)
    /* A0B54 800B2344 0B80023C */  lui        $v0, %hi(D_800B25B8)
    /* A0B58 800B2348 B8254224 */  addiu      $v0, $v0, %lo(D_800B25B8)
    /* A0B5C 800B234C 0C80013C */  lui        $at, %hi(D_800C3C90)
    /* A0B60 800B2350 903C22AC */  sw         $v0, %lo(D_800C3C90)($at)
    /* A0B64 800B2354 0B80023C */  lui        $v0, %hi(D_800B2674)
    /* A0B68 800B2358 74264224 */  addiu      $v0, $v0, %lo(D_800B2674)
    /* A0B6C 800B235C 0C80013C */  lui        $at, %hi(D_800C3C94)
    /* A0B70 800B2360 943C22AC */  sw         $v0, %lo(D_800C3C94)($at)
    /* A0B74 800B2364 0B80023C */  lui        $v0, %hi(D_800B28F0)
    /* A0B78 800B2368 F0284224 */  addiu      $v0, $v0, %lo(D_800B28F0)
    /* A0B7C 800B236C 0C80013C */  lui        $at, %hi(D_800C3C98)
    /* A0B80 800B2370 983C22AC */  sw         $v0, %lo(D_800C3C98)($at)
    /* A0B84 800B2374 0B80023C */  lui        $v0, %hi(D_800B2928)
    /* A0B88 800B2378 28294224 */  addiu      $v0, $v0, %lo(D_800B2928)
    /* A0B8C 800B237C 0C80013C */  lui        $at, %hi(D_800C3C9C)
    /* A0B90 800B2380 9C3C22AC */  sw         $v0, %lo(D_800C3C9C)($at)
    /* A0B94 800B2384 0B80023C */  lui        $v0, %hi(func_800B25A8)
    /* A0B98 800B2388 A8254224 */  addiu      $v0, $v0, %lo(func_800B25A8)
    /* A0B9C 800B238C 21200002 */  addu       $a0, $s0, $zero
    /* A0BA0 800B2390 0C80013C */  lui        $at, %hi(D_800C3CBC)
    /* A0BA4 800B2394 BC3C30AC */  sw         $s0, %lo(D_800C3CBC)($at)
    /* A0BA8 800B2398 0C80013C */  lui        $at, %hi(D_800C3CAC)
    /* A0BAC 800B239C AC3C22AC */  sw         $v0, %lo(D_800C3CAC)($at)
    /* A0BB0 800B23A0 17D8020C */  jal        bzero
    /* A0BB4 800B23A4 E0010524 */   addiu     $a1, $zero, 0x1E0
    /* A0BB8 800B23A8 21400000 */  addu       $t0, $zero, $zero
    /* A0BBC 800B23AC FF000924 */  addiu      $t1, $zero, 0xFF
    /* A0BC0 800B23B0 40000426 */  addiu      $a0, $s0, 0x40
    /* A0BC4 800B23B4 0E80073C */  lui        $a3, %hi(D_800DE498)
    /* A0BC8 800B23B8 98E4E724 */  addiu      $a3, $a3, %lo(D_800DE498)
    /* A0BCC 800B23BC 0E80063C */  lui        $a2, %hi(D_800DE450)
    /* A0BD0 800B23C0 50E4C624 */  addiu      $a2, $a2, %lo(D_800DE450)
    /* A0BD4 800B23C4 300011AE */  sw         $s1, 0x30($s0)
    /* A0BD8 800B23C8 200112AE */  sw         $s2, 0x120($s0)
  .L800B23CC:
    /* A0BDC 800B23CC F0FF828C */  lw         $v0, -0x10($a0)
    /* A0BE0 800B23D0 5D000526 */  addiu      $a1, $s0, 0x5D
    /* A0BE4 800B23D4 CCFF80AC */  sw         $zero, -0x34($a0)
    /* A0BE8 800B23D8 D0FF90AC */  sw         $s0, -0x30($a0)
    /* A0BEC 800B23DC 000049A0 */  sb         $t1, 0x0($v0)
    /* A0BF0 800B23E0 F0FF828C */  lw         $v0, -0x10($a0)
    /* A0BF4 800B23E4 05000324 */  addiu      $v1, $zero, 0x5
    /* A0BF8 800B23E8 010040A0 */  sb         $zero, 0x1($v0)
    /* A0BFC 800B23EC FCFF86AC */  sw         $a2, -0x4($a0)
    /* A0C00 800B23F0 000087AC */  sw         $a3, 0x0($a0)
  .L800B23F4:
    /* A0C04 800B23F4 0000A9A0 */  sb         $t1, 0x0($a1)
    /* A0C08 800B23F8 FFFF6324 */  addiu      $v1, $v1, -0x1
    /* A0C0C 800B23FC FDFF6104 */  bgez       $v1, .L800B23F4
    /* A0C10 800B2400 0100A524 */   addiu     $a1, $a1, 0x1
    /* A0C14 800B2404 2300E724 */  addiu      $a3, $a3, 0x23
    /* A0C18 800B2408 2300C624 */  addiu      $a2, $a2, 0x23
    /* A0C1C 800B240C 01000825 */  addiu      $t0, $t0, 0x1
    /* A0C20 800B2410 F0008424 */  addiu      $a0, $a0, 0xF0
    /* A0C24 800B2414 02000229 */  slti       $v0, $t0, 0x2
    /* A0C28 800B2418 ECFF4014 */  bnez       $v0, .L800B23CC
    /* A0C2C 800B241C F0001026 */   addiu     $s0, $s0, 0xF0
    /* A0C30 800B2420 F6C1020C */  jal        _padSetVsyncParam
    /* A0C34 800B2424 00000000 */   nop
    /* A0C38 800B2428 01000224 */  addiu      $v0, $zero, 0x1
    /* A0C3C 800B242C 0C80013C */  lui        $at, %hi(D_800C3CC0)
    /* A0C40 800B2430 C03C22AC */  sw         $v0, %lo(D_800C3CC0)($at)
    /* A0C44 800B2434 1C00BF8F */  lw         $ra, 0x1C($sp)
    /* A0C48 800B2438 1800B28F */  lw         $s2, 0x18($sp)
    /* A0C4C 800B243C 1400B18F */  lw         $s1, 0x14($sp)
    /* A0C50 800B2440 1000B08F */  lw         $s0, 0x10($sp)
    /* A0C54 800B2444 0800E003 */  jr         $ra
    /* A0C58 800B2448 2000BD27 */   addiu     $sp, $sp, 0x20
  alabel D_800B244C
    /* A0C5C 800B244C 49008290 */  lbu        $v0, 0x49($a0)
    /* A0C60 800B2450 00000000 */  nop
    /* A0C64 800B2454 15004010 */  beqz       $v0, .L800B24AC
    /* A0C68 800B2458 00000000 */   nop
    /* A0C6C 800B245C 5D008324 */  addiu      $v1, $a0, 0x5D
    /* A0C70 800B2460 FF000524 */  addiu      $a1, $zero, 0xFF
    /* A0C74 800B2464 05000224 */  addiu      $v0, $zero, 0x5
    /* A0C78 800B2468 490080A0 */  sb         $zero, 0x49($a0)
    /* A0C7C 800B246C 460080A0 */  sb         $zero, 0x46($a0)
    /* A0C80 800B2470 E60080A4 */  sh         $zero, 0xE6($a0)
    /* A0C84 800B2474 140080AC */  sw         $zero, 0x14($a0)
    /* A0C88 800B2478 180080AC */  sw         $zero, 0x18($a0)
    /* A0C8C 800B247C E30080A0 */  sb         $zero, 0xE3($a0)
    /* A0C90 800B2480 E40080A0 */  sb         $zero, 0xE4($a0)
    /* A0C94 800B2484 E60080A4 */  sh         $zero, 0xE6($a0)
    /* A0C98 800B2488 E90080A0 */  sb         $zero, 0xE9($a0)
    /* A0C9C 800B248C EA0080A0 */  sb         $zero, 0xEA($a0)
    /* A0CA0 800B2490 000080AC */  sw         $zero, 0x0($a0)
    /* A0CA4 800B2494 040080AC */  sw         $zero, 0x4($a0)
    /* A0CA8 800B2498 080080AC */  sw         $zero, 0x8($a0)
  .L800B249C:
    /* A0CAC 800B249C 000065A0 */  sb         $a1, 0x0($v1)
    /* A0CB0 800B24A0 FFFF4224 */  addiu      $v0, $v0, -0x1
    /* A0CB4 800B24A4 FDFF4104 */  bgez       $v0, .L800B249C
    /* A0CB8 800B24A8 01006324 */   addiu     $v1, $v1, 0x1
  .L800B24AC:
    /* A0CBC 800B24AC 0800E003 */  jr         $ra
    /* A0CC0 800B24B0 00000000 */   nop
  alabel D_800B24B4
    /* A0CC4 800B24B4 D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* A0CC8 800B24B8 21288000 */  addu       $a1, $a0, $zero
    /* A0CCC 800B24BC 1400B1AF */  sw         $s1, 0x14($sp)
    /* A0CD0 800B24C0 0E80113C */  lui        $s1, %hi(D_800DE4E0)
    /* A0CD4 800B24C4 E0E43126 */  addiu      $s1, $s1, %lo(D_800DE4E0)
    /* A0CD8 800B24C8 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* A0CDC 800B24CC F7FF1324 */  addiu      $s3, $zero, -0x9
    /* A0CE0 800B24D0 1800B2AF */  sw         $s2, 0x18($sp)
    /* A0CE4 800B24D4 0C80123C */  lui        $s2, %hi(D_800C3CE0)
    /* A0CE8 800B24D8 E03C5226 */  addiu      $s2, $s2, %lo(D_800C3CE0)
    /* A0CEC 800B24DC 2000BFAF */  sw         $ra, 0x20($sp)
    /* A0CF0 800B24E0 1000B0AF */  sw         $s0, 0x10($sp)
  .L800B24E4:
    /* A0CF4 800B24E4 0C80033C */  lui        $v1, %hi(D_800C3CC8)
    /* A0CF8 800B24E8 C83C638C */  lw         $v1, %lo(D_800C3CC8)($v1)
    /* A0CFC 800B24EC 00000000 */  nop
    /* A0D00 800B24F0 00110300 */  sll        $v0, $v1, 4
    /* A0D04 800B24F4 23104300 */  subu       $v0, $v0, $v1
    /* A0D08 800B24F8 00110200 */  sll        $v0, $v0, 4
    /* A0D0C 800B24FC 0A00B310 */  beq        $a1, $s3, .L800B2528
    /* A0D10 800B2500 21805100 */   addu      $s0, $v0, $s1
    /* A0D14 800B2504 0400A014 */  bnez       $a1, .L800B2518
    /* A0D18 800B2508 80100300 */   sll       $v0, $v1, 2
    /* A0D1C 800B250C 21105200 */  addu       $v0, $v0, $s2
    /* A0D20 800B2510 4AC90208 */  j          .L800B2528
    /* A0D24 800B2514 000040AC */   sw        $zero, 0x0($v0)
  .L800B2518:
    /* A0D28 800B2518 34CB020C */  jal        _dirFailAuto
    /* A0D2C 800B251C 21200002 */   addu      $a0, $s0, $zero
    /* A0D30 800B2520 6AC9020C */  jal        func_800B25A8
    /* A0D34 800B2524 21200002 */   addu      $a0, $s0, $zero
  .L800B2528:
    /* A0D38 800B2528 0C80023C */  lui        $v0, %hi(D_800C3D20)
    /* A0D3C 800B252C 203D428C */  lw         $v0, %lo(D_800C3D20)($v0)
    /* A0D40 800B2530 0C80033C */  lui        $v1, %hi(D_800C3CC8)
    /* A0D44 800B2534 C83C638C */  lw         $v1, %lo(D_800C3CC8)($v1)
    /* A0D48 800B2538 0C80013C */  lui        $at, %hi(D_800C3CCC)
    /* A0D4C 800B253C CC3C20AC */  sw         $zero, %lo(D_800C3CCC)($at)
    /* A0D50 800B2540 0A0040A4 */  sh         $zero, 0xA($v0)
    /* A0D54 800B2544 0C80023C */  lui        $v0, %hi(D_800C3CDC)
    /* A0D58 800B2548 DC3C428C */  lw         $v0, %lo(D_800C3CDC)($v0)
    /* A0D5C 800B254C 01006324 */  addiu      $v1, $v1, 0x1
    /* A0D60 800B2550 0C80013C */  lui        $at, %hi(D_800C3CC8)
    /* A0D64 800B2554 C83C23AC */  sw         $v1, %lo(D_800C3CC8)($at)
    /* A0D68 800B2558 2A104300 */  slt        $v0, $v0, $v1
    /* A0D6C 800B255C 08004014 */  bnez       $v0, .L800B2580
    /* A0D70 800B2560 01000224 */   addiu     $v0, $zero, 0x1
    /* A0D74 800B2564 00210300 */  sll        $a0, $v1, 4
    /* A0D78 800B2568 23208300 */  subu       $a0, $a0, $v1
    /* A0D7C 800B256C 00210400 */  sll        $a0, $a0, 4
    /* A0D80 800B2570 BAC2020C */  jal        _padInitSioMode
    /* A0D84 800B2574 21209100 */   addu      $a0, $a0, $s1
    /* A0D88 800B2578 61C90208 */  j          .L800B2584
    /* A0D8C 800B257C FFFF0534 */   ori       $a1, $zero, 0xFFFF
  .L800B2580:
    /* A0D90 800B2580 FFFF0534 */  ori        $a1, $zero, 0xFFFF
  .L800B2584:
    /* A0D94 800B2584 D7FF4010 */  beqz       $v0, .L800B24E4
    /* A0D98 800B2588 00000000 */   nop
    /* A0D9C 800B258C 2000BF8F */  lw         $ra, 0x20($sp)
    /* A0DA0 800B2590 1C00B38F */  lw         $s3, 0x1C($sp)
    /* A0DA4 800B2594 1800B28F */  lw         $s2, 0x18($sp)
    /* A0DA8 800B2598 1400B18F */  lw         $s1, 0x14($sp)
    /* A0DAC 800B259C 1000B08F */  lw         $s0, 0x10($sp)
    /* A0DB0 800B25A0 0800E003 */  jr         $ra
    /* A0DB4 800B25A4 2800BD27 */   addiu     $sp, $sp, 0x28
  alabel func_800B25A8
    /* A0DB8 800B25A8 36008290 */  lbu        $v0, 0x36($a0)
    /* A0DBC 800B25AC 360080A0 */  sb         $zero, 0x36($a0)
    /* A0DC0 800B25B0 0800E003 */  jr         $ra
    /* A0DC4 800B25B4 370082A0 */   sb        $v0, 0x37($a0)
  alabel D_800B25B8
    /* A0DC8 800B25B8 45008290 */  lbu        $v0, 0x45($a0)
    /* A0DCC 800B25BC 36008590 */  lbu        $a1, 0x36($a0)
    /* A0DD0 800B25C0 00000000 */  nop
    /* A0DD4 800B25C4 0600A010 */  beqz       $a1, .L800B25E0
    /* A0DD8 800B25C8 FDFF4324 */   addiu     $v1, $v0, -0x3
    /* A0DDC 800B25CC 4D000224 */  addiu      $v0, $zero, 0x4D
    /* A0DE0 800B25D0 1500A210 */  beq        $a1, $v0, .L800B2628
    /* A0DE4 800B25D4 00000000 */   nop
    /* A0DE8 800B25D8 92C90208 */  j          .L800B2648
    /* A0DEC 800B25DC 00000000 */   nop
  .L800B25E0:
    /* A0DF0 800B25E0 06006228 */  slti       $v0, $v1, 0x6
    /* A0DF4 800B25E4 05004010 */  beqz       $v0, .L800B25FC
    /* A0DF8 800B25E8 21108300 */   addu      $v0, $a0, $v1
    /* A0DFC 800B25EC 57004290 */  lbu        $v0, 0x57($v0)
    /* A0E00 800B25F0 00000000 */  nop
    /* A0E04 800B25F4 1D004010 */  beqz       $v0, .L800B266C
    /* A0E08 800B25F8 21100000 */   addu      $v0, $zero, $zero
  .L800B25FC:
    /* A0E0C 800B25FC 34008290 */  lbu        $v0, 0x34($a0)
    /* A0E10 800B2600 00000000 */  nop
    /* A0E14 800B2604 2A106200 */  slt        $v0, $v1, $v0
    /* A0E18 800B2608 18004010 */  beqz       $v0, .L800B266C
    /* A0E1C 800B260C 21100000 */   addu      $v0, $zero, $zero
    /* A0E20 800B2610 2800828C */  lw         $v0, 0x28($a0)
    /* A0E24 800B2614 00000000 */  nop
    /* A0E28 800B2618 21104300 */  addu       $v0, $v0, $v1
  .L800B261C:
    /* A0E2C 800B261C 00004290 */  lbu        $v0, 0x0($v0)
    /* A0E30 800B2620 9BC90208 */  j          .L800B266C
    /* A0E34 800B2624 00000000 */   nop
  .L800B2628:
    /* A0E38 800B2628 35008290 */  lbu        $v0, 0x35($a0)
    /* A0E3C 800B262C 00000000 */  nop
    /* A0E40 800B2630 2A106200 */  slt        $v0, $v1, $v0
    /* A0E44 800B2634 0D004010 */  beqz       $v0, .L800B266C
    /* A0E48 800B2638 FF000224 */   addiu     $v0, $zero, 0xFF
    /* A0E4C 800B263C 2C00828C */  lw         $v0, 0x2C($a0)
    /* A0E50 800B2640 87C90208 */  j          .L800B261C
    /* A0E54 800B2644 21104300 */   addu      $v0, $v0, $v1
  .L800B2648:
    /* A0E58 800B2648 35008290 */  lbu        $v0, 0x35($a0)
    /* A0E5C 800B264C 00000000 */  nop
    /* A0E60 800B2650 2A106200 */  slt        $v0, $v1, $v0
    /* A0E64 800B2654 05004010 */  beqz       $v0, .L800B266C
    /* A0E68 800B2658 21100000 */   addu      $v0, $zero, $zero
    /* A0E6C 800B265C 2C00828C */  lw         $v0, 0x2C($a0)
    /* A0E70 800B2660 00000000 */  nop
    /* A0E74 800B2664 21104300 */  addu       $v0, $v0, $v1
    /* A0E78 800B2668 00004290 */  lbu        $v0, 0x0($v0)
  .L800B266C:
    /* A0E7C 800B266C 0800E003 */  jr         $ra
    /* A0E80 800B2670 00000000 */   nop
  alabel D_800B2674
    /* A0E84 800B2674 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* A0E88 800B2678 1000B0AF */  sw         $s0, 0x10($sp)
    /* A0E8C 800B267C 21808000 */  addu       $s0, $a0, $zero
    /* A0E90 800B2680 57000426 */  addiu      $a0, $s0, 0x57
    /* A0E94 800B2684 1400BFAF */  sw         $ra, 0x14($sp)
    /* A0E98 800B2688 17D8020C */  jal        bzero
    /* A0E9C 800B268C 06000524 */   addiu     $a1, $zero, 0x6
    /* A0EA0 800B2690 E6000296 */  lhu        $v0, 0xE6($s0)
    /* A0EA4 800B2694 00000000 */  nop
    /* A0EA8 800B2698 54004010 */  beqz       $v0, .L800B27EC
    /* A0EAC 800B269C 00000000 */   nop
    /* A0EB0 800B26A0 2800028E */  lw         $v0, 0x28($s0)
    /* A0EB4 800B26A4 00000000 */  nop
    /* A0EB8 800B26A8 50004010 */  beqz       $v0, .L800B27EC
    /* A0EBC 800B26AC 00000000 */   nop
    /* A0EC0 800B26B0 34000292 */  lbu        $v0, 0x34($s0)
    /* A0EC4 800B26B4 00000000 */  nop
    /* A0EC8 800B26B8 0700422C */  sltiu      $v0, $v0, 0x7
    /* A0ECC 800B26BC 02004010 */  beqz       $v0, .L800B26C8
    /* A0ED0 800B26C0 06000924 */   addiu     $t1, $zero, 0x6
    /* A0ED4 800B26C4 34000992 */  lbu        $t1, 0x34($s0)
  .L800B26C8:
    /* A0ED8 800B26C8 E9000292 */  lbu        $v0, 0xE9($s0)
    /* A0EDC 800B26CC 00000000 */  nop
    /* A0EE0 800B26D0 83004010 */  beqz       $v0, .L800B28E0
    /* A0EE4 800B26D4 21400000 */   addu      $t0, $zero, $zero
    /* A0EE8 800B26D8 01000B24 */  addiu      $t3, $zero, 0x1
    /* A0EEC 800B26DC 21500000 */  addu       $t2, $zero, $zero
  .L800B26E0:
    /* A0EF0 800B26E0 0400028E */  lw         $v0, 0x4($s0)
    /* A0EF4 800B26E4 21300000 */  addu       $a2, $zero, $zero
    /* A0EF8 800B26E8 21104201 */  addu       $v0, $t2, $v0
    /* A0EFC 800B26EC 02004290 */  lbu        $v0, 0x2($v0)
    /* A0F00 800B26F0 00000000 */  nop
    /* A0F04 800B26F4 02004010 */  beqz       $v0, .L800B2700
    /* A0F08 800B26F8 01000724 */   addiu     $a3, $zero, 0x1
    /* A0F0C 800B26FC FF000724 */  addiu      $a3, $zero, 0xFF
  .L800B2700:
    /* A0F10 800B2700 5D000526 */  addiu      $a1, $s0, 0x5D
    /* A0F14 800B2704 2800048E */  lw         $a0, 0x28($s0)
    /* A0F18 800B2708 0F002011 */  beqz       $t1, .L800B2748
    /* A0F1C 800B270C 21180000 */   addu      $v1, $zero, $zero
  .L800B2710:
    /* A0F20 800B2710 0000A290 */  lbu        $v0, 0x0($a1)
    /* A0F24 800B2714 00000000 */  nop
    /* A0F28 800B2718 06004814 */  bne        $v0, $t0, .L800B2734
    /* A0F2C 800B271C 00000000 */   nop
    /* A0F30 800B2720 00008290 */  lbu        $v0, 0x0($a0)
    /* A0F34 800B2724 00000000 */  nop
    /* A0F38 800B2728 24104700 */  and        $v0, $v0, $a3
    /* A0F3C 800B272C 16004014 */  bnez       $v0, .L800B2788
    /* A0F40 800B2730 00000000 */   nop
  .L800B2734:
    /* A0F44 800B2734 0100A524 */  addiu      $a1, $a1, 0x1
    /* A0F48 800B2738 01006324 */  addiu      $v1, $v1, 0x1
    /* A0F4C 800B273C 2A106900 */  slt        $v0, $v1, $t1
    /* A0F50 800B2740 F3FF4014 */  bnez       $v0, .L800B2710
    /* A0F54 800B2744 01008424 */   addiu     $a0, $a0, 0x1
  .L800B2748:
    /* A0F58 800B2748 2100C010 */  beqz       $a2, .L800B27D0
    /* A0F5C 800B274C 00000000 */   nop
    /* A0F60 800B2750 0400028E */  lw         $v0, 0x4($s0)
    /* A0F64 800B2754 00000000 */  nop
    /* A0F68 800B2758 21104201 */  addu       $v0, $t2, $v0
    /* A0F6C 800B275C 03004390 */  lbu        $v1, 0x3($v0)
    /* A0F70 800B2760 0C80023C */  lui        $v0, %hi(D_800C3CD0)
    /* A0F74 800B2764 D03C428C */  lw         $v0, %lo(D_800C3CD0)($v0)
    /* A0F78 800B2768 00000000 */  nop
    /* A0F7C 800B276C 21184300 */  addu       $v1, $v0, $v1
    /* A0F80 800B2770 3D006228 */  slti       $v0, $v1, 0x3D
    /* A0F84 800B2774 06004010 */  beqz       $v0, .L800B2790
    /* A0F88 800B2778 00000000 */   nop
    /* A0F8C 800B277C 0C80013C */  lui        $at, %hi(D_800C3CD0)
    /* A0F90 800B2780 E5C90208 */  j          .L800B2794
    /* A0F94 800B2784 D03C23AC */   sw        $v1, %lo(D_800C3CD0)($at)
  .L800B2788:
    /* A0F98 800B2788 D2C90208 */  j          .L800B2748
    /* A0F9C 800B278C 01000624 */   addiu     $a2, $zero, 0x1
  .L800B2790:
    /* A0FA0 800B2790 21300000 */  addu       $a2, $zero, $zero
  .L800B2794:
    /* A0FA4 800B2794 0E00C010 */  beqz       $a2, .L800B27D0
    /* A0FA8 800B2798 00000000 */   nop
    /* A0FAC 800B279C 5D000526 */  addiu      $a1, $s0, 0x5D
    /* A0FB0 800B27A0 57000426 */  addiu      $a0, $s0, 0x57
    /* A0FB4 800B27A4 0A002011 */  beqz       $t1, .L800B27D0
    /* A0FB8 800B27A8 21180000 */   addu      $v1, $zero, $zero
  .L800B27AC:
    /* A0FBC 800B27AC 0000A290 */  lbu        $v0, 0x0($a1)
    /* A0FC0 800B27B0 00000000 */  nop
    /* A0FC4 800B27B4 02004814 */  bne        $v0, $t0, .L800B27C0
    /* A0FC8 800B27B8 0100A524 */   addiu     $a1, $a1, 0x1
    /* A0FCC 800B27BC 00008BA0 */  sb         $t3, 0x0($a0)
  .L800B27C0:
    /* A0FD0 800B27C0 01006324 */  addiu      $v1, $v1, 0x1
    /* A0FD4 800B27C4 2A106900 */  slt        $v0, $v1, $t1
    /* A0FD8 800B27C8 F8FF4014 */  bnez       $v0, .L800B27AC
    /* A0FDC 800B27CC 01008424 */   addiu     $a0, $a0, 0x1
  .L800B27D0:
    /* A0FE0 800B27D0 E9000292 */  lbu        $v0, 0xE9($s0)
    /* A0FE4 800B27D4 01000825 */  addiu      $t0, $t0, 0x1
    /* A0FE8 800B27D8 2A100201 */  slt        $v0, $t0, $v0
    /* A0FEC 800B27DC C0FF4014 */  bnez       $v0, .L800B26E0
    /* A0FF0 800B27E0 05004A25 */   addiu     $t2, $t2, 0x5
    /* A0FF4 800B27E4 38CA0208 */  j          .L800B28E0
    /* A0FF8 800B27E8 00000000 */   nop
  .L800B27EC:
    /* A0FFC 800B27EC E8000392 */  lbu        $v1, 0xE8($s0)
    /* A1000 800B27F0 00000000 */  nop
    /* A1004 800B27F4 FCFF6224 */  addiu      $v0, $v1, -0x4
    /* A1008 800B27F8 0200422C */  sltiu      $v0, $v0, 0x2
    /* A100C 800B27FC 03004014 */  bnez       $v0, .L800B280C
    /* A1010 800B2800 07000224 */   addiu     $v0, $zero, 0x7
    /* A1014 800B2804 26006214 */  bne        $v1, $v0, .L800B28A0
    /* A1018 800B2808 00000000 */   nop
  .L800B280C:
    /* A101C 800B280C E6000296 */  lhu        $v0, 0xE6($s0)
    /* A1020 800B2810 00000000 */  nop
    /* A1024 800B2814 22004014 */  bnez       $v0, .L800B28A0
    /* A1028 800B2818 00000000 */   nop
    /* A102C 800B281C 34000292 */  lbu        $v0, 0x34($s0)
    /* A1030 800B2820 00000000 */  nop
    /* A1034 800B2824 0200422C */  sltiu      $v0, $v0, 0x2
    /* A1038 800B2828 1D004014 */  bnez       $v0, .L800B28A0
    /* A103C 800B282C 40000324 */   addiu     $v1, $zero, 0x40
    /* A1040 800B2830 2800048E */  lw         $a0, 0x28($s0)
    /* A1044 800B2834 00000000 */  nop
    /* A1048 800B2838 00008290 */  lbu        $v0, 0x0($a0)
    /* A104C 800B283C 00000000 */  nop
    /* A1050 800B2840 C0004230 */  andi       $v0, $v0, 0xC0
    /* A1054 800B2844 26004314 */  bne        $v0, $v1, .L800B28E0
    /* A1058 800B2848 00000000 */   nop
    /* A105C 800B284C 01008290 */  lbu        $v0, 0x1($a0)
    /* A1060 800B2850 00000000 */  nop
    /* A1064 800B2854 01004230 */  andi       $v0, $v0, 0x1
    /* A1068 800B2858 21004010 */  beqz       $v0, .L800B28E0
    /* A106C 800B285C 00000000 */   nop
    /* A1070 800B2860 0C80023C */  lui        $v0, %hi(D_800C3CD0)
    /* A1074 800B2864 D03C428C */  lw         $v0, %lo(D_800C3CD0)($v0)
    /* A1078 800B2868 00000000 */  nop
    /* A107C 800B286C 0A004224 */  addiu      $v0, $v0, 0xA
    /* A1080 800B2870 3D004228 */  slti       $v0, $v0, 0x3D
    /* A1084 800B2874 1A004010 */  beqz       $v0, .L800B28E0
    /* A1088 800B2878 01000224 */   addiu     $v0, $zero, 0x1
    /* A108C 800B287C 580002A2 */  sb         $v0, 0x58($s0)
    /* A1090 800B2880 570002A2 */  sb         $v0, 0x57($s0)
    /* A1094 800B2884 0C80023C */  lui        $v0, %hi(D_800C3CD0)
    /* A1098 800B2888 D03C428C */  lw         $v0, %lo(D_800C3CD0)($v0)
    /* A109C 800B288C 00000000 */  nop
    /* A10A0 800B2890 0A004224 */  addiu      $v0, $v0, 0xA
    /* A10A4 800B2894 0C80013C */  lui        $at, %hi(D_800C3CD0)
    /* A10A8 800B2898 38CA0208 */  j          .L800B28E0
    /* A10AC 800B289C D03C22AC */   sw        $v0, %lo(D_800C3CD0)($at)
  .L800B28A0:
    /* A10B0 800B28A0 E8000392 */  lbu        $v1, 0xE8($s0)
    /* A10B4 800B28A4 03000224 */  addiu      $v0, $zero, 0x3
    /* A10B8 800B28A8 03006214 */  bne        $v1, $v0, .L800B28B8
    /* A10BC 800B28AC 01000224 */   addiu     $v0, $zero, 0x1
    /* A10C0 800B28B0 38CA0208 */  j          .L800B28E0
    /* A10C4 800B28B4 570002A2 */   sb        $v0, 0x57($s0)
  .L800B28B8:
    /* A10C8 800B28B8 E6000296 */  lhu        $v0, 0xE6($s0)
    /* A10CC 800B28BC 00000000 */  nop
    /* A10D0 800B28C0 07004014 */  bnez       $v0, .L800B28E0
    /* A10D4 800B28C4 01000224 */   addiu     $v0, $zero, 0x1
    /* A10D8 800B28C8 05000324 */  addiu      $v1, $zero, 0x5
    /* A10DC 800B28CC 05000426 */  addiu      $a0, $s0, 0x5
  .L800B28D0:
    /* A10E0 800B28D0 570082A0 */  sb         $v0, 0x57($a0)
    /* A10E4 800B28D4 FFFF6324 */  addiu      $v1, $v1, -0x1
    /* A10E8 800B28D8 FDFF6104 */  bgez       $v1, .L800B28D0
    /* A10EC 800B28DC FFFF8424 */   addiu     $a0, $a0, -0x1
  .L800B28E0:
    /* A10F0 800B28E0 1400BF8F */  lw         $ra, 0x14($sp)
    /* A10F4 800B28E4 1000B08F */  lw         $s0, 0x10($sp)
    /* A10F8 800B28E8 0800E003 */  jr         $ra
    /* A10FC 800B28EC 1800BD27 */   addiu     $sp, $sp, 0x18
  alabel D_800B28F0
    /* A1100 800B28F0 21280000 */  addu       $a1, $zero, $zero
    /* A1104 800B28F4 10000624 */  addiu      $a2, $zero, 0x10
    /* A1108 800B28F8 0E80033C */  lui        $v1, %hi(D_800DE4E0)
    /* A110C 800B28FC E0E46324 */  addiu      $v1, $v1, %lo(D_800DE4E0)
  .L800B2900:
    /* A1110 800B2900 07008310 */  beq        $a0, $v1, .L800B2920
    /* A1114 800B2904 2110C000 */   addu      $v0, $a2, $zero
    /* A1118 800B2908 1000C624 */  addiu      $a2, $a2, 0x10
    /* A111C 800B290C 0100A524 */  addiu      $a1, $a1, 0x1
    /* A1120 800B2910 0200A228 */  slti       $v0, $a1, 0x2
    /* A1124 800B2914 FAFF4014 */  bnez       $v0, .L800B2900
    /* A1128 800B2918 F0006324 */   addiu     $v1, $v1, 0xF0
    /* A112C 800B291C FF000224 */  addiu      $v0, $zero, 0xFF
  .L800B2920:
    /* A1130 800B2920 0800E003 */  jr         $ra
    /* A1134 800B2924 00000000 */   nop
  alabel D_800B2928
    /* A1138 800B2928 0E80023C */  lui        $v0, %hi(D_800DE4E0)
    /* A113C 800B292C E0E44224 */  addiu      $v0, $v0, %lo(D_800DE4E0)
    /* A1140 800B2930 F0008430 */  andi       $a0, $a0, 0xF0
    /* A1144 800B2934 02008010 */  beqz       $a0, .L800B2940
    /* A1148 800B2938 00000000 */   nop
    /* A114C 800B293C F0004224 */  addiu      $v0, $v0, 0xF0
  .L800B2940:
    /* A1150 800B2940 0800E003 */  jr         $ra
    /* A1154 800B2944 00000000 */   nop
    /* A1158 800B2948 00000000 */  nop
endlabel PadInitDirect
