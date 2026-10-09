nonmatching func_800B1E1C, 0xC0

glabel func_800B1E1C
    /* A062C 800B1E1C 0C80023C */  lui        $v0, %hi(D_800C3D08)
    /* A0630 800B1E20 083D428C */  lw         $v0, %lo(D_800C3D08)($v0)
    /* A0634 800B1E24 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* A0638 800B1E28 1000B0AF */  sw         $s0, 0x10($sp)
    /* A063C 800B1E2C 21808000 */  addu       $s0, $a0, $zero
    /* A0640 800B1E30 0D004010 */  beqz       $v0, .L800B1E68
    /* A0644 800B1E34 1400BFAF */   sw        $ra, 0x14($sp)
    /* A0648 800B1E38 0C00048E */  lw         $a0, 0xC($s0)
    /* A064C 800B1E3C 0C80023C */  lui        $v0, %hi(_padFuncSendAuto)
    /* A0650 800B1E40 A03C428C */  lw         $v0, %lo(_padFuncSendAuto)($v0)
    /* A0654 800B1E44 00000000 */  nop
    /* A0658 800B1E48 09F84000 */  jalr       $v0
    /* A065C 800B1E4C E0018424 */   addiu     $a0, $a0, 0x1E0
    /* A0660 800B1E50 0C00048E */  lw         $a0, 0xC($s0)
    /* A0664 800B1E54 0C80023C */  lui        $v0, %hi(_padFuncSendAuto)
    /* A0668 800B1E58 A03C428C */  lw         $v0, %lo(_padFuncSendAuto)($v0)
    /* A066C 800B1E5C 00000000 */  nop
    /* A0670 800B1E60 09F84000 */  jalr       $v0
    /* A0674 800B1E64 D0028424 */   addiu     $a0, $a0, 0x2D0
  .L800B1E68:
    /* A0678 800B1E68 36000292 */  lbu        $v0, 0x36($s0)
    /* A067C 800B1E6C 00000000 */  nop
    /* A0680 800B1E70 03004014 */  bnez       $v0, .L800B1E80
    /* A0684 800B1E74 21280000 */   addu      $a1, $zero, $zero
    /* A0688 800B1E78 0C80053C */  lui        $a1, %hi(D_800C3CD4)
    /* A068C 800B1E7C D43CA58C */  lw         $a1, %lo(D_800C3CD4)($a1)
  .L800B1E80:
    /* A0690 800B1E80 2FC4020C */  jal        _padSioRW2
    /* A0694 800B1E84 21200002 */   addu      $a0, $s0, $zero
    /* A0698 800B1E88 21184000 */  addu       $v1, $v0, $zero
    /* A069C 800B1E8C 0F006004 */  bltz       $v1, .L800B1ECC
    /* A06A0 800B1E90 00000000 */   nop
    /* A06A4 800B1E94 F0006230 */  andi       $v0, $v1, 0xF0
    /* A06A8 800B1E98 03004014 */  bnez       $v0, .L800B1EA8
    /* A06AC 800B1E9C 0F006230 */   andi      $v0, $v1, 0xF
    /* A06B0 800B1EA0 B3C70208 */  j          .L800B1ECC
    /* A06B4 800B1EA4 F7FF0224 */   addiu     $v0, $zero, -0x9
  .L800B1EA8:
    /* A06B8 800B1EA8 40100200 */  sll        $v0, $v0, 1
    /* A06BC 800B1EAC 0C80013C */  lui        $at, %hi(D_800C3D00)
    /* A06C0 800B1EB0 003D22AC */  sw         $v0, %lo(D_800C3D00)($at)
    /* A06C4 800B1EB4 05004014 */  bnez       $v0, .L800B1ECC
    /* A06C8 800B1EB8 21100000 */   addu      $v0, $zero, $zero
    /* A06CC 800B1EBC 20000224 */  addiu      $v0, $zero, 0x20
    /* A06D0 800B1EC0 0C80013C */  lui        $at, %hi(D_800C3D00)
    /* A06D4 800B1EC4 003D22AC */  sw         $v0, %lo(D_800C3D00)($at)
    /* A06D8 800B1EC8 21100000 */  addu       $v0, $zero, $zero
  .L800B1ECC:
    /* A06DC 800B1ECC 1400BF8F */  lw         $ra, 0x14($sp)
    /* A06E0 800B1ED0 1000B08F */  lw         $s0, 0x10($sp)
    /* A06E4 800B1ED4 0800E003 */  jr         $ra
    /* A06E8 800B1ED8 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_800B1E1C
