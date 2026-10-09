nonmatching func_8004ADB0, 0x12C

glabel func_8004ADB0
    /* 395C0 8004ADB0 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 395C4 8004ADB4 0D80073C */  lui        $a3, %hi(D_800D489C)
    /* 395C8 8004ADB8 9C48E724 */  addiu      $a3, $a3, %lo(D_800D489C)
    /* 395CC 8004ADBC 1000BFAF */  sw         $ra, 0x10($sp)
    /* 395D0 8004ADC0 0400E28C */  lw         $v0, 0x4($a3)
    /* 395D4 8004ADC4 D000E38C */  lw         $v1, 0xD0($a3)
    /* 395D8 8004ADC8 D400E48C */  lw         $a0, 0xD4($a3)
    /* 395DC 8004ADCC 3800E58C */  lw         $a1, 0x38($a3)
    /* 395E0 8004ADD0 0800E68C */  lw         $a2, 0x8($a3)
    /* 395E4 8004ADD4 0D80013C */  lui        $at, %hi(D_800D5F6C)
    /* 395E8 8004ADD8 6C5F20AC */  sw         $zero, %lo(D_800D5F6C)($at)
    /* 395EC 8004ADDC 0D80013C */  lui        $at, %hi(D_800D5F60)
    /* 395F0 8004ADE0 605F20AC */  sw         $zero, %lo(D_800D5F60)($at)
    /* 395F4 8004ADE4 0D80013C */  lui        $at, %hi(D_800D5F30)
    /* 395F8 8004ADE8 305F22AC */  sw         $v0, %lo(D_800D5F30)($at)
    /* 395FC 8004ADEC 80100600 */  sll        $v0, $a2, 2
    /* 39600 8004ADF0 0D80013C */  lui        $at, %hi(D_800D5F50)
    /* 39604 8004ADF4 505F23AC */  sw         $v1, %lo(D_800D5F50)($at)
    /* 39608 8004ADF8 0D80033C */  lui        $v1, %hi(D_800D48A8)
    /* 3960C 8004ADFC A8486324 */  addiu      $v1, $v1, %lo(D_800D48A8)
    /* 39610 8004AE00 21104300 */  addu       $v0, $v0, $v1
    /* 39614 8004AE04 0D80013C */  lui        $at, %hi(D_800D5F54)
    /* 39618 8004AE08 545F24AC */  sw         $a0, %lo(D_800D5F54)($at)
    /* 3961C 8004AE0C 0D80013C */  lui        $at, %hi(D_800D5F58)
    /* 39620 8004AE10 585F25AC */  sw         $a1, %lo(D_800D5F58)($at)
    /* 39624 8004AE14 0D80013C */  lui        $at, %hi(D_800D5F3C)
    /* 39628 8004AE18 3C5F26AC */  sw         $a2, %lo(D_800D5F3C)($at)
    /* 3962C 8004AE1C 0000438C */  lw         $v1, 0x0($v0)
    /* 39630 8004AE20 04000224 */  addiu      $v0, $zero, 0x4
    /* 39634 8004AE24 0D80013C */  lui        $at, %hi(D_800D5F4C)
    /* 39638 8004AE28 4C5F20AC */  sw         $zero, %lo(D_800D5F4C)($at)
    /* 3963C 8004AE2C 0D80013C */  lui        $at, %hi(D_800D5F40)
    /* 39640 8004AE30 405F23AC */  sw         $v1, %lo(D_800D5F40)($at)
    /* 39644 8004AE34 07006214 */  bne        $v1, $v0, .L8004AE54
    /* 39648 8004AE38 08000224 */   addiu     $v0, $zero, 0x8
    /* 3964C 8004AE3C 0D80043C */  lui        $a0, %hi(D_800D4898)
    /* 39650 8004AE40 98488424 */  addiu      $a0, $a0, %lo(D_800D4898)
    /* 39654 8004AE44 4484020C */  jal        func_800A1110
    /* 39658 8004AE48 00000000 */   nop
    /* 3965C 8004AE4C AF2B0108 */  j          .L8004AEBC
    /* 39660 8004AE50 00000000 */   nop
  .L8004AE54:
    /* 39664 8004AE54 0F006214 */  bne        $v1, $v0, .L8004AE94
    /* 39668 8004AE58 01000224 */   addiu     $v0, $zero, 0x1
    /* 3966C 8004AE5C 7800E58C */  lw         $a1, 0x78($a3)
    /* 39670 8004AE60 0D80033C */  lui        $v1, %hi(D_800D48D8)
    /* 39674 8004AE64 D8486324 */  addiu      $v1, $v1, %lo(D_800D48D8)
    /* 39678 8004AE68 80100500 */  sll        $v0, $a1, 2
    /* 3967C 8004AE6C 21104500 */  addu       $v0, $v0, $a1
    /* 39680 8004AE70 80100200 */  sll        $v0, $v0, 2
    /* 39684 8004AE74 21104300 */  addu       $v0, $v0, $v1
    /* 39688 8004AE78 0000468C */  lw         $a2, 0x0($v0)
    /* 3968C 8004AE7C 0D80043C */  lui        $a0, %hi(D_800D4898)
    /* 39690 8004AE80 98488424 */  addiu      $a0, $a0, %lo(D_800D4898)
    /* 39694 8004AE84 7183020C */  jal        func_800A0DC4
    /* 39698 8004AE88 00000000 */   nop
    /* 3969C 8004AE8C AF2B0108 */  j          .L8004AEBC
    /* 396A0 8004AE90 00000000 */   nop
  .L8004AE94:
    /* 396A4 8004AE94 0900C214 */  bne        $a2, $v0, .L8004AEBC
    /* 396A8 8004AE98 00000000 */   nop
    /* 396AC 8004AE9C 0D80043C */  lui        $a0, %hi(D_800D4898)
    /* 396B0 8004AEA0 98488424 */  addiu      $a0, $a0, %lo(D_800D4898)
    /* 396B4 8004AEA4 8A84020C */  jal        func_800A1228
    /* 396B8 8004AEA8 00000000 */   nop
    /* 396BC 8004AEAC 0D80043C */  lui        $a0, %hi(D_800D4898)
    /* 396C0 8004AEB0 98488424 */  addiu      $a0, $a0, %lo(D_800D4898)
    /* 396C4 8004AEB4 9284020C */  jal        func_800A1248
    /* 396C8 8004AEB8 00000000 */   nop
  .L8004AEBC:
    /* 396CC 8004AEBC 0D80043C */  lui        $a0, %hi(D_800D4898)
    /* 396D0 8004AEC0 98488424 */  addiu      $a0, $a0, %lo(D_800D4898)
    /* 396D4 8004AEC4 9A84020C */  jal        func_800A1268
    /* 396D8 8004AEC8 00000000 */   nop
    /* 396DC 8004AECC 1000BF8F */  lw         $ra, 0x10($sp)
    /* 396E0 8004AED0 01000224 */  addiu      $v0, $zero, 0x1
    /* 396E4 8004AED4 0800E003 */  jr         $ra
    /* 396E8 8004AED8 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_8004ADB0
