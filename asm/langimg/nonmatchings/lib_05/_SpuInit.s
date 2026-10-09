nonmatching _SpuInit, 0xE8

glabel _SpuInit
    /* A16CC 800B2EBC E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* A16D0 800B2EC0 1000B0AF */  sw         $s0, 0x10($sp)
    /* A16D4 800B2EC4 1400BFAF */  sw         $ra, 0x14($sp)
    /* A16D8 800B2EC8 38AB020C */  jal        ResetCallback
    /* A16DC 800B2ECC 21808000 */   addu      $s0, $a0, $zero
    /* A16E0 800B2ED0 07CC020C */  jal        _spu_init
    /* A16E4 800B2ED4 21200002 */   addu      $a0, $s0, $zero
    /* A16E8 800B2ED8 08000016 */  bnez       $s0, .L800B2EFC
    /* A16EC 800B2EDC 00C00434 */   ori       $a0, $zero, 0xC000
    /* A16F0 800B2EE0 17000324 */  addiu      $v1, $zero, 0x17
    /* A16F4 800B2EE4 0C80023C */  lui        $v0, %hi(D_800C3D9A)
    /* A16F8 800B2EE8 9A3D4224 */  addiu      $v0, $v0, %lo(D_800C3D9A)
  .L800B2EEC:
    /* A16FC 800B2EEC 000044A4 */  sh         $a0, 0x0($v0)
    /* A1700 800B2EF0 FFFF6324 */  addiu      $v1, $v1, -0x1
    /* A1704 800B2EF4 FDFF6104 */  bgez       $v1, .L800B2EEC
    /* A1708 800B2EF8 FEFF4224 */   addiu     $v0, $v0, -0x2
  .L800B2EFC:
    /* A170C 800B2EFC E9CB020C */  jal        SpuStart
    /* A1710 800B2F00 00000000 */   nop
    /* A1714 800B2F04 D1000424 */  addiu      $a0, $zero, 0xD1
    /* A1718 800B2F08 0C80023C */  lui        $v0, %hi(D_800C3D54)
    /* A171C 800B2F0C 543D4224 */  addiu      $v0, $v0, %lo(D_800C3D54)
    /* A1720 800B2F10 0C80053C */  lui        $a1, %hi(D_800C4340)
    /* A1724 800B2F14 4043A58C */  lw         $a1, %lo(D_800C4340)($a1)
    /* A1728 800B2F18 0C80013C */  lui        $at, %hi(D_800C3D44)
    /* A172C 800B2F1C 443D20AC */  sw         $zero, %lo(D_800C3D44)($at)
    /* A1730 800B2F20 0C80013C */  lui        $at, %hi(D_800C3D48)
    /* A1734 800B2F24 483D20AC */  sw         $zero, %lo(D_800C3D48)($at)
    /* A1738 800B2F28 000040AC */  sw         $zero, 0x0($v0)
    /* A173C 800B2F2C 040040A4 */  sh         $zero, 0x4($v0)
    /* A1740 800B2F30 060040A4 */  sh         $zero, 0x6($v0)
    /* A1744 800B2F34 080040AC */  sw         $zero, 0x8($v0)
    /* A1748 800B2F38 0C0040AC */  sw         $zero, 0xC($v0)
    /* A174C 800B2F3C 0C80013C */  lui        $at, %hi(D_800C3D4C)
    /* A1750 800B2F40 4C3D25AC */  sw         $a1, %lo(D_800C3D4C)($at)
    /* A1754 800B2F44 07CE020C */  jal        func_800B381C
    /* A1758 800B2F48 21300000 */   addu      $a2, $zero, $zero
    /* A175C 800B2F4C 0C80013C */  lui        $at, %hi(D_800C3E10)
    /* A1760 800B2F50 103E20AC */  sw         $zero, %lo(D_800C3E10)($at)
    /* A1764 800B2F54 0C80013C */  lui        $at, %hi(D_800C3E14)
    /* A1768 800B2F58 143E20AC */  sw         $zero, %lo(D_800C3E14)($at)
    /* A176C 800B2F5C 0C80013C */  lui        $at, %hi(D_800C3E18)
    /* A1770 800B2F60 183E20AC */  sw         $zero, %lo(D_800C3E18)($at)
    /* A1774 800B2F64 0C80013C */  lui        $at, %hi(D_800C3D40)
    /* A1778 800B2F68 403D20AC */  sw         $zero, %lo(D_800C3D40)($at)
    /* A177C 800B2F6C 0C80013C */  lui        $at, %hi(D_800C3DCC)
    /* A1780 800B2F70 CC3D20AC */  sw         $zero, %lo(D_800C3DCC)($at)
    /* A1784 800B2F74 0C80013C */  lui        $at, %hi(D_800C3D3C)
    /* A1788 800B2F78 3C3D20AC */  sw         $zero, %lo(D_800C3D3C)($at)
    /* A178C 800B2F7C 0C80013C */  lui        $at, %hi(D_800C3D68)
    /* A1790 800B2F80 683D20AC */  sw         $zero, %lo(D_800C3D68)($at)
    /* A1794 800B2F84 0C80013C */  lui        $at, %hi(D_800C3D64)
    /* A1798 800B2F88 643D20AC */  sw         $zero, %lo(D_800C3D64)($at)
    /* A179C 800B2F8C 0C80013C */  lui        $at, %hi(D_800C3D9C)
    /* A17A0 800B2F90 9C3D20AC */  sw         $zero, %lo(D_800C3D9C)($at)
    /* A17A4 800B2F94 1400BF8F */  lw         $ra, 0x14($sp)
    /* A17A8 800B2F98 1000B08F */  lw         $s0, 0x10($sp)
    /* A17AC 800B2F9C 0800E003 */  jr         $ra
    /* A17B0 800B2FA0 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel _SpuInit
