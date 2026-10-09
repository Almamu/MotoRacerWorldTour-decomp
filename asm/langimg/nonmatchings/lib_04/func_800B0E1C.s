nonmatching func_800B0E1C, 0xC8

glabel func_800B0E1C
    /* 9F62C 800B0E1C E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 9F630 800B0E20 0C80053C */  lui        $a1, %hi(D_800C3CCC)
    /* 9F634 800B0E24 CC3CA524 */  addiu      $a1, $a1, %lo(D_800C3CCC)
    /* 9F638 800B0E28 1000BFAF */  sw         $ra, 0x10($sp)
    /* 9F63C 800B0E2C 0000A38C */  lw         $v1, 0x0($a1)
    /* 9F640 800B0E30 00000000 */  nop
    /* 9F644 800B0E34 80100300 */  sll        $v0, $v1, 2
    /* 9F648 800B0E38 0C80013C */  lui        $at, %hi(D_800C3D0C)
    /* 9F64C 800B0E3C 21082200 */  addu       $at, $at, $v0
    /* 9F650 800B0E40 0C3D228C */  lw         $v0, %lo(D_800C3D0C)($at)
    /* 9F654 800B0E44 01006324 */  addiu      $v1, $v1, 0x1
    /* 9F658 800B0E48 09F84000 */  jalr       $v0
    /* 9F65C 800B0E4C 0000A3AC */   sw        $v1, 0x0($a1)
    /* 9F660 800B0E50 21204000 */  addu       $a0, $v0, $zero
    /* 9F664 800B0E54 1A008004 */  bltz       $a0, .L800B0EC0
    /* 9F668 800B0E58 00000000 */   nop
    /* 9F66C 800B0E5C 0C80023C */  lui        $v0, %hi(D_800C3CCC)
    /* 9F670 800B0E60 CC3C428C */  lw         $v0, %lo(D_800C3CCC)($v0)
    /* 9F674 800B0E64 00000000 */  nop
    /* 9F678 800B0E68 0C004010 */  beqz       $v0, .L800B0E9C
    /* 9F67C 800B0E6C 00000000 */   nop
    /* 9F680 800B0E70 77CB020C */  jal        func_800B2DDC
    /* 9F684 800B0E74 3C000424 */   addiu     $a0, $zero, 0x3C
    /* 9F688 800B0E78 BDC4020C */  jal        func_800B12F4
    /* 9F68C 800B0E7C 00000000 */   nop
    /* 9F690 800B0E80 06004014 */  bnez       $v0, .L800B0E9C
    /* 9F694 800B0E84 00000000 */   nop
    /* 9F698 800B0E88 0C80023C */  lui        $v0, %hi(D_800C3C88)
    /* 9F69C 800B0E8C 883C428C */  lw         $v0, %lo(D_800C3C88)($v0)
    /* 9F6A0 800B0E90 00000000 */  nop
    /* 9F6A4 800B0E94 09F84000 */  jalr       $v0
    /* 9F6A8 800B0E98 FDFF0424 */   addiu     $a0, $zero, -0x3
  .L800B0E9C:
    /* 9F6AC 800B0E9C 0C80033C */  lui        $v1, %hi(D_800C3CCC)
    /* 9F6B0 800B0EA0 CC3C638C */  lw         $v1, %lo(D_800C3CCC)($v1)
    /* 9F6B4 800B0EA4 00000000 */  nop
    /* 9F6B8 800B0EA8 05006228 */  slti       $v0, $v1, 0x5
    /* 9F6BC 800B0EAC 09004014 */  bnez       $v0, .L800B0ED4
    /* 9F6C0 800B0EB0 FFFF6224 */   addiu     $v0, $v1, -0x1
    /* 9F6C4 800B0EB4 0C80013C */  lui        $at, %hi(D_800C3CCC)
    /* 9F6C8 800B0EB8 B5C30208 */  j          .L800B0ED4
    /* 9F6CC 800B0EBC CC3C22AC */   sw        $v0, %lo(D_800C3CCC)($at)
  .L800B0EC0:
    /* 9F6D0 800B0EC0 0C80023C */  lui        $v0, %hi(D_800C3C88)
    /* 9F6D4 800B0EC4 883C428C */  lw         $v0, %lo(D_800C3C88)($v0)
    /* 9F6D8 800B0EC8 00000000 */  nop
    /* 9F6DC 800B0ECC 09F84000 */  jalr       $v0
    /* 9F6E0 800B0ED0 00000000 */   nop
  .L800B0ED4:
    /* 9F6E4 800B0ED4 1000BF8F */  lw         $ra, 0x10($sp)
    /* 9F6E8 800B0ED8 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 9F6EC 800B0EDC 0800E003 */  jr         $ra
    /* 9F6F0 800B0EE0 00000000 */   nop
endlabel func_800B0E1C
