nonmatching func_8006FE64, 0xA8

glabel func_8006FE64
    /* 5E674 8006FE64 F0FFBD27 */  addiu      $sp, $sp, -0x10
    /* 5E678 8006FE68 64008324 */  addiu      $v1, $a0, 0x64
    /* 5E67C 8006FE6C 300080AC */  sw         $zero, 0x30($a0)
    /* 5E680 8006FE70 040080AC */  sw         $zero, 0x4($a0)
    /* 5E684 8006FE74 E40080AC */  sw         $zero, 0xE4($a0)
    /* 5E688 8006FE78 E80080AC */  sw         $zero, 0xE8($a0)
    /* 5E68C 8006FE7C E00080AC */  sw         $zero, 0xE0($a0)
    /* 5E690 8006FE80 EC0080AC */  sw         $zero, 0xEC($a0)
    /* 5E694 8006FE84 640080AC */  sw         $zero, 0x64($a0)
    /* 5E698 8006FE88 040060AC */  sw         $zero, 0x4($v1)
    /* 5E69C 8006FE8C 080060AC */  sw         $zero, 0x8($v1)
    /* 5E6A0 8006FE90 6400828C */  lw         $v0, 0x64($a0)
    /* 5E6A4 8006FE94 4C008324 */  addiu      $v1, $a0, 0x4C
    /* 5E6A8 8006FE98 4C0082AC */  sw         $v0, 0x4C($a0)
    /* 5E6AC 8006FE9C A0008224 */  addiu      $v0, $a0, 0xA0
    /* 5E6B0 8006FEA0 040060AC */  sw         $zero, 0x4($v1)
    /* 5E6B4 8006FEA4 080060AC */  sw         $zero, 0x8($v1)
    /* 5E6B8 8006FEA8 A00080AC */  sw         $zero, 0xA0($a0)
    /* 5E6BC 8006FEAC 040040AC */  sw         $zero, 0x4($v0)
    /* 5E6C0 8006FEB0 080040AC */  sw         $zero, 0x8($v0)
    /* 5E6C4 8006FEB4 A000838C */  lw         $v1, 0xA0($a0)
    /* 5E6C8 8006FEB8 88008224 */  addiu      $v0, $a0, 0x88
    /* 5E6CC 8006FEBC 0000A0AF */  sw         $zero, 0x0($sp)
    /* 5E6D0 8006FEC0 0400A0AF */  sw         $zero, 0x4($sp)
    /* 5E6D4 8006FEC4 0800A0AF */  sw         $zero, 0x8($sp)
    /* 5E6D8 8006FEC8 0000A0AF */  sw         $zero, 0x0($sp)
    /* 5E6DC 8006FECC 0400A0AF */  sw         $zero, 0x4($sp)
    /* 5E6E0 8006FED0 0800A0AF */  sw         $zero, 0x8($sp)
    /* 5E6E4 8006FED4 880083AC */  sw         $v1, 0x88($a0)
    /* 5E6E8 8006FED8 040040AC */  sw         $zero, 0x4($v0)
    /* 5E6EC 8006FEDC 0900A010 */  beqz       $a1, .L8006FF04
    /* 5E6F0 8006FEE0 080040AC */   sw        $zero, 0x8($v0)
    /* 5E6F4 8006FEE4 FFFF0224 */  addiu      $v0, $zero, -0x1
    /* 5E6F8 8006FEE8 F00082AC */  sw         $v0, 0xF0($a0)
    /* 5E6FC 8006FEEC 21180000 */  addu       $v1, $zero, $zero
    /* 5E700 8006FEF0 FFFF0524 */  addiu      $a1, $zero, -0x1
  .L8006FEF4:
    /* 5E704 8006FEF4 01006324 */  addiu      $v1, $v1, 0x1
    /* 5E708 8006FEF8 08006228 */  slti       $v0, $v1, 0x8
    /* 5E70C 8006FEFC FDFF4014 */  bnez       $v0, .L8006FEF4
    /* 5E710 8006FF00 140185AC */   sw        $a1, 0x114($a0)
  .L8006FF04:
    /* 5E714 8006FF04 0800E003 */  jr         $ra
    /* 5E718 8006FF08 1000BD27 */   addiu     $sp, $sp, 0x10
endlabel func_8006FE64
