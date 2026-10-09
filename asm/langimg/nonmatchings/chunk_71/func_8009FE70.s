nonmatching func_8009FE70, 0x15C

glabel func_8009FE70
    /* 8E680 8009FE70 D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* 8E684 8009FE74 2400BFAF */  sw         $ra, 0x24($sp)
    /* 8E688 8009FE78 D4B1010C */  jal        func_8006C750
    /* 8E68C 8009FE7C 2000B0AF */   sw        $s0, 0x20($sp)
    /* 8E690 8009FE80 1F5A000C */  jal        func_8001687C
    /* 8E694 8009FE84 00000000 */   nop
    /* 8E698 8009FE88 0D80013C */  lui        $at, %hi(D_800C8DC0)
    /* 8E69C 8009FE8C C08D20AC */  sw         $zero, %lo(D_800C8DC0)($at)
    /* 8E6A0 8009FE90 709C020C */  jal        __builtin_new
    /* 8E6A4 8009FE94 0C000424 */   addiu     $a0, $zero, 0xC
    /* 8E6A8 8009FE98 3FAA010C */  jal        func_8006A8FC
    /* 8E6AC 8009FE9C 21204000 */   addu      $a0, $v0, $zero
    /* 8E6B0 8009FEA0 21204000 */  addu       $a0, $v0, $zero
    /* 8E6B4 8009FEA4 0D80013C */  lui        $at, %hi(D_800CB478)
    /* 8E6B8 8009FEA8 78B422AC */  sw         $v0, %lo(D_800CB478)($at)
    /* 8E6BC 8009FEAC 45AA010C */  jal        func_8006A914
    /* 8E6C0 8009FEB0 40000524 */   addiu     $a1, $zero, 0x40
    /* 8E6C4 8009FEB4 0D80043C */  lui        $a0, %hi(D_800CB480)
    /* 8E6C8 8009FEB8 80B48424 */  addiu      $a0, $a0, %lo(D_800CB480)
    /* 8E6CC 8009FEBC 10000524 */  addiu      $a1, $zero, 0x10
    /* 8E6D0 8009FEC0 4DA9010C */  jal        func_8006A534
    /* 8E6D4 8009FEC4 00040624 */   addiu     $a2, $zero, 0x400
    /* 8E6D8 8009FEC8 2381020C */  jal        func_800A048C
    /* 8E6DC 8009FECC 00000000 */   nop
    /* 8E6E0 8009FED0 0D80043C */  lui        $a0, %hi(D_800D4898)
    /* 8E6E4 8009FED4 98488424 */  addiu      $a0, $a0, %lo(D_800D4898)
    /* 8E6E8 8009FED8 F084020C */  jal        func_800A13C0
    /* 8E6EC 8009FEDC 21804000 */   addu      $s0, $v0, $zero
    /* 8E6F0 8009FEE0 35000012 */  beqz       $s0, .L8009FFB8
    /* 8E6F4 8009FEE4 12000324 */   addiu     $v1, $zero, 0x12
    /* 8E6F8 8009FEE8 0C80023C */  lui        $v0, %hi(D_800C6710)
    /* 8E6FC 8009FEEC 1067428C */  lw         $v0, %lo(D_800C6710)($v0)
    /* 8E700 8009FEF0 00000000 */  nop
    /* 8E704 8009FEF4 0000448C */  lw         $a0, 0x0($v0)
    /* 8E708 8009FEF8 00000000 */  nop
    /* 8E70C 8009FEFC 10008314 */  bne        $a0, $v1, .L8009FF40
    /* 8E710 8009FF00 21300000 */   addu      $a2, $zero, $zero
    /* 8E714 8009FF04 21380000 */  addu       $a3, $zero, $zero
  .L8009FF08:
    /* 8E718 8009FF08 80280600 */  sll        $a1, $a2, 2
    /* 8E71C 8009FF0C 0C80033C */  lui        $v1, %hi(D_800C6710)
    /* 8E720 8009FF10 1067638C */  lw         $v1, %lo(D_800C6710)($v1)
    /* 8E724 8009FF14 0100C624 */  addiu      $a2, $a2, 0x1
    /* 8E728 8009FF18 0400628C */  lw         $v0, 0x4($v1)
    /* 8E72C 8009FF1C 0D80033C */  lui        $v1, %hi(D_800C9EF0)
    /* 8E730 8009FF20 F09E638C */  lw         $v1, %lo(D_800C9EF0)($v1)
    /* 8E734 8009FF24 2110E200 */  addu       $v0, $a3, $v0
    /* 8E738 8009FF28 1C00E724 */  addiu      $a3, $a3, 0x1C
    /* 8E73C 8009FF2C 2128A300 */  addu       $a1, $a1, $v1
    /* 8E740 8009FF30 1800448C */  lw         $a0, 0x18($v0)
    /* 8E744 8009FF34 1200C228 */  slti       $v0, $a2, 0x12
    /* 8E748 8009FF38 F3FF4014 */  bnez       $v0, .L8009FF08
    /* 8E74C 8009FF3C 0000A4AC */   sw        $a0, 0x0($a1)
  .L8009FF40:
    /* 8E750 8009FF40 0D80043C */  lui        $a0, %hi(D_800CBC94)
    /* 8E754 8009FF44 94BC8424 */  addiu      $a0, $a0, %lo(D_800CBC94)
    /* 8E758 8009FF48 FAE3010C */  jal        func_80078FE8
    /* 8E75C 8009FF4C 21280000 */   addu      $a1, $zero, $zero
    /* 8E760 8009FF50 0D80043C */  lui        $a0, %hi(D_800CBC94)
    /* 8E764 8009FF54 94BC8424 */  addiu      $a0, $a0, %lo(D_800CBC94)
    /* 8E768 8009FF58 E4E3010C */  jal        func_80078F90
    /* 8E76C 8009FF5C 21284000 */   addu      $a1, $v0, $zero
    /* 8E770 8009FF60 0D80043C */  lui        $a0, %hi(D_800CABC0)
    /* 8E774 8009FF64 C0AB8424 */  addiu      $a0, $a0, %lo(D_800CABC0)
    /* 8E778 8009FF68 02000524 */  addiu      $a1, $zero, 0x2
    /* 8E77C 8009FF6C FFFF0624 */  addiu      $a2, $zero, -0x1
    /* 8E780 8009FF70 FFFF0324 */  addiu      $v1, $zero, -0x1
    /* 8E784 8009FF74 11000724 */  addiu      $a3, $zero, 0x11
    /* 8E788 8009FF78 307882AF */  sw         $v0, %gp_rel(D_800CBF20)($gp)
    /* 8E78C 8009FF7C 02000224 */  addiu      $v0, $zero, 0x2
    /* 8E790 8009FF80 0D80013C */  lui        $at, %hi(D_800D5FC8)
    /* 8E794 8009FF84 C85F23AC */  sw         $v1, %lo(D_800D5FC8)($at)
    /* 8E798 8009FF88 0D80033C */  lui        $v1, %hi(D_800CBF20)
    /* 8E79C 8009FF8C 20BF6324 */  addiu      $v1, $v1, %lo(D_800CBF20)
    /* 8E7A0 8009FF90 1400A2AF */  sw         $v0, 0x14($sp)
    /* 8E7A4 8009FF94 07000224 */  addiu      $v0, $zero, 0x7
    /* 8E7A8 8009FF98 1000A7AF */  sw         $a3, 0x10($sp)
    /* 8E7AC 8009FF9C 02000724 */  addiu      $a3, $zero, 0x2
    /* 8E7B0 8009FFA0 0D80013C */  lui        $at, %hi(D_800D5F6C)
    /* 8E7B4 8009FFA4 6C5F20AC */  sw         $zero, %lo(D_800D5F6C)($at)
    /* 8E7B8 8009FFA8 1800A3AF */  sw         $v1, 0x18($sp)
    /* 8E7BC 8009FFAC 5A14010C */  jal        func_80045168
    /* 8E7C0 8009FFB0 1C00A2AF */   sw        $v0, 0x1C($sp)
    /* 8E7C4 8009FFB4 2B800200 */  sltu       $s0, $zero, $v0
  .L8009FFB8:
    /* 8E7C8 8009FFB8 21100002 */  addu       $v0, $s0, $zero
    /* 8E7CC 8009FFBC 2400BF8F */  lw         $ra, 0x24($sp)
    /* 8E7D0 8009FFC0 2000B08F */  lw         $s0, 0x20($sp)
    /* 8E7D4 8009FFC4 0800E003 */  jr         $ra
    /* 8E7D8 8009FFC8 2800BD27 */   addiu     $sp, $sp, 0x28
endlabel func_8009FE70
