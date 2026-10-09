nonmatching func_800AB614, 0xAC

glabel func_800AB614
    /* 99E24 800AB614 21308000 */  addu       $a2, $a0, $zero
    /* 99E28 800AB618 0C80033C */  lui        $v1, %hi(D_800BE624)
    /* 99E2C 800AB61C 24E66324 */  addiu      $v1, $v1, %lo(D_800BE624)
    /* 99E30 800AB620 80100600 */  sll        $v0, $a2, 2
    /* 99E34 800AB624 21184300 */  addu       $v1, $v0, $v1
    /* 99E38 800AB628 0000678C */  lw         $a3, 0x0($v1)
    /* 99E3C 800AB62C 2120A000 */  addu       $a0, $a1, $zero
    /* 99E40 800AB630 21008710 */  beq        $a0, $a3, .L800AB6B8
    /* 99E44 800AB634 2110E000 */   addu      $v0, $a3, $zero
    /* 99E48 800AB638 10008010 */  beqz       $a0, .L800AB67C
    /* 99E4C 800AB63C FF00023C */   lui       $v0, (0xFFFFFF >> 16)
    /* 99E50 800AB640 0C80053C */  lui        $a1, %hi(D_800BE620)
    /* 99E54 800AB644 20E6A58C */  lw         $a1, %lo(D_800BE620)($a1)
    /* 99E58 800AB648 FFFF4234 */  ori        $v0, $v0, (0xFFFFFF & 0xFFFF)
    /* 99E5C 800AB64C 000064AC */  sw         $a0, 0x0($v1)
    /* 99E60 800AB650 0000A48C */  lw         $a0, 0x0($a1)
    /* 99E64 800AB654 1000C324 */  addiu      $v1, $a2, 0x10
    /* 99E68 800AB658 24208200 */  and        $a0, $a0, $v0
    /* 99E6C 800AB65C 01000224 */  addiu      $v0, $zero, 0x1
    /* 99E70 800AB660 04106200 */  sllv       $v0, $v0, $v1
    /* 99E74 800AB664 8000033C */  lui        $v1, (0x800000 >> 16)
    /* 99E78 800AB668 25104300 */  or         $v0, $v0, $v1
    /* 99E7C 800AB66C 25208200 */  or         $a0, $a0, $v0
    /* 99E80 800AB670 0000A4AC */  sw         $a0, 0x0($a1)
    /* 99E84 800AB674 AEAD0208 */  j          .L800AB6B8
    /* 99E88 800AB678 2110E000 */   addu      $v0, $a3, $zero
  .L800AB67C:
    /* 99E8C 800AB67C 0C80053C */  lui        $a1, %hi(D_800BE620)
    /* 99E90 800AB680 20E6A58C */  lw         $a1, %lo(D_800BE620)($a1)
    /* 99E94 800AB684 FFFF4234 */  ori        $v0, $v0, (0xFFFFFF & 0xFFFF)
    /* 99E98 800AB688 000060AC */  sw         $zero, 0x0($v1)
    /* 99E9C 800AB68C 0000A38C */  lw         $v1, 0x0($a1)
    /* 99EA0 800AB690 1000C424 */  addiu      $a0, $a2, 0x10
    /* 99EA4 800AB694 24186200 */  and        $v1, $v1, $v0
    /* 99EA8 800AB698 8000023C */  lui        $v0, (0x800000 >> 16)
    /* 99EAC 800AB69C 25186200 */  or         $v1, $v1, $v0
    /* 99EB0 800AB6A0 01000224 */  addiu      $v0, $zero, 0x1
    /* 99EB4 800AB6A4 04108200 */  sllv       $v0, $v0, $a0
    /* 99EB8 800AB6A8 27100200 */  nor        $v0, $zero, $v0
    /* 99EBC 800AB6AC 24186200 */  and        $v1, $v1, $v0
    /* 99EC0 800AB6B0 0000A3AC */  sw         $v1, 0x0($a1)
    /* 99EC4 800AB6B4 2110E000 */  addu       $v0, $a3, $zero
  .L800AB6B8:
    /* 99EC8 800AB6B8 0800E003 */  jr         $ra
    /* 99ECC 800AB6BC 00000000 */   nop
endlabel func_800AB614
