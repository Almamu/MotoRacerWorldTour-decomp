nonmatching func_8003F740, 0x4E8

glabel func_8003F740
    /* 2DF50 8003F740 D0FFBD27 */  addiu      $sp, $sp, -0x30
    /* 2DF54 8003F744 2000B4AF */  sw         $s4, 0x20($sp)
    /* 2DF58 8003F748 21A00000 */  addu       $s4, $zero, $zero
    /* 2DF5C 8003F74C 2400B5AF */  sw         $s5, 0x24($sp)
    /* 2DF60 8003F750 21A88000 */  addu       $s5, $a0, $zero
    /* 2DF64 8003F754 1400B1AF */  sw         $s1, 0x14($sp)
    /* 2DF68 8003F758 7400B126 */  addiu      $s1, $s5, 0x74
    /* 2DF6C 8003F75C 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* 2DF70 8003F760 21982002 */  addu       $s3, $s1, $zero
    /* 2DF74 8003F764 0C80023C */  lui        $v0, %hi(D_800C4E54)
    /* 2DF78 8003F768 2C00BFAF */  sw         $ra, 0x2C($sp)
    /* 2DF7C 8003F76C 2800B6AF */  sw         $s6, 0x28($sp)
    /* 2DF80 8003F770 1800B2AF */  sw         $s2, 0x18($sp)
    /* 2DF84 8003F774 1000B0AF */  sw         $s0, 0x10($sp)
    /* 2DF88 8003F778 0800238E */  lw         $v1, 0x8($s1)
    /* 2DF8C 8003F77C 00000000 */  nop
    /* 2DF90 8003F780 19006010 */  beqz       $v1, .L8003F7E8
    /* 2DF94 8003F784 544E5624 */   addiu     $s6, $v0, %lo(D_800C4E54)
    /* 2DF98 8003F788 1800228E */  lw         $v0, 0x18($s1)
    /* 2DF9C 8003F78C 00000000 */  nop
    /* 2DFA0 8003F790 15004018 */  blez       $v0, .L8003F7E8
    /* 2DFA4 8003F794 21900000 */   addu      $s2, $zero, $zero
    /* 2DFA8 8003F798 21800000 */  addu       $s0, $zero, $zero
  .L8003F79C:
    /* 2DFAC 8003F79C 0800648E */  lw         $a0, 0x8($s3)
    /* 2DFB0 8003F7A0 2ED9020C */  jal        strlen
    /* 2DFB4 8003F7A4 21209000 */   addu      $a0, $a0, $s0
    /* 2DFB8 8003F7A8 0A004010 */  beqz       $v0, .L8003F7D4
    /* 2DFBC 8003F7AC 2120C002 */   addu      $a0, $s6, $zero
    /* 2DFC0 8003F7B0 0800658E */  lw         $a1, 0x8($s3)
    /* 2DFC4 8003F7B4 21304000 */  addu       $a2, $v0, $zero
    /* 2DFC8 8003F7B8 4098020C */  jal        func_800A6100
    /* 2DFCC 8003F7BC 2128B000 */   addu      $a1, $a1, $s0
    /* 2DFD0 8003F7C0 04004014 */  bnez       $v0, .L8003F7D4
    /* 2DFD4 8003F7C4 00000000 */   nop
    /* 2DFD8 8003F7C8 0800628E */  lw         $v0, 0x8($s3)
    /* 2DFDC 8003F7CC FAFD0008 */  j          .L8003F7E8
    /* 2DFE0 8003F7D0 21A05000 */   addu      $s4, $v0, $s0
  .L8003F7D4:
    /* 2DFE4 8003F7D4 1800628E */  lw         $v0, 0x18($s3)
    /* 2DFE8 8003F7D8 01005226 */  addiu      $s2, $s2, 0x1
    /* 2DFEC 8003F7DC 2A104202 */  slt        $v0, $s2, $v0
    /* 2DFF0 8003F7E0 EEFF4014 */  bnez       $v0, .L8003F79C
    /* 2DFF4 8003F7E4 2C001026 */   addiu     $s0, $s0, 0x2C
  .L8003F7E8:
    /* 2DFF8 8003F7E8 21188002 */  addu       $v1, $s4, $zero
    /* 2DFFC 8003F7EC 21A00000 */  addu       $s4, $zero, $zero
    /* 2E000 8003F7F0 0480023C */  lui        $v0, %hi(func_8003D674)
    /* 2E004 8003F7F4 74D64224 */  addiu      $v0, $v0, %lo(func_8003D674)
    /* 2E008 8003F7F8 200062AC */  sw         $v0, 0x20($v1)
    /* 2E00C 8003F7FC 240075AC */  sw         $s5, 0x24($v1)
    /* 2E010 8003F800 0C80033C */  lui        $v1, %hi(D_800C4E60)
    /* 2E014 8003F804 0800628E */  lw         $v0, 0x8($s3)
    /* 2E018 8003F808 00000000 */  nop
    /* 2E01C 8003F80C 19004010 */  beqz       $v0, .L8003F874
    /* 2E020 8003F810 604E7624 */   addiu     $s6, $v1, %lo(D_800C4E60)
    /* 2E024 8003F814 1800228E */  lw         $v0, 0x18($s1)
    /* 2E028 8003F818 00000000 */  nop
    /* 2E02C 8003F81C 15004018 */  blez       $v0, .L8003F874
    /* 2E030 8003F820 21900000 */   addu      $s2, $zero, $zero
    /* 2E034 8003F824 21800000 */  addu       $s0, $zero, $zero
  .L8003F828:
    /* 2E038 8003F828 0800248E */  lw         $a0, 0x8($s1)
    /* 2E03C 8003F82C 2ED9020C */  jal        strlen
    /* 2E040 8003F830 21209000 */   addu      $a0, $a0, $s0
    /* 2E044 8003F834 0A004010 */  beqz       $v0, .L8003F860
    /* 2E048 8003F838 2120C002 */   addu      $a0, $s6, $zero
    /* 2E04C 8003F83C 0800258E */  lw         $a1, 0x8($s1)
    /* 2E050 8003F840 21304000 */  addu       $a2, $v0, $zero
    /* 2E054 8003F844 4098020C */  jal        func_800A6100
    /* 2E058 8003F848 2128B000 */   addu      $a1, $a1, $s0
    /* 2E05C 8003F84C 04004014 */  bnez       $v0, .L8003F860
    /* 2E060 8003F850 00000000 */   nop
    /* 2E064 8003F854 0800228E */  lw         $v0, 0x8($s1)
    /* 2E068 8003F858 1DFE0008 */  j          .L8003F874
    /* 2E06C 8003F85C 21A05000 */   addu      $s4, $v0, $s0
  .L8003F860:
    /* 2E070 8003F860 1800228E */  lw         $v0, 0x18($s1)
    /* 2E074 8003F864 01005226 */  addiu      $s2, $s2, 0x1
    /* 2E078 8003F868 2A104202 */  slt        $v0, $s2, $v0
    /* 2E07C 8003F86C EEFF4014 */  bnez       $v0, .L8003F828
    /* 2E080 8003F870 2C001026 */   addiu     $s0, $s0, 0x2C
  .L8003F874:
    /* 2E084 8003F874 21188002 */  addu       $v1, $s4, $zero
    /* 2E088 8003F878 21A00000 */  addu       $s4, $zero, $zero
    /* 2E08C 8003F87C 0480023C */  lui        $v0, %hi(func_8003D714)
    /* 2E090 8003F880 14D74224 */  addiu      $v0, $v0, %lo(func_8003D714)
    /* 2E094 8003F884 200062AC */  sw         $v0, 0x20($v1)
    /* 2E098 8003F888 240075AC */  sw         $s5, 0x24($v1)
    /* 2E09C 8003F88C 0C80033C */  lui        $v1, %hi(D_800C4E64)
    /* 2E0A0 8003F890 0800628E */  lw         $v0, 0x8($s3)
    /* 2E0A4 8003F894 00000000 */  nop
    /* 2E0A8 8003F898 19004010 */  beqz       $v0, .L8003F900
    /* 2E0AC 8003F89C 644E7624 */   addiu     $s6, $v1, %lo(D_800C4E64)
    /* 2E0B0 8003F8A0 1800228E */  lw         $v0, 0x18($s1)
    /* 2E0B4 8003F8A4 00000000 */  nop
    /* 2E0B8 8003F8A8 15004018 */  blez       $v0, .L8003F900
    /* 2E0BC 8003F8AC 21900000 */   addu      $s2, $zero, $zero
    /* 2E0C0 8003F8B0 21800000 */  addu       $s0, $zero, $zero
  .L8003F8B4:
    /* 2E0C4 8003F8B4 0800248E */  lw         $a0, 0x8($s1)
    /* 2E0C8 8003F8B8 2ED9020C */  jal        strlen
    /* 2E0CC 8003F8BC 21209000 */   addu      $a0, $a0, $s0
    /* 2E0D0 8003F8C0 0A004010 */  beqz       $v0, .L8003F8EC
    /* 2E0D4 8003F8C4 2120C002 */   addu      $a0, $s6, $zero
    /* 2E0D8 8003F8C8 0800258E */  lw         $a1, 0x8($s1)
    /* 2E0DC 8003F8CC 21304000 */  addu       $a2, $v0, $zero
    /* 2E0E0 8003F8D0 4098020C */  jal        func_800A6100
    /* 2E0E4 8003F8D4 2128B000 */   addu      $a1, $a1, $s0
    /* 2E0E8 8003F8D8 04004014 */  bnez       $v0, .L8003F8EC
    /* 2E0EC 8003F8DC 00000000 */   nop
    /* 2E0F0 8003F8E0 0800228E */  lw         $v0, 0x8($s1)
    /* 2E0F4 8003F8E4 40FE0008 */  j          .L8003F900
    /* 2E0F8 8003F8E8 21A05000 */   addu      $s4, $v0, $s0
  .L8003F8EC:
    /* 2E0FC 8003F8EC 1800228E */  lw         $v0, 0x18($s1)
    /* 2E100 8003F8F0 01005226 */  addiu      $s2, $s2, 0x1
    /* 2E104 8003F8F4 2A104202 */  slt        $v0, $s2, $v0
    /* 2E108 8003F8F8 EEFF4014 */  bnez       $v0, .L8003F8B4
    /* 2E10C 8003F8FC 2C001026 */   addiu     $s0, $s0, 0x2C
  .L8003F900:
    /* 2E110 8003F900 21188002 */  addu       $v1, $s4, $zero
    /* 2E114 8003F904 21A00000 */  addu       $s4, $zero, $zero
    /* 2E118 8003F908 0480023C */  lui        $v0, %hi(func_8003D73C)
    /* 2E11C 8003F90C 3CD74224 */  addiu      $v0, $v0, %lo(func_8003D73C)
    /* 2E120 8003F910 200062AC */  sw         $v0, 0x20($v1)
    /* 2E124 8003F914 240075AC */  sw         $s5, 0x24($v1)
    /* 2E128 8003F918 0C80033C */  lui        $v1, %hi(D_800C4E70)
    /* 2E12C 8003F91C 0800628E */  lw         $v0, 0x8($s3)
    /* 2E130 8003F920 00000000 */  nop
    /* 2E134 8003F924 19004010 */  beqz       $v0, .L8003F98C
    /* 2E138 8003F928 704E7624 */   addiu     $s6, $v1, %lo(D_800C4E70)
    /* 2E13C 8003F92C 1800228E */  lw         $v0, 0x18($s1)
    /* 2E140 8003F930 00000000 */  nop
    /* 2E144 8003F934 15004018 */  blez       $v0, .L8003F98C
    /* 2E148 8003F938 21900000 */   addu      $s2, $zero, $zero
    /* 2E14C 8003F93C 21800000 */  addu       $s0, $zero, $zero
  .L8003F940:
    /* 2E150 8003F940 0800248E */  lw         $a0, 0x8($s1)
    /* 2E154 8003F944 2ED9020C */  jal        strlen
    /* 2E158 8003F948 21209000 */   addu      $a0, $a0, $s0
    /* 2E15C 8003F94C 0A004010 */  beqz       $v0, .L8003F978
    /* 2E160 8003F950 2120C002 */   addu      $a0, $s6, $zero
    /* 2E164 8003F954 0800258E */  lw         $a1, 0x8($s1)
    /* 2E168 8003F958 21304000 */  addu       $a2, $v0, $zero
    /* 2E16C 8003F95C 4098020C */  jal        func_800A6100
    /* 2E170 8003F960 2128B000 */   addu      $a1, $a1, $s0
    /* 2E174 8003F964 04004014 */  bnez       $v0, .L8003F978
    /* 2E178 8003F968 00000000 */   nop
    /* 2E17C 8003F96C 0800228E */  lw         $v0, 0x8($s1)
    /* 2E180 8003F970 63FE0008 */  j          .L8003F98C
    /* 2E184 8003F974 21A05000 */   addu      $s4, $v0, $s0
  .L8003F978:
    /* 2E188 8003F978 1800228E */  lw         $v0, 0x18($s1)
    /* 2E18C 8003F97C 01005226 */  addiu      $s2, $s2, 0x1
    /* 2E190 8003F980 2A104202 */  slt        $v0, $s2, $v0
    /* 2E194 8003F984 EEFF4014 */  bnez       $v0, .L8003F940
    /* 2E198 8003F988 2C001026 */   addiu     $s0, $s0, 0x2C
  .L8003F98C:
    /* 2E19C 8003F98C 21188002 */  addu       $v1, $s4, $zero
    /* 2E1A0 8003F990 21A00000 */  addu       $s4, $zero, $zero
    /* 2E1A4 8003F994 0480023C */  lui        $v0, %hi(func_8003D7F0)
    /* 2E1A8 8003F998 F0D74224 */  addiu      $v0, $v0, %lo(func_8003D7F0)
    /* 2E1AC 8003F99C 200062AC */  sw         $v0, 0x20($v1)
    /* 2E1B0 8003F9A0 240075AC */  sw         $s5, 0x24($v1)
    /* 2E1B4 8003F9A4 0C80033C */  lui        $v1, %hi(D_800C4E80)
    /* 2E1B8 8003F9A8 0800628E */  lw         $v0, 0x8($s3)
    /* 2E1BC 8003F9AC 00000000 */  nop
    /* 2E1C0 8003F9B0 19004010 */  beqz       $v0, .L8003FA18
    /* 2E1C4 8003F9B4 804E7624 */   addiu     $s6, $v1, %lo(D_800C4E80)
    /* 2E1C8 8003F9B8 1800228E */  lw         $v0, 0x18($s1)
    /* 2E1CC 8003F9BC 00000000 */  nop
    /* 2E1D0 8003F9C0 15004018 */  blez       $v0, .L8003FA18
    /* 2E1D4 8003F9C4 21900000 */   addu      $s2, $zero, $zero
    /* 2E1D8 8003F9C8 21800000 */  addu       $s0, $zero, $zero
  .L8003F9CC:
    /* 2E1DC 8003F9CC 0800248E */  lw         $a0, 0x8($s1)
    /* 2E1E0 8003F9D0 2ED9020C */  jal        strlen
    /* 2E1E4 8003F9D4 21209000 */   addu      $a0, $a0, $s0
    /* 2E1E8 8003F9D8 0A004010 */  beqz       $v0, .L8003FA04
    /* 2E1EC 8003F9DC 2120C002 */   addu      $a0, $s6, $zero
    /* 2E1F0 8003F9E0 0800258E */  lw         $a1, 0x8($s1)
    /* 2E1F4 8003F9E4 21304000 */  addu       $a2, $v0, $zero
    /* 2E1F8 8003F9E8 4098020C */  jal        func_800A6100
    /* 2E1FC 8003F9EC 2128B000 */   addu      $a1, $a1, $s0
    /* 2E200 8003F9F0 04004014 */  bnez       $v0, .L8003FA04
    /* 2E204 8003F9F4 00000000 */   nop
    /* 2E208 8003F9F8 0800228E */  lw         $v0, 0x8($s1)
    /* 2E20C 8003F9FC 86FE0008 */  j          .L8003FA18
    /* 2E210 8003FA00 21A05000 */   addu      $s4, $v0, $s0
  .L8003FA04:
    /* 2E214 8003FA04 1800228E */  lw         $v0, 0x18($s1)
    /* 2E218 8003FA08 01005226 */  addiu      $s2, $s2, 0x1
    /* 2E21C 8003FA0C 2A104202 */  slt        $v0, $s2, $v0
    /* 2E220 8003FA10 EEFF4014 */  bnez       $v0, .L8003F9CC
    /* 2E224 8003FA14 2C001026 */   addiu     $s0, $s0, 0x2C
  .L8003FA18:
    /* 2E228 8003FA18 21188002 */  addu       $v1, $s4, $zero
    /* 2E22C 8003FA1C 21A00000 */  addu       $s4, $zero, $zero
    /* 2E230 8003FA20 0480023C */  lui        $v0, %hi(func_8003D8B4)
    /* 2E234 8003FA24 B4D84224 */  addiu      $v0, $v0, %lo(func_8003D8B4)
    /* 2E238 8003FA28 200062AC */  sw         $v0, 0x20($v1)
    /* 2E23C 8003FA2C 240075AC */  sw         $s5, 0x24($v1)
    /* 2E240 8003FA30 0C80033C */  lui        $v1, %hi(D_800C4DDC)
    /* 2E244 8003FA34 0800628E */  lw         $v0, 0x8($s3)
    /* 2E248 8003FA38 00000000 */  nop
    /* 2E24C 8003FA3C 19004010 */  beqz       $v0, .L8003FAA4
    /* 2E250 8003FA40 DC4D7624 */   addiu     $s6, $v1, %lo(D_800C4DDC)
    /* 2E254 8003FA44 1800228E */  lw         $v0, 0x18($s1)
    /* 2E258 8003FA48 00000000 */  nop
    /* 2E25C 8003FA4C 15004018 */  blez       $v0, .L8003FAA4
    /* 2E260 8003FA50 21900000 */   addu      $s2, $zero, $zero
    /* 2E264 8003FA54 21800000 */  addu       $s0, $zero, $zero
  .L8003FA58:
    /* 2E268 8003FA58 0800248E */  lw         $a0, 0x8($s1)
    /* 2E26C 8003FA5C 2ED9020C */  jal        strlen
    /* 2E270 8003FA60 21209000 */   addu      $a0, $a0, $s0
    /* 2E274 8003FA64 0A004010 */  beqz       $v0, .L8003FA90
    /* 2E278 8003FA68 2120C002 */   addu      $a0, $s6, $zero
    /* 2E27C 8003FA6C 0800258E */  lw         $a1, 0x8($s1)
    /* 2E280 8003FA70 21304000 */  addu       $a2, $v0, $zero
    /* 2E284 8003FA74 4098020C */  jal        func_800A6100
    /* 2E288 8003FA78 2128B000 */   addu      $a1, $a1, $s0
    /* 2E28C 8003FA7C 04004014 */  bnez       $v0, .L8003FA90
    /* 2E290 8003FA80 00000000 */   nop
    /* 2E294 8003FA84 0800228E */  lw         $v0, 0x8($s1)
    /* 2E298 8003FA88 A9FE0008 */  j          .L8003FAA4
    /* 2E29C 8003FA8C 21A05000 */   addu      $s4, $v0, $s0
  .L8003FA90:
    /* 2E2A0 8003FA90 1800228E */  lw         $v0, 0x18($s1)
    /* 2E2A4 8003FA94 01005226 */  addiu      $s2, $s2, 0x1
    /* 2E2A8 8003FA98 2A104202 */  slt        $v0, $s2, $v0
    /* 2E2AC 8003FA9C EEFF4014 */  bnez       $v0, .L8003FA58
    /* 2E2B0 8003FAA0 2C001026 */   addiu     $s0, $s0, 0x2C
  .L8003FAA4:
    /* 2E2B4 8003FAA4 21188002 */  addu       $v1, $s4, $zero
    /* 2E2B8 8003FAA8 21A00000 */  addu       $s4, $zero, $zero
    /* 2E2BC 8003FAAC 0480023C */  lui        $v0, %hi(func_8003D8FC)
    /* 2E2C0 8003FAB0 FCD84224 */  addiu      $v0, $v0, %lo(func_8003D8FC)
    /* 2E2C4 8003FAB4 200062AC */  sw         $v0, 0x20($v1)
    /* 2E2C8 8003FAB8 240075AC */  sw         $s5, 0x24($v1)
    /* 2E2CC 8003FABC 0C80033C */  lui        $v1, %hi(D_800C4E8C)
    /* 2E2D0 8003FAC0 0800628E */  lw         $v0, 0x8($s3)
    /* 2E2D4 8003FAC4 00000000 */  nop
    /* 2E2D8 8003FAC8 19004010 */  beqz       $v0, .L8003FB30
    /* 2E2DC 8003FACC 8C4E7624 */   addiu     $s6, $v1, %lo(D_800C4E8C)
    /* 2E2E0 8003FAD0 1800228E */  lw         $v0, 0x18($s1)
    /* 2E2E4 8003FAD4 00000000 */  nop
    /* 2E2E8 8003FAD8 15004018 */  blez       $v0, .L8003FB30
    /* 2E2EC 8003FADC 21900000 */   addu      $s2, $zero, $zero
    /* 2E2F0 8003FAE0 21800000 */  addu       $s0, $zero, $zero
  .L8003FAE4:
    /* 2E2F4 8003FAE4 0800248E */  lw         $a0, 0x8($s1)
    /* 2E2F8 8003FAE8 2ED9020C */  jal        strlen
    /* 2E2FC 8003FAEC 21209000 */   addu      $a0, $a0, $s0
    /* 2E300 8003FAF0 0A004010 */  beqz       $v0, .L8003FB1C
    /* 2E304 8003FAF4 2120C002 */   addu      $a0, $s6, $zero
    /* 2E308 8003FAF8 0800258E */  lw         $a1, 0x8($s1)
    /* 2E30C 8003FAFC 21304000 */  addu       $a2, $v0, $zero
    /* 2E310 8003FB00 4098020C */  jal        func_800A6100
    /* 2E314 8003FB04 2128B000 */   addu      $a1, $a1, $s0
    /* 2E318 8003FB08 04004014 */  bnez       $v0, .L8003FB1C
    /* 2E31C 8003FB0C 00000000 */   nop
    /* 2E320 8003FB10 0800228E */  lw         $v0, 0x8($s1)
    /* 2E324 8003FB14 CCFE0008 */  j          .L8003FB30
    /* 2E328 8003FB18 21A05000 */   addu      $s4, $v0, $s0
  .L8003FB1C:
    /* 2E32C 8003FB1C 1800228E */  lw         $v0, 0x18($s1)
    /* 2E330 8003FB20 01005226 */  addiu      $s2, $s2, 0x1
    /* 2E334 8003FB24 2A104202 */  slt        $v0, $s2, $v0
    /* 2E338 8003FB28 EEFF4014 */  bnez       $v0, .L8003FAE4
    /* 2E33C 8003FB2C 2C001026 */   addiu     $s0, $s0, 0x2C
  .L8003FB30:
    /* 2E340 8003FB30 21188002 */  addu       $v1, $s4, $zero
    /* 2E344 8003FB34 21A00000 */  addu       $s4, $zero, $zero
    /* 2E348 8003FB38 0480023C */  lui        $v0, %hi(func_8003D924)
    /* 2E34C 8003FB3C 24D94224 */  addiu      $v0, $v0, %lo(func_8003D924)
    /* 2E350 8003FB40 200062AC */  sw         $v0, 0x20($v1)
    /* 2E354 8003FB44 240075AC */  sw         $s5, 0x24($v1)
    /* 2E358 8003FB48 0C80033C */  lui        $v1, %hi(D_800C4E94)
    /* 2E35C 8003FB4C 0800628E */  lw         $v0, 0x8($s3)
    /* 2E360 8003FB50 00000000 */  nop
    /* 2E364 8003FB54 19004010 */  beqz       $v0, .L8003FBBC
    /* 2E368 8003FB58 944E7324 */   addiu     $s3, $v1, %lo(D_800C4E94)
    /* 2E36C 8003FB5C 1800228E */  lw         $v0, 0x18($s1)
    /* 2E370 8003FB60 00000000 */  nop
    /* 2E374 8003FB64 15004018 */  blez       $v0, .L8003FBBC
    /* 2E378 8003FB68 21900000 */   addu      $s2, $zero, $zero
    /* 2E37C 8003FB6C 21800000 */  addu       $s0, $zero, $zero
  .L8003FB70:
    /* 2E380 8003FB70 0800248E */  lw         $a0, 0x8($s1)
    /* 2E384 8003FB74 2ED9020C */  jal        strlen
    /* 2E388 8003FB78 21209000 */   addu      $a0, $a0, $s0
    /* 2E38C 8003FB7C 0A004010 */  beqz       $v0, .L8003FBA8
    /* 2E390 8003FB80 21206002 */   addu      $a0, $s3, $zero
    /* 2E394 8003FB84 0800258E */  lw         $a1, 0x8($s1)
    /* 2E398 8003FB88 21304000 */  addu       $a2, $v0, $zero
    /* 2E39C 8003FB8C 4098020C */  jal        func_800A6100
    /* 2E3A0 8003FB90 2128B000 */   addu      $a1, $a1, $s0
    /* 2E3A4 8003FB94 04004014 */  bnez       $v0, .L8003FBA8
    /* 2E3A8 8003FB98 00000000 */   nop
    /* 2E3AC 8003FB9C 0800228E */  lw         $v0, 0x8($s1)
    /* 2E3B0 8003FBA0 EFFE0008 */  j          .L8003FBBC
    /* 2E3B4 8003FBA4 21A05000 */   addu      $s4, $v0, $s0
  .L8003FBA8:
    /* 2E3B8 8003FBA8 1800228E */  lw         $v0, 0x18($s1)
    /* 2E3BC 8003FBAC 01005226 */  addiu      $s2, $s2, 0x1
    /* 2E3C0 8003FBB0 2A104202 */  slt        $v0, $s2, $v0
    /* 2E3C4 8003FBB4 EEFF4014 */  bnez       $v0, .L8003FB70
    /* 2E3C8 8003FBB8 2C001026 */   addiu     $s0, $s0, 0x2C
  .L8003FBBC:
    /* 2E3CC 8003FBBC 21188002 */  addu       $v1, $s4, $zero
    /* 2E3D0 8003FBC0 2120A002 */  addu       $a0, $s5, $zero
    /* 2E3D4 8003FBC4 0480023C */  lui        $v0, %hi(func_8003D970)
    /* 2E3D8 8003FBC8 70D94224 */  addiu      $v0, $v0, %lo(func_8003D970)
    /* 2E3DC 8003FBCC 200062AC */  sw         $v0, 0x20($v1)
    /* 2E3E0 8003FBD0 AEFD000C */  jal        func_8003F6B8
    /* 2E3E4 8003FBD4 240075AC */   sw        $s5, 0x24($v1)
    /* 2E3E8 8003FBD8 C5FC000C */  jal        func_8003F314
    /* 2E3EC 8003FBDC 2120A002 */   addu      $a0, $s5, $zero
    /* 2E3F0 8003FBE0 EBF8000C */  jal        func_8003E3AC
    /* 2E3F4 8003FBE4 2120A002 */   addu      $a0, $s5, $zero
    /* 2E3F8 8003FBE8 800AA28E */  lw         $v0, 0xA80($s5)
    /* 2E3FC 8003FBEC 2120A002 */  addu       $a0, $s5, $zero
    /* 2E400 8003FBF0 30004590 */  lbu        $a1, 0x30($v0)
    /* 2E404 8003FBF4 3400468C */  lw         $a2, 0x34($v0)
    /* 2E408 8003FBF8 57EF000C */  jal        func_8003BD5C
    /* 2E40C 8003FBFC 02290500 */   srl       $a1, $a1, 4
    /* 2E410 8003FC00 2C00BF8F */  lw         $ra, 0x2C($sp)
    /* 2E414 8003FC04 2800B68F */  lw         $s6, 0x28($sp)
    /* 2E418 8003FC08 2400B58F */  lw         $s5, 0x24($sp)
    /* 2E41C 8003FC0C 2000B48F */  lw         $s4, 0x20($sp)
    /* 2E420 8003FC10 1C00B38F */  lw         $s3, 0x1C($sp)
    /* 2E424 8003FC14 1800B28F */  lw         $s2, 0x18($sp)
    /* 2E428 8003FC18 1400B18F */  lw         $s1, 0x14($sp)
    /* 2E42C 8003FC1C 1000B08F */  lw         $s0, 0x10($sp)
    /* 2E430 8003FC20 0800E003 */  jr         $ra
    /* 2E434 8003FC24 3000BD27 */   addiu     $sp, $sp, 0x30
endlabel func_8003F740
