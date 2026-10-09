nonmatching func_8006E474, 0x568

glabel func_8006E474
    /* 5CC84 8006E474 A0FFBD27 */  addiu      $sp, $sp, -0x60
    /* 5CC88 8006E478 4400B3AF */  sw         $s3, 0x44($sp)
    /* 5CC8C 8006E47C 21988000 */  addu       $s3, $a0, $zero
    /* 5CC90 8006E480 5C00BFAF */  sw         $ra, 0x5C($sp)
    /* 5CC94 8006E484 5800BEAF */  sw         $fp, 0x58($sp)
    /* 5CC98 8006E488 5400B7AF */  sw         $s7, 0x54($sp)
    /* 5CC9C 8006E48C 5000B6AF */  sw         $s6, 0x50($sp)
    /* 5CCA0 8006E490 4C00B5AF */  sw         $s5, 0x4C($sp)
    /* 5CCA4 8006E494 4800B4AF */  sw         $s4, 0x48($sp)
    /* 5CCA8 8006E498 4000B2AF */  sw         $s2, 0x40($sp)
    /* 5CCAC 8006E49C 3C00B1AF */  sw         $s1, 0x3C($sp)
    /* 5CCB0 8006E4A0 3800B0AF */  sw         $s0, 0x38($sp)
    /* 5CCB4 8006E4A4 51B8010C */  jal        func_8006E144
    /* 5CCB8 8006E4A8 6400A5AF */   sw        $a1, 0x64($sp)
    /* 5CCBC 8006E4AC 6400AB8F */  lw         $t3, 0x64($sp)
    /* 5CCC0 8006E4B0 00000000 */  nop
    /* 5CCC4 8006E4B4 3000708D */  lw         $s0, 0x30($t3)
    /* 5CCC8 8006E4B8 00000000 */  nop
    /* 5CCCC 8006E4BC 32010586 */  lh         $a1, 0x132($s0)
    /* 5CCD0 8006E4C0 1001038E */  lw         $v1, 0x110($s0)
    /* 5CCD4 8006E4C4 49010A82 */  lb         $t2, 0x149($s0)
    /* 5CCD8 8006E4C8 48010482 */  lb         $a0, 0x148($s0)
    /* 5CCDC 8006E4CC 4A010982 */  lb         $t1, 0x14A($s0)
    /* 5CCE0 8006E4D0 E400028E */  lw         $v0, 0xE4($s0)
    /* 5CCE4 8006E4D4 64000C8E */  lw         $t4, 0x64($s0)
    /* 5CCE8 8006E4D8 68000D8E */  lw         $t5, 0x68($s0)
    /* 5CCEC 8006E4DC 6C000E8E */  lw         $t6, 0x6C($s0)
    /* 5CCF0 8006E4E0 1000ACAF */  sw         $t4, 0x10($sp)
    /* 5CCF4 8006E4E4 1400ADAF */  sw         $t5, 0x14($sp)
    /* 5CCF8 8006E4E8 1800AEAF */  sw         $t6, 0x18($sp)
    /* 5CCFC 8006E4EC 1C010C8E */  lw         $t4, 0x11C($s0)
    /* 5CD00 8006E4F0 20010D8E */  lw         $t5, 0x120($s0)
    /* 5CD04 8006E4F4 24010E8E */  lw         $t6, 0x124($s0)
    /* 5CD08 8006E4F8 2000ACAF */  sw         $t4, 0x20($sp)
    /* 5CD0C 8006E4FC 2400ADAF */  sw         $t5, 0x24($sp)
    /* 5CD10 8006E500 2800AEAF */  sw         $t6, 0x28($sp)
    /* 5CD14 8006E504 08006C82 */  lb         $t4, 0x8($s3)
    /* 5CD18 8006E508 02006104 */  bgez       $v1, .L8006E514
    /* 5CD1C 8006E50C 3000ACAF */   sw        $t4, 0x30($sp)
    /* 5CD20 8006E510 21180000 */  addu       $v1, $zero, $zero
  .L8006E514:
    /* 5CD24 8006E514 23B84300 */  subu       $s7, $v0, $v1
    /* 5CD28 8006E518 0200E106 */  bgez       $s7, .L8006E524
    /* 5CD2C 8006E51C 21B00000 */   addu      $s6, $zero, $zero
    /* 5CD30 8006E520 21B80000 */  addu       $s7, $zero, $zero
  .L8006E524:
    /* 5CD34 8006E524 330BA228 */  slti       $v0, $a1, 0xB33
    /* 5CD38 8006E528 03004010 */  beqz       $v0, .L8006E538
    /* 5CD3C 8006E52C 330B0624 */   addiu     $a2, $zero, 0xB33
    /* 5CD40 8006E530 4FB90108 */  j          .L8006E53C
    /* 5CD44 8006E534 1800A600 */   mult      $a1, $a2
  .L8006E538:
    /* 5CD48 8006E538 1800A500 */  mult       $a1, $a1
  .L8006E53C:
    /* 5CD4C 8006E53C 12100000 */  mflo       $v0
    /* 5CD50 8006E540 032B0200 */  sra        $a1, $v0, 12
    /* 5CD54 8006E544 28006228 */  slti       $v0, $v1, 0x28
    /* 5CD58 8006E548 04004010 */  beqz       $v0, .L8006E55C
    /* 5CD5C 8006E54C 21400000 */   addu      $t0, $zero, $zero
    /* 5CD60 8006E550 02002011 */  beqz       $t1, .L8006E55C
    /* 5CD64 8006E554 00000000 */   nop
    /* 5CD68 8006E558 2B400400 */  sltu       $t0, $zero, $a0
  .L8006E55C:
    /* 5CD6C 8006E55C 0200A104 */  bgez       $a1, .L8006E568
    /* 5CD70 8006E560 00000000 */   nop
    /* 5CD74 8006E564 21280000 */  addu       $a1, $zero, $zero
  .L8006E568:
    /* 5CD78 8006E568 6400AB8F */  lw         $t3, 0x64($sp)
    /* 5CD7C 8006E56C 00000000 */  nop
    /* 5CD80 8006E570 89016281 */  lb         $v0, 0x189($t3)
    /* 5CD84 8006E574 00000000 */  nop
    /* 5CD88 8006E578 03004010 */  beqz       $v0, .L8006E588
    /* 5CD8C 8006E57C 00000000 */   nop
    /* 5CD90 8006E580 21280000 */  addu       $a1, $zero, $zero
    /* 5CD94 8006E584 21B80000 */  addu       $s7, $zero, $zero
  .L8006E588:
    /* 5CD98 8006E588 2E010286 */  lh         $v0, 0x12E($s0)
    /* 5CD9C 8006E58C E06E878F */  lw         $a3, %gp_rel(D_800CB5D0)($gp)
    /* 5CDA0 8006E590 98004424 */  addiu      $a0, $v0, 0x98
    /* 5CDA4 8006E594 330B8328 */  slti       $v1, $a0, 0xB33
    /* 5CDA8 8006E598 02006014 */  bnez       $v1, .L8006E5A4
    /* 5CDAC 8006E59C 18008600 */   mult      $a0, $a2
    /* 5CDB0 8006E5A0 18008400 */  mult       $a0, $a0
  .L8006E5A4:
    /* 5CDB4 8006E5A4 12100000 */  mflo       $v0
    /* 5CDB8 8006E5A8 03230200 */  sra        $a0, $v0, 12
    /* 5CDBC 8006E5AC 2130A000 */  addu       $a2, $a1, $zero
    /* 5CDC0 8006E5B0 2A108600 */  slt        $v0, $a0, $a2
    /* 5CDC4 8006E5B4 10004010 */  beqz       $v0, .L8006E5F8
    /* 5CDC8 8006E5B8 51008224 */   addiu     $v0, $a0, 0x51
    /* 5CDCC 8006E5BC 2A10C200 */  slt        $v0, $a2, $v0
    /* 5CDD0 8006E5C0 0B004010 */  beqz       $v0, .L8006E5F0
    /* 5CDD4 8006E5C4 4819023C */   lui       $v0, (0x1948B0FD >> 16)
    /* 5CDD8 8006E5C8 FDB04234 */  ori        $v0, $v0, (0x1948B0FD & 0xFFFF)
    /* 5CDDC 8006E5CC 2318C400 */  subu       $v1, $a2, $a0
    /* 5CDE0 8006E5D0 80190300 */  sll        $v1, $v1, 6
    /* 5CDE4 8006E5D4 18006200 */  mult       $v1, $v0
    /* 5CDE8 8006E5D8 C31F0300 */  sra        $v1, $v1, 31
    /* 5CDEC 8006E5DC 10100000 */  mfhi       $v0
    /* 5CDF0 8006E5E0 C3100200 */  sra        $v0, $v0, 3
    /* 5CDF4 8006E5E4 23104300 */  subu       $v0, $v0, $v1
    /* 5CDF8 8006E5E8 7FB90108 */  j          .L8006E5FC
    /* 5CDFC 8006E5EC 3F005524 */   addiu     $s5, $v0, 0x3F
  .L8006E5F0:
    /* 5CE00 8006E5F0 7FB90108 */  j          .L8006E5FC
    /* 5CE04 8006E5F4 7F001524 */   addiu     $s5, $zero, 0x7F
  .L8006E5F8:
    /* 5CE08 8006E5F8 3F001524 */  addiu      $s5, $zero, 0x3F
  .L8006E5FC:
    /* 5CE0C 8006E5FC 06000224 */  addiu      $v0, $zero, 0x6
    /* 5CE10 8006E600 0300E214 */  bne        $a3, $v0, .L8006E610
    /* 5CE14 8006E604 66060324 */   addiu     $v1, $zero, 0x666
    /* 5CE18 8006E608 8CB90108 */  j          .L8006E630
    /* 5CE1C 8006E60C 99290724 */   addiu     $a3, $zero, 0x2999
  .L8006E610:
    /* 5CE20 8006E610 5C71828F */  lw         $v0, %gp_rel(D_800CB84C)($gp)
    /* 5CE24 8006E614 00000000 */  nop
    /* 5CE28 8006E618 04004014 */  bnez       $v0, .L8006E62C
    /* 5CE2C 8006E61C 99050324 */   addiu     $v1, $zero, 0x599
    /* 5CE30 8006E620 66060324 */  addiu      $v1, $zero, 0x666
    /* 5CE34 8006E624 8CB90108 */  j          .L8006E630
    /* 5CE38 8006E628 661E0724 */   addiu     $a3, $zero, 0x1E66
  .L8006E62C:
    /* 5CE3C 8006E62C 00200724 */  addiu      $a3, $zero, 0x2000
  .L8006E630:
    /* 5CE40 8006E630 0D00C018 */  blez       $a2, .L8006E668
    /* 5CE44 8006E634 0010A228 */   slti      $v0, $a1, 0x1000
    /* 5CE48 8006E638 09004010 */  beqz       $v0, .L8006E660
    /* 5CE4C 8006E63C 2310E300 */   subu      $v0, $a3, $v1
    /* 5CE50 8006E640 18004600 */  mult       $v0, $a2
    /* 5CE54 8006E644 12100000 */  mflo       $v0
    /* 5CE58 8006E648 02004104 */  bgez       $v0, .L8006E654
    /* 5CE5C 8006E64C 00000000 */   nop
    /* 5CE60 8006E650 FF0F4224 */  addiu      $v0, $v0, 0xFFF
  .L8006E654:
    /* 5CE64 8006E654 03130200 */  sra        $v0, $v0, 12
    /* 5CE68 8006E658 9BB90108 */  j          .L8006E66C
    /* 5CE6C 8006E65C 21A06200 */   addu      $s4, $v1, $v0
  .L8006E660:
    /* 5CE70 8006E660 9BB90108 */  j          .L8006E66C
    /* 5CE74 8006E664 21A0E000 */   addu      $s4, $a3, $zero
  .L8006E668:
    /* 5CE78 8006E668 21A06000 */  addu       $s4, $v1, $zero
  .L8006E66C:
    /* 5CE7C 8006E66C 1100A016 */  bnez       $s5, .L8006E6B4
    /* 5CE80 8006E670 00000000 */   nop
    /* 5CE84 8006E674 1400658E */  lw         $a1, 0x14($s3)
    /* 5CE88 8006E678 FFFF1024 */  addiu      $s0, $zero, -0x1
    /* 5CE8C 8006E67C 0500B010 */  beq        $a1, $s0, .L8006E694
    /* 5CE90 8006E680 00000000 */   nop
    /* 5CE94 8006E684 0D80123C */  lui        $s2, %hi(D_800D11D0)
    /* 5CE98 8006E688 DD52000C */  jal        func_80014B74
    /* 5CE9C 8006E68C D0114426 */   addiu     $a0, $s2, %lo(D_800D11D0)
    /* 5CEA0 8006E690 140070AE */  sw         $s0, 0x14($s3)
  .L8006E694:
    /* 5CEA4 8006E694 1800658E */  lw         $a1, 0x18($s3)
    /* 5CEA8 8006E698 00000000 */  nop
    /* 5CEAC 8006E69C 5700B010 */  beq        $a1, $s0, .L8006E7FC
    /* 5CEB0 8006E6A0 0D80123C */   lui       $s2, %hi(D_800D11D0)
    /* 5CEB4 8006E6A4 DD52000C */  jal        func_80014B74
    /* 5CEB8 8006E6A8 D0114426 */   addiu     $a0, $s2, %lo(D_800D11D0)
    /* 5CEBC 8006E6AC FFB90108 */  j          .L8006E7FC
    /* 5CEC0 8006E6B0 180070AE */   sw        $s0, 0x18($s3)
  .L8006E6B4:
    /* 5CEC4 8006E6B4 03004011 */  beqz       $t2, .L8006E6C4
    /* 5CEC8 8006E6B8 00000000 */   nop
    /* 5CECC 8006E6BC 04002011 */  beqz       $t1, .L8006E6D0
    /* 5CED0 8006E6C0 02001624 */   addiu     $s6, $zero, 0x2
  .L8006E6C4:
    /* 5CED4 8006E6C4 02000015 */  bnez       $t0, .L8006E6D0
    /* 5CED8 8006E6C8 02001624 */   addiu     $s6, $zero, 0x2
    /* 5CEDC 8006E6CC 03001624 */  addiu      $s6, $zero, 0x3
  .L8006E6D0:
    /* 5CEE0 8006E6D0 0D80123C */  lui        $s2, %hi(D_800D11D0)
    /* 5CEE4 8006E6D4 21F04002 */  addu       $fp, $s2, $zero
    /* 5CEE8 8006E6D8 D011D127 */  addiu      $s1, $fp, %lo(D_800D11D0)
    /* 5CEEC 8006E6DC 21202002 */  addu       $a0, $s1, $zero
    /* 5CEF0 8006E6E0 0953000C */  jal        func_80014C24
    /* 5CEF4 8006E6E4 4A000524 */   addiu     $a1, $zero, 0x4A
    /* 5CEF8 8006E6E8 21904000 */  addu       $s2, $v0, $zero
    /* 5CEFC 8006E6EC 1400638E */  lw         $v1, 0x14($s3)
    /* 5CF00 8006E6F0 FFFF0224 */  addiu      $v0, $zero, -0x1
    /* 5CF04 8006E6F4 19006214 */  bne        $v1, $v0, .L8006E75C
    /* 5CF08 8006E6F8 21202002 */   addu      $a0, $s1, $zero
    /* 5CF0C 8006E6FC 59001082 */  lb         $s0, 0x59($s0)
    /* 5CF10 8006E700 4A000524 */  addiu      $a1, $zero, 0x4A
    /* 5CF14 8006E704 2B801000 */  sltu       $s0, $zero, $s0
    /* 5CF18 8006E708 00821000 */  sll        $s0, $s0, 8
    /* 5CF1C 8006E70C A652000C */  jal        func_80014A98
    /* 5CF20 8006E710 21300002 */   addu      $a2, $s0, $zero
    /* 5CF24 8006E714 21202002 */  addu       $a0, $s1, $zero
    /* 5CF28 8006E718 21284000 */  addu       $a1, $v0, $zero
    /* 5CF2C 8006E71C 21304002 */  addu       $a2, $s2, $zero
    /* 5CF30 8006E720 1351000C */  jal        func_8001444C
    /* 5CF34 8006E724 140062AE */   sw        $v0, 0x14($s3)
    /* 5CF38 8006E728 1400658E */  lw         $a1, 0x14($s3)
    /* 5CF3C 8006E72C C652000C */  jal        func_80014B18
    /* 5CF40 8006E730 21202002 */   addu      $a0, $s1, $zero
    /* 5CF44 8006E734 09000012 */  beqz       $s0, .L8006E75C
    /* 5CF48 8006E738 21202002 */   addu      $a0, $s1, $zero
    /* 5CF4C 8006E73C 68000524 */  addiu      $a1, $zero, 0x68
    /* 5CF50 8006E740 1400678E */  lw         $a3, 0x14($s3)
    /* 5CF54 8006E744 9F51000C */  jal        func_8001467C
    /* 5CF58 8006E748 00020624 */   addiu     $a2, $zero, 0x200
    /* 5CF5C 8006E74C 21202002 */  addu       $a0, $s1, $zero
    /* 5CF60 8006E750 21284000 */  addu       $a1, $v0, $zero
    /* 5CF64 8006E754 C652000C */  jal        func_80014B18
    /* 5CF68 8006E758 180062AE */   sw        $v0, 0x18($s3)
  .L8006E75C:
    /* 5CF6C 8006E75C 0D80033C */  lui        $v1, %hi(D_800D6124)
    /* 5CF70 8006E760 2461638C */  lw         $v1, %lo(D_800D6124)($v1)
    /* 5CF74 8006E764 2800628E */  lw         $v0, 0x28($s3)
    /* 5CF78 8006E768 80880300 */  sll        $s1, $v1, 2
    /* 5CF7C 8006E76C 83881100 */  sra        $s1, $s1, 2
    /* 5CF80 8006E770 2B105100 */  sltu       $v0, $v0, $s1
    /* 5CF84 8006E774 16004010 */  beqz       $v0, .L8006E7D0
    /* 5CF88 8006E778 D011D027 */   addiu     $s0, $fp, %lo(D_800D11D0)
    /* 5CF8C 8006E77C 2C00628E */  lw         $v0, 0x2C($s3)
    /* 5CF90 8006E780 00000000 */  nop
    /* 5CF94 8006E784 01004238 */  xori       $v0, $v0, 0x1
    /* 5CF98 8006E788 08004010 */  beqz       $v0, .L8006E7AC
    /* 5CF9C 8006E78C 2C0062AE */   sw        $v0, 0x2C($s3)
    /* 5CFA0 8006E790 C6D8020C */  jal        func_800B6318
    /* 5CFA4 8006E794 F4011024 */   addiu     $s0, $zero, 0x1F4
    /* 5CFA8 8006E798 1A005000 */  div        $zero, $v0, $s0
    /* 5CFAC 8006E79C 10180000 */  mfhi       $v1
    /* 5CFB0 8006E7A0 02001624 */  addiu      $s6, $zero, 0x2
    /* 5CFB4 8006E7A4 F1B90108 */  j          .L8006E7C4
    /* 5CFB8 8006E7A8 F4016324 */   addiu     $v1, $v1, 0x1F4
  .L8006E7AC:
    /* 5CFBC 8006E7AC C6D8020C */  jal        func_800B6318
    /* 5CFC0 8006E7B0 70171024 */   addiu     $s0, $zero, 0x1770
    /* 5CFC4 8006E7B4 1A005000 */  div        $zero, $v0, $s0
    /* 5CFC8 8006E7B8 10180000 */  mfhi       $v1
    /* 5CFCC 8006E7BC 02001624 */  addiu      $s6, $zero, 0x2
    /* 5CFD0 8006E7C0 A00F6324 */  addiu      $v1, $v1, 0xFA0
  .L8006E7C4:
    /* 5CFD4 8006E7C4 21102302 */  addu       $v0, $s1, $v1
    /* 5CFD8 8006E7C8 280062AE */  sw         $v0, 0x28($s3)
    /* 5CFDC 8006E7CC D011D027 */  addiu      $s0, $fp, %lo(D_800D11D0)
  .L8006E7D0:
    /* 5CFE0 8006E7D0 21200002 */  addu       $a0, $s0, $zero
    /* 5CFE4 8006E7D4 2C00668E */  lw         $a2, 0x2C($s3)
    /* 5CFE8 8006E7D8 1800658E */  lw         $a1, 0x18($s3)
    /* 5CFEC 8006E7DC F850000C */  jal        func_800143E0
    /* 5CFF0 8006E7E0 00330600 */   sll       $a2, $a2, 12
    /* 5CFF4 8006E7E4 21200002 */  addu       $a0, $s0, $zero
    /* 5CFF8 8006E7E8 2130A002 */  addu       $a2, $s5, $zero
    /* 5CFFC 8006E7EC 2400678E */  lw         $a3, 0x24($s3)
    /* 5D000 8006E7F0 1400658E */  lw         $a1, 0x14($s3)
    /* 5D004 8006E7F4 B850000C */  jal        func_800142E0
    /* 5D008 8006E7F8 21388702 */   addu      $a3, $s4, $a3
  .L8006E7FC:
    /* 5D00C 8006E7FC 03211700 */  sra        $a0, $s7, 4
    /* 5D010 8006E800 10008018 */  blez       $a0, .L8006E844
    /* 5D014 8006E804 200076AE */   sw        $s6, 0x20($s3)
    /* 5D018 8006E808 CC0C8228 */  slti       $v0, $a0, 0xCCC
    /* 5D01C 8006E80C 0B004010 */  beqz       $v0, .L8006E83C
    /* 5D020 8006E810 0AA0033C */   lui       $v1, (0xA00A00A1 >> 16)
    /* 5D024 8006E814 A1006334 */  ori        $v1, $v1, (0xA00A00A1 & 0xFFFF)
    /* 5D028 8006E818 C0110400 */  sll        $v0, $a0, 7
    /* 5D02C 8006E81C 23104400 */  subu       $v0, $v0, $a0
    /* 5D030 8006E820 18004300 */  mult       $v0, $v1
    /* 5D034 8006E824 10180000 */  mfhi       $v1
    /* 5D038 8006E828 21186200 */  addu       $v1, $v1, $v0
    /* 5D03C 8006E82C C31A0300 */  sra        $v1, $v1, 11
    /* 5D040 8006E830 C3170200 */  sra        $v0, $v0, 31
    /* 5D044 8006E834 12BA0108 */  j          .L8006E848
    /* 5D048 8006E838 23A86200 */   subu      $s5, $v1, $v0
  .L8006E83C:
    /* 5D04C 8006E83C 12BA0108 */  j          .L8006E848
    /* 5D050 8006E840 7F001524 */   addiu     $s5, $zero, 0x7F
  .L8006E844:
    /* 5D054 8006E844 21A80000 */  addu       $s5, $zero, $zero
  .L8006E848:
    /* 5D058 8006E848 14008018 */  blez       $a0, .L8006E89C
    /* 5D05C 8006E84C 00088228 */   slti      $v0, $a0, 0x800
    /* 5D060 8006E850 10004010 */  beqz       $v0, .L8006E894
    /* 5D064 8006E854 80100400 */   sll       $v0, $a0, 2
    /* 5D068 8006E858 21104400 */  addu       $v0, $v0, $a0
    /* 5D06C 8006E85C 80100200 */  sll        $v0, $v0, 2
    /* 5D070 8006E860 23104400 */  subu       $v0, $v0, $a0
    /* 5D074 8006E864 80100200 */  sll        $v0, $v0, 2
    /* 5D078 8006E868 21104400 */  addu       $v0, $v0, $a0
    /* 5D07C 8006E86C 80100200 */  sll        $v0, $v0, 2
    /* 5D080 8006E870 23104400 */  subu       $v0, $v0, $a0
    /* 5D084 8006E874 40100200 */  sll        $v0, $v0, 1
    /* 5D088 8006E878 23100200 */  negu       $v0, $v0
    /* 5D08C 8006E87C 02004104 */  bgez       $v0, .L8006E888
    /* 5D090 8006E880 00000000 */   nop
    /* 5D094 8006E884 FF074224 */  addiu      $v0, $v0, 0x7FF
  .L8006E888:
    /* 5D098 8006E888 C3120200 */  sra        $v0, $v0, 11
    /* 5D09C 8006E88C 28BA0108 */  j          .L8006E8A0
    /* 5D0A0 8006E890 99155424 */   addiu     $s4, $v0, 0x1599
  .L8006E894:
    /* 5D0A4 8006E894 28BA0108 */  j          .L8006E8A0
    /* 5D0A8 8006E898 33131424 */   addiu     $s4, $zero, 0x1333
  .L8006E89C:
    /* 5D0AC 8006E89C 99151424 */  addiu      $s4, $zero, 0x1599
  .L8006E8A0:
    /* 5D0B0 8006E8A0 3A00A012 */  beqz       $s5, .L8006E98C
    /* 5D0B4 8006E8A4 00000000 */   nop
    /* 5D0B8 8006E8A8 6400AB8F */  lw         $t3, 0x64($sp)
    /* 5D0BC 8006E8AC 00000000 */  nop
    /* 5D0C0 8006E8B0 89016281 */  lb         $v0, 0x189($t3)
    /* 5D0C4 8006E8B4 00000000 */  nop
    /* 5D0C8 8006E8B8 34004014 */  bnez       $v0, .L8006E98C
    /* 5D0CC 8006E8BC 00000000 */   nop
    /* 5D0D0 8006E8C0 0D80033C */  lui        $v1, %hi(D_800C8368)
    /* 5D0D4 8006E8C4 68836324 */  addiu      $v1, $v1, %lo(D_800C8368)
    /* 5D0D8 8006E8C8 3000AC8F */  lw         $t4, 0x30($sp)
    /* 5D0DC 8006E8CC 09006482 */  lb         $a0, 0x9($s3)
    /* 5D0E0 8006E8D0 40100C00 */  sll        $v0, $t4, 1
    /* 5D0E4 8006E8D4 21104300 */  addu       $v0, $v0, $v1
    /* 5D0E8 8006E8D8 00005684 */  lh         $s6, 0x0($v0)
    /* 5D0EC 8006E8DC 17008C10 */  beq        $a0, $t4, .L8006E93C
    /* 5D0F0 8006E8E0 0D80123C */   lui       $s2, %hi(D_800D11D0)
    /* 5D0F4 8006E8E4 1C00658E */  lw         $a1, 0x1C($s3)
    /* 5D0F8 8006E8E8 FFFF1024 */  addiu      $s0, $zero, -0x1
    /* 5D0FC 8006E8EC 0500B010 */  beq        $a1, $s0, .L8006E904
    /* 5D100 8006E8F0 55000224 */   addiu     $v0, $zero, 0x55
    /* 5D104 8006E8F4 DD52000C */  jal        func_80014B74
    /* 5D108 8006E8F8 D0114426 */   addiu     $a0, $s2, %lo(D_800D11D0)
    /* 5D10C 8006E8FC 1C0070AE */  sw         $s0, 0x1C($s3)
    /* 5D110 8006E900 55000224 */  addiu      $v0, $zero, 0x55
  .L8006E904:
    /* 5D114 8006E904 0D00C216 */  bne        $s6, $v0, .L8006E93C
    /* 5D118 8006E908 D0115026 */   addiu     $s0, $s2, %lo(D_800D11D0)
    /* 5D11C 8006E90C 21200002 */  addu       $a0, $s0, $zero
    /* 5D120 8006E910 63000524 */  addiu      $a1, $zero, 0x63
    /* 5D124 8006E914 A652000C */  jal        func_80014A98
    /* 5D128 8006E918 21300000 */   addu      $a2, $zero, $zero
    /* 5D12C 8006E91C 21200002 */  addu       $a0, $s0, $zero
    /* 5D130 8006E920 21884000 */  addu       $s1, $v0, $zero
    /* 5D134 8006E924 21282002 */  addu       $a1, $s1, $zero
    /* 5D138 8006E928 DA50000C */  jal        func_80014368
    /* 5D13C 8006E92C 7F000624 */   addiu     $a2, $zero, 0x7F
    /* 5D140 8006E930 21200002 */  addu       $a0, $s0, $zero
    /* 5D144 8006E934 C652000C */  jal        func_80014B18
    /* 5D148 8006E938 21282002 */   addu      $a1, $s1, $zero
  .L8006E93C:
    /* 5D14C 8006E93C 1C00638E */  lw         $v1, 0x1C($s3)
    /* 5D150 8006E940 FFFF0224 */  addiu      $v0, $zero, -0x1
    /* 5D154 8006E944 0B006214 */  bne        $v1, $v0, .L8006E974
    /* 5D158 8006E948 D0114426 */   addiu     $a0, $s2, %lo(D_800D11D0)
    /* 5D15C 8006E94C D0115026 */  addiu      $s0, $s2, %lo(D_800D11D0)
    /* 5D160 8006E950 21200002 */  addu       $a0, $s0, $zero
    /* 5D164 8006E954 2128C002 */  addu       $a1, $s6, $zero
    /* 5D168 8006E958 A652000C */  jal        func_80014A98
    /* 5D16C 8006E95C 21300000 */   addu      $a2, $zero, $zero
    /* 5D170 8006E960 1C0062AE */  sw         $v0, 0x1C($s3)
    /* 5D174 8006E964 21200002 */  addu       $a0, $s0, $zero
    /* 5D178 8006E968 C652000C */  jal        func_80014B18
    /* 5D17C 8006E96C 21284000 */   addu      $a1, $v0, $zero
    /* 5D180 8006E970 D0114426 */  addiu      $a0, $s2, %lo(D_800D11D0)
  .L8006E974:
    /* 5D184 8006E974 1C00658E */  lw         $a1, 0x1C($s3)
    /* 5D188 8006E978 2130A002 */  addu       $a2, $s5, $zero
    /* 5D18C 8006E97C B850000C */  jal        func_800142E0
    /* 5D190 8006E980 21388002 */   addu      $a3, $s4, $zero
    /* 5D194 8006E984 6BBA0108 */  j          .L8006E9AC
    /* 5D198 8006E988 00000000 */   nop
  .L8006E98C:
    /* 5D19C 8006E98C 1C00658E */  lw         $a1, 0x1C($s3)
    /* 5D1A0 8006E990 FFFF1024 */  addiu      $s0, $zero, -0x1
    /* 5D1A4 8006E994 0500B010 */  beq        $a1, $s0, .L8006E9AC
    /* 5D1A8 8006E998 00000000 */   nop
    /* 5D1AC 8006E99C 0D80043C */  lui        $a0, %hi(D_800D11D0)
    /* 5D1B0 8006E9A0 DD52000C */  jal        func_80014B74
    /* 5D1B4 8006E9A4 D0118424 */   addiu     $a0, $a0, %lo(D_800D11D0)
    /* 5D1B8 8006E9A8 1C0070AE */  sw         $s0, 0x1C($s3)
  .L8006E9AC:
    /* 5D1BC 8006E9AC 5C00BF8F */  lw         $ra, 0x5C($sp)
    /* 5D1C0 8006E9B0 5800BE8F */  lw         $fp, 0x58($sp)
    /* 5D1C4 8006E9B4 5400B78F */  lw         $s7, 0x54($sp)
    /* 5D1C8 8006E9B8 5000B68F */  lw         $s6, 0x50($sp)
    /* 5D1CC 8006E9BC 4C00B58F */  lw         $s5, 0x4C($sp)
    /* 5D1D0 8006E9C0 4800B48F */  lw         $s4, 0x48($sp)
    /* 5D1D4 8006E9C4 4400B38F */  lw         $s3, 0x44($sp)
    /* 5D1D8 8006E9C8 4000B28F */  lw         $s2, 0x40($sp)
    /* 5D1DC 8006E9CC 3C00B18F */  lw         $s1, 0x3C($sp)
    /* 5D1E0 8006E9D0 3800B08F */  lw         $s0, 0x38($sp)
    /* 5D1E4 8006E9D4 0800E003 */  jr         $ra
    /* 5D1E8 8006E9D8 6000BD27 */   addiu     $sp, $sp, 0x60
endlabel func_8006E474
