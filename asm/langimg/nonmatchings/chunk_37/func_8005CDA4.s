nonmatching func_8005CDA4, 0x388

glabel func_8005CDA4
    /* 4B5B4 8005CDA4 C0FFBD27 */  addiu      $sp, $sp, -0x40
    /* 4B5B8 8005CDA8 3000B6AF */  sw         $s6, 0x30($sp)
    /* 4B5BC 8005CDAC 21B08000 */  addu       $s6, $a0, $zero
    /* 4B5C0 8005CDB0 3800BFAF */  sw         $ra, 0x38($sp)
    /* 4B5C4 8005CDB4 3400B7AF */  sw         $s7, 0x34($sp)
    /* 4B5C8 8005CDB8 2C00B5AF */  sw         $s5, 0x2C($sp)
    /* 4B5CC 8005CDBC 2800B4AF */  sw         $s4, 0x28($sp)
    /* 4B5D0 8005CDC0 2400B3AF */  sw         $s3, 0x24($sp)
    /* 4B5D4 8005CDC4 2000B2AF */  sw         $s2, 0x20($sp)
    /* 4B5D8 8005CDC8 1C00B1AF */  sw         $s1, 0x1C($sp)
    /* 4B5DC 8005CDCC 1800B0AF */  sw         $s0, 0x18($sp)
    /* 4B5E0 8005CDD0 7803C38E */  lw         $v1, 0x378($s6)
    /* 4B5E4 8005CDD4 0400A28C */  lw         $v0, 0x4($a1)
    /* 4B5E8 8005CDD8 21900000 */  addu       $s2, $zero, $zero
    /* 4B5EC 8005CDDC 000062AC */  sw         $v0, 0x0($v1)
    /* 4B5F0 8005CDE0 7803C68E */  lw         $a2, 0x378($s6)
    /* 4B5F4 8005CDE4 0C00A48C */  lw         $a0, 0xC($a1)
    /* 4B5F8 8005CDE8 3C04D026 */  addiu      $s0, $s6, 0x43C
    /* 4B5FC 8005CDEC 0800C4AC */  sw         $a0, 0x8($a2)
    /* 4B600 8005CDF0 7803C38E */  lw         $v1, 0x378($s6)
    /* 4B604 8005CDF4 0800A28C */  lw         $v0, 0x8($a1)
    /* 4B608 8005CDF8 21880002 */  addu       $s1, $s0, $zero
    /* 4B60C 8005CDFC 040062AC */  sw         $v0, 0x4($v1)
  .L8005CE00:
    /* 4B610 8005CE00 709C020C */  jal        __builtin_new
    /* 4B614 8005CE04 94010424 */   addiu     $a0, $zero, 0x194
    /* 4B618 8005CE08 91E0010C */  jal        func_80078244
    /* 4B61C 8005CE0C 21204000 */   addu      $a0, $v0, $zero
    /* 4B620 8005CE10 000022AE */  sw         $v0, 0x0($s1)
    /* 4B624 8005CE14 01005226 */  addiu      $s2, $s2, 0x1
    /* 4B628 8005CE18 0200422A */  slti       $v0, $s2, 0x2
    /* 4B62C 8005CE1C F8FF4014 */  bnez       $v0, .L8005CE00
    /* 4B630 8005CE20 04003126 */   addiu     $s1, $s1, 0x4
    /* 4B634 8005CE24 21900000 */  addu       $s2, $zero, $zero
    /* 4B638 8005CE28 4404D126 */  addiu      $s1, $s6, 0x444
  .L8005CE2C:
    /* 4B63C 8005CE2C 709C020C */  jal        __builtin_new
    /* 4B640 8005CE30 94010424 */   addiu     $a0, $zero, 0x194
    /* 4B644 8005CE34 91E0010C */  jal        func_80078244
    /* 4B648 8005CE38 21204000 */   addu      $a0, $v0, $zero
    /* 4B64C 8005CE3C 000022AE */  sw         $v0, 0x0($s1)
    /* 4B650 8005CE40 01005226 */  addiu      $s2, $s2, 0x1
    /* 4B654 8005CE44 0300422A */  slti       $v0, $s2, 0x3
    /* 4B658 8005CE48 F8FF4014 */  bnez       $v0, .L8005CE2C
    /* 4B65C 8005CE4C 04003126 */   addiu     $s1, $s1, 0x4
    /* 4B660 8005CE50 7803C68E */  lw         $a2, 0x378($s6)
    /* 4B664 8005CE54 00000000 */  nop
    /* 4B668 8005CE58 0000C28C */  lw         $v0, 0x0($a2)
    /* 4B66C 8005CE5C 00000000 */  nop
    /* 4B670 8005CE60 A8004230 */  andi       $v0, $v0, 0xA8
    /* 4B674 8005CE64 05004010 */  beqz       $v0, .L8005CE7C
    /* 4B678 8005CE68 21200000 */   addu      $a0, $zero, $zero
    /* 4B67C 8005CE6C 0D80023C */  lui        $v0, %hi(D_800D49A4)
    /* 4B680 8005CE70 A449428C */  lw         $v0, %lo(D_800D49A4)($v0)
    /* 4B684 8005CE74 00000000 */  nop
    /* 4B688 8005CE78 0100442C */  sltiu      $a0, $v0, 0x1
  .L8005CE7C:
    /* 4B68C 8005CE7C 1000C28C */  lw         $v0, 0x10($a2)
    /* 4B690 8005CE80 00000000 */  nop
    /* 4B694 8005CE84 2C05458C */  lw         $a1, 0x52C($v0)
    /* 4B698 8005CE88 05000324 */  addiu      $v1, $zero, 0x5
    /* 4B69C 8005CE8C 0C00A314 */  bne        $a1, $v1, .L8005CEC0
    /* 4B6A0 8005CE90 06000224 */   addiu     $v0, $zero, 0x6
    /* 4B6A4 8005CE94 05008010 */  beqz       $a0, .L8005CEAC
    /* 4B6A8 8005CE98 0C80023C */   lui       $v0, %hi(D_800C66A0)
    /* 4B6AC 8005CE9C A0664224 */  addiu      $v0, $v0, %lo(D_800C66A0)
    /* 4B6B0 8005CEA0 0C80033C */  lui        $v1, %hi(D_800C66BC)
    /* 4B6B4 8005CEA4 D6730108 */  j          .L8005CF58
    /* 4B6B8 8005CEA8 BC666324 */   addiu     $v1, $v1, %lo(D_800C66BC)
  .L8005CEAC:
    /* 4B6BC 8005CEAC 0C80023C */  lui        $v0, %hi(D_800C65C0)
    /* 4B6C0 8005CEB0 C0654224 */  addiu      $v0, $v0, %lo(D_800C65C0)
    /* 4B6C4 8005CEB4 0C80033C */  lui        $v1, %hi(D_800C65DC)
    /* 4B6C8 8005CEB8 D6730108 */  j          .L8005CF58
    /* 4B6CC 8005CEBC DC656324 */   addiu     $v1, $v1, %lo(D_800C65DC)
  .L8005CEC0:
    /* 4B6D0 8005CEC0 0C00A214 */  bne        $a1, $v0, .L8005CEF4
    /* 4B6D4 8005CEC4 00000000 */   nop
    /* 4B6D8 8005CEC8 05008010 */  beqz       $a0, .L8005CEE0
    /* 4B6DC 8005CECC 0C80023C */   lui       $v0, %hi(D_800C6668)
    /* 4B6E0 8005CED0 68664224 */  addiu      $v0, $v0, %lo(D_800C6668)
    /* 4B6E4 8005CED4 0C80033C */  lui        $v1, %hi(D_800C6684)
    /* 4B6E8 8005CED8 D6730108 */  j          .L8005CF58
    /* 4B6EC 8005CEDC 84666324 */   addiu     $v1, $v1, %lo(D_800C6684)
  .L8005CEE0:
    /* 4B6F0 8005CEE0 0C80023C */  lui        $v0, %hi(D_800C6588)
    /* 4B6F4 8005CEE4 88654224 */  addiu      $v0, $v0, %lo(D_800C6588)
    /* 4B6F8 8005CEE8 0C80033C */  lui        $v1, %hi(D_800C65A4)
    /* 4B6FC 8005CEEC D6730108 */  j          .L8005CF58
    /* 4B700 8005CEF0 A4656324 */   addiu     $v1, $v1, %lo(D_800C65A4)
  .L8005CEF4:
    /* 4B704 8005CEF4 0800C28C */  lw         $v0, 0x8($a2)
    /* 4B708 8005CEF8 00000000 */  nop
    /* 4B70C 8005CEFC FBFF4224 */  addiu      $v0, $v0, -0x5
    /* 4B710 8005CF00 0200422C */  sltiu      $v0, $v0, 0x2
    /* 4B714 8005CF04 0C004010 */  beqz       $v0, .L8005CF38
    /* 4B718 8005CF08 00000000 */   nop
    /* 4B71C 8005CF0C 05008010 */  beqz       $a0, .L8005CF24
    /* 4B720 8005CF10 0C80023C */   lui       $v0, %hi(D_800C6630)
    /* 4B724 8005CF14 30664224 */  addiu      $v0, $v0, %lo(D_800C6630)
    /* 4B728 8005CF18 0C80033C */  lui        $v1, %hi(D_800C656C)
    /* 4B72C 8005CF1C D6730108 */  j          .L8005CF58
    /* 4B730 8005CF20 6C656324 */   addiu     $v1, $v1, %lo(D_800C656C)
  .L8005CF24:
    /* 4B734 8005CF24 0C80023C */  lui        $v0, %hi(D_800C6550)
    /* 4B738 8005CF28 50654224 */  addiu      $v0, $v0, %lo(D_800C6550)
    /* 4B73C 8005CF2C 0C80033C */  lui        $v1, %hi(D_800C656C)
    /* 4B740 8005CF30 D6730108 */  j          .L8005CF58
    /* 4B744 8005CF34 6C656324 */   addiu     $v1, $v1, %lo(D_800C656C)
  .L8005CF38:
    /* 4B748 8005CF38 03008010 */  beqz       $a0, .L8005CF48
    /* 4B74C 8005CF3C 0C80023C */   lui       $v0, %hi(D_800C65F8)
    /* 4B750 8005CF40 D4730108 */  j          .L8005CF50
    /* 4B754 8005CF44 F8654224 */   addiu     $v0, $v0, %lo(D_800C65F8)
  .L8005CF48:
    /* 4B758 8005CF48 0C80023C */  lui        $v0, %hi(D_800C6518)
    /* 4B75C 8005CF4C 18654224 */  addiu      $v0, $v0, %lo(D_800C6518)
  .L8005CF50:
    /* 4B760 8005CF50 0C80033C */  lui        $v1, %hi(D_800C6534)
    /* 4B764 8005CF54 34656324 */  addiu      $v1, $v1, %lo(D_800C6534)
  .L8005CF58:
    /* 4B768 8005CF58 0D80013C */  lui        $at, %hi(D_800CB2F8)
    /* 4B76C 8005CF5C F8B222AC */  sw         $v0, %lo(D_800CB2F8)($at)
    /* 4B770 8005CF60 0D80013C */  lui        $at, %hi(D_800CB2F4)
    /* 4B774 8005CF64 F4B223AC */  sw         $v1, %lo(D_800CB2F4)($at)
    /* 4B778 8005CF68 21900000 */  addu       $s2, $zero, $zero
    /* 4B77C 8005CF6C 04001724 */  addiu      $s7, $zero, 0x4
    /* 4B780 8005CF70 F803D526 */  addiu      $s5, $s6, 0x3F8
    /* 4B784 8005CF74 0804D426 */  addiu      $s4, $s6, 0x408
    /* 4B788 8005CF78 0004D326 */  addiu      $s3, $s6, 0x400
    /* 4B78C 8005CF7C 21880002 */  addu       $s1, $s0, $zero
  .L8005CF80:
    /* 4B790 8005CF80 0000308E */  lw         $s0, 0x0($s1)
    /* 4B794 8005CF84 0D80063C */  lui        $a2, %hi(D_800CB2F4)
    /* 4B798 8005CF88 F4B2C68C */  lw         $a2, %lo(D_800CB2F4)($a2)
    /* 4B79C 8005CF8C 7803C28E */  lw         $v0, 0x378($s6)
    /* 4B7A0 8005CF90 0D80073C */  lui        $a3, %hi(D_800CB2F8)
    /* 4B7A4 8005CF94 F8B2E78C */  lw         $a3, %lo(D_800CB2F8)($a3)
    /* 4B7A8 8005CF98 1000458C */  lw         $a1, 0x10($v0)
    /* 4B7AC 8005CF9C 21200002 */  addu       $a0, $s0, $zero
    /* 4B7B0 8005CFA0 1000B7AF */  sw         $s7, 0x10($sp)
    /* 4B7B4 8005CFA4 EAE0010C */  jal        func_800783A8
    /* 4B7B8 8005CFA8 3805A524 */   addiu     $a1, $a1, 0x538
    /* 4B7BC 8005CFAC 7803C88E */  lw         $t0, 0x378($s6)
    /* 4B7C0 8005CFB0 00000000 */  nop
    /* 4B7C4 8005CFB4 1000028D */  lw         $v0, 0x10($t0)
    /* 4B7C8 8005CFB8 00000000 */  nop
    /* 4B7CC 8005CFBC 5405438C */  lw         $v1, 0x554($v0)
    /* 4B7D0 8005CFC0 00000000 */  nop
    /* 4B7D4 8005CFC4 5004C3AE */  sw         $v1, 0x450($s6)
    /* 4B7D8 8005CFC8 1000048D */  lw         $a0, 0x10($t0)
    /* 4B7DC 8005CFCC 00000000 */  nop
    /* 4B7E0 8005CFD0 5805828C */  lw         $v0, 0x558($a0)
    /* 4B7E4 8005CFD4 04003126 */  addiu      $s1, $s1, 0x4
    /* 4B7E8 8005CFD8 5404C2AE */  sw         $v0, 0x454($s6)
    /* 4B7EC 8005CFDC 4001038E */  lw         $v1, 0x140($s0)
    /* 4B7F0 8005CFE0 01005226 */  addiu      $s2, $s2, 0x1
    /* 4B7F4 8005CFE4 000063AE */  sw         $v1, 0x0($s3)
    /* 4B7F8 8005CFE8 04007326 */  addiu      $s3, $s3, 0x4
    /* 4B7FC 8005CFEC 4401048E */  lw         $a0, 0x144($s0)
    /* 4B800 8005CFF0 0200432A */  slti       $v1, $s2, 0x2
    /* 4B804 8005CFF4 000084AE */  sw         $a0, 0x0($s4)
    /* 4B808 8005CFF8 5001028E */  lw         $v0, 0x150($s0)
    /* 4B80C 8005CFFC 04009426 */  addiu      $s4, $s4, 0x4
    /* 4B810 8005D000 23100200 */  negu       $v0, $v0
    /* 4B814 8005D004 0000A2AE */  sw         $v0, 0x0($s5)
    /* 4B818 8005D008 DDFF6014 */  bnez       $v1, .L8005CF80
    /* 4B81C 8005D00C 0400B526 */   addiu     $s5, $s5, 0x4
    /* 4B820 8005D010 6773010C */  jal        func_8005CD9C
    /* 4B824 8005D014 2120C002 */   addu      $a0, $s6, $zero
    /* 4B828 8005D018 700CD08E */  lw         $s0, 0xC70($s6)
    /* 4B82C 8005D01C 959C020C */  jal        __builtin_vec_new
    /* 4B830 8005D020 2C010424 */   addiu     $a0, $zero, 0x12C
    /* 4B834 8005D024 300002AE */  sw         $v0, 0x30($s0)
    /* 4B838 8005D028 700CD18E */  lw         $s1, 0xC70($s6)
    /* 4B83C 8005D02C 959C020C */  jal        __builtin_vec_new
    /* 4B840 8005D030 F00A0424 */   addiu     $a0, $zero, 0xAF0
    /* 4B844 8005D034 2C0022AE */  sw         $v0, 0x2C($s1)
    /* 4B848 8005D038 700CD08E */  lw         $s0, 0xC70($s6)
    /* 4B84C 8005D03C 959C020C */  jal        __builtin_vec_new
    /* 4B850 8005D040 14000424 */   addiu     $a0, $zero, 0x14
    /* 4B854 8005D044 280002AE */  sw         $v0, 0x28($s0)
    /* 4B858 8005D048 7803C48E */  lw         $a0, 0x378($s6)
    /* 4B85C 8005D04C 00000000 */  nop
    /* 4B860 8005D050 0000828C */  lw         $v0, 0x0($a0)
    /* 4B864 8005D054 00000000 */  nop
    /* 4B868 8005D058 A8004230 */  andi       $v0, $v0, 0xA8
    /* 4B86C 8005D05C 0A004014 */  bnez       $v0, .L8005D088
    /* 4B870 8005D060 00000000 */   nop
    /* 4B874 8005D064 0C80023C */  lui        $v0, %hi(D_800C5F28)
    /* 4B878 8005D068 285F428C */  lw         $v0, %lo(D_800C5F28)($v0)
    /* 4B87C 8005D06C 0C80043C */  lui        $a0, %hi(D_800C5E10)
    /* 4B880 8005D070 105E848C */  lw         $a0, %lo(D_800C5E10)($a0)
    /* 4B884 8005D074 0400468C */  lw         $a2, 0x4($v0)
    /* 4B888 8005D078 7C04C58E */  lw         $a1, 0x47C($s6)
    /* 4B88C 8005D07C A680000C */  jal        func_80020298
    /* 4B890 8005D080 C0300600 */   sll       $a2, $a2, 3
    /* 4B894 8005D084 7803C48E */  lw         $a0, 0x378($s6)
  .L8005D088:
    /* 4B898 8005D088 00000000 */  nop
    /* 4B89C 8005D08C 0000828C */  lw         $v0, 0x0($a0)
    /* 4B8A0 8005D090 00000000 */  nop
    /* 4B8A4 8005D094 54004230 */  andi       $v0, $v0, 0x54
    /* 4B8A8 8005D098 12004010 */  beqz       $v0, .L8005D0E4
    /* 4B8AC 8005D09C 00300524 */   addiu     $a1, $zero, 0x3000
    /* 4B8B0 8005D0A0 0803C48E */  lw         $a0, 0x308($s6)
    /* 4B8B4 8005D0A4 B400C38E */  lw         $v1, 0xB4($s6)
    /* 4B8B8 8005D0A8 0C80093C */  lui        $t1, %hi(D_800C5F28)
    /* 4B8BC 8005D0AC 285F298D */  lw         $t1, %lo(D_800C5F28)($t1)
    /* 4B8C0 8005D0B0 7C04C28E */  lw         $v0, 0x47C($s6)
    /* 4B8C4 8005D0B4 0000668C */  lw         $a2, 0x0($v1)
    /* 4B8C8 8005D0B8 0400288D */  lw         $t0, 0x4($t1)
    /* 4B8CC 8005D0BC 0400678C */  lw         $a3, 0x4($v1)
    /* 4B8D0 8005D0C0 C0400800 */  sll        $t0, $t0, 3
    /* 4B8D4 8005D0C4 21104800 */  addu       $v0, $v0, $t0
    /* 4B8D8 8005D0C8 1000A2AF */  sw         $v0, 0x10($sp)
    /* 4B8DC 8005D0CC 0800238D */  lw         $v1, 0x8($t1)
    /* 4B8E0 8005D0D0 40380700 */  sll        $a3, $a3, 1
    /* 4B8E4 8005D0D4 C0180300 */  sll        $v1, $v1, 3
    /* 4B8E8 8005D0D8 9FAF010C */  jal        func_8006BE7C
    /* 4B8EC 8005D0DC 1400A3AF */   sw        $v1, 0x14($sp)
    /* 4B8F0 8005D0E0 7803C48E */  lw         $a0, 0x378($s6)
  .L8005D0E4:
    /* 4B8F4 8005D0E4 00000000 */  nop
    /* 4B8F8 8005D0E8 0000848C */  lw         $a0, 0x0($a0)
    /* 4B8FC 8005D0EC 00000000 */  nop
    /* 4B900 8005D0F0 A8008430 */  andi       $a0, $a0, 0xA8
    /* 4B904 8005D0F4 9EB2010C */  jal        func_8006CA78
    /* 4B908 8005D0F8 2B200400 */   sltu      $a0, $zero, $a0
    /* 4B90C 8005D0FC 3800BF8F */  lw         $ra, 0x38($sp)
    /* 4B910 8005D100 3400B78F */  lw         $s7, 0x34($sp)
    /* 4B914 8005D104 3000B68F */  lw         $s6, 0x30($sp)
    /* 4B918 8005D108 2C00B58F */  lw         $s5, 0x2C($sp)
    /* 4B91C 8005D10C 2800B48F */  lw         $s4, 0x28($sp)
    /* 4B920 8005D110 2400B38F */  lw         $s3, 0x24($sp)
    /* 4B924 8005D114 2000B28F */  lw         $s2, 0x20($sp)
    /* 4B928 8005D118 1C00B18F */  lw         $s1, 0x1C($sp)
    /* 4B92C 8005D11C 1800B08F */  lw         $s0, 0x18($sp)
    /* 4B930 8005D120 01000224 */  addiu      $v0, $zero, 0x1
    /* 4B934 8005D124 0800E003 */  jr         $ra
    /* 4B938 8005D128 4000BD27 */   addiu     $sp, $sp, 0x40
endlabel func_8005CDA4
