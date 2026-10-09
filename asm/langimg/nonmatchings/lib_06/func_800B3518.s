nonmatching func_800B3518, 0x280

glabel func_800B3518
    /* A1D28 800B3518 0000A4AF */  sw         $a0, 0x0($sp)
    /* A1D2C 800B351C 0400A5AF */  sw         $a1, 0x4($sp)
    /* A1D30 800B3520 0800A6AF */  sw         $a2, 0x8($sp)
    /* A1D34 800B3524 0C00A7AF */  sw         $a3, 0xC($sp)
    /* A1D38 800B3528 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* A1D3C 800B352C 1000B0AF */  sw         $s0, 0x10($sp)
    /* A1D40 800B3530 1C00B027 */  addiu      $s0, $sp, 0x1C
    /* A1D44 800B3534 01000624 */  addiu      $a2, $zero, 0x1
    /* A1D48 800B3538 1400BFAF */  sw         $ra, 0x14($sp)
    /* A1D4C 800B353C 19008610 */  beq        $a0, $a2, .L800B35A4
    /* A1D50 800B3540 1800A4AF */   sw        $a0, 0x18($sp)
    /* A1D54 800B3544 02008228 */  slti       $v0, $a0, 0x2
    /* A1D58 800B3548 05004010 */  beqz       $v0, .L800B3560
    /* A1D5C 800B354C 02000224 */   addiu     $v0, $zero, 0x2
    /* A1D60 800B3550 2F008010 */  beqz       $a0, .L800B3610
    /* A1D64 800B3554 21100000 */   addu      $v0, $zero, $zero
    /* A1D68 800B3558 E2CD0208 */  j          .L800B3788
    /* A1D6C 800B355C 00000000 */   nop
  .L800B3560:
    /* A1D70 800B3560 05008210 */  beq        $a0, $v0, .L800B3578
    /* A1D74 800B3564 03000224 */   addiu     $v0, $zero, 0x3
    /* A1D78 800B3568 43008210 */  beq        $a0, $v0, .L800B3678
    /* A1D7C 800B356C 21100000 */   addu      $v0, $zero, $zero
    /* A1D80 800B3570 E2CD0208 */  j          .L800B3788
    /* A1D84 800B3574 00000000 */   nop
  .L800B3578:
    /* A1D88 800B3578 1C00A48F */  lw         $a0, 0x1C($sp)
    /* A1D8C 800B357C 0C80023C */  lui        $v0, %hi(D_800C3DD8)
    /* A1D90 800B3580 D83D428C */  lw         $v0, %lo(D_800C3DD8)($v0)
    /* A1D94 800B3584 0C80033C */  lui        $v1, %hi(D_800C3DB0)
    /* A1D98 800B3588 B03D638C */  lw         $v1, %lo(D_800C3DB0)($v1)
    /* A1D9C 800B358C 06104400 */  srlv       $v0, $a0, $v0
    /* A1DA0 800B3590 0C80013C */  lui        $at, %hi(D_800C3DC8)
    /* A1DA4 800B3594 C83D22A4 */  sh         $v0, %lo(D_800C3DC8)($at)
    /* A1DA8 800B3598 A60162A4 */  sh         $v0, 0x1A6($v1)
    /* A1DAC 800B359C E2CD0208 */  j          .L800B3788
    /* A1DB0 800B35A0 21100000 */   addu      $v0, $zero, $zero
  .L800B35A4:
    /* A1DB4 800B35A4 0C80053C */  lui        $a1, %hi(D_800C3DB0)
    /* A1DB8 800B35A8 B03DA58C */  lw         $a1, %lo(D_800C3DB0)($a1)
    /* A1DBC 800B35AC 0C80043C */  lui        $a0, %hi(D_800C3DC8)
    /* A1DC0 800B35B0 C83D8494 */  lhu        $a0, %lo(D_800C3DC8)($a0)
    /* A1DC4 800B35B4 A601A294 */  lhu        $v0, 0x1A6($a1)
    /* A1DC8 800B35B8 0C80013C */  lui        $at, %hi(D_800C3E00)
    /* A1DCC 800B35BC 003E20AC */  sw         $zero, %lo(D_800C3E00)($at)
    /* A1DD0 800B35C0 09004410 */  beq        $v0, $a0, .L800B35E8
    /* A1DD4 800B35C4 21180000 */   addu      $v1, $zero, $zero
    /* A1DD8 800B35C8 01006324 */  addiu      $v1, $v1, 0x1
  .L800B35CC:
    /* A1DDC 800B35CC 010F622C */  sltiu      $v0, $v1, 0xF01
    /* A1DE0 800B35D0 6D004010 */  beqz       $v0, .L800B3788
    /* A1DE4 800B35D4 FEFF0224 */   addiu     $v0, $zero, -0x2
    /* A1DE8 800B35D8 A601A294 */  lhu        $v0, 0x1A6($a1)
    /* A1DEC 800B35DC 00000000 */  nop
    /* A1DF0 800B35E0 FAFF4414 */  bne        $v0, $a0, .L800B35CC
    /* A1DF4 800B35E4 01006324 */   addiu     $v1, $v1, 0x1
  .L800B35E8:
    /* A1DF8 800B35E8 0C80033C */  lui        $v1, %hi(D_800C3DB0)
    /* A1DFC 800B35EC B03D638C */  lw         $v1, %lo(D_800C3DB0)($v1)
    /* A1E00 800B35F0 00000000 */  nop
    /* A1E04 800B35F4 AA016294 */  lhu        $v0, 0x1AA($v1)
    /* A1E08 800B35F8 00000000 */  nop
    /* A1E0C 800B35FC CFFF4230 */  andi       $v0, $v0, 0xFFCF
    /* A1E10 800B3600 20004234 */  ori        $v0, $v0, 0x20
    /* A1E14 800B3604 AA0162A4 */  sh         $v0, 0x1AA($v1)
    /* A1E18 800B3608 E2CD0208 */  j          .L800B3788
    /* A1E1C 800B360C 21100000 */   addu      $v0, $zero, $zero
  .L800B3610:
    /* A1E20 800B3610 0C80053C */  lui        $a1, %hi(D_800C3DB0)
    /* A1E24 800B3614 B03DA58C */  lw         $a1, %lo(D_800C3DB0)($a1)
    /* A1E28 800B3618 0C80043C */  lui        $a0, %hi(D_800C3DC8)
    /* A1E2C 800B361C C83D8494 */  lhu        $a0, %lo(D_800C3DC8)($a0)
    /* A1E30 800B3620 A601A294 */  lhu        $v0, 0x1A6($a1)
    /* A1E34 800B3624 0C80013C */  lui        $at, %hi(D_800C3E00)
    /* A1E38 800B3628 003E26AC */  sw         $a2, %lo(D_800C3E00)($at)
    /* A1E3C 800B362C 09004410 */  beq        $v0, $a0, .L800B3654
    /* A1E40 800B3630 21180000 */   addu      $v1, $zero, $zero
    /* A1E44 800B3634 01006324 */  addiu      $v1, $v1, 0x1
  .L800B3638:
    /* A1E48 800B3638 010F622C */  sltiu      $v0, $v1, 0xF01
    /* A1E4C 800B363C 52004010 */  beqz       $v0, .L800B3788
    /* A1E50 800B3640 FEFF0224 */   addiu     $v0, $zero, -0x2
    /* A1E54 800B3644 A601A294 */  lhu        $v0, 0x1A6($a1)
    /* A1E58 800B3648 00000000 */  nop
    /* A1E5C 800B364C FAFF4414 */  bne        $v0, $a0, .L800B3638
    /* A1E60 800B3650 01006324 */   addiu     $v1, $v1, 0x1
  .L800B3654:
    /* A1E64 800B3654 0C80033C */  lui        $v1, %hi(D_800C3DB0)
    /* A1E68 800B3658 B03D638C */  lw         $v1, %lo(D_800C3DB0)($v1)
    /* A1E6C 800B365C 00000000 */  nop
    /* A1E70 800B3660 AA016294 */  lhu        $v0, 0x1AA($v1)
    /* A1E74 800B3664 00000000 */  nop
    /* A1E78 800B3668 30004234 */  ori        $v0, $v0, 0x30
    /* A1E7C 800B366C AA0162A4 */  sh         $v0, 0x1AA($v1)
    /* A1E80 800B3670 E2CD0208 */  j          .L800B3788
    /* A1E84 800B3674 21100000 */   addu      $v0, $zero, $zero
  .L800B3678:
    /* A1E88 800B3678 0C80023C */  lui        $v0, %hi(D_800C3E00)
    /* A1E8C 800B367C 003E428C */  lw         $v0, %lo(D_800C3E00)($v0)
    /* A1E90 800B3680 00000000 */  nop
    /* A1E94 800B3684 02004614 */  bne        $v0, $a2, .L800B3690
    /* A1E98 800B3688 20000424 */   addiu     $a0, $zero, 0x20
    /* A1E9C 800B368C 30000424 */  addiu      $a0, $zero, 0x30
  .L800B3690:
    /* A1EA0 800B3690 0C80053C */  lui        $a1, %hi(D_800C3DB0)
    /* A1EA4 800B3694 B03DA58C */  lw         $a1, %lo(D_800C3DB0)($a1)
    /* A1EA8 800B3698 21180000 */  addu       $v1, $zero, $zero
    /* A1EAC 800B369C AA01A294 */  lhu        $v0, 0x1AA($a1)
    /* A1EB0 800B36A0 FFFF8430 */  andi       $a0, $a0, 0xFFFF
    /* A1EB4 800B36A4 30004230 */  andi       $v0, $v0, 0x30
    /* A1EB8 800B36A8 09004410 */  beq        $v0, $a0, .L800B36D0
    /* A1EBC 800B36AC 01006324 */   addiu     $v1, $v1, 0x1
  .L800B36B0:
    /* A1EC0 800B36B0 010F622C */  sltiu      $v0, $v1, 0xF01
    /* A1EC4 800B36B4 34004010 */  beqz       $v0, .L800B3788
    /* A1EC8 800B36B8 FEFF0224 */   addiu     $v0, $zero, -0x2
    /* A1ECC 800B36BC AA01A294 */  lhu        $v0, 0x1AA($a1)
    /* A1ED0 800B36C0 00000000 */  nop
    /* A1ED4 800B36C4 30004230 */  andi       $v0, $v0, 0x30
    /* A1ED8 800B36C8 F9FF4414 */  bne        $v0, $a0, .L800B36B0
    /* A1EDC 800B36CC 01006324 */   addiu     $v1, $v1, 0x1
  .L800B36D0:
    /* A1EE0 800B36D0 0C80033C */  lui        $v1, %hi(D_800C3E00)
    /* A1EE4 800B36D4 003E638C */  lw         $v1, %lo(D_800C3E00)($v1)
    /* A1EE8 800B36D8 01000224 */  addiu      $v0, $zero, 0x1
    /* A1EEC 800B36DC 05006214 */  bne        $v1, $v0, .L800B36F4
    /* A1EF0 800B36E0 00000000 */   nop
    /* A1EF4 800B36E4 61CE020C */  jal        func_800B3984
    /* A1EF8 800B36E8 04001026 */   addiu     $s0, $s0, 0x4
    /* A1EFC 800B36EC C0CD0208 */  j          .L800B3700
    /* A1F00 800B36F0 0001063C */   lui       $a2, (0x1000201 >> 16)
  .L800B36F4:
    /* A1F04 800B36F4 57CE020C */  jal        func_800B395C
    /* A1F08 800B36F8 04001026 */   addiu     $s0, $s0, 0x4
    /* A1F0C 800B36FC 0001063C */  lui        $a2, (0x1000201 >> 16)
  .L800B3700:
    /* A1F10 800B3700 FCFF048E */  lw         $a0, -0x4($s0)
    /* A1F14 800B3704 0C80013C */  lui        $at, %hi(D_800C3E04)
    /* A1F18 800B3708 043E24AC */  sw         $a0, %lo(D_800C3E04)($at)
    /* A1F1C 800B370C 0000048E */  lw         $a0, 0x0($s0)
    /* A1F20 800B3710 0C80053C */  lui        $a1, %hi(D_800C3DB4)
    /* A1F24 800B3714 B43DA58C */  lw         $a1, %lo(D_800C3DB4)($a1)
    /* A1F28 800B3718 82190400 */  srl        $v1, $a0, 6
    /* A1F2C 800B371C 3F008230 */  andi       $v0, $a0, 0x3F
    /* A1F30 800B3720 2B100200 */  sltu       $v0, $zero, $v0
    /* A1F34 800B3724 0C80043C */  lui        $a0, %hi(D_800C3E04)
    /* A1F38 800B3728 043E848C */  lw         $a0, %lo(D_800C3E04)($a0)
    /* A1F3C 800B372C 21186200 */  addu       $v1, $v1, $v0
    /* A1F40 800B3730 0C80013C */  lui        $at, %hi(D_800C3E08)
    /* A1F44 800B3734 083E23AC */  sw         $v1, %lo(D_800C3E08)($at)
    /* A1F48 800B3738 0000A4AC */  sw         $a0, 0x0($a1)
    /* A1F4C 800B373C 0C80023C */  lui        $v0, %hi(D_800C3E08)
    /* A1F50 800B3740 083E428C */  lw         $v0, %lo(D_800C3E08)($v0)
    /* A1F54 800B3744 0C80033C */  lui        $v1, %hi(D_800C3DB8)
    /* A1F58 800B3748 B83D638C */  lw         $v1, %lo(D_800C3DB8)($v1)
    /* A1F5C 800B374C 00140200 */  sll        $v0, $v0, 16
    /* A1F60 800B3750 10004234 */  ori        $v0, $v0, 0x10
    /* A1F64 800B3754 000062AC */  sw         $v0, 0x0($v1)
    /* A1F68 800B3758 0C80033C */  lui        $v1, %hi(D_800C3E00)
    /* A1F6C 800B375C 003E638C */  lw         $v1, %lo(D_800C3E00)($v1)
    /* A1F70 800B3760 01000224 */  addiu      $v0, $zero, 0x1
    /* A1F74 800B3764 03006214 */  bne        $v1, $v0, .L800B3774
    /* A1F78 800B3768 0102C634 */   ori       $a2, $a2, (0x1000201 & 0xFFFF)
    /* A1F7C 800B376C 0001063C */  lui        $a2, (0x1000200 >> 16)
    /* A1F80 800B3770 0002C634 */  ori        $a2, $a2, (0x1000200 & 0xFFFF)
  .L800B3774:
    /* A1F84 800B3774 0C80023C */  lui        $v0, %hi(D_800C3DBC)
    /* A1F88 800B3778 BC3D428C */  lw         $v0, %lo(D_800C3DBC)($v0)
    /* A1F8C 800B377C 00000000 */  nop
    /* A1F90 800B3780 000046AC */  sw         $a2, 0x0($v0)
    /* A1F94 800B3784 21100000 */  addu       $v0, $zero, $zero
  .L800B3788:
    /* A1F98 800B3788 1400BF8F */  lw         $ra, 0x14($sp)
    /* A1F9C 800B378C 1000B08F */  lw         $s0, 0x10($sp)
    /* A1FA0 800B3790 0800E003 */  jr         $ra
    /* A1FA4 800B3794 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_800B3518
