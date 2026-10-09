nonmatching func_8013BBCC, 0xAC

glabel func_8013BBCC
    /* 9098 8013BBCC 21308000 */  addu       $a2, $a0, $zero
    /* 909C 8013BBD0 1C80033C */  lui        $v1, %hi(D_801BF01C)
    /* 90A0 8013BBD4 1CF06324 */  addiu      $v1, $v1, %lo(D_801BF01C)
    /* 90A4 8013BBD8 80100600 */  sll        $v0, $a2, 2
    /* 90A8 8013BBDC 21184300 */  addu       $v1, $v0, $v1
    /* 90AC 8013BBE0 0000678C */  lw         $a3, 0x0($v1)
    /* 90B0 8013BBE4 2120A000 */  addu       $a0, $a1, $zero
    /* 90B4 8013BBE8 21008710 */  beq        $a0, $a3, .L8013BC70
    /* 90B8 8013BBEC 2110E000 */   addu      $v0, $a3, $zero
    /* 90BC 8013BBF0 10008010 */  beqz       $a0, .L8013BC34
    /* 90C0 8013BBF4 FF00023C */   lui       $v0, (0xFFFFFF >> 16)
    /* 90C4 8013BBF8 1C80053C */  lui        $a1, %hi(D_801BF018)
    /* 90C8 8013BBFC 18F0A58C */  lw         $a1, %lo(D_801BF018)($a1)
    /* 90CC 8013BC00 FFFF4234 */  ori        $v0, $v0, (0xFFFFFF & 0xFFFF)
    /* 90D0 8013BC04 000064AC */  sw         $a0, 0x0($v1)
    /* 90D4 8013BC08 0000A48C */  lw         $a0, 0x0($a1)
    /* 90D8 8013BC0C 1000C324 */  addiu      $v1, $a2, 0x10
    /* 90DC 8013BC10 24208200 */  and        $a0, $a0, $v0
    /* 90E0 8013BC14 01000224 */  addiu      $v0, $zero, 0x1
    /* 90E4 8013BC18 04106200 */  sllv       $v0, $v0, $v1
    /* 90E8 8013BC1C 8000033C */  lui        $v1, (0x800000 >> 16)
    /* 90EC 8013BC20 25104300 */  or         $v0, $v0, $v1
    /* 90F0 8013BC24 25208200 */  or         $a0, $a0, $v0
    /* 90F4 8013BC28 0000A4AC */  sw         $a0, 0x0($a1)
    /* 90F8 8013BC2C 1CEF0408 */  j          .L8013BC70
    /* 90FC 8013BC30 2110E000 */   addu      $v0, $a3, $zero
  .L8013BC34:
    /* 9100 8013BC34 1C80053C */  lui        $a1, %hi(D_801BF018)
    /* 9104 8013BC38 18F0A58C */  lw         $a1, %lo(D_801BF018)($a1)
    /* 9108 8013BC3C FFFF4234 */  ori        $v0, $v0, (0xFFFFFF & 0xFFFF)
    /* 910C 8013BC40 000060AC */  sw         $zero, 0x0($v1)
    /* 9110 8013BC44 0000A38C */  lw         $v1, 0x0($a1)
    /* 9114 8013BC48 1000C424 */  addiu      $a0, $a2, 0x10
    /* 9118 8013BC4C 24186200 */  and        $v1, $v1, $v0
    /* 911C 8013BC50 8000023C */  lui        $v0, (0x800000 >> 16)
    /* 9120 8013BC54 25186200 */  or         $v1, $v1, $v0
    /* 9124 8013BC58 01000224 */  addiu      $v0, $zero, 0x1
    /* 9128 8013BC5C 04108200 */  sllv       $v0, $v0, $a0
    /* 912C 8013BC60 27100200 */  nor        $v0, $zero, $v0
    /* 9130 8013BC64 24186200 */  and        $v1, $v1, $v0
    /* 9134 8013BC68 0000A3AC */  sw         $v1, 0x0($a1)
    /* 9138 8013BC6C 2110E000 */  addu       $v0, $a3, $zero
  .L8013BC70:
    /* 913C 8013BC70 0800E003 */  jr         $ra
    /* 9140 8013BC74 00000000 */   nop
endlabel func_8013BBCC
