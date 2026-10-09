nonmatching func_800B1D44, 0xD8

glabel func_800B1D44
    /* A0554 800B1D44 0C80033C */  lui        $v1, %hi(D_800C3CC8)
    /* A0558 800B1D48 C83C638C */  lw         $v1, %lo(D_800C3CC8)($v1)
    /* A055C 800B1D4C 0C80023C */  lui        $v0, %hi(D_800C3CD8)
    /* A0560 800B1D50 D83C428C */  lw         $v0, %lo(D_800C3CD8)($v0)
    /* A0564 800B1D54 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* A0568 800B1D58 1000B0AF */  sw         $s0, 0x10($sp)
    /* A056C 800B1D5C 21808000 */  addu       $s0, $a0, $zero
    /* A0570 800B1D60 10006214 */  bne        $v1, $v0, .L800B1DA4
    /* A0574 800B1D64 1400BFAF */   sw        $ra, 0x14($sp)
    /* A0578 800B1D68 0C80023C */  lui        $v0, %hi(D_800C3CC4)
    /* A057C 800B1D6C C43C428C */  lw         $v0, %lo(D_800C3CC4)($v0)
    /* A0580 800B1D70 00000000 */  nop
    /* A0584 800B1D74 0B004010 */  beqz       $v0, .L800B1DA4
    /* A0588 800B1D78 00000000 */   nop
    /* A058C 800B1D7C 0C80023C */  lui        $v0, %hi(D_800C3CB8)
    /* A0590 800B1D80 B83C428C */  lw         $v0, %lo(D_800C3CB8)($v0)
    /* A0594 800B1D84 00000000 */  nop
    /* A0598 800B1D88 09F84000 */  jalr       $v0
    /* A059C 800B1D8C 00000000 */   nop
    /* A05A0 800B1D90 0C80023C */  lui        $v0, %hi(D_800C3CB4)
    /* A05A4 800B1D94 B43C428C */  lw         $v0, %lo(D_800C3CB4)($v0)
    /* A05A8 800B1D98 00000000 */  nop
    /* A05AC 800B1D9C 09F84000 */  jalr       $v0
    /* A05B0 800B1DA0 00000000 */   nop
  .L800B1DA4:
    /* A05B4 800B1DA4 0C80023C */  lui        $v0, %hi(D_800C3D08)
    /* A05B8 800B1DA8 083D428C */  lw         $v0, %lo(D_800C3D08)($v0)
    /* A05BC 800B1DAC 00000000 */  nop
    /* A05C0 800B1DB0 0D004010 */  beqz       $v0, .L800B1DE8
    /* A05C4 800B1DB4 00000000 */   nop
    /* A05C8 800B1DB8 0C00048E */  lw         $a0, 0xC($s0)
    /* A05CC 800B1DBC 0C80023C */  lui        $v0, %hi(D_800C3CA0)
    /* A05D0 800B1DC0 A03C428C */  lw         $v0, %lo(D_800C3CA0)($v0)
    /* A05D4 800B1DC4 00000000 */  nop
    /* A05D8 800B1DC8 09F84000 */  jalr       $v0
    /* A05DC 800B1DCC 00000000 */   nop
    /* A05E0 800B1DD0 0C00048E */  lw         $a0, 0xC($s0)
    /* A05E4 800B1DD4 0C80023C */  lui        $v0, %hi(D_800C3CA0)
    /* A05E8 800B1DD8 A03C428C */  lw         $v0, %lo(D_800C3CA0)($v0)
    /* A05EC 800B1DDC 00000000 */  nop
    /* A05F0 800B1DE0 09F84000 */  jalr       $v0
    /* A05F4 800B1DE4 F0008424 */   addiu     $a0, $a0, 0xF0
  .L800B1DE8:
    /* A05F8 800B1DE8 36000292 */  lbu        $v0, 0x36($s0)
    /* A05FC 800B1DEC 00000000 */  nop
    /* A0600 800B1DF0 03004014 */  bnez       $v0, .L800B1E00
    /* A0604 800B1DF4 21200002 */   addu      $a0, $s0, $zero
    /* A0608 800B1DF8 81C70208 */  j          .L800B1E04
    /* A060C 800B1DFC 42000524 */   addiu     $a1, $zero, 0x42
  .L800B1E00:
    /* A0610 800B1E00 36000592 */  lbu        $a1, 0x36($s0)
  .L800B1E04:
    /* A0614 800B1E04 2FC4020C */  jal        func_800B10BC
    /* A0618 800B1E08 00000000 */   nop
    /* A061C 800B1E0C 1400BF8F */  lw         $ra, 0x14($sp)
    /* A0620 800B1E10 1000B08F */  lw         $s0, 0x10($sp)
    /* A0624 800B1E14 0800E003 */  jr         $ra
    /* A0628 800B1E18 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_800B1D44
