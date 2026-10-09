nonmatching func_8013D450, 0x230

glabel func_8013D450
    /* A91C 8013D450 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* A920 8013D454 21408000 */  addu       $t0, $a0, $zero
    /* A924 8013D458 1C00BFAF */  sw         $ra, 0x1C($sp)
    /* A928 8013D45C 1800B2AF */  sw         $s2, 0x18($sp)
    /* A92C 8013D460 1400B1AF */  sw         $s1, 0x14($sp)
    /* A930 8013D464 1000B0AF */  sw         $s0, 0x10($sp)
    /* A934 8013D468 04000385 */  lh         $v1, 0x4($t0)
    /* A938 8013D46C 04000495 */  lhu        $a0, 0x4($t0)
    /* A93C 8013D470 0C006004 */  bltz       $v1, .L8013D4A4
    /* A940 8013D474 2148A000 */   addu      $t1, $a1, $zero
    /* A944 8013D478 1C80023C */  lui        $v0, %hi(D_801BFC3C)
    /* A948 8013D47C 3CFC4284 */  lh         $v0, %lo(D_801BFC3C)($v0)
    /* A94C 8013D480 00000000 */  nop
    /* A950 8013D484 FFFF4224 */  addiu      $v0, $v0, -0x1
    /* A954 8013D488 2A104300 */  slt        $v0, $v0, $v1
    /* A958 8013D48C 1C80033C */  lui        $v1, %hi(D_801BFC3C)
    /* A95C 8013D490 3CFC6394 */  lhu        $v1, %lo(D_801BFC3C)($v1)
    /* A960 8013D494 04004014 */  bnez       $v0, .L8013D4A8
    /* A964 8013D498 FFFF6224 */   addiu     $v0, $v1, -0x1
    /* A968 8013D49C 2AF50408 */  j          .L8013D4A8
    /* A96C 8013D4A0 21108000 */   addu      $v0, $a0, $zero
  .L8013D4A4:
    /* A970 8013D4A4 21100000 */  addu       $v0, $zero, $zero
  .L8013D4A8:
    /* A974 8013D4A8 06000385 */  lh         $v1, 0x6($t0)
    /* A978 8013D4AC 06000495 */  lhu        $a0, 0x6($t0)
    /* A97C 8013D4B0 0C006004 */  bltz       $v1, .L8013D4E4
    /* A980 8013D4B4 040002A5 */   sh        $v0, 0x4($t0)
    /* A984 8013D4B8 1C80023C */  lui        $v0, %hi(D_801BFC3E)
    /* A988 8013D4BC 3EFC4284 */  lh         $v0, %lo(D_801BFC3E)($v0)
    /* A98C 8013D4C0 00000000 */  nop
    /* A990 8013D4C4 FFFF4224 */  addiu      $v0, $v0, -0x1
    /* A994 8013D4C8 2A104300 */  slt        $v0, $v0, $v1
    /* A998 8013D4CC 1C80033C */  lui        $v1, %hi(D_801BFC3E)
    /* A99C 8013D4D0 3EFC6394 */  lhu        $v1, %lo(D_801BFC3E)($v1)
    /* A9A0 8013D4D4 04004014 */  bnez       $v0, .L8013D4E8
    /* A9A4 8013D4D8 FFFF6324 */   addiu     $v1, $v1, -0x1
    /* A9A8 8013D4DC 3AF50408 */  j          .L8013D4E8
    /* A9AC 8013D4E0 21188000 */   addu      $v1, $a0, $zero
  .L8013D4E4:
    /* A9B0 8013D4E4 21180000 */  addu       $v1, $zero, $zero
  .L8013D4E8:
    /* A9B4 8013D4E8 00000295 */  lhu        $v0, 0x0($t0)
    /* A9B8 8013D4EC 00000000 */  nop
    /* A9BC 8013D4F0 3F004230 */  andi       $v0, $v0, 0x3F
    /* A9C0 8013D4F4 06004014 */  bnez       $v0, .L8013D510
    /* A9C4 8013D4F8 060003A5 */   sh        $v1, 0x6($t0)
    /* A9C8 8013D4FC 04000295 */  lhu        $v0, 0x4($t0)
    /* A9CC 8013D500 00000000 */  nop
    /* A9D0 8013D504 3F004230 */  andi       $v0, $v0, 0x3F
    /* A9D4 8013D508 37004010 */  beqz       $v0, .L8013D5E8
    /* A9D8 8013D50C FF05023C */   lui       $v0, (0x5FFFFFF >> 16)
  .L8013D510:
    /* A9DC 8013D510 FF00063C */  lui        $a2, (0xFFFFFF >> 16)
    /* A9E0 8013D514 FFFFC634 */  ori        $a2, $a2, (0xFFFFFF & 0xFFFF)
    /* A9E4 8013D518 FFE4043C */  lui        $a0, (0xE4FFFFFF >> 16)
    /* A9E8 8013D51C FFFF8434 */  ori        $a0, $a0, (0xE4FFFFFF & 0xFFFF)
    /* A9EC 8013D520 FF03073C */  lui        $a3, (0x3FFFFFF >> 16)
    /* A9F0 8013D524 1D80053C */  lui        $a1, %hi(D_801CCD18)
    /* A9F4 8013D528 18CDA524 */  addiu      $a1, $a1, %lo(D_801CCD18)
    /* A9F8 8013D52C 1D80103C */  lui        $s0, %hi(D_801CCD40)
    /* A9FC 8013D530 40CD1026 */  addiu      $s0, $s0, %lo(D_801CCD40)
    /* AA00 8013D534 24100602 */  and        $v0, $s0, $a2
    /* AA04 8013D538 0008033C */  lui        $v1, (0x8000000 >> 16)
    /* AA08 8013D53C 25104300 */  or         $v0, $v0, $v1
    /* AA0C 8013D540 00E3113C */  lui        $s1, (0xE3000000 >> 16)
    /* AA10 8013D544 00E5123C */  lui        $s2, (0xE5000000 >> 16)
    /* AA14 8013D548 0000A2AC */  sw         $v0, 0x0($a1)
    /* AA18 8013D54C 00E6023C */  lui        $v0, (0xE6000000 >> 16)
    /* AA1C 8013D550 24302601 */  and        $a2, $t1, $a2
    /* AA20 8013D554 0060033C */  lui        $v1, (0x60000000 >> 16)
    /* AA24 8013D558 2530C300 */  or         $a2, $a2, $v1
    /* AA28 8013D55C 1000A2AC */  sw         $v0, 0x10($a1)
    /* AA2C 8013D560 1C80023C */  lui        $v0, %hi(D_801BFD40)
    /* AA30 8013D564 40FD428C */  lw         $v0, %lo(D_801BFD40)($v0)
    /* AA34 8013D568 00E1033C */  lui        $v1, (0xE1000000 >> 16)
    /* AA38 8013D56C 0400B1AC */  sw         $s1, 0x4($a1)
    /* AA3C 8013D570 0800A4AC */  sw         $a0, 0x8($a1)
    /* AA40 8013D574 0C00B2AC */  sw         $s2, 0xC($a1)
    /* AA44 8013D578 0000448C */  lw         $a0, 0x0($v0)
    /* AA48 8013D57C C2170900 */  srl        $v0, $t1, 31
    /* AA4C 8013D580 80120200 */  sll        $v0, $v0, 10
    /* AA50 8013D584 25104300 */  or         $v0, $v0, $v1
    /* AA54 8013D588 1800A6AC */  sw         $a2, 0x18($a1)
    /* AA58 8013D58C FF078430 */  andi       $a0, $a0, 0x7FF
    /* AA5C 8013D590 25208200 */  or         $a0, $a0, $v0
    /* AA60 8013D594 1400A4AC */  sw         $a0, 0x14($a1)
    /* AA64 8013D598 0000028D */  lw         $v0, 0x0($t0)
    /* AA68 8013D59C FFFFE734 */  ori        $a3, $a3, (0x3FFFFFF & 0xFFFF)
    /* AA6C 8013D5A0 1C00A2AC */  sw         $v0, 0x1C($a1)
    /* AA70 8013D5A4 0400028D */  lw         $v0, 0x4($t0)
    /* AA74 8013D5A8 03000424 */  addiu      $a0, $zero, 0x3
    /* AA78 8013D5AC 000007AE */  sw         $a3, 0x0($s0)
    /* AA7C 8013D5B0 FFF6040C */  jal        func_8013DBFC
    /* AA80 8013D5B4 2000A2AC */   sw        $v0, 0x20($a1)
    /* AA84 8013D5B8 04000424 */  addiu      $a0, $zero, 0x4
    /* AA88 8013D5BC 25105100 */  or         $v0, $v0, $s1
    /* AA8C 8013D5C0 FFF6040C */  jal        func_8013DBFC
    /* AA90 8013D5C4 040002AE */   sw        $v0, 0x4($s0)
    /* AA94 8013D5C8 05000424 */  addiu      $a0, $zero, 0x5
    /* AA98 8013D5CC 00E4033C */  lui        $v1, (0xE4000000 >> 16)
    /* AA9C 8013D5D0 25104300 */  or         $v0, $v0, $v1
    /* AAA0 8013D5D4 FFF6040C */  jal        func_8013DBFC
    /* AAA4 8013D5D8 080002AE */   sw        $v0, 0x8($s0)
    /* AAA8 8013D5DC 25105200 */  or         $v0, $v0, $s2
    /* AAAC 8013D5E0 96F50408 */  j          .L8013D658
    /* AAB0 8013D5E4 0C0002AE */   sw        $v0, 0xC($s0)
  .L8013D5E8:
    /* AAB4 8013D5E8 FFFF4234 */  ori        $v0, $v0, (0x5FFFFFF & 0xFFFF)
    /* AAB8 8013D5EC FF00033C */  lui        $v1, (0xFFFFFF >> 16)
    /* AABC 8013D5F0 FFFF6334 */  ori        $v1, $v1, (0xFFFFFF & 0xFFFF)
    /* AAC0 8013D5F4 1D80063C */  lui        $a2, %hi(D_801CCD18)
    /* AAC4 8013D5F8 18CDC624 */  addiu      $a2, $a2, %lo(D_801CCD18)
    /* AAC8 8013D5FC 0000C2AC */  sw         $v0, 0x0($a2)
    /* AACC 8013D600 00E6023C */  lui        $v0, (0xE6000000 >> 16)
    /* AAD0 8013D604 24182301 */  and        $v1, $t1, $v1
    /* AAD4 8013D608 0002053C */  lui        $a1, (0x2000000 >> 16)
    /* AAD8 8013D60C 0400C2AC */  sw         $v0, 0x4($a2)
    /* AADC 8013D610 1C80023C */  lui        $v0, %hi(D_801BFD40)
    /* AAE0 8013D614 40FD428C */  lw         $v0, %lo(D_801BFD40)($v0)
    /* AAE4 8013D618 25186500 */  or         $v1, $v1, $a1
    /* AAE8 8013D61C 0000448C */  lw         $a0, 0x0($v0)
    /* AAEC 8013D620 C2170900 */  srl        $v0, $t1, 31
    /* AAF0 8013D624 80120200 */  sll        $v0, $v0, 10
    /* AAF4 8013D628 0C00C3AC */  sw         $v1, 0xC($a2)
    /* AAF8 8013D62C 00E1033C */  lui        $v1, (0xE1000000 >> 16)
    /* AAFC 8013D630 25104300 */  or         $v0, $v0, $v1
    /* AB00 8013D634 FF078430 */  andi       $a0, $a0, 0x7FF
    /* AB04 8013D638 25208200 */  or         $a0, $a0, $v0
    /* AB08 8013D63C 0800C4AC */  sw         $a0, 0x8($a2)
    /* AB0C 8013D640 0000028D */  lw         $v0, 0x0($t0)
    /* AB10 8013D644 00000000 */  nop
    /* AB14 8013D648 1000C2AC */  sw         $v0, 0x10($a2)
    /* AB18 8013D64C 0400028D */  lw         $v0, 0x4($t0)
    /* AB1C 8013D650 00000000 */  nop
    /* AB20 8013D654 1400C2AC */  sw         $v0, 0x14($a2)
  .L8013D658:
    /* AB24 8013D658 1D80043C */  lui        $a0, %hi(D_801CCD18)
    /* AB28 8013D65C EDF6040C */  jal        func_8013DBB4
    /* AB2C 8013D660 18CD8424 */   addiu     $a0, $a0, %lo(D_801CCD18)
    /* AB30 8013D664 21100000 */  addu       $v0, $zero, $zero
    /* AB34 8013D668 1C00BF8F */  lw         $ra, 0x1C($sp)
    /* AB38 8013D66C 1800B28F */  lw         $s2, 0x18($sp)
    /* AB3C 8013D670 1400B18F */  lw         $s1, 0x14($sp)
    /* AB40 8013D674 1000B08F */  lw         $s0, 0x10($sp)
    /* AB44 8013D678 0800E003 */  jr         $ra
    /* AB48 8013D67C 2000BD27 */   addiu     $sp, $sp, 0x20
endlabel func_8013D450
