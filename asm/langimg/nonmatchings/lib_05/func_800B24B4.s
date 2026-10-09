nonmatching func_800B24B4, 0xF4

glabel func_800B24B4
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
endlabel func_800B24B4
