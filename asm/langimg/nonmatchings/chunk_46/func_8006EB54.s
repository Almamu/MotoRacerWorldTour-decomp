nonmatching func_8006EB54, 0x68C

glabel func_8006EB54
    /* 5D364 8006EB54 90FFBD27 */  addiu      $sp, $sp, -0x70
    /* 5D368 8006EB58 5800B4AF */  sw         $s4, 0x58($sp)
    /* 5D36C 8006EB5C 21A08000 */  addu       $s4, $a0, $zero
    /* 5D370 8006EB60 6800BEAF */  sw         $fp, 0x68($sp)
    /* 5D374 8006EB64 21F0A000 */  addu       $fp, $a1, $zero
    /* 5D378 8006EB68 6C00BFAF */  sw         $ra, 0x6C($sp)
    /* 5D37C 8006EB6C 6400B7AF */  sw         $s7, 0x64($sp)
    /* 5D380 8006EB70 6000B6AF */  sw         $s6, 0x60($sp)
    /* 5D384 8006EB74 5C00B5AF */  sw         $s5, 0x5C($sp)
    /* 5D388 8006EB78 5400B3AF */  sw         $s3, 0x54($sp)
    /* 5D38C 8006EB7C 5000B2AF */  sw         $s2, 0x50($sp)
    /* 5D390 8006EB80 4C00B1AF */  sw         $s1, 0x4C($sp)
    /* 5D394 8006EB84 51B8010C */  jal        func_8006E144
    /* 5D398 8006EB88 4800B0AF */   sw        $s0, 0x48($sp)
    /* 5D39C 8006EB8C 3000D38F */  lw         $s3, 0x30($fp)
    /* 5D3A0 8006EB90 00000000 */  nop
    /* 5D3A4 8006EB94 58016782 */  lb         $a3, 0x158($s3)
    /* 5D3A8 8006EB98 2D016482 */  lb         $a0, 0x12D($s3)
    /* 5D3AC 8006EB9C 2C016382 */  lb         $v1, 0x12C($s3)
    /* 5D3B0 8006EBA0 3000A7AF */  sw         $a3, 0x30($sp)
    /* 5D3B4 8006EBA4 49016882 */  lb         $t0, 0x149($s3)
    /* 5D3B8 8006EBA8 00000000 */  nop
    /* 5D3BC 8006EBAC 3400A8AF */  sw         $t0, 0x34($sp)
    /* 5D3C0 8006EBB0 32017586 */  lh         $s5, 0x132($s3)
    /* 5D3C4 8006EBB4 1001628E */  lw         $v0, 0x110($s3)
    /* 5D3C8 8006EBB8 6400698E */  lw         $t1, 0x64($s3)
    /* 5D3CC 8006EBBC 68006A8E */  lw         $t2, 0x68($s3)
    /* 5D3D0 8006EBC0 6C00678E */  lw         $a3, 0x6C($s3)
    /* 5D3D4 8006EBC4 1000A9AF */  sw         $t1, 0x10($sp)
    /* 5D3D8 8006EBC8 1400AAAF */  sw         $t2, 0x14($sp)
    /* 5D3DC 8006EBCC 1800A7AF */  sw         $a3, 0x18($sp)
    /* 5D3E0 8006EBD0 1C01698E */  lw         $t1, 0x11C($s3)
    /* 5D3E4 8006EBD4 20016A8E */  lw         $t2, 0x120($s3)
    /* 5D3E8 8006EBD8 2401678E */  lw         $a3, 0x124($s3)
    /* 5D3EC 8006EBDC 2000A9AF */  sw         $t1, 0x20($sp)
    /* 5D3F0 8006EBE0 2400AAAF */  sw         $t2, 0x24($sp)
    /* 5D3F4 8006EBE4 2800A7AF */  sw         $a3, 0x28($sp)
    /* 5D3F8 8006EBE8 02008310 */  beq        $a0, $v1, .L8006EBF4
    /* 5D3FC 8006EBEC 21B80000 */   addu      $s7, $zero, $zero
    /* 5D400 8006EBF0 2BB80300 */  sltu       $s7, $zero, $v1
  .L8006EBF4:
    /* 5D404 8006EBF4 29008282 */  lb         $v0, 0x29($s4)
    /* 5D408 8006EBF8 00000000 */  nop
    /* 5D40C 8006EBFC 26004014 */  bnez       $v0, .L8006EC98
    /* 5D410 8006EC00 00000000 */   nop
    /* 5D414 8006EC04 3000A98F */  lw         $t1, 0x30($sp)
    /* 5D418 8006EC08 00000000 */  nop
    /* 5D41C 8006EC0C 22002011 */  beqz       $t1, .L8006EC98
    /* 5D420 8006EC10 00000000 */   nop
    /* 5D424 8006EC14 2400A28F */  lw         $v0, 0x24($sp)
    /* 5D428 8006EC18 00000000 */  nop
    /* 5D42C 8006EC1C 031A0200 */  sra        $v1, $v0, 8
    /* 5D430 8006EC20 C3170200 */  sra        $v0, $v0, 31
    /* 5D434 8006EC24 26186200 */  xor        $v1, $v1, $v0
    /* 5D438 8006EC28 23186200 */  subu       $v1, $v1, $v0
    /* 5D43C 8006EC2C 0B006018 */  blez       $v1, .L8006EC5C
    /* 5D440 8006EC30 80006228 */   slti      $v0, $v1, 0x80
    /* 5D444 8006EC34 07004010 */  beqz       $v0, .L8006EC54
    /* 5D448 8006EC38 C0110300 */   sll       $v0, $v1, 7
    /* 5D44C 8006EC3C 23104300 */  subu       $v0, $v0, $v1
    /* 5D450 8006EC40 07004104 */  bgez       $v0, .L8006EC60
    /* 5D454 8006EC44 C3910200 */   sra       $s2, $v0, 7
    /* 5D458 8006EC48 7F004224 */  addiu      $v0, $v0, 0x7F
    /* 5D45C 8006EC4C 18BB0108 */  j          .L8006EC60
    /* 5D460 8006EC50 C3910200 */   sra       $s2, $v0, 7
  .L8006EC54:
    /* 5D464 8006EC54 18BB0108 */  j          .L8006EC60
    /* 5D468 8006EC58 7F001224 */   addiu     $s2, $zero, 0x7F
  .L8006EC5C:
    /* 5D46C 8006EC5C 21900000 */  addu       $s2, $zero, $zero
  .L8006EC60:
    /* 5D470 8006EC60 0D80103C */  lui        $s0, %hi(D_800D11D0)
    /* 5D474 8006EC64 D0111026 */  addiu      $s0, $s0, %lo(D_800D11D0)
    /* 5D478 8006EC68 21200002 */  addu       $a0, $s0, $zero
    /* 5D47C 8006EC6C 60000524 */  addiu      $a1, $zero, 0x60
    /* 5D480 8006EC70 A652000C */  jal        func_80014A98
    /* 5D484 8006EC74 21300000 */   addu      $a2, $zero, $zero
    /* 5D488 8006EC78 21200002 */  addu       $a0, $s0, $zero
    /* 5D48C 8006EC7C 21884000 */  addu       $s1, $v0, $zero
    /* 5D490 8006EC80 21282002 */  addu       $a1, $s1, $zero
    /* 5D494 8006EC84 DA50000C */  jal        func_80014368
    /* 5D498 8006EC88 21304002 */   addu      $a2, $s2, $zero
    /* 5D49C 8006EC8C 21200002 */  addu       $a0, $s0, $zero
    /* 5D4A0 8006EC90 C652000C */  jal        func_80014B18
    /* 5D4A4 8006EC94 21282002 */   addu      $a1, $s1, $zero
  .L8006EC98:
    /* 5D4A8 8006EC98 E06E838F */  lw         $v1, %gp_rel(D_800CB5D0)($gp)
    /* 5D4AC 8006EC9C 01000224 */  addiu      $v0, $zero, 0x1
    /* 5D4B0 8006ECA0 09006210 */  beq        $v1, $v0, .L8006ECC8
    /* 5D4B4 8006ECA4 02000224 */   addiu     $v0, $zero, 0x2
    /* 5D4B8 8006ECA8 05006210 */  beq        $v1, $v0, .L8006ECC0
    /* 5D4BC 8006ECAC 04000224 */   addiu     $v0, $zero, 0x4
    /* 5D4C0 8006ECB0 06006214 */  bne        $v1, $v0, .L8006ECCC
    /* 5D4C4 8006ECB4 03000424 */   addiu     $a0, $zero, 0x3
    /* 5D4C8 8006ECB8 33BB0108 */  j          .L8006ECCC
    /* 5D4CC 8006ECBC 02000424 */   addiu     $a0, $zero, 0x2
  .L8006ECC0:
    /* 5D4D0 8006ECC0 33BB0108 */  j          .L8006ECCC
    /* 5D4D4 8006ECC4 01000424 */   addiu     $a0, $zero, 0x1
  .L8006ECC8:
    /* 5D4D8 8006ECC8 21200000 */  addu       $a0, $zero, $zero
  .L8006ECCC:
    /* 5D4DC 8006ECCC 21300000 */  addu       $a2, $zero, $zero
    /* 5D4E0 8006ECD0 40280400 */  sll        $a1, $a0, 1
    /* 5D4E4 8006ECD4 2128A400 */  addu       $a1, $a1, $a0
    /* 5D4E8 8006ECD8 40290500 */  sll        $a1, $a1, 5
    /* 5D4EC 8006ECDC 0D80163C */  lui        $s6, %hi(D_800D5F34)
    /* 5D4F0 8006ECE0 345FD68E */  lw         $s6, %lo(D_800D5F34)($s6)
    /* 5D4F4 8006ECE4 0D80043C */  lui        $a0, %hi(D_800C81B0)
    /* 5D4F8 8006ECE8 B0818424 */  addiu      $a0, $a0, %lo(D_800C81B0)
    /* 5D4FC 8006ECEC 3800A0AF */  sw         $zero, 0x38($sp)
    /* 5D500 8006ECF0 3C00A0AF */  sw         $zero, 0x3C($sp)
    /* 5D504 8006ECF4 4000A0AF */  sw         $zero, 0x40($sp)
    /* 5D508 8006ECF8 2E016386 */  lh         $v1, 0x12E($s3)
    /* 5D50C 8006ECFC 40101600 */  sll        $v0, $s6, 1
    /* 5D510 8006ED00 21105600 */  addu       $v0, $v0, $s6
    /* 5D514 8006ED04 00110200 */  sll        $v0, $v0, 4
    /* 5D518 8006ED08 21104400 */  addu       $v0, $v0, $a0
    /* 5D51C 8006ED0C 98006324 */  addiu      $v1, $v1, 0x98
    /* 5D520 8006ED10 2A18A302 */  slt        $v1, $s5, $v1
    /* 5D524 8006ED14 05006010 */  beqz       $v1, .L8006ED2C
    /* 5D528 8006ED18 2198A200 */   addu      $s3, $a1, $v0
    /* 5D52C 8006ED1C 3400AA8F */  lw         $t2, 0x34($sp)
    /* 5D530 8006ED20 00000000 */  nop
    /* 5D534 8006ED24 05004011 */  beqz       $t2, .L8006ED3C
    /* 5D538 8006ED28 01000724 */   addiu     $a3, $zero, 0x1
  .L8006ED2C:
    /* 5D53C 8006ED2C 8901C283 */  lb         $v0, 0x189($fp)
    /* 5D540 8006ED30 00000000 */  nop
    /* 5D544 8006ED34 03004010 */  beqz       $v0, .L8006ED44
    /* 5D548 8006ED38 01000724 */   addiu     $a3, $zero, 0x1
  .L8006ED3C:
    /* 5D54C 8006ED3C 67BB0108 */  j          .L8006ED9C
    /* 5D550 8006ED40 3800A7AF */   sw        $a3, 0x38($sp)
  .L8006ED44:
    /* 5D554 8006ED44 0D80023C */  lui        $v0, %hi(D_800D6124)
    /* 5D558 8006ED48 2461428C */  lw         $v0, %lo(D_800D6124)($v0)
    /* 5D55C 8006ED4C 3400838E */  lw         $v1, 0x34($s4)
    /* 5D560 8006ED50 80100200 */  sll        $v0, $v0, 2
    /* 5D564 8006ED54 83100200 */  sra        $v0, $v0, 2
    /* 5D568 8006ED58 23104300 */  subu       $v0, $v0, $v1
    /* 5D56C 8006ED5C 3300422C */  sltiu      $v0, $v0, 0x33
    /* 5D570 8006ED60 07004014 */  bnez       $v0, .L8006ED80
    /* 5D574 8006ED64 00000000 */   nop
    /* 5D578 8006ED68 3000A88F */  lw         $t0, 0x30($sp)
    /* 5D57C 8006ED6C 00000000 */  nop
    /* 5D580 8006ED70 03000015 */  bnez       $t0, .L8006ED80
    /* 5D584 8006ED74 01000924 */   addiu     $t1, $zero, 0x1
    /* 5D588 8006ED78 67BB0108 */  j          .L8006ED9C
    /* 5D58C 8006ED7C 4000A9AF */   sw        $t1, 0x40($sp)
  .L8006ED80:
    /* 5D590 8006ED80 3400AA8F */  lw         $t2, 0x34($sp)
    /* 5D594 8006ED84 00000000 */  nop
    /* 5D598 8006ED88 03004011 */  beqz       $t2, .L8006ED98
    /* 5D59C 8006ED8C 01000724 */   addiu     $a3, $zero, 0x1
    /* 5D5A0 8006ED90 67BB0108 */  j          .L8006ED9C
    /* 5D5A4 8006ED94 01000624 */   addiu     $a2, $zero, 0x1
  .L8006ED98:
    /* 5D5A8 8006ED98 3C00A7AF */  sw         $a3, 0x3C($sp)
  .L8006ED9C:
    /* 5D5AC 8006ED9C 0A00C014 */  bnez       $a2, .L8006EDC8
    /* 5D5B0 8006EDA0 FFFF1124 */   addiu     $s1, $zero, -0x1
    /* 5D5B4 8006EDA4 1400858E */  lw         $a1, 0x14($s4)
    /* 5D5B8 8006EDA8 00000000 */  nop
    /* 5D5BC 8006EDAC 6E00B110 */  beq        $a1, $s1, .L8006EF68
    /* 5D5C0 8006EDB0 00000000 */   nop
    /* 5D5C4 8006EDB4 0D80103C */  lui        $s0, %hi(D_800D11D0)
    /* 5D5C8 8006EDB8 DD52000C */  jal        func_80014B74
    /* 5D5CC 8006EDBC D0110426 */   addiu     $a0, $s0, %lo(D_800D11D0)
    /* 5D5D0 8006EDC0 DABB0108 */  j          .L8006EF68
    /* 5D5D4 8006EDC4 140091AE */   sw        $s1, 0x14($s4)
  .L8006EDC8:
    /* 5D5D8 8006EDC8 0500E016 */  bnez       $s7, .L8006EDE0
    /* 5D5DC 8006EDCC 0D80103C */   lui       $s0, %hi(D_800D11D0)
    /* 5D5E0 8006EDD0 29008282 */  lb         $v0, 0x29($s4)
    /* 5D5E4 8006EDD4 00000000 */  nop
    /* 5D5E8 8006EDD8 08004014 */  bnez       $v0, .L8006EDFC
    /* 5D5EC 8006EDDC 00000000 */   nop
  .L8006EDE0:
    /* 5D5F0 8006EDE0 1400858E */  lw         $a1, 0x14($s4)
    /* 5D5F4 8006EDE4 FFFF1124 */  addiu      $s1, $zero, -0x1
    /* 5D5F8 8006EDE8 0800B110 */  beq        $a1, $s1, .L8006EE0C
    /* 5D5FC 8006EDEC 00000000 */   nop
    /* 5D600 8006EDF0 DD52000C */  jal        func_80014B74
    /* 5D604 8006EDF4 D0110426 */   addiu     $a0, $s0, %lo(D_800D11D0)
    /* 5D608 8006EDF8 140091AE */  sw         $s1, 0x14($s4)
  .L8006EDFC:
    /* 5D60C 8006EDFC 1400838E */  lw         $v1, 0x14($s4)
    /* 5D610 8006EE00 FFFF0224 */  addiu      $v0, $zero, -0x1
    /* 5D614 8006EE04 30006214 */  bne        $v1, $v0, .L8006EEC8
    /* 5D618 8006EE08 00000000 */   nop
  .L8006EE0C:
    /* 5D61C 8006EE0C 29008282 */  lb         $v0, 0x29($s4)
    /* 5D620 8006EE10 00000000 */  nop
    /* 5D624 8006EE14 04004014 */  bnez       $v0, .L8006EE28
    /* 5D628 8006EE18 FFFF1124 */   addiu     $s1, $zero, -0x1
    /* 5D62C 8006EE1C 18006326 */  addiu      $v1, $s3, 0x18
    /* 5D630 8006EE20 95BB0108 */  j          .L8006EE54
    /* 5D634 8006EE24 3B008526 */   addiu     $a1, $s4, 0x3B
  .L8006EE28:
    /* 5D638 8006EE28 0300E012 */  beqz       $s7, .L8006EE38
    /* 5D63C 8006EE2C 10006326 */   addiu     $v1, $s3, 0x10
    /* 5D640 8006EE30 95BB0108 */  j          .L8006EE54
    /* 5D644 8006EE34 39008526 */   addiu     $a1, $s4, 0x39
  .L8006EE38:
    /* 5D648 8006EE38 CC04A22A */  slti       $v0, $s5, 0x4CC
    /* 5D64C 8006EE3C 03004010 */  beqz       $v0, .L8006EE4C
    /* 5D650 8006EE40 21186002 */   addu      $v1, $s3, $zero
    /* 5D654 8006EE44 95BB0108 */  j          .L8006EE54
    /* 5D658 8006EE48 38008526 */   addiu     $a1, $s4, 0x38
  .L8006EE4C:
    /* 5D65C 8006EE4C 08006326 */  addiu      $v1, $s3, 0x8
    /* 5D660 8006EE50 3A008526 */  addiu      $a1, $s4, 0x3A
  .L8006EE54:
    /* 5D664 8006EE54 0400668C */  lw         $a2, 0x4($v1)
    /* 5D668 8006EE58 00000000 */  nop
    /* 5D66C 8006EE5C 0C00C010 */  beqz       $a2, .L8006EE90
    /* 5D670 8006EE60 D0111226 */   addiu     $s2, $s0, %lo(D_800D11D0)
    /* 5D674 8006EE64 0000A480 */  lb         $a0, 0x0($a1)
    /* 5D678 8006EE68 0000638C */  lw         $v1, 0x0($v1)
    /* 5D67C 8006EE6C 80100400 */  sll        $v0, $a0, 2
    /* 5D680 8006EE70 01008424 */  addiu      $a0, $a0, 0x1
    /* 5D684 8006EE74 21104300 */  addu       $v0, $v0, $v1
    /* 5D688 8006EE78 0000518C */  lw         $s1, 0x0($v0)
    /* 5D68C 8006EE7C 02008614 */  bne        $a0, $a2, .L8006EE88
    /* 5D690 8006EE80 00000000 */   nop
    /* 5D694 8006EE84 21200000 */  addu       $a0, $zero, $zero
  .L8006EE88:
    /* 5D698 8006EE88 0000A4A0 */  sb         $a0, 0x0($a1)
    /* 5D69C 8006EE8C D0111226 */  addiu      $s2, $s0, %lo(D_800D11D0)
  .L8006EE90:
    /* 5D6A0 8006EE90 21204002 */  addu       $a0, $s2, $zero
    /* 5D6A4 8006EE94 4A000524 */  addiu      $a1, $zero, 0x4A
    /* 5D6A8 8006EE98 A652000C */  jal        func_80014A98
    /* 5D6AC 8006EE9C 21300000 */   addu      $a2, $zero, $zero
    /* 5D6B0 8006EEA0 21284000 */  addu       $a1, $v0, $zero
    /* 5D6B4 8006EEA4 FFFF0224 */  addiu      $v0, $zero, -0x1
    /* 5D6B8 8006EEA8 04002212 */  beq        $s1, $v0, .L8006EEBC
    /* 5D6BC 8006EEAC 140085AE */   sw        $a1, 0x14($s4)
    /* 5D6C0 8006EEB0 21204002 */  addu       $a0, $s2, $zero
    /* 5D6C4 8006EEB4 1351000C */  jal        func_8001444C
    /* 5D6C8 8006EEB8 21302002 */   addu      $a2, $s1, $zero
  .L8006EEBC:
    /* 5D6CC 8006EEBC 1400858E */  lw         $a1, 0x14($s4)
    /* 5D6D0 8006EEC0 C652000C */  jal        func_80014B18
    /* 5D6D4 8006EEC4 21204002 */   addu      $a0, $s2, $zero
  .L8006EEC8:
    /* 5D6D8 8006EEC8 E06E838F */  lw         $v1, %gp_rel(D_800CB5D0)($gp)
    /* 5D6DC 8006EECC 03000224 */  addiu      $v0, $zero, 0x3
    /* 5D6E0 8006EED0 22006210 */  beq        $v1, $v0, .L8006EF5C
    /* 5D6E4 8006EED4 00100624 */   addiu     $a2, $zero, 0x1000
    /* 5D6E8 8006EED8 1F00A01A */  blez       $s5, .L8006EF58
    /* 5D6EC 8006EEDC 0010A22A */   slti      $v0, $s5, 0x1000
    /* 5D6F0 8006EEE0 05004014 */  bnez       $v0, .L8006EEF8
    /* 5D6F4 8006EEE4 00000000 */   nop
    /* 5D6F8 8006EEE8 1C00C016 */  bnez       $s6, .L8006EF5C
    /* 5D6FC 8006EEEC 00000000 */   nop
    /* 5D700 8006EEF0 D7BB0108 */  j          .L8006EF5C
    /* 5D704 8006EEF4 33130624 */   addiu     $a2, $zero, 0x1333
  .L8006EEF8:
    /* 5D708 8006EEF8 1100C016 */  bnez       $s6, .L8006EF40
    /* 5D70C 8006EEFC 2110A002 */   addu      $v0, $s5, $zero
    /* 5D710 8006EF00 C0101500 */  sll        $v0, $s5, 3
    /* 5D714 8006EF04 23105500 */  subu       $v0, $v0, $s5
    /* 5D718 8006EF08 80100200 */  sll        $v0, $v0, 2
    /* 5D71C 8006EF0C 21105500 */  addu       $v0, $v0, $s5
    /* 5D720 8006EF10 80100200 */  sll        $v0, $v0, 2
    /* 5D724 8006EF14 23105500 */  subu       $v0, $v0, $s5
    /* 5D728 8006EF18 80100200 */  sll        $v0, $v0, 2
    /* 5D72C 8006EF1C 21105500 */  addu       $v0, $v0, $s5
    /* 5D730 8006EF20 80100200 */  sll        $v0, $v0, 2
    /* 5D734 8006EF24 23105500 */  subu       $v0, $v0, $s5
    /* 5D738 8006EF28 02004104 */  bgez       $v0, .L8006EF34
    /* 5D73C 8006EF2C 00000000 */   nop
    /* 5D740 8006EF30 FF0F4224 */  addiu      $v0, $v0, 0xFFF
  .L8006EF34:
    /* 5D744 8006EF34 03130200 */  sra        $v0, $v0, 12
    /* 5D748 8006EF38 D7BB0108 */  j          .L8006EF5C
    /* 5D74C 8006EF3C 000C4624 */   addiu     $a2, $v0, 0xC00
  .L8006EF40:
    /* 5D750 8006EF40 02004104 */  bgez       $v0, .L8006EF4C
    /* 5D754 8006EF44 00000000 */   nop
    /* 5D758 8006EF48 03004224 */  addiu      $v0, $v0, 0x3
  .L8006EF4C:
    /* 5D75C 8006EF4C 83100200 */  sra        $v0, $v0, 2
    /* 5D760 8006EF50 D7BB0108 */  j          .L8006EF5C
    /* 5D764 8006EF54 000C4624 */   addiu     $a2, $v0, 0xC00
  .L8006EF58:
    /* 5D768 8006EF58 000C0624 */  addiu      $a2, $zero, 0xC00
  .L8006EF5C:
    /* 5D76C 8006EF5C 1400858E */  lw         $a1, 0x14($s4)
    /* 5D770 8006EF60 F850000C */  jal        func_800143E0
    /* 5D774 8006EF64 D0110426 */   addiu     $a0, $s0, %lo(D_800D11D0)
  .L8006EF68:
    /* 5D778 8006EF68 4000A88F */  lw         $t0, 0x40($sp)
    /* 5D77C 8006EF6C 00000000 */  nop
    /* 5D780 8006EF70 0A000015 */  bnez       $t0, .L8006EF9C
    /* 5D784 8006EF74 FFFF0224 */   addiu     $v0, $zero, -0x1
    /* 5D788 8006EF78 1C00858E */  lw         $a1, 0x1C($s4)
    /* 5D78C 8006EF7C FFFF1124 */  addiu      $s1, $zero, -0x1
    /* 5D790 8006EF80 2800B110 */  beq        $a1, $s1, .L8006F024
    /* 5D794 8006EF84 00000000 */   nop
    /* 5D798 8006EF88 0D80103C */  lui        $s0, %hi(D_800D11D0)
    /* 5D79C 8006EF8C DD52000C */  jal        func_80014B74
    /* 5D7A0 8006EF90 D0110426 */   addiu     $a0, $s0, %lo(D_800D11D0)
    /* 5D7A4 8006EF94 09BC0108 */  j          .L8006F024
    /* 5D7A8 8006EF98 1C0091AE */   sw        $s1, 0x1C($s4)
  .L8006EF9C:
    /* 5D7AC 8006EF9C 1C00838E */  lw         $v1, 0x1C($s4)
    /* 5D7B0 8006EFA0 00000000 */  nop
    /* 5D7B4 8006EFA4 1F006214 */  bne        $v1, $v0, .L8006F024
    /* 5D7B8 8006EFA8 00000000 */   nop
    /* 5D7BC 8006EFAC FFFF1124 */  addiu      $s1, $zero, -0x1
    /* 5D7C0 8006EFB0 2C00658E */  lw         $a1, 0x2C($s3)
    /* 5D7C4 8006EFB4 00000000 */  nop
    /* 5D7C8 8006EFB8 0B00A010 */  beqz       $a1, .L8006EFE8
    /* 5D7CC 8006EFBC 0D80103C */   lui       $s0, %hi(D_800D11D0)
    /* 5D7D0 8006EFC0 3D008482 */  lb         $a0, 0x3D($s4)
    /* 5D7D4 8006EFC4 2800638E */  lw         $v1, 0x28($s3)
    /* 5D7D8 8006EFC8 80100400 */  sll        $v0, $a0, 2
    /* 5D7DC 8006EFCC 01008424 */  addiu      $a0, $a0, 0x1
    /* 5D7E0 8006EFD0 21104300 */  addu       $v0, $v0, $v1
    /* 5D7E4 8006EFD4 0000518C */  lw         $s1, 0x0($v0)
    /* 5D7E8 8006EFD8 0200A414 */  bne        $a1, $a0, .L8006EFE4
    /* 5D7EC 8006EFDC 00000000 */   nop
    /* 5D7F0 8006EFE0 21200000 */  addu       $a0, $zero, $zero
  .L8006EFE4:
    /* 5D7F4 8006EFE4 3D0084A2 */  sb         $a0, 0x3D($s4)
  .L8006EFE8:
    /* 5D7F8 8006EFE8 D0111026 */  addiu      $s0, $s0, %lo(D_800D11D0)
    /* 5D7FC 8006EFEC 21200002 */  addu       $a0, $s0, $zero
    /* 5D800 8006EFF0 53000524 */  addiu      $a1, $zero, 0x53
    /* 5D804 8006EFF4 A652000C */  jal        func_80014A98
    /* 5D808 8006EFF8 21300000 */   addu      $a2, $zero, $zero
    /* 5D80C 8006EFFC 21284000 */  addu       $a1, $v0, $zero
    /* 5D810 8006F000 FFFF0224 */  addiu      $v0, $zero, -0x1
    /* 5D814 8006F004 04002212 */  beq        $s1, $v0, .L8006F018
    /* 5D818 8006F008 1C0085AE */   sw        $a1, 0x1C($s4)
    /* 5D81C 8006F00C 21200002 */  addu       $a0, $s0, $zero
    /* 5D820 8006F010 1351000C */  jal        func_8001444C
    /* 5D824 8006F014 21302002 */   addu      $a2, $s1, $zero
  .L8006F018:
    /* 5D828 8006F018 1C00858E */  lw         $a1, 0x1C($s4)
    /* 5D82C 8006F01C C652000C */  jal        func_80014B18
    /* 5D830 8006F020 21200002 */   addu      $a0, $s0, $zero
  .L8006F024:
    /* 5D834 8006F024 3C00A98F */  lw         $t1, 0x3C($sp)
    /* 5D838 8006F028 00000000 */  nop
    /* 5D83C 8006F02C 09002015 */  bnez       $t1, .L8006F054
    /* 5D840 8006F030 FFFF0224 */   addiu     $v0, $zero, -0x1
    /* 5D844 8006F034 1800858E */  lw         $a1, 0x18($s4)
    /* 5D848 8006F038 FFFF1024 */  addiu      $s0, $zero, -0x1
    /* 5D84C 8006F03C 3F00B010 */  beq        $a1, $s0, .L8006F13C
    /* 5D850 8006F040 0D80043C */   lui       $a0, %hi(D_800D11D0)
    /* 5D854 8006F044 DD52000C */  jal        func_80014B74
    /* 5D858 8006F048 D0118424 */   addiu     $a0, $a0, %lo(D_800D11D0)
    /* 5D85C 8006F04C 4FBC0108 */  j          .L8006F13C
    /* 5D860 8006F050 180090AE */   sw        $s0, 0x18($s4)
  .L8006F054:
    /* 5D864 8006F054 1800838E */  lw         $v1, 0x18($s4)
    /* 5D868 8006F058 00000000 */  nop
    /* 5D86C 8006F05C 2B006214 */  bne        $v1, $v0, .L8006F10C
    /* 5D870 8006F060 00000000 */   nop
    /* 5D874 8006F064 FFFF1124 */  addiu      $s1, $zero, -0x1
    /* 5D878 8006F068 2400658E */  lw         $a1, 0x24($s3)
    /* 5D87C 8006F06C 00000000 */  nop
    /* 5D880 8006F070 0B00A010 */  beqz       $a1, .L8006F0A0
    /* 5D884 8006F074 0D80103C */   lui       $s0, %hi(D_800D11D0)
    /* 5D888 8006F078 3C008482 */  lb         $a0, 0x3C($s4)
    /* 5D88C 8006F07C 2000638E */  lw         $v1, 0x20($s3)
    /* 5D890 8006F080 80100400 */  sll        $v0, $a0, 2
    /* 5D894 8006F084 01008424 */  addiu      $a0, $a0, 0x1
    /* 5D898 8006F088 21104300 */  addu       $v0, $v0, $v1
    /* 5D89C 8006F08C 0000518C */  lw         $s1, 0x0($v0)
    /* 5D8A0 8006F090 0200A414 */  bne        $a1, $a0, .L8006F09C
    /* 5D8A4 8006F094 00000000 */   nop
    /* 5D8A8 8006F098 21200000 */  addu       $a0, $zero, $zero
  .L8006F09C:
    /* 5D8AC 8006F09C 3C0084A2 */  sb         $a0, 0x3C($s4)
  .L8006F0A0:
    /* 5D8B0 8006F0A0 D0111026 */  addiu      $s0, $s0, %lo(D_800D11D0)
    /* 5D8B4 8006F0A4 21200002 */  addu       $a0, $s0, $zero
    /* 5D8B8 8006F0A8 1C53000C */  jal        func_80014C70
    /* 5D8BC 8006F0AC 4E000524 */   addiu     $a1, $zero, 0x4E
    /* 5D8C0 8006F0B0 21200002 */  addu       $a0, $s0, $zero
    /* 5D8C4 8006F0B4 4E000524 */  addiu      $a1, $zero, 0x4E
    /* 5D8C8 8006F0B8 21300000 */  addu       $a2, $zero, $zero
    /* 5D8CC 8006F0BC 18FC4224 */  addiu      $v0, $v0, -0x3E8
    /* 5D8D0 8006F0C0 A652000C */  jal        func_80014A98
    /* 5D8D4 8006F0C4 300082AE */   sw        $v0, 0x30($s4)
    /* 5D8D8 8006F0C8 FFFF1224 */  addiu      $s2, $zero, -0x1
    /* 5D8DC 8006F0CC 05003212 */  beq        $s1, $s2, .L8006F0E4
    /* 5D8E0 8006F0D0 180082AE */   sw        $v0, 0x18($s4)
    /* 5D8E4 8006F0D4 21200002 */  addu       $a0, $s0, $zero
    /* 5D8E8 8006F0D8 21284000 */  addu       $a1, $v0, $zero
    /* 5D8EC 8006F0DC 1351000C */  jal        func_8001444C
    /* 5D8F0 8006F0E0 21302002 */   addu      $a2, $s1, $zero
  .L8006F0E4:
    /* 5D8F4 8006F0E4 1800858E */  lw         $a1, 0x18($s4)
    /* 5D8F8 8006F0E8 C652000C */  jal        func_80014B18
    /* 5D8FC 8006F0EC 21200002 */   addu      $a0, $s0, $zero
    /* 5D900 8006F0F0 0D80023C */  lui        $v0, %hi(D_800D6124)
    /* 5D904 8006F0F4 2461428C */  lw         $v0, %lo(D_800D6124)($v0)
    /* 5D908 8006F0F8 1800838E */  lw         $v1, 0x18($s4)
    /* 5D90C 8006F0FC 80100200 */  sll        $v0, $v0, 2
    /* 5D910 8006F100 83100200 */  sra        $v0, $v0, 2
    /* 5D914 8006F104 0D007210 */  beq        $v1, $s2, .L8006F13C
    /* 5D918 8006F108 240082AE */   sw        $v0, 0x24($s4)
  .L8006F10C:
    /* 5D91C 8006F10C 0D80023C */  lui        $v0, %hi(D_800D6124)
    /* 5D920 8006F110 2461428C */  lw         $v0, %lo(D_800D6124)($v0)
    /* 5D924 8006F114 2400848E */  lw         $a0, 0x24($s4)
    /* 5D928 8006F118 3000838E */  lw         $v1, 0x30($s4)
    /* 5D92C 8006F11C 80100200 */  sll        $v0, $v0, 2
    /* 5D930 8006F120 83100200 */  sra        $v0, $v0, 2
    /* 5D934 8006F124 23104400 */  subu       $v0, $v0, $a0
    /* 5D938 8006F128 2B186200 */  sltu       $v1, $v1, $v0
    /* 5D93C 8006F12C 03006010 */  beqz       $v1, .L8006F13C
    /* 5D940 8006F130 00000000 */   nop
    /* 5D944 8006F134 01000A24 */  addiu      $t2, $zero, 0x1
    /* 5D948 8006F138 3800AAAF */  sw         $t2, 0x38($sp)
  .L8006F13C:
    /* 5D94C 8006F13C 3800A78F */  lw         $a3, 0x38($sp)
    /* 5D950 8006F140 00000000 */  nop
    /* 5D954 8006F144 0900E014 */  bnez       $a3, .L8006F16C
    /* 5D958 8006F148 FFFF0224 */   addiu     $v0, $zero, -0x1
    /* 5D95C 8006F14C 1000858E */  lw         $a1, 0x10($s4)
    /* 5D960 8006F150 FFFF1024 */  addiu      $s0, $zero, -0x1
    /* 5D964 8006F154 1200B010 */  beq        $a1, $s0, .L8006F1A0
    /* 5D968 8006F158 0D80043C */   lui       $a0, %hi(D_800D11D0)
    /* 5D96C 8006F15C DD52000C */  jal        func_80014B74
    /* 5D970 8006F160 D0118424 */   addiu     $a0, $a0, %lo(D_800D11D0)
    /* 5D974 8006F164 68BC0108 */  j          .L8006F1A0
    /* 5D978 8006F168 100090AE */   sw        $s0, 0x10($s4)
  .L8006F16C:
    /* 5D97C 8006F16C 1000838E */  lw         $v1, 0x10($s4)
    /* 5D980 8006F170 00000000 */  nop
    /* 5D984 8006F174 0A006214 */  bne        $v1, $v0, .L8006F1A0
    /* 5D988 8006F178 0D80103C */   lui       $s0, %hi(D_800D11D0)
    /* 5D98C 8006F17C D0111026 */  addiu      $s0, $s0, %lo(D_800D11D0)
    /* 5D990 8006F180 21200002 */  addu       $a0, $s0, $zero
    /* 5D994 8006F184 48000524 */  addiu      $a1, $zero, 0x48
    /* 5D998 8006F188 A652000C */  jal        func_80014A98
    /* 5D99C 8006F18C 21300000 */   addu      $a2, $zero, $zero
    /* 5D9A0 8006F190 100082AE */  sw         $v0, 0x10($s4)
    /* 5D9A4 8006F194 21200002 */  addu       $a0, $s0, $zero
    /* 5D9A8 8006F198 C652000C */  jal        func_80014B18
    /* 5D9AC 8006F19C 21284000 */   addu      $a1, $v0, $zero
  .L8006F1A0:
    /* 5D9B0 8006F1A0 3000A88F */  lw         $t0, 0x30($sp)
    /* 5D9B4 8006F1A4 2400A28F */  lw         $v0, 0x24($sp)
    /* 5D9B8 8006F1A8 6C00BF8F */  lw         $ra, 0x6C($sp)
    /* 5D9BC 8006F1AC 6800BE8F */  lw         $fp, 0x68($sp)
    /* 5D9C0 8006F1B0 6400B78F */  lw         $s7, 0x64($sp)
    /* 5D9C4 8006F1B4 6000B68F */  lw         $s6, 0x60($sp)
    /* 5D9C8 8006F1B8 5C00B58F */  lw         $s5, 0x5C($sp)
    /* 5D9CC 8006F1BC 5400B38F */  lw         $s3, 0x54($sp)
    /* 5D9D0 8006F1C0 5000B28F */  lw         $s2, 0x50($sp)
    /* 5D9D4 8006F1C4 4C00B18F */  lw         $s1, 0x4C($sp)
    /* 5D9D8 8006F1C8 4800B08F */  lw         $s0, 0x48($sp)
    /* 5D9DC 8006F1CC 290088A2 */  sb         $t0, 0x29($s4)
    /* 5D9E0 8006F1D0 2C0082AE */  sw         $v0, 0x2C($s4)
    /* 5D9E4 8006F1D4 5800B48F */  lw         $s4, 0x58($sp)
    /* 5D9E8 8006F1D8 0800E003 */  jr         $ra
    /* 5D9EC 8006F1DC 7000BD27 */   addiu     $sp, $sp, 0x70
endlabel func_8006EB54
