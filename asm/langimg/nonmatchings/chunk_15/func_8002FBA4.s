nonmatching func_8002FBA4, 0x390

glabel func_8002FBA4
    /* 1E3B4 8002FBA4 21308000 */  addu       $a2, $a0, $zero
    /* 1E3B8 8002FBA8 A005C28C */  lw         $v0, 0x5A0($a2)
    /* 1E3BC 8002FBAC 00000000 */  nop
    /* 1E3C0 8002FBB0 2000438C */  lw         $v1, 0x20($v0)
    /* 1E3C4 8002FBB4 00000000 */  nop
    /* 1E3C8 8002FBB8 DC006010 */  beqz       $v1, .L8002FF2C
    /* 1E3CC 8002FBBC 00000000 */   nop
    /* 1E3D0 8002FBC0 5800C280 */  lb         $v0, 0x58($a2)
    /* 1E3D4 8002FBC4 00000000 */  nop
    /* 1E3D8 8002FBC8 D8004014 */  bnez       $v0, .L8002FF2C
    /* 1E3DC 8002FBCC 00000000 */   nop
    /* 1E3E0 8002FBD0 9802C284 */  lh         $v0, 0x298($a2)
    /* 1E3E4 8002FBD4 9004C38C */  lw         $v1, 0x490($a2)
    /* 1E3E8 8002FBD8 8C04C590 */  lbu        $a1, 0x48C($a2)
    /* 1E3EC 8002FBDC 4F01C480 */  lb         $a0, 0x14F($a2)
    /* 1E3F0 8002FBE0 21186200 */  addu       $v1, $v1, $v0
    /* 1E3F4 8002FBE4 9004C3AC */  sw         $v1, 0x490($a2)
    /* 1E3F8 8002FBE8 0B008010 */  beqz       $a0, .L8002FC18
    /* 1E3FC 8002FBEC 8D04C5A0 */   sb        $a1, 0x48D($a2)
    /* 1E400 8002FBF0 00160500 */  sll        $v0, $a1, 24
    /* 1E404 8002FBF4 04004010 */  beqz       $v0, .L8002FC08
    /* 1E408 8002FBF8 00080224 */   addiu     $v0, $zero, 0x800
    /* 1E40C 8002FBFC A804C2AC */  sw         $v0, 0x4A8($a2)
    /* 1E410 8002FC00 A404C2AC */  sw         $v0, 0x4A4($a2)
    /* 1E414 8002FC04 A004C0AC */  sw         $zero, 0x4A0($a2)
  .L8002FC08:
    /* 1E418 8002FC08 03000224 */  addiu      $v0, $zero, 0x3
    /* 1E41C 8002FC0C 8C04C2A0 */  sb         $v0, 0x48C($a2)
    /* 1E420 8002FC10 C0BF0008 */  j          .L8002FF00
    /* 1E424 8002FC14 9004C0AC */   sw        $zero, 0x490($a2)
  .L8002FC18:
    /* 1E428 8002FC18 00160500 */  sll        $v0, $a1, 24
    /* 1E42C 8002FC1C 03260200 */  sra        $a0, $v0, 24
    /* 1E430 8002FC20 03008010 */  beqz       $a0, .L8002FC30
    /* 1E434 8002FC24 03000224 */   addiu     $v0, $zero, 0x3
    /* 1E438 8002FC28 58008214 */  bne        $a0, $v0, .L8002FD8C
    /* 1E43C 8002FC2C 01000224 */   addiu     $v0, $zero, 0x1
  .L8002FC30:
    /* 1E440 8002FC30 03000224 */  addiu      $v0, $zero, 0x3
    /* 1E444 8002FC34 0C008214 */  bne        $a0, $v0, .L8002FC68
    /* 1E448 8002FC38 21280000 */   addu      $a1, $zero, $zero
    /* 1E44C 8002FC3C 5555023C */  lui        $v0, (0x55555556 >> 16)
    /* 1E450 8002FC40 9C03C38C */  lw         $v1, 0x39C($a2)
    /* 1E454 8002FC44 56554234 */  ori        $v0, $v0, (0x55555556 & 0xFFFF)
    /* 1E458 8002FC48 18006200 */  mult       $v1, $v0
    /* 1E45C 8002FC4C 01000524 */  addiu      $a1, $zero, 0x1
    /* 1E460 8002FC50 8C04C5A0 */  sb         $a1, 0x48C($a2)
    /* 1E464 8002FC54 C31F0300 */  sra        $v1, $v1, 31
    /* 1E468 8002FC58 10100000 */  mfhi       $v0
    /* 1E46C 8002FC5C 23104300 */  subu       $v0, $v0, $v1
    /* 1E470 8002FC60 5ABF0008 */  j          .L8002FD68
    /* 1E474 8002FC64 9804C2AC */   sw        $v0, 0x498($a2)
  .L8002FC68:
    /* 1E478 8002FC68 3F008014 */  bnez       $a0, .L8002FD68
    /* 1E47C 8002FC6C 91016228 */   slti      $v0, $v1, 0x191
    /* 1E480 8002FC70 3D004014 */  bnez       $v0, .L8002FD68
    /* 1E484 8002FC74 0100023C */   lui       $v0, (0x1E000 >> 16)
    /* 1E488 8002FC78 9C02C38C */  lw         $v1, 0x29C($a2)
    /* 1E48C 8002FC7C 00E04234 */  ori        $v0, $v0, (0x1E000 & 0xFFFF)
    /* 1E490 8002FC80 2A104300 */  slt        $v0, $v0, $v1
    /* 1E494 8002FC84 38004010 */  beqz       $v0, .L8002FD68
    /* 1E498 8002FC88 00000000 */   nop
    /* 1E49C 8002FC8C DF02C280 */  lb         $v0, 0x2DF($a2)
    /* 1E4A0 8002FC90 DF02C890 */  lbu        $t0, 0x2DF($a2)
    /* 1E4A4 8002FC94 05004010 */  beqz       $v0, .L8002FCAC
    /* 1E4A8 8002FC98 00000000 */   nop
    /* 1E4AC 8002FC9C E102C280 */  lb         $v0, 0x2E1($a2)
    /* 1E4B0 8002FCA0 00000000 */  nop
    /* 1E4B4 8002FCA4 09004010 */  beqz       $v0, .L8002FCCC
    /* 1E4B8 8002FCA8 00000000 */   nop
  .L8002FCAC:
    /* 1E4BC 8002FCAC 4A01C280 */  lb         $v0, 0x14A($a2)
    /* 1E4C0 8002FCB0 00000000 */  nop
    /* 1E4C4 8002FCB4 2C004010 */  beqz       $v0, .L8002FD68
    /* 1E4C8 8002FCB8 00000000 */   nop
    /* 1E4CC 8002FCBC DD02C280 */  lb         $v0, 0x2DD($a2)
    /* 1E4D0 8002FCC0 00000000 */  nop
    /* 1E4D4 8002FCC4 28004014 */  bnez       $v0, .L8002FD68
    /* 1E4D8 8002FCC8 00000000 */   nop
  .L8002FCCC:
    /* 1E4DC 8002FCCC 9C03C78C */  lw         $a3, 0x39C($a2)
    /* 1E4E0 8002FCD0 00000000 */  nop
    /* 1E4E4 8002FCD4 0200E104 */  bgez       $a3, .L8002FCE0
    /* 1E4E8 8002FCD8 2120E000 */   addu      $a0, $a3, $zero
    /* 1E4EC 8002FCDC 23200400 */  negu       $a0, $a0
  .L8002FCE0:
    /* 1E4F0 8002FCE0 34078228 */  slti       $v0, $a0, 0x734
    /* 1E4F4 8002FCE4 20004014 */  bnez       $v0, .L8002FD68
    /* 1E4F8 8002FCE8 00000000 */   nop
    /* 1E4FC 8002FCEC 03000011 */  beqz       $t0, .L8002FCFC
    /* 1E500 8002FCF0 9A098228 */   slti      $v0, $a0, 0x99A
    /* 1E504 8002FCF4 1C004010 */  beqz       $v0, .L8002FD68
    /* 1E508 8002FCF8 00000000 */   nop
  .L8002FCFC:
    /* 1E50C 8002FCFC 4A01C280 */  lb         $v0, 0x14A($a2)
    /* 1E510 8002FD00 00000000 */  nop
    /* 1E514 8002FD04 03004010 */  beqz       $v0, .L8002FD14
    /* 1E518 8002FD08 CD0C8228 */   slti      $v0, $a0, 0xCCD
    /* 1E51C 8002FD0C 16004010 */  beqz       $v0, .L8002FD68
    /* 1E520 8002FD10 00000000 */   nop
  .L8002FD14:
    /* 1E524 8002FD14 1801C28C */  lw         $v0, 0x118($a2)
    /* 1E528 8002FD18 00000000 */  nop
    /* 1E52C 8002FD1C 02004104 */  bgez       $v0, .L8002FD28
    /* 1E530 8002FD20 01000524 */   addiu     $a1, $zero, 0x1
    /* 1E534 8002FD24 FF0F4224 */  addiu      $v0, $v0, 0xFFF
  .L8002FD28:
    /* 1E538 8002FD28 03130200 */  sra        $v0, $v0, 12
    /* 1E53C 8002FD2C 1A006200 */  div        $zero, $v1, $v0
    /* 1E540 8002FD30 12100000 */  mflo       $v0
    /* 1E544 8002FD34 0500E018 */  blez       $a3, .L8002FD4C
    /* 1E548 8002FD38 23180200 */   negu      $v1, $v0
    /* 1E54C 8002FD3C 06004104 */  bgez       $v0, .L8002FD58
    /* 1E550 8002FD40 21184000 */   addu      $v1, $v0, $zero
    /* 1E554 8002FD44 56BF0008 */  j          .L8002FD58
    /* 1E558 8002FD48 03004324 */   addiu     $v1, $v0, 0x3
  .L8002FD4C:
    /* 1E55C 8002FD4C 02006104 */  bgez       $v1, .L8002FD58
    /* 1E560 8002FD50 00000000 */   nop
    /* 1E564 8002FD54 03006324 */  addiu      $v1, $v1, 0x3
  .L8002FD58:
    /* 1E568 8002FD58 83180300 */  sra        $v1, $v1, 2
    /* 1E56C 8002FD5C 01000224 */  addiu      $v0, $zero, 0x1
    /* 1E570 8002FD60 9804C3AC */  sw         $v1, 0x498($a2)
    /* 1E574 8002FD64 8C04C2A0 */  sb         $v0, 0x48C($a2)
  .L8002FD68:
    /* 1E578 8002FD68 6500A010 */  beqz       $a1, .L8002FF00
    /* 1E57C 8002FD6C 00080224 */   addiu     $v0, $zero, 0x800
    /* 1E580 8002FD70 660E0324 */  addiu      $v1, $zero, 0xE66
    /* 1E584 8002FD74 A804C2AC */  sw         $v0, 0x4A8($a2)
    /* 1E588 8002FD78 00100224 */  addiu      $v0, $zero, 0x1000
    /* 1E58C 8002FD7C 9004C0AC */  sw         $zero, 0x490($a2)
    /* 1E590 8002FD80 A404C3AC */  sw         $v1, 0x4A4($a2)
    /* 1E594 8002FD84 C0BF0008 */  j          .L8002FF00
    /* 1E598 8002FD88 A004C2AC */   sw        $v0, 0x4A0($a2)
  .L8002FD8C:
    /* 1E59C 8002FD8C 1A008214 */  bne        $a0, $v0, .L8002FDF8
    /* 1E5A0 8002FD90 02000224 */   addiu     $v0, $zero, 0x2
    /* 1E5A4 8002FD94 DF02C280 */  lb         $v0, 0x2DF($a2)
    /* 1E5A8 8002FD98 00000000 */  nop
    /* 1E5AC 8002FD9C 05004014 */  bnez       $v0, .L8002FDB4
    /* 1E5B0 8002FDA0 00000000 */   nop
    /* 1E5B4 8002FDA4 4A01C280 */  lb         $v0, 0x14A($a2)
    /* 1E5B8 8002FDA8 00000000 */  nop
    /* 1E5BC 8002FDAC 0B004010 */  beqz       $v0, .L8002FDDC
    /* 1E5C0 8002FDB0 02000224 */   addiu     $v0, $zero, 0x2
  .L8002FDB4:
    /* 1E5C4 8002FDB4 9C04C28C */  lw         $v0, 0x49C($a2)
    /* 1E5C8 8002FDB8 A004C38C */  lw         $v1, 0x4A0($a2)
    /* 1E5CC 8002FDBC 00000000 */  nop
    /* 1E5D0 8002FDC0 23104300 */  subu       $v0, $v0, $v1
    /* 1E5D4 8002FDC4 02004104 */  bgez       $v0, .L8002FDD0
    /* 1E5D8 8002FDC8 00000000 */   nop
    /* 1E5DC 8002FDCC 23100200 */  negu       $v0, $v0
  .L8002FDD0:
    /* 1E5E0 8002FDD0 10004228 */  slti       $v0, $v0, 0x10
    /* 1E5E4 8002FDD4 4A004010 */  beqz       $v0, .L8002FF00
    /* 1E5E8 8002FDD8 02000224 */   addiu     $v0, $zero, 0x2
  .L8002FDDC:
    /* 1E5EC 8002FDDC AA0A0324 */  addiu      $v1, $zero, 0xAAA
    /* 1E5F0 8002FDE0 8C04C2A0 */  sb         $v0, 0x48C($a2)
    /* 1E5F4 8002FDE4 990D0224 */  addiu      $v0, $zero, 0xD99
    /* 1E5F8 8002FDE8 9004C0AC */  sw         $zero, 0x490($a2)
    /* 1E5FC 8002FDEC A804C3AC */  sw         $v1, 0x4A8($a2)
    /* 1E600 8002FDF0 BFBF0008 */  j          .L8002FEFC
    /* 1E604 8002FDF4 A404C2AC */   sw        $v0, 0x4A4($a2)
  .L8002FDF8:
    /* 1E608 8002FDF8 41008214 */  bne        $a0, $v0, .L8002FF00
    /* 1E60C 8002FDFC 00000000 */   nop
    /* 1E610 8002FE00 9C04C28C */  lw         $v0, 0x49C($a2)
    /* 1E614 8002FE04 A004C38C */  lw         $v1, 0x4A0($a2)
    /* 1E618 8002FE08 00000000 */  nop
    /* 1E61C 8002FE0C 23104300 */  subu       $v0, $v0, $v1
    /* 1E620 8002FE10 02004104 */  bgez       $v0, .L8002FE1C
    /* 1E624 8002FE14 00000000 */   nop
    /* 1E628 8002FE18 23100200 */  negu       $v0, $v0
  .L8002FE1C:
    /* 1E62C 8002FE1C 10004228 */  slti       $v0, $v0, 0x10
    /* 1E630 8002FE20 37004010 */  beqz       $v0, .L8002FF00
    /* 1E634 8002FE24 00000000 */   nop
    /* 1E638 8002FE28 DF02C280 */  lb         $v0, 0x2DF($a2)
    /* 1E63C 8002FE2C 00000000 */  nop
    /* 1E640 8002FE30 05004014 */  bnez       $v0, .L8002FE48
    /* 1E644 8002FE34 21380000 */   addu      $a3, $zero, $zero
    /* 1E648 8002FE38 4A01C280 */  lb         $v0, 0x14A($a2)
    /* 1E64C 8002FE3C 00000000 */  nop
    /* 1E650 8002FE40 21004010 */  beqz       $v0, .L8002FEC8
    /* 1E654 8002FE44 00000000 */   nop
  .L8002FE48:
    /* 1E658 8002FE48 01000724 */  addiu      $a3, $zero, 0x1
    /* 1E65C 8002FE4C 9804C28C */  lw         $v0, 0x498($a2)
    /* 1E660 8002FE50 1801C48C */  lw         $a0, 0x118($a2)
    /* 1E664 8002FE54 C21F0200 */  srl        $v1, $v0, 31
    /* 1E668 8002FE58 21104300 */  addu       $v0, $v0, $v1
    /* 1E66C 8002FE5C 43280200 */  sra        $a1, $v0, 1
    /* 1E670 8002FE60 02008104 */  bgez       $a0, .L8002FE6C
    /* 1E674 8002FE64 9804C5AC */   sw        $a1, 0x498($a2)
    /* 1E678 8002FE68 FF0F8424 */  addiu      $a0, $a0, 0xFFF
  .L8002FE6C:
    /* 1E67C 8002FE6C 9C02C38C */  lw         $v1, 0x29C($a2)
    /* 1E680 8002FE70 03130400 */  sra        $v0, $a0, 12
    /* 1E684 8002FE74 1A006200 */  div        $zero, $v1, $v0
    /* 1E688 8002FE78 12100000 */  mflo       $v0
    /* 1E68C 8002FE7C 00000000 */  nop
    /* 1E690 8002FE80 03004104 */  bgez       $v0, .L8002FE90
    /* 1E694 8002FE84 83180200 */   sra       $v1, $v0, 2
    /* 1E698 8002FE88 03004224 */  addiu      $v0, $v0, 0x3
    /* 1E69C 8002FE8C 83180200 */  sra        $v1, $v0, 2
  .L8002FE90:
    /* 1E6A0 8002FE90 23200300 */  negu       $a0, $v1
    /* 1E6A4 8002FE94 2A10A400 */  slt        $v0, $a1, $a0
    /* 1E6A8 8002FE98 04004014 */  bnez       $v0, .L8002FEAC
    /* 1E6AC 8002FE9C 2A106500 */   slt       $v0, $v1, $a1
    /* 1E6B0 8002FEA0 02004014 */  bnez       $v0, .L8002FEAC
    /* 1E6B4 8002FEA4 21206000 */   addu      $a0, $v1, $zero
    /* 1E6B8 8002FEA8 2120A000 */  addu       $a0, $a1, $zero
  .L8002FEAC:
    /* 1E6BC 8002FEAC 02008104 */  bgez       $a0, .L8002FEB8
    /* 1E6C0 8002FEB0 21108000 */   addu      $v0, $a0, $zero
    /* 1E6C4 8002FEB4 23100200 */  negu       $v0, $v0
  .L8002FEB8:
    /* 1E6C8 8002FEB8 80004228 */  slti       $v0, $v0, 0x80
    /* 1E6CC 8002FEBC 02004010 */  beqz       $v0, .L8002FEC8
    /* 1E6D0 8002FEC0 9804C4AC */   sw        $a0, 0x498($a2)
    /* 1E6D4 8002FEC4 21380000 */  addu       $a3, $zero, $zero
  .L8002FEC8:
    /* 1E6D8 8002FEC8 0A00E010 */  beqz       $a3, .L8002FEF4
    /* 1E6DC 8002FECC 01000224 */   addiu     $v0, $zero, 0x1
    /* 1E6E0 8002FED0 00080324 */  addiu      $v1, $zero, 0x800
    /* 1E6E4 8002FED4 8C04C2A0 */  sb         $v0, 0x48C($a2)
    /* 1E6E8 8002FED8 660E0224 */  addiu      $v0, $zero, 0xE66
    /* 1E6EC 8002FEDC A804C3AC */  sw         $v1, 0x4A8($a2)
    /* 1E6F0 8002FEE0 00100324 */  addiu      $v1, $zero, 0x1000
    /* 1E6F4 8002FEE4 9004C0AC */  sw         $zero, 0x490($a2)
    /* 1E6F8 8002FEE8 A404C2AC */  sw         $v0, 0x4A4($a2)
    /* 1E6FC 8002FEEC C0BF0008 */  j          .L8002FF00
    /* 1E700 8002FEF0 A004C3AC */   sw        $v1, 0x4A0($a2)
  .L8002FEF4:
    /* 1E704 8002FEF4 8C04C0A0 */  sb         $zero, 0x48C($a2)
    /* 1E708 8002FEF8 9004C0AC */  sw         $zero, 0x490($a2)
  .L8002FEFC:
    /* 1E70C 8002FEFC A004C0AC */  sw         $zero, 0x4A0($a2)
  .L8002FF00:
    /* 1E710 8002FF00 8C04C380 */  lb         $v1, 0x48C($a2)
    /* 1E714 8002FF04 8D04C280 */  lb         $v0, 0x48D($a2)
    /* 1E718 8002FF08 00000000 */  nop
    /* 1E71C 8002FF0C 03006210 */  beq        $v1, $v0, .L8002FF1C
    /* 1E720 8002FF10 00000000 */   nop
    /* 1E724 8002FF14 0800E003 */  jr         $ra
    /* 1E728 8002FF18 8E04C0A4 */   sh        $zero, 0x48E($a2)
  .L8002FF1C:
    /* 1E72C 8002FF1C 8E04C294 */  lhu        $v0, 0x48E($a2)
    /* 1E730 8002FF20 00000000 */  nop
    /* 1E734 8002FF24 01004224 */  addiu      $v0, $v0, 0x1
    /* 1E738 8002FF28 8E04C2A4 */  sh         $v0, 0x48E($a2)
  .L8002FF2C:
    /* 1E73C 8002FF2C 0800E003 */  jr         $ra
    /* 1E740 8002FF30 00000000 */   nop
endlabel func_8002FBA4
