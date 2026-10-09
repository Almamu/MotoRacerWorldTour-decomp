nonmatching func_800B3C54, 0x2BC

glabel func_800B3C54
    /* A2464 800B3C54 21488000 */  addu       $t1, $a0, $zero
    /* A2468 800B3C58 0C80023C */  lui        $v0, %hi(D_800C3D9C)
    /* A246C 800B3C5C 9C3D428C */  lw         $v0, %lo(D_800C3D9C)($v0)
    /* A2470 800B3C60 00000000 */  nop
    /* A2474 800B3C64 01004230 */  andi       $v0, $v0, 0x1
    /* A2478 800B3C68 0E80043C */  lui        $a0, %hi(D_800DE540)
    /* A247C 800B3C6C 40E58424 */  addiu      $a0, $a0, %lo(D_800DE540)
    /* A2480 800B3C70 03004014 */  bnez       $v0, .L800B3C80
    /* A2484 800B3C74 2140A000 */   addu      $t0, $a1, $zero
    /* A2488 800B3C78 0C80043C */  lui        $a0, %hi(D_800C3DB0)
    /* A248C 800B3C7C B03D848C */  lw         $a0, %lo(D_800C3DB0)($a0)
  .L800B3C80:
    /* A2490 800B3C80 40100700 */  sll        $v0, $a3, 1
    /* A2494 800B3C84 21104400 */  addu       $v0, $v0, $a0
    /* A2498 800B3C88 00004394 */  lhu        $v1, 0x0($v0)
    /* A249C 800B3C8C 40100600 */  sll        $v0, $a2, 1
    /* A24A0 800B3C90 21104400 */  addu       $v0, $v0, $a0
    /* A24A4 800B3C94 00004294 */  lhu        $v0, 0x0($v0)
    /* A24A8 800B3C98 FF006330 */  andi       $v1, $v1, 0xFF
    /* A24AC 800B3C9C 001C0300 */  sll        $v1, $v1, 16
    /* A24B0 800B3CA0 01000B24 */  addiu      $t3, $zero, 0x1
    /* A24B4 800B3CA4 0C002B11 */  beq        $t1, $t3, .L800B3CD8
    /* A24B8 800B3CA8 25504300 */   or        $t2, $v0, $v1
    /* A24BC 800B3CAC 02002229 */  slti       $v0, $t1, 0x2
    /* A24C0 800B3CB0 05004010 */  beqz       $v0, .L800B3CC8
    /* A24C4 800B3CB4 08000224 */   addiu     $v0, $zero, 0x8
    /* A24C8 800B3CB8 36002011 */  beqz       $t1, .L800B3D94
    /* A24CC 800B3CBC FF00023C */   lui       $v0, (0xFFFFFF >> 16)
    /* A24D0 800B3CC0 C2CF0208 */  j          .L800B3F08
    /* A24D4 800B3CC4 FFFF4234 */   ori       $v0, $v0, (0xFFFFFF & 0xFFFF)
  .L800B3CC8:
    /* A24D8 800B3CC8 67002211 */  beq        $t1, $v0, .L800B3E68
    /* A24DC 800B3CCC FF00023C */   lui       $v0, (0xFFFFFF >> 16)
    /* A24E0 800B3CD0 C2CF0208 */  j          .L800B3F08
    /* A24E4 800B3CD4 FFFF4234 */   ori       $v0, $v0, (0xFFFFFF & 0xFFFF)
  .L800B3CD8:
    /* A24E8 800B3CD8 0C80023C */  lui        $v0, %hi(D_800C3D9C)
    /* A24EC 800B3CDC 9C3D428C */  lw         $v0, %lo(D_800C3D9C)($v0)
    /* A24F0 800B3CE0 00000000 */  nop
    /* A24F4 800B3CE4 01004230 */  andi       $v0, $v0, 0x1
    /* A24F8 800B3CE8 18004010 */  beqz       $v0, .L800B3D4C
    /* A24FC 800B3CEC 40180600 */   sll       $v1, $a2, 1
    /* A2500 800B3CF0 0E80053C */  lui        $a1, %hi(D_800DE540)
    /* A2504 800B3CF4 40E5A524 */  addiu      $a1, $a1, %lo(D_800DE540)
    /* A2508 800B3CF8 21186500 */  addu       $v1, $v1, $a1
    /* A250C 800B3CFC 40200700 */  sll        $a0, $a3, 1
    /* A2510 800B3D00 00006294 */  lhu        $v0, 0x0($v1)
    /* A2514 800B3D04 21208500 */  addu       $a0, $a0, $a1
    /* A2518 800B3D08 25104800 */  or         $v0, $v0, $t0
    /* A251C 800B3D0C 000062A4 */  sh         $v0, 0x0($v1)
    /* A2520 800B3D10 02140800 */  srl        $v0, $t0, 16
    /* A2524 800B3D14 00008394 */  lhu        $v1, 0x0($a0)
    /* A2528 800B3D18 FF004230 */  andi       $v0, $v0, 0xFF
    /* A252C 800B3D1C 25186200 */  or         $v1, $v1, $v0
    /* A2530 800B3D20 3AFFC224 */  addiu      $v0, $a2, -0xC6
    /* A2534 800B3D24 43100200 */  sra        $v0, $v0, 1
    /* A2538 800B3D28 000083A4 */  sh         $v1, 0x0($a0)
    /* A253C 800B3D2C 0C80033C */  lui        $v1, %hi(D_800C3D68)
    /* A2540 800B3D30 683D638C */  lw         $v1, %lo(D_800C3D68)($v1)
    /* A2544 800B3D34 04104B00 */  sllv       $v0, $t3, $v0
    /* A2548 800B3D38 25186200 */  or         $v1, $v1, $v0
    /* A254C 800B3D3C 0C80013C */  lui        $at, %hi(D_800C3D68)
    /* A2550 800B3D40 683D23AC */  sw         $v1, %lo(D_800C3D68)($at)
    /* A2554 800B3D44 61CF0208 */  j          .L800B3D84
    /* A2558 800B3D48 FF00023C */   lui       $v0, (0xFFFFFF >> 16)
  .L800B3D4C:
    /* A255C 800B3D4C 0C80053C */  lui        $a1, %hi(D_800C3DB0)
    /* A2560 800B3D50 B03DA58C */  lw         $a1, %lo(D_800C3DB0)($a1)
    /* A2564 800B3D54 40200700 */  sll        $a0, $a3, 1
    /* A2568 800B3D58 21186500 */  addu       $v1, $v1, $a1
    /* A256C 800B3D5C 00006294 */  lhu        $v0, 0x0($v1)
    /* A2570 800B3D60 21208500 */  addu       $a0, $a0, $a1
    /* A2574 800B3D64 25104800 */  or         $v0, $v0, $t0
    /* A2578 800B3D68 000062A4 */  sh         $v0, 0x0($v1)
    /* A257C 800B3D6C 02140800 */  srl        $v0, $t0, 16
    /* A2580 800B3D70 00008394 */  lhu        $v1, 0x0($a0)
    /* A2584 800B3D74 FF004230 */  andi       $v0, $v0, 0xFF
    /* A2588 800B3D78 25186200 */  or         $v1, $v1, $v0
    /* A258C 800B3D7C 000083A4 */  sh         $v1, 0x0($a0)
    /* A2590 800B3D80 FF00023C */  lui        $v0, (0xFFFFFF >> 16)
  .L800B3D84:
    /* A2594 800B3D84 FFFF4234 */  ori        $v0, $v0, (0xFFFFFF & 0xFFFF)
    /* A2598 800B3D88 24100201 */  and        $v0, $t0, $v0
    /* A259C 800B3D8C C0CF0208 */  j          .L800B3F00
    /* A25A0 800B3D90 25504201 */   or        $t2, $t2, $v0
  .L800B3D94:
    /* A25A4 800B3D94 0C80023C */  lui        $v0, %hi(D_800C3D9C)
    /* A25A8 800B3D98 9C3D428C */  lw         $v0, %lo(D_800C3D9C)($v0)
    /* A25AC 800B3D9C 00000000 */  nop
    /* A25B0 800B3DA0 01004230 */  andi       $v0, $v0, 0x1
    /* A25B4 800B3DA4 1A004010 */  beqz       $v0, .L800B3E10
    /* A25B8 800B3DA8 40180600 */   sll       $v1, $a2, 1
    /* A25BC 800B3DAC 0E80053C */  lui        $a1, %hi(D_800DE540)
    /* A25C0 800B3DB0 40E5A524 */  addiu      $a1, $a1, %lo(D_800DE540)
    /* A25C4 800B3DB4 21186500 */  addu       $v1, $v1, $a1
    /* A25C8 800B3DB8 00006294 */  lhu        $v0, 0x0($v1)
    /* A25CC 800B3DBC 27200800 */  nor        $a0, $zero, $t0
    /* A25D0 800B3DC0 24104400 */  and        $v0, $v0, $a0
    /* A25D4 800B3DC4 40200700 */  sll        $a0, $a3, 1
    /* A25D8 800B3DC8 21208500 */  addu       $a0, $a0, $a1
    /* A25DC 800B3DCC 000062A4 */  sh         $v0, 0x0($v1)
    /* A25E0 800B3DD0 02140800 */  srl        $v0, $t0, 16
    /* A25E4 800B3DD4 FF004230 */  andi       $v0, $v0, 0xFF
    /* A25E8 800B3DD8 00008394 */  lhu        $v1, 0x0($a0)
    /* A25EC 800B3DDC 27100200 */  nor        $v0, $zero, $v0
    /* A25F0 800B3DE0 24186200 */  and        $v1, $v1, $v0
    /* A25F4 800B3DE4 3AFFC224 */  addiu      $v0, $a2, -0xC6
    /* A25F8 800B3DE8 43100200 */  sra        $v0, $v0, 1
    /* A25FC 800B3DEC 000083A4 */  sh         $v1, 0x0($a0)
    /* A2600 800B3DF0 0C80033C */  lui        $v1, %hi(D_800C3D68)
    /* A2604 800B3DF4 683D638C */  lw         $v1, %lo(D_800C3D68)($v1)
    /* A2608 800B3DF8 04104B00 */  sllv       $v0, $t3, $v0
    /* A260C 800B3DFC 25186200 */  or         $v1, $v1, $v0
    /* A2610 800B3E00 0C80013C */  lui        $at, %hi(D_800C3D68)
    /* A2614 800B3E04 683D23AC */  sw         $v1, %lo(D_800C3D68)($at)
    /* A2618 800B3E08 95CF0208 */  j          .L800B3E54
    /* A261C 800B3E0C FF00023C */   lui       $v0, (0xFFFFFF >> 16)
  .L800B3E10:
    /* A2620 800B3E10 0C80053C */  lui        $a1, %hi(D_800C3DB0)
    /* A2624 800B3E14 B03DA58C */  lw         $a1, %lo(D_800C3DB0)($a1)
    /* A2628 800B3E18 00000000 */  nop
    /* A262C 800B3E1C 21186500 */  addu       $v1, $v1, $a1
    /* A2630 800B3E20 00006294 */  lhu        $v0, 0x0($v1)
    /* A2634 800B3E24 27200800 */  nor        $a0, $zero, $t0
    /* A2638 800B3E28 24104400 */  and        $v0, $v0, $a0
    /* A263C 800B3E2C 40200700 */  sll        $a0, $a3, 1
    /* A2640 800B3E30 21208500 */  addu       $a0, $a0, $a1
    /* A2644 800B3E34 000062A4 */  sh         $v0, 0x0($v1)
    /* A2648 800B3E38 02140800 */  srl        $v0, $t0, 16
    /* A264C 800B3E3C FF004230 */  andi       $v0, $v0, 0xFF
    /* A2650 800B3E40 00008394 */  lhu        $v1, 0x0($a0)
    /* A2654 800B3E44 27100200 */  nor        $v0, $zero, $v0
    /* A2658 800B3E48 24186200 */  and        $v1, $v1, $v0
    /* A265C 800B3E4C 000083A4 */  sh         $v1, 0x0($a0)
    /* A2660 800B3E50 FF00023C */  lui        $v0, (0xFFFFFF >> 16)
  .L800B3E54:
    /* A2664 800B3E54 FFFF4234 */  ori        $v0, $v0, (0xFFFFFF & 0xFFFF)
    /* A2668 800B3E58 24100201 */  and        $v0, $t0, $v0
    /* A266C 800B3E5C 27100200 */  nor        $v0, $zero, $v0
    /* A2670 800B3E60 C0CF0208 */  j          .L800B3F00
    /* A2674 800B3E64 24504201 */   and       $t2, $t2, $v0
  .L800B3E68:
    /* A2678 800B3E68 0C80023C */  lui        $v0, %hi(D_800C3D9C)
    /* A267C 800B3E6C 9C3D428C */  lw         $v0, %lo(D_800C3D9C)($v0)
    /* A2680 800B3E70 00000000 */  nop
    /* A2684 800B3E74 01004230 */  andi       $v0, $v0, 0x1
    /* A2688 800B3E78 14004010 */  beqz       $v0, .L800B3ECC
    /* A268C 800B3E7C 40180700 */   sll       $v1, $a3, 1
    /* A2690 800B3E80 0E80043C */  lui        $a0, %hi(D_800DE540)
    /* A2694 800B3E84 40E58424 */  addiu      $a0, $a0, %lo(D_800DE540)
    /* A2698 800B3E88 40100600 */  sll        $v0, $a2, 1
    /* A269C 800B3E8C 21104400 */  addu       $v0, $v0, $a0
    /* A26A0 800B3E90 21186400 */  addu       $v1, $v1, $a0
    /* A26A4 800B3E94 000048A4 */  sh         $t0, 0x0($v0)
    /* A26A8 800B3E98 02140800 */  srl        $v0, $t0, 16
    /* A26AC 800B3E9C FF004230 */  andi       $v0, $v0, 0xFF
    /* A26B0 800B3EA0 000062A4 */  sh         $v0, 0x0($v1)
    /* A26B4 800B3EA4 3AFFC224 */  addiu      $v0, $a2, -0xC6
    /* A26B8 800B3EA8 43100200 */  sra        $v0, $v0, 1
    /* A26BC 800B3EAC 0C80033C */  lui        $v1, %hi(D_800C3D68)
    /* A26C0 800B3EB0 683D638C */  lw         $v1, %lo(D_800C3D68)($v1)
    /* A26C4 800B3EB4 04104B00 */  sllv       $v0, $t3, $v0
    /* A26C8 800B3EB8 25186200 */  or         $v1, $v1, $v0
    /* A26CC 800B3EBC 0C80013C */  lui        $at, %hi(D_800C3D68)
    /* A26D0 800B3EC0 683D23AC */  sw         $v1, %lo(D_800C3D68)($at)
    /* A26D4 800B3EC4 BECF0208 */  j          .L800B3EF8
    /* A26D8 800B3EC8 FF00023C */   lui       $v0, (0xFFFFFF >> 16)
  .L800B3ECC:
    /* A26DC 800B3ECC 40100600 */  sll        $v0, $a2, 1
    /* A26E0 800B3ED0 0C80043C */  lui        $a0, %hi(D_800C3DB0)
    /* A26E4 800B3ED4 B03D848C */  lw         $a0, %lo(D_800C3DB0)($a0)
    /* A26E8 800B3ED8 00000000 */  nop
    /* A26EC 800B3EDC 21104400 */  addu       $v0, $v0, $a0
    /* A26F0 800B3EE0 21186400 */  addu       $v1, $v1, $a0
    /* A26F4 800B3EE4 000048A4 */  sh         $t0, 0x0($v0)
    /* A26F8 800B3EE8 02140800 */  srl        $v0, $t0, 16
    /* A26FC 800B3EEC FF004230 */  andi       $v0, $v0, 0xFF
    /* A2700 800B3EF0 000062A4 */  sh         $v0, 0x0($v1)
    /* A2704 800B3EF4 FF00023C */  lui        $v0, (0xFFFFFF >> 16)
  .L800B3EF8:
    /* A2708 800B3EF8 FFFF4234 */  ori        $v0, $v0, (0xFFFFFF & 0xFFFF)
    /* A270C 800B3EFC 24500201 */  and        $t2, $t0, $v0
  .L800B3F00:
    /* A2710 800B3F00 FF00023C */  lui        $v0, (0xFFFFFF >> 16)
    /* A2714 800B3F04 FFFF4234 */  ori        $v0, $v0, (0xFFFFFF & 0xFFFF)
  .L800B3F08:
    /* A2718 800B3F08 0800E003 */  jr         $ra
    /* A271C 800B3F0C 24104201 */   and       $v0, $t2, $v0
endlabel func_800B3C54
    /* A2720 800B3F10 00000000 */  nop
