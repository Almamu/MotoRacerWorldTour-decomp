nonmatching func_8003BF0C, 0xC18

glabel func_8003BF0C
    /* 2A71C 8003BF0C 40FFBD27 */  addiu      $sp, $sp, -0xC0
    /* 2A720 8003BF10 A400B3AF */  sw         $s3, 0xA4($sp)
    /* 2A724 8003BF14 21988000 */  addu       $s3, $a0, $zero
    /* 2A728 8003BF18 B800BFAF */  sw         $ra, 0xB8($sp)
    /* 2A72C 8003BF1C B400B7AF */  sw         $s7, 0xB4($sp)
    /* 2A730 8003BF20 B000B6AF */  sw         $s6, 0xB0($sp)
    /* 2A734 8003BF24 AC00B5AF */  sw         $s5, 0xAC($sp)
    /* 2A738 8003BF28 A800B4AF */  sw         $s4, 0xA8($sp)
    /* 2A73C 8003BF2C A000B2AF */  sw         $s2, 0xA0($sp)
    /* 2A740 8003BF30 9C00B1AF */  sw         $s1, 0x9C($sp)
    /* 2A744 8003BF34 9800B0AF */  sw         $s0, 0x98($sp)
    /* 2A748 8003BF38 940A628E */  lw         $v0, 0xA94($s3)
    /* 2A74C 8003BF3C 00000000 */  nop
    /* 2A750 8003BF40 10004230 */  andi       $v0, $v0, 0x10
    /* 2A754 8003BF44 EC024014 */  bnez       $v0, .L8003CAF8
    /* 2A758 8003BF48 01000224 */   addiu     $v0, $zero, 0x1
    /* 2A75C 8003BF4C 900A638E */  lw         $v1, 0xA90($s3)
    /* 2A760 8003BF50 00000000 */  nop
    /* 2A764 8003BF54 04006214 */  bne        $v1, $v0, .L8003BF68
    /* 2A768 8003BF58 21206000 */   addu      $a0, $v1, $zero
    /* 2A76C 8003BF5C 840A708E */  lw         $s0, 0xA84($s3)
    /* 2A770 8003BF60 DBEF0008 */  j          .L8003BF6C
    /* 2A774 8003BF64 00000000 */   nop
  .L8003BF68:
    /* 2A778 8003BF68 800A708E */  lw         $s0, 0xA80($s3)
  .L8003BF6C:
    /* 2A77C 8003BF6C 04008014 */  bnez       $a0, .L8003BF80
    /* 2A780 8003BF70 00000000 */   nop
    /* 2A784 8003BF74 800A648E */  lw         $a0, 0xA80($s3)
    /* 2A788 8003BF78 9DE7000C */  jal        func_80039E74
    /* 2A78C 8003BF7C 21280000 */   addu      $a1, $zero, $zero
  .L8003BF80:
    /* 2A790 8003BF80 800A648E */  lw         $a0, 0xA80($s3)
    /* 2A794 8003BF84 F6E6000C */  jal        func_80039BD8
    /* 2A798 8003BF88 21286002 */   addu      $a1, $s3, $zero
    /* 2A79C 8003BF8C A80680AF */  sw         $zero, %gp_rel(D_800C4D98)($gp)
    /* 2A7A0 8003BF90 AC0680AF */  sw         $zero, %gp_rel(D_800C4D9C)($gp)
    /* 2A7A4 8003BF94 A80A648E */  lw         $a0, 0xAA8($s3)
    /* 2A7A8 8003BF98 980A628E */  lw         $v0, 0xA98($s3)
    /* 2A7AC 8003BF9C 0000838C */  lw         $v1, 0x0($a0)
    /* 2A7B0 8003BFA0 0000428C */  lw         $v0, 0x0($v0)
    /* 2A7B4 8003BFA4 00000000 */  nop
    /* 2A7B8 8003BFA8 02006210 */  beq        $v1, $v0, .L8003BFB4
    /* 2A7BC 8003BFAC D8007626 */   addiu     $s6, $s3, 0xD8
    /* 2A7C0 8003BFB0 000082AC */  sw         $v0, 0x0($a0)
  .L8003BFB4:
    /* 2A7C4 8003BFB4 8D33020C */  jal        func_8008CE34
    /* 2A7C8 8003BFB8 2120C002 */   addu      $a0, $s6, $zero
    /* 2A7CC 8003BFBC 9E01020C */  jal        func_80080678
    /* 2A7D0 8003BFC0 00000000 */   nop
    /* 2A7D4 8003BFC4 900A638E */  lw         $v1, 0xA90($s3)
    /* 2A7D8 8003BFC8 05000224 */  addiu      $v0, $zero, 0x5
    /* 2A7DC 8003BFCC 05006210 */  beq        $v1, $v0, .L8003BFE4
    /* 2A7E0 8003BFD0 06006228 */   slti      $v0, $v1, 0x6
    /* 2A7E4 8003BFD4 0B004010 */  beqz       $v0, .L8003C004
    /* 2A7E8 8003BFD8 00000000 */   nop
    /* 2A7EC 8003BFDC 09006014 */  bnez       $v1, .L8003C004
    /* 2A7F0 8003BFE0 00000000 */   nop
  .L8003BFE4:
    /* 2A7F4 8003BFE4 800A638E */  lw         $v1, 0xA80($s3)
    /* 2A7F8 8003BFE8 840A628E */  lw         $v0, 0xA84($s3)
    /* 2A7FC 8003BFEC 00000000 */  nop
    /* 2A800 8003BFF0 04006214 */  bne        $v1, $v0, .L8003C004
    /* 2A804 8003BFF4 00000000 */   nop
    /* 2A808 8003BFF8 2E000292 */  lbu        $v0, 0x2E($s0)
    /* 2A80C 8003BFFC 00000000 */  nop
    /* 2A810 8003C000 900A62AE */  sw         $v0, 0xA90($s3)
  .L8003C004:
    /* 2A814 8003C004 7001638E */  lw         $v1, 0x170($s3)
    /* 2A818 8003C008 FFFF0224 */  addiu      $v0, $zero, -0x1
    /* 2A81C 8003C00C 17006210 */  beq        $v1, $v0, .L8003C06C
    /* 2A820 8003C010 00000000 */   nop
    /* 2A824 8003C014 0400628E */  lw         $v0, 0x4($s3)
    /* 2A828 8003C018 00000000 */  nop
    /* 2A82C 8003C01C 08004014 */  bnez       $v0, .L8003C040
    /* 2A830 8003C020 00000000 */   nop
    /* 2A834 8003C024 7401628E */  lw         $v0, 0x174($s3)
    /* 2A838 8003C028 0D80033C */  lui        $v1, %hi(D_800D6128)
    /* 2A83C 8003C02C 2861638C */  lw         $v1, %lo(D_800D6128)($v1)
    /* 2A840 8003C030 00000000 */  nop
    /* 2A844 8003C034 21104300 */  addu       $v0, $v0, $v1
    /* 2A848 8003C038 11F00008 */  j          .L8003C044
    /* 2A84C 8003C03C 740162AE */   sw        $v0, 0x174($s3)
  .L8003C040:
    /* 2A850 8003C040 740160AE */  sw         $zero, 0x174($s3)
  .L8003C044:
    /* 2A854 8003C044 7401638E */  lw         $v1, 0x174($s3)
    /* 2A858 8003C048 7001628E */  lw         $v0, 0x170($s3)
    /* 2A85C 8003C04C 00000000 */  nop
    /* 2A860 8003C050 2A104300 */  slt        $v0, $v0, $v1
    /* 2A864 8003C054 05004010 */  beqz       $v0, .L8003C06C
    /* 2A868 8003C058 00000000 */   nop
    /* 2A86C 8003C05C 940A628E */  lw         $v0, 0xA94($s3)
    /* 2A870 8003C060 00000000 */  nop
    /* 2A874 8003C064 08004234 */  ori        $v0, $v0, 0x8
    /* 2A878 8003C068 940A62AE */  sw         $v0, 0xA94($s3)
  .L8003C06C:
    /* 2A87C 8003C06C 5001638E */  lw         $v1, 0x150($s3)
    /* 2A880 8003C070 FFFF0224 */  addiu      $v0, $zero, -0x1
    /* 2A884 8003C074 1F006210 */  beq        $v1, $v0, .L8003C0F4
    /* 2A888 8003C078 0C80053C */   lui       $a1, %hi(D_800C4DA0)
    /* 2A88C 8003C07C A04DA524 */  addiu      $a1, $a1, %lo(D_800C4DA0)
    /* 2A890 8003C080 3800048E */  lw         $a0, 0x38($s0)
    /* 2A894 8003C084 845F000C */  jal        func_80017E10
    /* 2A898 8003C088 0B000624 */   addiu     $a2, $zero, 0xB
    /* 2A89C 8003C08C 0D80073C */  lui        $a3, %hi(D_800CC030)
    /* 2A8A0 8003C090 5001658E */  lw         $a1, 0x150($s3)
    /* 2A8A4 8003C094 30C0E724 */  addiu      $a3, $a3, %lo(D_800CC030)
    /* 2A8A8 8003C098 80180500 */  sll        $v1, $a1, 2
    /* 2A8AC 8003C09C 21186700 */  addu       $v1, $v1, $a3
    /* 2A8B0 8003C0A0 0000648C */  lw         $a0, 0x0($v1)
    /* 2A8B4 8003C0A4 1800A327 */  addiu      $v1, $sp, 0x18
    /* 2A8B8 8003C0A8 0D80013C */  lui        $at, %hi(D_800CBCA0)
    /* 2A8BC 8003C0AC A0BC25AC */  sw         $a1, %lo(D_800CBCA0)($at)
    /* 2A8C0 8003C0B0 0D80013C */  lui        $at, %hi(D_800CBCA4)
    /* 2A8C4 8003C0B4 A4BC24AC */  sw         $a0, %lo(D_800CBCA4)($at)
    /* 2A8C8 8003C0B8 08004A8C */  lw         $t2, 0x8($v0)
    /* 2A8CC 8003C0BC 0C004B8C */  lw         $t3, 0xC($v0)
    /* 2A8D0 8003C0C0 10004C8C */  lw         $t4, 0x10($v0)
    /* 2A8D4 8003C0C4 1800AAAF */  sw         $t2, 0x18($sp)
    /* 2A8D8 8003C0C8 1C00ABAF */  sw         $t3, 0x1C($sp)
    /* 2A8DC 8003C0CC 2000ACAF */  sw         $t4, 0x20($sp)
    /* 2A8E0 8003C0D0 1800A28F */  lw         $v0, 0x18($sp)
    /* 2A8E4 8003C0D4 0400648C */  lw         $a0, 0x4($v1)
    /* 2A8E8 8003C0D8 0800658C */  lw         $a1, 0x8($v1)
    /* 2A8EC 8003C0DC 0D80013C */  lui        $at, %hi(D_800CBCA8)
    /* 2A8F0 8003C0E0 A8BC22AC */  sw         $v0, %lo(D_800CBCA8)($at)
    /* 2A8F4 8003C0E4 0D80013C */  lui        $at, %hi(D_800CBCAC)
    /* 2A8F8 8003C0E8 ACBC24AC */  sw         $a0, %lo(D_800CBCAC)($at)
    /* 2A8FC 8003C0EC 0D80013C */  lui        $at, %hi(D_800CBCB0)
    /* 2A900 8003C0F0 B0BC25AC */  sw         $a1, %lo(D_800CBCB0)($at)
  .L8003C0F4:
    /* 2A904 8003C0F4 840A638E */  lw         $v1, 0xA84($s3)
    /* 2A908 8003C0F8 800A648E */  lw         $a0, 0xA80($s3)
    /* 2A90C 8003C0FC 00000000 */  nop
    /* 2A910 8003C100 06008314 */  bne        $a0, $v1, .L8003C11C
    /* 2A914 8003C104 00000000 */   nop
    /* 2A918 8003C108 940A628E */  lw         $v0, 0xA94($s3)
    /* 2A91C 8003C10C 00000000 */  nop
    /* 2A920 8003C110 0C004230 */  andi       $v0, $v0, 0xC
    /* 2A924 8003C114 55024010 */  beqz       $v0, .L8003CA6C
    /* 2A928 8003C118 00000000 */   nop
  .L8003C11C:
    /* 2A92C 8003C11C 900A658E */  lw         $a1, 0xA90($s3)
    /* 2A930 8003C120 01000624 */  addiu      $a2, $zero, 0x1
    /* 2A934 8003C124 C200A610 */  beq        $a1, $a2, .L8003C430
    /* 2A938 8003C128 0200A228 */   slti      $v0, $a1, 0x2
    /* 2A93C 8003C12C 05004010 */  beqz       $v0, .L8003C144
    /* 2A940 8003C130 02000224 */   addiu     $v0, $zero, 0x2
    /* 2A944 8003C134 0E00A010 */  beqz       $a1, .L8003C170
    /* 2A948 8003C138 01000524 */   addiu     $a1, $zero, 0x1
    /* 2A94C 8003C13C 9BF20008 */  j          .L8003CA6C
    /* 2A950 8003C140 00000000 */   nop
  .L8003C144:
    /* 2A954 8003C144 CC01A210 */  beq        $a1, $v0, .L8003C878
    /* 2A958 8003C148 03000224 */   addiu     $v0, $zero, 0x3
    /* 2A95C 8003C14C D201A210 */  beq        $a1, $v0, .L8003C898
    /* 2A960 8003C150 00000000 */   nop
    /* 2A964 8003C154 9BF20008 */  j          .L8003CA6C
    /* 2A968 8003C158 00000000 */   nop
  .L8003C15C:
    /* 2A96C 8003C15C 0000428E */  lw         $v0, 0x0($s2)
    /* 2A970 8003C160 00000000 */  nop
    /* 2A974 8003C164 21105100 */  addu       $v0, $v0, $s1
    /* 2A978 8003C168 82F00008 */  j          .L8003C208
    /* 2A97C 8003C16C 000082AE */   sw        $v0, 0x0($s4)
  .L8003C170:
    /* 2A980 8003C170 9DE7000C */  jal        func_80039E74
    /* 2A984 8003C174 900A66AE */   sw        $a2, 0xA90($s3)
    /* 2A988 8003C178 840A648E */  lw         $a0, 0xA84($s3)
    /* 2A98C 8003C17C 00000000 */  nop
    /* 2A990 8003C180 A6008010 */  beqz       $a0, .L8003C41C
    /* 2A994 8003C184 21A80000 */   addu      $s5, $zero, $zero
    /* 2A998 8003C188 0000858C */  lw         $a1, 0x0($a0)
    /* 2A99C 8003C18C 1E67000C */  jal        func_80019C78
    /* 2A9A0 8003C190 50008424 */   addiu     $a0, $a0, 0x50
    /* 2A9A4 8003C194 21204000 */  addu       $a0, $v0, $zero
    /* 2A9A8 8003C198 CB66000C */  jal        func_80019B2C
    /* 2A9AC 8003C19C FFFF0524 */   addiu     $a1, $zero, -0x1
    /* 2A9B0 8003C1A0 2800A427 */  addiu      $a0, $sp, 0x28
    /* 2A9B4 8003C1A4 840A628E */  lw         $v0, 0xA84($s3)
    /* 2A9B8 8003C1A8 0C80053C */  lui        $a1, %hi(D_800C4DAC)
    /* 2A9BC 8003C1AC 0000468C */  lw         $a2, 0x0($v0)
    /* 2A9C0 8003C1B0 96D9020C */  jal        func_800B6658
    /* 2A9C4 8003C1B4 AC4DA524 */   addiu     $a1, $a1, %lo(D_800C4DAC)
    /* 2A9C8 8003C1B8 5C00728E */  lw         $s2, 0x5C($s3)
    /* 2A9CC 8003C1BC 21800000 */  addu       $s0, $zero, $zero
    /* 2A9D0 8003C1C0 6800A0AF */  sw         $zero, 0x68($sp)
    /* 2A9D4 8003C1C4 0400428E */  lw         $v0, 0x4($s2)
    /* 2A9D8 8003C1C8 00000000 */  nop
    /* 2A9DC 8003C1CC 0E004018 */  blez       $v0, .L8003C208
    /* 2A9E0 8003C1D0 6800B427 */   addiu     $s4, $sp, 0x68
  .L8003C1D4:
    /* 2A9E4 8003C1D4 0000428E */  lw         $v0, 0x0($s2)
    /* 2A9E8 8003C1D8 C0881000 */  sll        $s1, $s0, 3
    /* 2A9EC 8003C1DC 21102202 */  addu       $v0, $s1, $v0
    /* 2A9F0 8003C1E0 0000448C */  lw         $a0, 0x0($v0)
    /* 2A9F4 8003C1E4 2B98020C */  jal        func_800A60AC
    /* 2A9F8 8003C1E8 2800A527 */   addiu     $a1, $sp, 0x28
    /* 2A9FC 8003C1EC DBFF4010 */  beqz       $v0, .L8003C15C
    /* 2AA00 8003C1F0 01001026 */   addiu     $s0, $s0, 0x1
    /* 2AA04 8003C1F4 0400428E */  lw         $v0, 0x4($s2)
    /* 2AA08 8003C1F8 00000000 */  nop
    /* 2AA0C 8003C1FC 2A100202 */  slt        $v0, $s0, $v0
    /* 2AA10 8003C200 F4FF4014 */  bnez       $v0, .L8003C1D4
    /* 2AA14 8003C204 00000000 */   nop
  .L8003C208:
    /* 2AA18 8003C208 6800A28F */  lw         $v0, 0x68($sp)
    /* 2AA1C 8003C20C 00000000 */  nop
    /* 2AA20 8003C210 0A004010 */  beqz       $v0, .L8003C23C
    /* 2AA24 8003C214 00000000 */   nop
    /* 2AA28 8003C218 0400428C */  lw         $v0, 0x4($v0)
    /* 2AA2C 8003C21C 00000000 */  nop
    /* 2AA30 8003C220 06004010 */  beqz       $v0, .L8003C23C
    /* 2AA34 8003C224 21206002 */   addu      $a0, $s3, $zero
    /* 2AA38 8003C228 940A658E */  lw         $a1, 0xA94($s3)
    /* 2AA3C 8003C22C 00000000 */  nop
    /* 2AA40 8003C230 0100A538 */  xori       $a1, $a1, 0x1
    /* 2AA44 8003C234 09F84000 */  jalr       $v0
    /* 2AA48 8003C238 0100A530 */   andi      $a1, $a1, 0x1
  .L8003C23C:
    /* 2AA4C 8003C23C 940A628E */  lw         $v0, 0xA94($s3)
    /* 2AA50 8003C240 00000000 */  nop
    /* 2AA54 8003C244 01004230 */  andi       $v0, $v0, 0x1
    /* 2AA58 8003C248 04004014 */  bnez       $v0, .L8003C25C
    /* 2AA5C 8003C24C 04001124 */   addiu     $s1, $zero, 0x4
    /* 2AA60 8003C250 840A628E */  lw         $v0, 0xA84($s3)
    /* 2AA64 8003C254 98F00008 */  j          .L8003C260
    /* 2AA68 8003C258 02001124 */   addiu     $s1, $zero, 0x2
  .L8003C25C:
    /* 2AA6C 8003C25C 840A628E */  lw         $v0, 0xA84($s3)
  .L8003C260:
    /* 2AA70 8003C260 00000000 */  nop
    /* 2AA74 8003C264 08004624 */  addiu      $a2, $v0, 0x8
    /* 2AA78 8003C268 840A648E */  lw         $a0, 0xA84($s3)
    /* 2AA7C 8003C26C 92EC000C */  jal        func_8003B248
    /* 2AA80 8003C270 21282002 */   addu      $a1, $s1, $zero
    /* 2AA84 8003C274 21804000 */  addu       $s0, $v0, $zero
    /* 2AA88 8003C278 06000016 */  bnez       $s0, .L8003C294
    /* 2AA8C 8003C27C 21282002 */   addu      $a1, $s1, $zero
    /* 2AA90 8003C280 840A648E */  lw         $a0, 0xA84($s3)
    /* 2AA94 8003C284 0C80063C */  lui        $a2, %hi(D_800C4DB4)
    /* 2AA98 8003C288 92EC000C */  jal        func_8003B248
    /* 2AA9C 8003C28C B44DC624 */   addiu     $a2, $a2, %lo(D_800C4DB4)
    /* 2AAA0 8003C290 21804000 */  addu       $s0, $v0, $zero
  .L8003C294:
    /* 2AAA4 8003C294 940A628E */  lw         $v0, 0xA94($s3)
    /* 2AAA8 8003C298 DFFF0324 */  addiu      $v1, $zero, -0x21
    /* 2AAAC 8003C29C 24104300 */  and        $v0, $v0, $v1
    /* 2AAB0 8003C2A0 18000012 */  beqz       $s0, .L8003C304
    /* 2AAB4 8003C2A4 940A62AE */   sw        $v0, 0xA94($s3)
    /* 2AAB8 8003C2A8 3000048E */  lw         $a0, 0x30($s0)
    /* 2AABC 8003C2AC E757000C */  jal        Get__5CName
    /* 2AAC0 8003C2B0 00000000 */   nop
    /* 2AAC4 8003C2B4 21204000 */  addu       $a0, $v0, $zero
    /* 2AAC8 8003C2B8 0C80053C */  lui        $a1, %hi(D_800C4DB8)
    /* 2AACC 8003C2BC 2B98020C */  jal        func_800A60AC
    /* 2AAD0 8003C2C0 B84DA524 */   addiu     $a1, $a1, %lo(D_800C4DB8)
    /* 2AAD4 8003C2C4 0F004010 */  beqz       $v0, .L8003C304
    /* 2AAD8 8003C2C8 FFFF0224 */   addiu     $v0, $zero, -0x1
    /* 2AADC 8003C2CC 1000A2AF */  sw         $v0, 0x10($sp)
    /* 2AAE0 8003C2D0 3000058E */  lw         $a1, 0x30($s0)
    /* 2AAE4 8003C2D4 2C00068E */  lw         $a2, 0x2C($s0)
    /* 2AAE8 8003C2D8 840A648E */  lw         $a0, 0xA84($s3)
    /* 2AAEC 8003C2DC 2800078E */  lw         $a3, 0x28($s0)
    /* 2AAF0 8003C2E0 4367000C */  jal        func_80019D0C
    /* 2AAF4 8003C2E4 50008424 */   addiu     $a0, $a0, 0x50
    /* 2AAF8 8003C2E8 3000048E */  lw         $a0, 0x30($s0)
    /* 2AAFC 8003C2EC 0F66000C */  jal        func_8001983C
    /* 2AB00 8003C2F0 01001524 */   addiu     $s5, $zero, 0x1
    /* 2AB04 8003C2F4 940A638E */  lw         $v1, 0xA94($s3)
    /* 2AB08 8003C2F8 00000000 */  nop
    /* 2AB0C 8003C2FC 20006334 */  ori        $v1, $v1, 0x20
    /* 2AB10 8003C300 940A63AE */  sw         $v1, 0xA94($s3)
  .L8003C304:
    /* 2AB14 8003C304 840A638E */  lw         $v1, 0xA84($s3)
    /* 2AB18 8003C308 00000000 */  nop
    /* 2AB1C 8003C30C 30006290 */  lbu        $v0, 0x30($v1)
    /* 2AB20 8003C310 00000000 */  nop
    /* 2AB24 8003C314 02110200 */  srl        $v0, $v0, 4
    /* 2AB28 8003C318 FEFF4224 */  addiu      $v0, $v0, -0x2
    /* 2AB2C 8003C31C 0200422C */  sltiu      $v0, $v0, 0x2
    /* 2AB30 8003C320 21004010 */  beqz       $v0, .L8003C3A8
    /* 2AB34 8003C324 00000000 */   nop
    /* 2AB38 8003C328 1F000012 */  beqz       $s0, .L8003C3A8
    /* 2AB3C 8003C32C 2120C002 */   addu      $a0, $s6, $zero
    /* 2AB40 8003C330 3000028E */  lw         $v0, 0x30($s0)
    /* 2AB44 8003C334 00000000 */  nop
    /* 2AB48 8003C338 1400438C */  lw         $v1, 0x14($v0)
    /* 2AB4C 8003C33C 5800C0AE */  sw         $zero, 0x58($s6)
    /* 2AB50 8003C340 5400C3AE */  sw         $v1, 0x54($s6)
    /* 2AB54 8003C344 840A688E */  lw         $t0, 0xA84($s3)
    /* 2AB58 8003C348 00000000 */  nop
    /* 2AB5C 8003C34C 3400028D */  lw         $v0, 0x34($t0)
    /* 2AB60 8003C350 00000000 */  nop
    /* 2AB64 8003C354 1000438C */  lw         $v1, 0x10($v0)
    /* 2AB68 8003C358 00000000 */  nop
    /* 2AB6C 8003C35C 6C00A3AF */  sw         $v1, 0x6C($sp)
    /* 2AB70 8003C360 3400058D */  lw         $a1, 0x34($t0)
    /* 2AB74 8003C364 00000000 */  nop
    /* 2AB78 8003C368 1400A28C */  lw         $v0, 0x14($a1)
    /* 2AB7C 8003C36C 00000000 */  nop
    /* 2AB80 8003C370 7000A2AF */  sw         $v0, 0x70($sp)
    /* 2AB84 8003C374 3400038D */  lw         $v1, 0x34($t0)
    /* 2AB88 8003C378 7000A627 */  addiu      $a2, $sp, 0x70
    /* 2AB8C 8003C37C 1800628C */  lw         $v0, 0x18($v1)
    /* 2AB90 8003C380 7400A727 */  addiu      $a3, $sp, 0x74
    /* 2AB94 8003C384 7400A2AF */  sw         $v0, 0x74($sp)
    /* 2AB98 8003C388 3400038D */  lw         $v1, 0x34($t0)
    /* 2AB9C 8003C38C 6C00A527 */  addiu      $a1, $sp, 0x6C
    /* 2ABA0 8003C390 1C00698C */  lw         $t1, 0x1C($v1)
    /* 2ABA4 8003C394 7800A227 */  addiu      $v0, $sp, 0x78
    /* 2ABA8 8003C398 1000A2AF */  sw         $v0, 0x10($sp)
    /* 2ABAC 8003C39C 0F32020C */  jal        func_8008C83C
    /* 2ABB0 8003C3A0 7800A9AF */   sw        $t1, 0x78($sp)
    /* 2ABB4 8003C3A4 840A638E */  lw         $v1, 0xA84($s3)
  .L8003C3A8:
    /* 2ABB8 8003C3A8 00000000 */  nop
    /* 2ABBC 8003C3AC 09006010 */  beqz       $v1, .L8003C3D4
    /* 2ABC0 8003C3B0 00000000 */   nop
    /* 2ABC4 8003C3B4 30006290 */  lbu        $v0, 0x30($v1)
    /* 2ABC8 8003C3B8 00000000 */  nop
    /* 2ABCC 8003C3BC 02110200 */  srl        $v0, $v0, 4
    /* 2ABD0 8003C3C0 04004014 */  bnez       $v0, .L8003C3D4
    /* 2ABD4 8003C3C4 21206002 */   addu      $a0, $s3, $zero
    /* 2ABD8 8003C3C8 3400668C */  lw         $a2, 0x34($v1)
    /* 2ABDC 8003C3CC 57EF000C */  jal        func_8003BD5C
    /* 2ABE0 8003C3D0 21280000 */   addu      $a1, $zero, $zero
  .L8003C3D4:
    /* 2ABE4 8003C3D4 800A648E */  lw         $a0, 0xA80($s3)
    /* 2ABE8 8003C3D8 9DE7000C */  jal        func_80039E74
    /* 2ABEC 8003C3DC 06000524 */   addiu     $a1, $zero, 0x6
    /* 2ABF0 8003C3E0 940A628E */  lw         $v0, 0xA94($s3)
    /* 2ABF4 8003C3E4 00000000 */  nop
    /* 2ABF8 8003C3E8 01004230 */  andi       $v0, $v0, 0x1
    /* 2ABFC 8003C3EC 04004014 */  bnez       $v0, .L8003C400
    /* 2AC00 8003C3F0 03000524 */   addiu     $a1, $zero, 0x3
    /* 2AC04 8003C3F4 800A648E */  lw         $a0, 0xA80($s3)
    /* 2AC08 8003C3F8 01F10008 */  j          .L8003C404
    /* 2AC0C 8003C3FC 02000524 */   addiu     $a1, $zero, 0x2
  .L8003C400:
    /* 2AC10 8003C400 800A648E */  lw         $a0, 0xA80($s3)
  .L8003C404:
    /* 2AC14 8003C404 9DE7000C */  jal        func_80039E74
    /* 2AC18 8003C408 00000000 */   nop
    /* 2AC1C 8003C40C 0700A012 */  beqz       $s5, .L8003C42C
    /* 2AC20 8003C410 00000000 */   nop
    /* 2AC24 8003C414 9BF20008 */  j          .L8003CA6C
    /* 2AC28 8003C418 00000000 */   nop
  .L8003C41C:
    /* 2AC2C 8003C41C 21206002 */  addu       $a0, $s3, $zero
    /* 2AC30 8003C420 21280000 */  addu       $a1, $zero, $zero
    /* 2AC34 8003C424 57EF000C */  jal        func_8003BD5C
    /* 2AC38 8003C428 21300000 */   addu      $a2, $zero, $zero
  .L8003C42C:
    /* 2AC3C 8003C42C 840A638E */  lw         $v1, 0xA84($s3)
  .L8003C430:
    /* 2AC40 8003C430 00000000 */  nop
    /* 2AC44 8003C434 05006010 */  beqz       $v1, .L8003C44C
    /* 2AC48 8003C438 00000000 */   nop
    /* 2AC4C 8003C43C 5800628C */  lw         $v0, 0x58($v1)
    /* 2AC50 8003C440 00000000 */  nop
    /* 2AC54 8003C444 89014014 */  bnez       $v0, .L8003CA6C
    /* 2AC58 8003C448 00000000 */   nop
  .L8003C44C:
    /* 2AC5C 8003C44C 800A628E */  lw         $v0, 0xA80($s3)
    /* 2AC60 8003C450 00000000 */  nop
    /* 2AC64 8003C454 2800428C */  lw         $v0, 0x28($v0)
    /* 2AC68 8003C458 00000000 */  nop
    /* 2AC6C 8003C45C 08004010 */  beqz       $v0, .L8003C480
    /* 2AC70 8003C460 21B80000 */   addu      $s7, $zero, $zero
    /* 2AC74 8003C464 22F10008 */  j          .L8003C488
    /* 2AC78 8003C468 0C0062AE */   sw        $v0, 0xC($s3)
  .L8003C46C:
    /* 2AC7C 8003C46C 0000428E */  lw         $v0, 0x0($s2)
    /* 2AC80 8003C470 00000000 */  nop
    /* 2AC84 8003C474 21105100 */  addu       $v0, $v0, $s1
    /* 2AC88 8003C478 5AF10008 */  j          .L8003C568
    /* 2AC8C 8003C47C 0000A2AE */   sw        $v0, 0x0($s5)
  .L8003C480:
    /* 2AC90 8003C480 BE000224 */  addiu      $v0, $zero, 0xBE
    /* 2AC94 8003C484 0C0062AE */  sw         $v0, 0xC($s3)
  .L8003C488:
    /* 2AC98 8003C488 940A628E */  lw         $v0, 0xA94($s3)
    /* 2AC9C 8003C48C 02000324 */  addiu      $v1, $zero, 0x2
    /* 2ACA0 8003C490 04004230 */  andi       $v0, $v0, 0x4
    /* 2ACA4 8003C494 04004014 */  bnez       $v0, .L8003C4A8
    /* 2ACA8 8003C498 900A63AE */   sw        $v1, 0xA90($s3)
    /* 2ACAC 8003C49C 800A648E */  lw         $a0, 0xA80($s3)
    /* 2ACB0 8003C4A0 25EB000C */  jal        func_8003AC94
    /* 2ACB4 8003C4A4 00000000 */   nop
  .L8003C4A8:
    /* 2ACB8 8003C4A8 840A658E */  lw         $a1, 0xA84($s3)
    /* 2ACBC 8003C4AC 00000000 */  nop
    /* 2ACC0 8003C4B0 1000A010 */  beqz       $a1, .L8003C4F4
    /* 2ACC4 8003C4B4 00000000 */   nop
    /* 2ACC8 8003C4B8 0400A58C */  lw         $a1, 0x4($a1)
    /* 2ACCC 8003C4BC 00000000 */  nop
    /* 2ACD0 8003C4C0 0C00A010 */  beqz       $a1, .L8003C4F4
    /* 2ACD4 8003C4C4 00000000 */   nop
    /* 2ACD8 8003C4C8 1E67000C */  jal        func_80019C78
    /* 2ACDC 8003C4CC 64006426 */   addiu     $a0, $s3, 0x64
    /* 2ACE0 8003C4D0 21804000 */  addu       $s0, $v0, $zero
    /* 2ACE4 8003C4D4 21200002 */  addu       $a0, $s0, $zero
    /* 2ACE8 8003C4D8 01000524 */  addiu      $a1, $zero, 0x1
    /* 2ACEC 8003C4DC F166000C */  jal        func_80019BC4
    /* 2ACF0 8003C4E0 FFFF0624 */   addiu     $a2, $zero, -0x1
    /* 2ACF4 8003C4E4 21200002 */  addu       $a0, $s0, $zero
    /* 2ACF8 8003C4E8 1800053C */  lui        $a1, (0x180000 >> 16)
    /* 2ACFC 8003C4EC A666000C */  jal        func_80019A98
    /* 2AD00 8003C4F0 21300000 */   addu      $a2, $zero, $zero
  .L8003C4F4:
    /* 2AD04 8003C4F4 1F5A000C */  jal        func_8001687C
    /* 2AD08 8003C4F8 21800000 */   addu      $s0, $zero, $zero
    /* 2AD0C 8003C4FC 1800A427 */  addiu      $a0, $sp, 0x18
    /* 2AD10 8003C500 0C80053C */  lui        $a1, %hi(D_800C4DC0)
    /* 2AD14 8003C504 800A628E */  lw         $v0, 0xA80($s3)
    /* 2AD18 8003C508 00000000 */  nop
    /* 2AD1C 8003C50C 0000468C */  lw         $a2, 0x0($v0)
    /* 2AD20 8003C510 96D9020C */  jal        func_800B6658
    /* 2AD24 8003C514 C04DA524 */   addiu     $a1, $a1, %lo(D_800C4DC0)
    /* 2AD28 8003C518 7C00A0AF */  sw         $zero, 0x7C($sp)
    /* 2AD2C 8003C51C 5C00728E */  lw         $s2, 0x5C($s3)
    /* 2AD30 8003C520 1800B427 */  addiu      $s4, $sp, 0x18
    /* 2AD34 8003C524 0400428E */  lw         $v0, 0x4($s2)
    /* 2AD38 8003C528 00000000 */  nop
    /* 2AD3C 8003C52C 0E004018 */  blez       $v0, .L8003C568
    /* 2AD40 8003C530 7C00B527 */   addiu     $s5, $sp, 0x7C
  .L8003C534:
    /* 2AD44 8003C534 0000428E */  lw         $v0, 0x0($s2)
    /* 2AD48 8003C538 C0881000 */  sll        $s1, $s0, 3
    /* 2AD4C 8003C53C 21102202 */  addu       $v0, $s1, $v0
    /* 2AD50 8003C540 0000448C */  lw         $a0, 0x0($v0)
    /* 2AD54 8003C544 2B98020C */  jal        func_800A60AC
    /* 2AD58 8003C548 21288002 */   addu      $a1, $s4, $zero
    /* 2AD5C 8003C54C C7FF4010 */  beqz       $v0, .L8003C46C
    /* 2AD60 8003C550 01001026 */   addiu     $s0, $s0, 0x1
    /* 2AD64 8003C554 0400428E */  lw         $v0, 0x4($s2)
    /* 2AD68 8003C558 00000000 */  nop
    /* 2AD6C 8003C55C 2A100202 */  slt        $v0, $s0, $v0
    /* 2AD70 8003C560 F4FF4014 */  bnez       $v0, .L8003C534
    /* 2AD74 8003C564 00000000 */   nop
  .L8003C568:
    /* 2AD78 8003C568 7C00A28F */  lw         $v0, 0x7C($sp)
    /* 2AD7C 8003C56C 00000000 */  nop
    /* 2AD80 8003C570 0A004010 */  beqz       $v0, .L8003C59C
    /* 2AD84 8003C574 00000000 */   nop
    /* 2AD88 8003C578 0400428C */  lw         $v0, 0x4($v0)
    /* 2AD8C 8003C57C 00000000 */  nop
    /* 2AD90 8003C580 06004010 */  beqz       $v0, .L8003C59C
    /* 2AD94 8003C584 21206002 */   addu      $a0, $s3, $zero
    /* 2AD98 8003C588 940A658E */  lw         $a1, 0xA94($s3)
    /* 2AD9C 8003C58C 00000000 */  nop
    /* 2ADA0 8003C590 0100A538 */  xori       $a1, $a1, 0x1
    /* 2ADA4 8003C594 09F84000 */  jalr       $v0
    /* 2ADA8 8003C598 0100A530 */   andi      $a1, $a1, 0x1
  .L8003C59C:
    /* 2ADAC 8003C59C 800A638E */  lw         $v1, 0xA80($s3)
    /* 2ADB0 8003C5A0 00000000 */  nop
    /* 2ADB4 8003C5A4 0400628C */  lw         $v0, 0x4($v1)
    /* 2ADB8 8003C5A8 00000000 */  nop
    /* 2ADBC 8003C5AC 07004010 */  beqz       $v0, .L8003C5CC
    /* 2ADC0 8003C5B0 64006426 */   addiu     $a0, $s3, 0x64
    /* 2ADC4 8003C5B4 21300000 */  addu       $a2, $zero, $zero
    /* 2ADC8 8003C5B8 FFFF0224 */  addiu      $v0, $zero, -0x1
    /* 2ADCC 8003C5BC 1000A2AF */  sw         $v0, 0x10($sp)
    /* 2ADD0 8003C5C0 0400658C */  lw         $a1, 0x4($v1)
    /* 2ADD4 8003C5C4 5867000C */  jal        func_80019D60
    /* 2ADD8 8003C5C8 21380000 */   addu      $a3, $zero, $zero
  .L8003C5CC:
    /* 2ADDC 8003C5CC 940A648E */  lw         $a0, 0xA94($s3)
    /* 2ADE0 8003C5D0 00000000 */  nop
    /* 2ADE4 8003C5D4 04008230 */  andi       $v0, $a0, 0x4
    /* 2ADE8 8003C5D8 35004014 */  bnez       $v0, .L8003C6B0
    /* 2ADEC 8003C5DC 21800000 */   addu      $s0, $zero, $zero
    /* 2ADF0 8003C5E0 800A638E */  lw         $v1, 0xA80($s3)
    /* 2ADF4 8003C5E4 01008230 */  andi       $v0, $a0, 0x1
    /* 2ADF8 8003C5E8 07004014 */  bnez       $v0, .L8003C608
    /* 2ADFC 8003C5EC 21300000 */   addu      $a2, $zero, $zero
    /* 2AE00 8003C5F0 840A628E */  lw         $v0, 0xA84($s3)
    /* 2AE04 8003C5F4 00000000 */  nop
    /* 2AE08 8003C5F8 05004010 */  beqz       $v0, .L8003C610
    /* 2AE0C 8003C5FC 01001124 */   addiu     $s1, $zero, 0x1
    /* 2AE10 8003C600 84F10008 */  j          .L8003C610
    /* 2AE14 8003C604 08004624 */   addiu     $a2, $v0, 0x8
  .L8003C608:
    /* 2AE18 8003C608 03001124 */  addiu      $s1, $zero, 0x3
    /* 2AE1C 8003C60C 08006624 */  addiu      $a2, $v1, 0x8
  .L8003C610:
    /* 2AE20 8003C610 04006010 */  beqz       $v1, .L8003C624
    /* 2AE24 8003C614 21206000 */   addu      $a0, $v1, $zero
    /* 2AE28 8003C618 92EC000C */  jal        func_8003B248
    /* 2AE2C 8003C61C 21282002 */   addu      $a1, $s1, $zero
    /* 2AE30 8003C620 21804000 */  addu       $s0, $v0, $zero
  .L8003C624:
    /* 2AE34 8003C624 06000016 */  bnez       $s0, .L8003C640
    /* 2AE38 8003C628 21282002 */   addu      $a1, $s1, $zero
    /* 2AE3C 8003C62C 800A648E */  lw         $a0, 0xA80($s3)
    /* 2AE40 8003C630 0C80063C */  lui        $a2, %hi(D_800C4DB4)
    /* 2AE44 8003C634 92EC000C */  jal        func_8003B248
    /* 2AE48 8003C638 B44DC624 */   addiu     $a2, $a2, %lo(D_800C4DB4)
    /* 2AE4C 8003C63C 21804000 */  addu       $s0, $v0, $zero
  .L8003C640:
    /* 2AE50 8003C640 940A628E */  lw         $v0, 0xA94($s3)
    /* 2AE54 8003C644 DFFF0324 */  addiu      $v1, $zero, -0x21
    /* 2AE58 8003C648 24104300 */  and        $v0, $v0, $v1
    /* 2AE5C 8003C64C 18000012 */  beqz       $s0, .L8003C6B0
    /* 2AE60 8003C650 940A62AE */   sw        $v0, 0xA94($s3)
    /* 2AE64 8003C654 3000048E */  lw         $a0, 0x30($s0)
    /* 2AE68 8003C658 E757000C */  jal        Get__5CName
    /* 2AE6C 8003C65C 00000000 */   nop
    /* 2AE70 8003C660 21204000 */  addu       $a0, $v0, $zero
    /* 2AE74 8003C664 0C80053C */  lui        $a1, %hi(D_800C4DB8)
    /* 2AE78 8003C668 2B98020C */  jal        func_800A60AC
    /* 2AE7C 8003C66C B84DA524 */   addiu     $a1, $a1, %lo(D_800C4DB8)
    /* 2AE80 8003C670 0F004010 */  beqz       $v0, .L8003C6B0
    /* 2AE84 8003C674 FFFF0224 */   addiu     $v0, $zero, -0x1
    /* 2AE88 8003C678 1000A2AF */  sw         $v0, 0x10($sp)
    /* 2AE8C 8003C67C 3000058E */  lw         $a1, 0x30($s0)
    /* 2AE90 8003C680 2C00068E */  lw         $a2, 0x2C($s0)
    /* 2AE94 8003C684 800A648E */  lw         $a0, 0xA80($s3)
    /* 2AE98 8003C688 2800078E */  lw         $a3, 0x28($s0)
    /* 2AE9C 8003C68C 4367000C */  jal        func_80019D0C
    /* 2AEA0 8003C690 50008424 */   addiu     $a0, $a0, 0x50
    /* 2AEA4 8003C694 3000048E */  lw         $a0, 0x30($s0)
    /* 2AEA8 8003C698 0F66000C */  jal        func_8001983C
    /* 2AEAC 8003C69C 01001724 */   addiu     $s7, $zero, 0x1
    /* 2AEB0 8003C6A0 940A638E */  lw         $v1, 0xA94($s3)
    /* 2AEB4 8003C6A4 00000000 */  nop
    /* 2AEB8 8003C6A8 20006334 */  ori        $v1, $v1, 0x20
    /* 2AEBC 8003C6AC 940A63AE */  sw         $v1, 0xA94($s3)
  .L8003C6B0:
    /* 2AEC0 8003C6B0 800A648E */  lw         $a0, 0xA80($s3)
    /* 2AEC4 8003C6B4 9DE7000C */  jal        func_80039E74
    /* 2AEC8 8003C6B8 07000524 */   addiu     $a1, $zero, 0x7
    /* 2AECC 8003C6BC 800A638E */  lw         $v1, 0xA80($s3)
    /* 2AED0 8003C6C0 00000000 */  nop
    /* 2AED4 8003C6C4 28006010 */  beqz       $v1, .L8003C768
    /* 2AED8 8003C6C8 00000000 */   nop
    /* 2AEDC 8003C6CC 30006290 */  lbu        $v0, 0x30($v1)
    /* 2AEE0 8003C6D0 00000000 */  nop
    /* 2AEE4 8003C6D4 02110200 */  srl        $v0, $v0, 4
    /* 2AEE8 8003C6D8 FEFF4224 */  addiu      $v0, $v0, -0x2
    /* 2AEEC 8003C6DC 0200422C */  sltiu      $v0, $v0, 0x2
    /* 2AEF0 8003C6E0 21004010 */  beqz       $v0, .L8003C768
    /* 2AEF4 8003C6E4 00000000 */   nop
    /* 2AEF8 8003C6E8 1F000012 */  beqz       $s0, .L8003C768
    /* 2AEFC 8003C6EC 2120C002 */   addu      $a0, $s6, $zero
    /* 2AF00 8003C6F0 3000028E */  lw         $v0, 0x30($s0)
    /* 2AF04 8003C6F4 00000000 */  nop
    /* 2AF08 8003C6F8 1400438C */  lw         $v1, 0x14($v0)
    /* 2AF0C 8003C6FC 5800C0AE */  sw         $zero, 0x58($s6)
    /* 2AF10 8003C700 5400C3AE */  sw         $v1, 0x54($s6)
    /* 2AF14 8003C704 800A688E */  lw         $t0, 0xA80($s3)
    /* 2AF18 8003C708 00000000 */  nop
    /* 2AF1C 8003C70C 3400028D */  lw         $v0, 0x34($t0)
    /* 2AF20 8003C710 00000000 */  nop
    /* 2AF24 8003C714 1000438C */  lw         $v1, 0x10($v0)
    /* 2AF28 8003C718 00000000 */  nop
    /* 2AF2C 8003C71C 8000A3AF */  sw         $v1, 0x80($sp)
    /* 2AF30 8003C720 3400058D */  lw         $a1, 0x34($t0)
    /* 2AF34 8003C724 00000000 */  nop
    /* 2AF38 8003C728 1400A28C */  lw         $v0, 0x14($a1)
    /* 2AF3C 8003C72C 00000000 */  nop
    /* 2AF40 8003C730 8400A2AF */  sw         $v0, 0x84($sp)
    /* 2AF44 8003C734 3400038D */  lw         $v1, 0x34($t0)
    /* 2AF48 8003C738 8400A627 */  addiu      $a2, $sp, 0x84
    /* 2AF4C 8003C73C 1800628C */  lw         $v0, 0x18($v1)
    /* 2AF50 8003C740 8800A727 */  addiu      $a3, $sp, 0x88
    /* 2AF54 8003C744 8800A2AF */  sw         $v0, 0x88($sp)
    /* 2AF58 8003C748 3400038D */  lw         $v1, 0x34($t0)
    /* 2AF5C 8003C74C 8000A527 */  addiu      $a1, $sp, 0x80
    /* 2AF60 8003C750 1C00698C */  lw         $t1, 0x1C($v1)
    /* 2AF64 8003C754 8C00A227 */  addiu      $v0, $sp, 0x8C
    /* 2AF68 8003C758 1000A2AF */  sw         $v0, 0x10($sp)
    /* 2AF6C 8003C75C 0F32020C */  jal        func_8008C83C
    /* 2AF70 8003C760 8C00A9AF */   sw        $t1, 0x8C($sp)
    /* 2AF74 8003C764 800A638E */  lw         $v1, 0xA80($s3)
  .L8003C768:
    /* 2AF78 8003C768 00000000 */  nop
    /* 2AF7C 8003C76C 30006290 */  lbu        $v0, 0x30($v1)
    /* 2AF80 8003C770 00000000 */  nop
    /* 2AF84 8003C774 02110200 */  srl        $v0, $v0, 4
    /* 2AF88 8003C778 04004014 */  bnez       $v0, .L8003C78C
    /* 2AF8C 8003C77C 21206002 */   addu      $a0, $s3, $zero
    /* 2AF90 8003C780 3400668C */  lw         $a2, 0x34($v1)
    /* 2AF94 8003C784 57EF000C */  jal        func_8003BD5C
    /* 2AF98 8003C788 21280000 */   addu      $a1, $zero, $zero
  .L8003C78C:
    /* 2AF9C 8003C78C 940A628E */  lw         $v0, 0xA94($s3)
    /* 2AFA0 8003C790 00000000 */  nop
    /* 2AFA4 8003C794 01004230 */  andi       $v0, $v0, 0x1
    /* 2AFA8 8003C798 09004014 */  bnez       $v0, .L8003C7C0
    /* 2AFAC 8003C79C 00000000 */   nop
    /* 2AFB0 8003C7A0 800A648E */  lw         $a0, 0xA80($s3)
    /* 2AFB4 8003C7A4 F2F10008 */  j          .L8003C7C8
    /* 2AFB8 8003C7A8 04000524 */   addiu     $a1, $zero, 0x4
  .L8003C7AC:
    /* 2AFBC 8003C7AC 0000428E */  lw         $v0, 0x0($s2)
    /* 2AFC0 8003C7B0 00000000 */  nop
    /* 2AFC4 8003C7B4 21105100 */  addu       $v0, $v0, $s1
    /* 2AFC8 8003C7B8 0FF20008 */  j          .L8003C83C
    /* 2AFCC 8003C7BC 0000A2AE */   sw        $v0, 0x0($s5)
  .L8003C7C0:
    /* 2AFD0 8003C7C0 800A648E */  lw         $a0, 0xA80($s3)
    /* 2AFD4 8003C7C4 05000524 */  addiu      $a1, $zero, 0x5
  .L8003C7C8:
    /* 2AFD8 8003C7C8 9DE7000C */  jal        func_80039E74
    /* 2AFDC 8003C7CC 21800000 */   addu      $s0, $zero, $zero
    /* 2AFE0 8003C7D0 1800A427 */  addiu      $a0, $sp, 0x18
    /* 2AFE4 8003C7D4 0C80053C */  lui        $a1, %hi(D_800C4DCC)
    /* 2AFE8 8003C7D8 800A628E */  lw         $v0, 0xA80($s3)
    /* 2AFEC 8003C7DC 00000000 */  nop
    /* 2AFF0 8003C7E0 0000468C */  lw         $a2, 0x0($v0)
    /* 2AFF4 8003C7E4 96D9020C */  jal        func_800B6658
    /* 2AFF8 8003C7E8 CC4DA524 */   addiu     $a1, $a1, %lo(D_800C4DCC)
    /* 2AFFC 8003C7EC 7C00A0AF */  sw         $zero, 0x7C($sp)
    /* 2B000 8003C7F0 5C00728E */  lw         $s2, 0x5C($s3)
    /* 2B004 8003C7F4 1800B427 */  addiu      $s4, $sp, 0x18
    /* 2B008 8003C7F8 0400428E */  lw         $v0, 0x4($s2)
    /* 2B00C 8003C7FC 00000000 */  nop
    /* 2B010 8003C800 0E004018 */  blez       $v0, .L8003C83C
    /* 2B014 8003C804 7C00B527 */   addiu     $s5, $sp, 0x7C
  .L8003C808:
    /* 2B018 8003C808 0000428E */  lw         $v0, 0x0($s2)
    /* 2B01C 8003C80C C0881000 */  sll        $s1, $s0, 3
    /* 2B020 8003C810 21102202 */  addu       $v0, $s1, $v0
    /* 2B024 8003C814 0000448C */  lw         $a0, 0x0($v0)
    /* 2B028 8003C818 2B98020C */  jal        func_800A60AC
    /* 2B02C 8003C81C 21288002 */   addu      $a1, $s4, $zero
    /* 2B030 8003C820 E2FF4010 */  beqz       $v0, .L8003C7AC
    /* 2B034 8003C824 01001026 */   addiu     $s0, $s0, 0x1
    /* 2B038 8003C828 0400428E */  lw         $v0, 0x4($s2)
    /* 2B03C 8003C82C 00000000 */  nop
    /* 2B040 8003C830 2A100202 */  slt        $v0, $s0, $v0
    /* 2B044 8003C834 F4FF4014 */  bnez       $v0, .L8003C808
    /* 2B048 8003C838 00000000 */   nop
  .L8003C83C:
    /* 2B04C 8003C83C 7C00A28F */  lw         $v0, 0x7C($sp)
    /* 2B050 8003C840 00000000 */  nop
    /* 2B054 8003C844 0A004010 */  beqz       $v0, .L8003C870
    /* 2B058 8003C848 00000000 */   nop
    /* 2B05C 8003C84C 0400428C */  lw         $v0, 0x4($v0)
    /* 2B060 8003C850 00000000 */  nop
    /* 2B064 8003C854 06004010 */  beqz       $v0, .L8003C870
    /* 2B068 8003C858 21206002 */   addu      $a0, $s3, $zero
    /* 2B06C 8003C85C 940A658E */  lw         $a1, 0xA94($s3)
    /* 2B070 8003C860 00000000 */  nop
    /* 2B074 8003C864 0100A538 */  xori       $a1, $a1, 0x1
    /* 2B078 8003C868 09F84000 */  jalr       $v0
    /* 2B07C 8003C86C 0100A530 */   andi      $a1, $a1, 0x1
  .L8003C870:
    /* 2B080 8003C870 7E00E016 */  bnez       $s7, .L8003CA6C
    /* 2B084 8003C874 00000000 */   nop
  .L8003C878:
    /* 2B088 8003C878 800A628E */  lw         $v0, 0xA80($s3)
    /* 2B08C 8003C87C 00000000 */  nop
    /* 2B090 8003C880 5800438C */  lw         $v1, 0x58($v0)
    /* 2B094 8003C884 00000000 */  nop
    /* 2B098 8003C888 78006014 */  bnez       $v1, .L8003CA6C
    /* 2B09C 8003C88C 04000224 */   addiu     $v0, $zero, 0x4
    /* 2B0A0 8003C890 9BF20008 */  j          .L8003CA6C
    /* 2B0A4 8003C894 900A62AE */   sw        $v0, 0xA90($s3)
  .L8003C898:
    /* 2B0A8 8003C898 940A638E */  lw         $v1, 0xA94($s3)
    /* 2B0AC 8003C89C 00000000 */  nop
    /* 2B0B0 8003C8A0 04006230 */  andi       $v0, $v1, 0x4
    /* 2B0B4 8003C8A4 04004010 */  beqz       $v0, .L8003C8B8
    /* 2B0B8 8003C8A8 840A64AE */   sw        $a0, 0xA84($s3)
    /* 2B0BC 8003C8AC 06000224 */  addiu      $v0, $zero, 0x6
    /* 2B0C0 8003C8B0 34F20008 */  j          .L8003C8D0
    /* 2B0C4 8003C8B4 900A62AE */   sw        $v0, 0xA90($s3)
  .L8003C8B8:
    /* 2B0C8 8003C8B8 08006230 */  andi       $v0, $v1, 0x8
    /* 2B0CC 8003C8BC 03004010 */  beqz       $v0, .L8003C8CC
    /* 2B0D0 8003C8C0 07000224 */   addiu     $v0, $zero, 0x7
    /* 2B0D4 8003C8C4 34F20008 */  j          .L8003C8D0
    /* 2B0D8 8003C8C8 900A62AE */   sw        $v0, 0xA90($s3)
  .L8003C8CC:
    /* 2B0DC 8003C8CC 900A60AE */  sw         $zero, 0xA90($s3)
  .L8003C8D0:
    /* 2B0E0 8003C8D0 800A628E */  lw         $v0, 0xA80($s3)
    /* 2B0E4 8003C8D4 21206002 */  addu       $a0, $s3, $zero
    /* 2B0E8 8003C8D8 30004590 */  lbu        $a1, 0x30($v0)
    /* 2B0EC 8003C8DC 3400468C */  lw         $a2, 0x34($v0)
    /* 2B0F0 8003C8E0 57EF000C */  jal        func_8003BD5C
    /* 2B0F4 8003C8E4 02290500 */   srl       $a1, $a1, 4
    /* 2B0F8 8003C8E8 800A648E */  lw         $a0, 0xA80($s3)
    /* 2B0FC 8003C8EC 00000000 */  nop
    /* 2B100 8003C8F0 0000858C */  lw         $a1, 0x0($a0)
    /* 2B104 8003C8F4 1E67000C */  jal        func_80019C78
    /* 2B108 8003C8F8 50008424 */   addiu     $a0, $a0, 0x50
    /* 2B10C 8003C8FC 21284000 */  addu       $a1, $v0, $zero
    /* 2B110 8003C900 01000624 */  addiu      $a2, $zero, 0x1
    /* 2B114 8003C904 21380000 */  addu       $a3, $zero, $zero
    /* 2B118 8003C908 800A648E */  lw         $a0, 0xA80($s3)
    /* 2B11C 8003C90C FFFF0224 */  addiu      $v0, $zero, -0x1
    /* 2B120 8003C910 1000A2AF */  sw         $v0, 0x10($sp)
    /* 2B124 8003C914 4367000C */  jal        func_80019D0C
    /* 2B128 8003C918 50008424 */   addiu     $a0, $a0, 0x50
    /* 2B12C 8003C91C 940A638E */  lw         $v1, 0xA94($s3)
    /* 2B130 8003C920 00000000 */  nop
    /* 2B134 8003C924 01006330 */  andi       $v1, $v1, 0x1
    /* 2B138 8003C928 0E006014 */  bnez       $v1, .L8003C964
    /* 2B13C 8003C92C 00000000 */   nop
    /* 2B140 8003C930 4EF3000C */  jal        func_8003CD38
    /* 2B144 8003C934 21206002 */   addu      $a0, $s3, $zero
    /* 2B148 8003C938 A40A648E */  lw         $a0, 0xAA4($s3)
    /* 2B14C 8003C93C AC0A668E */  lw         $a2, 0xAAC($s3)
    /* 2B150 8003C940 B00A628E */  lw         $v0, 0xAB0($s3)
    /* 2B154 8003C944 9C0A658E */  lw         $a1, 0xA9C($s3)
    /* 2B158 8003C948 5EF20008 */  j          .L8003C978
    /* 2B15C 8003C94C 2130C200 */   addu      $a2, $a2, $v0
  .L8003C950:
    /* 2B160 8003C950 0000428E */  lw         $v0, 0x0($s2)
    /* 2B164 8003C954 00000000 */  nop
    /* 2B168 8003C958 21105100 */  addu       $v0, $v0, $s1
    /* 2B16C 8003C95C 84F20008 */  j          .L8003CA10
    /* 2B170 8003C960 0000A2AE */   sw        $v0, 0x0($s5)
  .L8003C964:
    /* 2B174 8003C964 9C0A648E */  lw         $a0, 0xA9C($s3)
    /* 2B178 8003C968 AC0A668E */  lw         $a2, 0xAAC($s3)
    /* 2B17C 8003C96C B00A628E */  lw         $v0, 0xAB0($s3)
    /* 2B180 8003C970 A40A658E */  lw         $a1, 0xAA4($s3)
    /* 2B184 8003C974 2130C200 */  addu       $a2, $a2, $v0
  .L8003C978:
    /* 2B188 8003C978 0200C624 */  addiu      $a2, $a2, 0x2
    /* 2B18C 8003C97C 46D8020C */  jal        func_800B6118
    /* 2B190 8003C980 80300600 */   sll       $a2, $a2, 2
    /* 2B194 8003C984 1800A427 */  addiu      $a0, $sp, 0x18
    /* 2B198 8003C988 0C80053C */  lui        $a1, %hi(D_800C4DD4)
    /* 2B19C 8003C98C D44DA524 */  addiu      $a1, $a1, %lo(D_800C4DD4)
    /* 2B1A0 8003C990 FFFD0624 */  addiu      $a2, $zero, -0x201
    /* 2B1A4 8003C994 800A678E */  lw         $a3, 0xA80($s3)
    /* 2B1A8 8003C998 940A638E */  lw         $v1, 0xA94($s3)
    /* 2B1AC 8003C99C 3000E28C */  lw         $v0, 0x30($a3)
    /* 2B1B0 8003C9A0 24186600 */  and        $v1, $v1, $a2
    /* 2B1B4 8003C9A4 40100200 */  sll        $v0, $v0, 1
    /* 2B1B8 8003C9A8 00024230 */  andi       $v0, $v0, 0x200
    /* 2B1BC 8003C9AC 25186200 */  or         $v1, $v1, $v0
    /* 2B1C0 8003C9B0 940A63AE */  sw         $v1, 0xA94($s3)
    /* 2B1C4 8003C9B4 0000E68C */  lw         $a2, 0x0($a3)
    /* 2B1C8 8003C9B8 96D9020C */  jal        func_800B6658
    /* 2B1CC 8003C9BC 21800000 */   addu      $s0, $zero, $zero
    /* 2B1D0 8003C9C0 9000A0AF */  sw         $zero, 0x90($sp)
    /* 2B1D4 8003C9C4 5C00728E */  lw         $s2, 0x5C($s3)
    /* 2B1D8 8003C9C8 1800B427 */  addiu      $s4, $sp, 0x18
    /* 2B1DC 8003C9CC 0400428E */  lw         $v0, 0x4($s2)
    /* 2B1E0 8003C9D0 00000000 */  nop
    /* 2B1E4 8003C9D4 0E004018 */  blez       $v0, .L8003CA10
    /* 2B1E8 8003C9D8 9000B527 */   addiu     $s5, $sp, 0x90
  .L8003C9DC:
    /* 2B1EC 8003C9DC 0000428E */  lw         $v0, 0x0($s2)
    /* 2B1F0 8003C9E0 C0881000 */  sll        $s1, $s0, 3
    /* 2B1F4 8003C9E4 21102202 */  addu       $v0, $s1, $v0
    /* 2B1F8 8003C9E8 0000448C */  lw         $a0, 0x0($v0)
    /* 2B1FC 8003C9EC 2B98020C */  jal        func_800A60AC
    /* 2B200 8003C9F0 21288002 */   addu      $a1, $s4, $zero
    /* 2B204 8003C9F4 D6FF4010 */  beqz       $v0, .L8003C950
    /* 2B208 8003C9F8 01001026 */   addiu     $s0, $s0, 0x1
    /* 2B20C 8003C9FC 0400428E */  lw         $v0, 0x4($s2)
    /* 2B210 8003CA00 00000000 */  nop
    /* 2B214 8003CA04 2A100202 */  slt        $v0, $s0, $v0
    /* 2B218 8003CA08 F4FF4014 */  bnez       $v0, .L8003C9DC
    /* 2B21C 8003CA0C 00000000 */   nop
  .L8003CA10:
    /* 2B220 8003CA10 9000A28F */  lw         $v0, 0x90($sp)
    /* 2B224 8003CA14 00000000 */  nop
    /* 2B228 8003CA18 0B004010 */  beqz       $v0, .L8003CA48
    /* 2B22C 8003CA1C F7FF0324 */   addiu     $v1, $zero, -0x9
    /* 2B230 8003CA20 0400428C */  lw         $v0, 0x4($v0)
    /* 2B234 8003CA24 00000000 */  nop
    /* 2B238 8003CA28 07004010 */  beqz       $v0, .L8003CA48
    /* 2B23C 8003CA2C 21206002 */   addu      $a0, $s3, $zero
    /* 2B240 8003CA30 940A658E */  lw         $a1, 0xA94($s3)
    /* 2B244 8003CA34 00000000 */  nop
    /* 2B248 8003CA38 0100A538 */  xori       $a1, $a1, 0x1
    /* 2B24C 8003CA3C 09F84000 */  jalr       $v0
    /* 2B250 8003CA40 0100A530 */   andi      $a1, $a1, 0x1
    /* 2B254 8003CA44 F7FF0324 */  addiu      $v1, $zero, -0x9
  .L8003CA48:
    /* 2B258 8003CA48 940A628E */  lw         $v0, 0xA94($s3)
    /* 2B25C 8003CA4C FBFF0424 */  addiu      $a0, $zero, -0x5
    /* 2B260 8003CA50 24104300 */  and        $v0, $v0, $v1
    /* 2B264 8003CA54 24104400 */  and        $v0, $v0, $a0
    /* 2B268 8003CA58 FDFF0324 */  addiu      $v1, $zero, -0x3
    /* 2B26C 8003CA5C 24104300 */  and        $v0, $v0, $v1
    /* 2B270 8003CA60 FEFF0424 */  addiu      $a0, $zero, -0x2
    /* 2B274 8003CA64 24104400 */  and        $v0, $v0, $a0
    /* 2B278 8003CA68 940A62AE */  sw         $v0, 0xA94($s3)
  .L8003CA6C:
    /* 2B27C 8003CA6C 900A638E */  lw         $v1, 0xA90($s3)
    /* 2B280 8003CA70 01000224 */  addiu      $v0, $zero, 0x1
    /* 2B284 8003CA74 04006210 */  beq        $v1, $v0, .L8003CA88
    /* 2B288 8003CA78 64007126 */   addiu     $s1, $s3, 0x64
    /* 2B28C 8003CA7C 04000224 */  addiu      $v0, $zero, 0x4
    /* 2B290 8003CA80 04006214 */  bne        $v1, $v0, .L8003CA94
    /* 2B294 8003CA84 00000000 */   nop
  .L8003CA88:
    /* 2B298 8003CA88 840A628E */  lw         $v0, 0xA84($s3)
    /* 2B29C 8003CA8C A6F20008 */  j          .L8003CA98
    /* 2B2A0 8003CA90 00000000 */   nop
  .L8003CA94:
    /* 2B2A4 8003CA94 800A628E */  lw         $v0, 0xA80($s3)
  .L8003CA98:
    /* 2B2A8 8003CA98 00000000 */  nop
    /* 2B2AC 8003CA9C 08004010 */  beqz       $v0, .L8003CAC0
    /* 2B2B0 8003CAA0 00000000 */   nop
    /* 2B2B4 8003CAA4 6400428C */  lw         $v0, 0x64($v0)
    /* 2B2B8 8003CAA8 00000000 */  nop
    /* 2B2BC 8003CAAC 04004010 */  beqz       $v0, .L8003CAC0
    /* 2B2C0 8003CAB0 00000000 */   nop
    /* 2B2C4 8003CAB4 09F84000 */  jalr       $v0
    /* 2B2C8 8003CAB8 21206002 */   addu      $a0, $s3, $zero
    /* 2B2CC 8003CABC 900A638E */  lw         $v1, 0xA90($s3)
  .L8003CAC0:
    /* 2B2D0 8003CAC0 01000224 */  addiu      $v0, $zero, 0x1
    /* 2B2D4 8003CAC4 04006214 */  bne        $v1, $v0, .L8003CAD8
    /* 2B2D8 8003CAC8 00000000 */   nop
    /* 2B2DC 8003CACC 840A708E */  lw         $s0, 0xA84($s3)
    /* 2B2E0 8003CAD0 B7F20008 */  j          .L8003CADC
    /* 2B2E4 8003CAD4 00000000 */   nop
  .L8003CAD8:
    /* 2B2E8 8003CAD8 800A708E */  lw         $s0, 0xA80($s3)
  .L8003CADC:
    /* 2B2EC 8003CADC 00000000 */  nop
    /* 2B2F0 8003CAE0 03000012 */  beqz       $s0, .L8003CAF0
    /* 2B2F4 8003CAE4 00000000 */   nop
    /* 2B2F8 8003CAE8 8C67000C */  jal        func_80019E30
    /* 2B2FC 8003CAEC 50000426 */   addiu     $a0, $s0, 0x50
  .L8003CAF0:
    /* 2B300 8003CAF0 8C67000C */  jal        func_80019E30
    /* 2B304 8003CAF4 21202002 */   addu      $a0, $s1, $zero
  .L8003CAF8:
    /* 2B308 8003CAF8 B800BF8F */  lw         $ra, 0xB8($sp)
    /* 2B30C 8003CAFC B400B78F */  lw         $s7, 0xB4($sp)
    /* 2B310 8003CB00 B000B68F */  lw         $s6, 0xB0($sp)
    /* 2B314 8003CB04 AC00B58F */  lw         $s5, 0xAC($sp)
    /* 2B318 8003CB08 A800B48F */  lw         $s4, 0xA8($sp)
    /* 2B31C 8003CB0C A400B38F */  lw         $s3, 0xA4($sp)
    /* 2B320 8003CB10 A000B28F */  lw         $s2, 0xA0($sp)
    /* 2B324 8003CB14 9C00B18F */  lw         $s1, 0x9C($sp)
    /* 2B328 8003CB18 9800B08F */  lw         $s0, 0x98($sp)
    /* 2B32C 8003CB1C 0800E003 */  jr         $ra
    /* 2B330 8003CB20 C000BD27 */   addiu     $sp, $sp, 0xC0
endlabel func_8003BF0C
