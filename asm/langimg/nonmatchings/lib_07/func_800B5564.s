nonmatching func_800B5564, 0x14C

glabel func_800B5564
    /* A3D74 800B5564 38008010 */  beqz       $a0, .L800B5648
    /* A3D78 800B5568 F8FF8424 */   addiu     $a0, $a0, -0x8
    /* A3D7C 800B556C 0400858C */  lw         $a1, 0x4($a0)
    /* A3D80 800B5570 FEFF0224 */  addiu      $v0, $zero, -0x2
    /* A3D84 800B5574 2430A200 */  and        $a2, $a1, $v0
    /* A3D88 800B5578 0E80023C */  lui        $v0, %hi(D_800DE6F8)
    /* A3D8C 800B557C F8E64724 */  addiu      $a3, $v0, %lo(D_800DE6F8)
    /* A3D90 800B5580 0C00E28C */  lw         $v0, 0xC($a3)
    /* A3D94 800B5584 0800E38C */  lw         $v1, 0x8($a3)
    /* A3D98 800B5588 21104600 */  addu       $v0, $v0, $a2
    /* A3D9C 800B558C 0C00E2AC */  sw         $v0, 0xC($a3)
    /* A3DA0 800B5590 1000E28C */  lw         $v0, 0x10($a3)
    /* A3DA4 800B5594 23186600 */  subu       $v1, $v1, $a2
    /* A3DA8 800B5598 0800E3AC */  sw         $v1, 0x8($a3)
    /* A3DAC 800B559C 1400E38C */  lw         $v1, 0x14($a3)
    /* A3DB0 800B55A0 FFFF4224 */  addiu      $v0, $v0, -0x1
    /* A3DB4 800B55A4 01006324 */  addiu      $v1, $v1, 0x1
    /* A3DB8 800B55A8 1000E2AC */  sw         $v0, 0x10($a3)
    /* A3DBC 800B55AC 0200A230 */  andi       $v0, $a1, 0x2
    /* A3DC0 800B55B0 0F004014 */  bnez       $v0, .L800B55F0
    /* A3DC4 800B55B4 1400E3AC */   sw        $v1, 0x14($a3)
    /* A3DC8 800B55B8 21108600 */  addu       $v0, $a0, $a2
    /* A3DCC 800B55BC 0400458C */  lw         $a1, 0x4($v0)
    /* A3DD0 800B55C0 00000000 */  nop
    /* A3DD4 800B55C4 0100A230 */  andi       $v0, $a1, 0x1
    /* A3DD8 800B55C8 09004014 */  bnez       $v0, .L800B55F0
    /* A3DDC 800B55CC 0200A230 */   andi      $v0, $a1, 0x2
    /* A3DE0 800B55D0 03004014 */  bnez       $v0, .L800B55E0
    /* A3DE4 800B55D4 2130C500 */   addu      $a2, $a2, $a1
    /* A3DE8 800B55D8 21108600 */  addu       $v0, $a0, $a2
    /* A3DEC 800B55DC 000044AC */  sw         $a0, 0x0($v0)
  .L800B55E0:
    /* A3DF0 800B55E0 1400E28C */  lw         $v0, 0x14($a3)
    /* A3DF4 800B55E4 00000000 */  nop
    /* A3DF8 800B55E8 FFFF4224 */  addiu      $v0, $v0, -0x1
    /* A3DFC 800B55EC 1400E2AC */  sw         $v0, 0x14($a3)
  .L800B55F0:
    /* A3E00 800B55F0 0000838C */  lw         $v1, 0x0($a0)
    /* A3E04 800B55F4 00000000 */  nop
    /* A3E08 800B55F8 13006010 */  beqz       $v1, .L800B5648
    /* A3E0C 800B55FC 040086AC */   sw        $a2, 0x4($a0)
    /* A3E10 800B5600 0400658C */  lw         $a1, 0x4($v1)
    /* A3E14 800B5604 00000000 */  nop
    /* A3E18 800B5608 0100A230 */  andi       $v0, $a1, 0x1
    /* A3E1C 800B560C 0F004014 */  bnez       $v0, .L800B564C
    /* A3E20 800B5610 0E80023C */   lui       $v0, %hi(D_800DE6F8)
    /* A3E24 800B5614 0200C230 */  andi       $v0, $a2, 0x2
    /* A3E28 800B5618 04004014 */  bnez       $v0, .L800B562C
    /* A3E2C 800B561C 2110C500 */   addu      $v0, $a2, $a1
    /* A3E30 800B5620 21108600 */  addu       $v0, $a0, $a2
    /* A3E34 800B5624 000043AC */  sw         $v1, 0x0($v0)
    /* A3E38 800B5628 2110C500 */  addu       $v0, $a2, $a1
  .L800B562C:
    /* A3E3C 800B562C 040062AC */  sw         $v0, 0x4($v1)
    /* A3E40 800B5630 0E80033C */  lui        $v1, %hi(D_800DE6F8)
    /* A3E44 800B5634 F8E66324 */  addiu      $v1, $v1, %lo(D_800DE6F8)
    /* A3E48 800B5638 1400628C */  lw         $v0, 0x14($v1)
    /* A3E4C 800B563C 00000000 */  nop
    /* A3E50 800B5640 FFFF4224 */  addiu      $v0, $v0, -0x1
    /* A3E54 800B5644 140062AC */  sw         $v0, 0x14($v1)
  .L800B5648:
    /* A3E58 800B5648 0E80023C */  lui        $v0, %hi(D_800DE6F8)
  .L800B564C:
    /* A3E5C 800B564C F8E64524 */  addiu      $a1, $v0, %lo(D_800DE6F8)
    /* A3E60 800B5650 0800A38C */  lw         $v1, 0x8($a1)
    /* A3E64 800B5654 1800A48C */  lw         $a0, 0x18($a1)
    /* A3E68 800B5658 00000000 */  nop
    /* A3E6C 800B565C 2B106400 */  sltu       $v0, $v1, $a0
    /* A3E70 800B5660 02004010 */  beqz       $v0, .L800B566C
    /* A3E74 800B5664 00000000 */   nop
    /* A3E78 800B5668 21188000 */  addu       $v1, $a0, $zero
  .L800B566C:
    /* A3E7C 800B566C 1400A48C */  lw         $a0, 0x14($a1)
    /* A3E80 800B5670 1C00A68C */  lw         $a2, 0x1C($a1)
    /* A3E84 800B5674 00000000 */  nop
    /* A3E88 800B5678 2B108600 */  sltu       $v0, $a0, $a2
    /* A3E8C 800B567C 02004010 */  beqz       $v0, .L800B5688
    /* A3E90 800B5680 1800A3AC */   sw        $v1, 0x18($a1)
    /* A3E94 800B5684 2120C000 */  addu       $a0, $a2, $zero
  .L800B5688:
    /* A3E98 800B5688 1000A38C */  lw         $v1, 0x10($a1)
    /* A3E9C 800B568C 2000A68C */  lw         $a2, 0x20($a1)
    /* A3EA0 800B5690 00000000 */  nop
    /* A3EA4 800B5694 2B106600 */  sltu       $v0, $v1, $a2
    /* A3EA8 800B5698 02004010 */  beqz       $v0, .L800B56A4
    /* A3EAC 800B569C 1C00A4AC */   sw        $a0, 0x1C($a1)
    /* A3EB0 800B56A0 2118C000 */  addu       $v1, $a2, $zero
  .L800B56A4:
    /* A3EB4 800B56A4 2000A3AC */  sw         $v1, 0x20($a1)
    /* A3EB8 800B56A8 0800E003 */  jr         $ra
    /* A3EBC 800B56AC 01000224 */   addiu     $v0, $zero, 0x1
endlabel func_800B5564
