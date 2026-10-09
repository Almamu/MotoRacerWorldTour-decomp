nonmatching func_800AF700, 0x324

glabel func_800AF700
    /* 9DF10 800AF700 B8FFBD27 */  addiu      $sp, $sp, -0x48
    /* 9DF14 800AF704 2000B0AF */  sw         $s0, 0x20($sp)
    /* 9DF18 800AF708 21808000 */  addu       $s0, $a0, $zero
    /* 9DF1C 800AF70C 40181000 */  sll        $v1, $s0, 1
    /* 9DF20 800AF710 0F001032 */  andi       $s0, $s0, 0xF
    /* 9DF24 800AF714 21200002 */  addu       $a0, $s0, $zero
    /* 9DF28 800AF718 3400B5AF */  sw         $s5, 0x34($sp)
    /* 9DF2C 800AF71C 21A8A000 */  addu       $s5, $a1, $zero
    /* 9DF30 800AF720 4000BEAF */  sw         $fp, 0x40($sp)
    /* 9DF34 800AF724 0C80023C */  lui        $v0, %hi(D_800C3C6C)
    /* 9DF38 800AF728 6C3C4224 */  addiu      $v0, $v0, %lo(D_800C3C6C)
    /* 9DF3C 800AF72C 21186200 */  addu       $v1, $v1, $v0
    /* 9DF40 800AF730 4400BFAF */  sw         $ra, 0x44($sp)
    /* 9DF44 800AF734 3C00B7AF */  sw         $s7, 0x3C($sp)
    /* 9DF48 800AF738 3800B6AF */  sw         $s6, 0x38($sp)
    /* 9DF4C 800AF73C 3000B4AF */  sw         $s4, 0x30($sp)
    /* 9DF50 800AF740 2C00B3AF */  sw         $s3, 0x2C($sp)
    /* 9DF54 800AF744 2800B2AF */  sw         $s2, 0x28($sp)
    /* 9DF58 800AF748 2400B1AF */  sw         $s1, 0x24($sp)
    /* 9DF5C 800AF74C 5400A7AF */  sw         $a3, 0x54($sp)
    /* 9DF60 800AF750 00007694 */  lhu        $s6, 0x0($v1)
    /* 9DF64 800AF754 44BC020C */  jal        func_800AF110
    /* 9DF68 800AF758 21F0C000 */   addu      $fp, $a2, $zero
    /* 9DF6C 800AF75C 21984000 */  addu       $s3, $v0, $zero
    /* 9DF70 800AF760 00006396 */  lhu        $v1, 0x0($s3)
    /* 9DF74 800AF764 00000000 */  nop
    /* 9DF78 800AF768 1800A3A7 */  sh         $v1, 0x18($sp)
    /* 9DF7C 800AF76C 00006296 */  lhu        $v0, 0x0($s3)
    /* 9DF80 800AF770 00000000 */  nop
    /* 9DF84 800AF774 26205600 */  xor        $a0, $v0, $s6
    /* 9DF88 800AF778 24104400 */  and        $v0, $v0, $a0
    /* 9DF8C 800AF77C 1A00A2A7 */  sh         $v0, 0x1A($sp)
    /* 9DF90 800AF780 00006396 */  lhu        $v1, 0x0($s3)
    /* 9DF94 800AF784 21A00000 */  addu       $s4, $zero, $zero
    /* 9DF98 800AF788 1E00B6A7 */  sh         $s6, 0x1E($sp)
    /* 9DF9C 800AF78C 1400B0AF */  sw         $s0, 0x14($sp)
    /* 9DFA0 800AF790 26187600 */  xor        $v1, $v1, $s6
    /* 9DFA4 800AF794 2418C302 */  and        $v1, $s6, $v1
    /* 9DFA8 800AF798 91006012 */  beqz       $s3, .L800AF9E0
    /* 9DFAC 800AF79C 1C00A3A7 */   sh        $v1, 0x1C($sp)
    /* 9DFB0 800AF7A0 5400A88F */  lw         $t0, 0x54($sp)
    /* 9DFB4 800AF7A4 00000000 */  nop
    /* 9DFB8 800AF7A8 0A000015 */  bnez       $t0, .L800AF7D4
    /* 9DFBC 800AF7AC 0C80023C */   lui       $v0, %hi(D_800C3C6C)
    /* 9DFC0 800AF7B0 9400A28E */  lw         $v0, 0x94($s5)
    /* 9DFC4 800AF7B4 00000000 */  nop
    /* 9DFC8 800AF7B8 05004010 */  beqz       $v0, .L800AF7D0
    /* 9DFCC 800AF7BC 4400B226 */   addiu     $s2, $s5, 0x44
    /* 9DFD0 800AF7C0 1000A427 */  addiu      $a0, $sp, 0x10
    /* 9DFD4 800AF7C4 0000A68E */  lw         $a2, 0x0($s5)
    /* 9DFD8 800AF7C8 09F84000 */  jalr       $v0
    /* 9DFDC 800AF7CC 2128C003 */   addu      $a1, $fp, $zero
  .L800AF7D0:
    /* 9DFE0 800AF7D0 0C80023C */  lui        $v0, %hi(D_800C3C6C)
  .L800AF7D4:
    /* 9DFE4 800AF7D4 6C3C4224 */  addiu      $v0, $v0, %lo(D_800C3C6C)
    /* 9DFE8 800AF7D8 40181000 */  sll        $v1, $s0, 1
    /* 9DFEC 800AF7DC 21886200 */  addu       $s1, $v1, $v0
    /* 9DFF0 800AF7E0 0C80103C */  lui        $s0, %hi(D_800C3BC4)
    /* 9DFF4 800AF7E4 C43B1026 */  addiu      $s0, $s0, %lo(D_800C3BC4)
    /* 9DFF8 800AF7E8 21B80000 */  addu       $s7, $zero, $zero
  .L800AF7EC:
    /* 9DFFC 800AF7EC 5400A88F */  lw         $t0, 0x54($sp)
    /* 9E000 800AF7F0 00000000 */  nop
    /* 9E004 800AF7F4 41000015 */  bnez       $t0, .L800AF8FC
    /* 9E008 800AF7F8 00000000 */   nop
    /* 9E00C 800AF7FC 0000478E */  lw         $a3, 0x0($s2)
    /* 9E010 800AF800 00000000 */  nop
    /* 9E014 800AF804 3300E010 */  beqz       $a3, .L800AF8D4
    /* 9E018 800AF808 00000000 */   nop
    /* 9E01C 800AF80C 00006296 */  lhu        $v0, 0x0($s3)
    /* 9E020 800AF810 0000038E */  lw         $v1, 0x0($s0)
    /* 9E024 800AF814 00000000 */  nop
    /* 9E028 800AF818 24104300 */  and        $v0, $v0, $v1
    /* 9E02C 800AF81C 1A004010 */  beqz       $v0, .L800AF888
    /* 9E030 800AF820 2410C302 */   and       $v0, $s6, $v1
    /* 9E034 800AF824 0A004010 */  beqz       $v0, .L800AF850
    /* 9E038 800AF828 0C80143C */   lui       $s4, %hi(D_800C3BB8)
    /* 9E03C 800AF82C 1000A427 */  addiu      $a0, $sp, 0x10
    /* 9E040 800AF830 2128C003 */  addu       $a1, $fp, $zero
    /* 9E044 800AF834 0000A68E */  lw         $a2, 0x0($s5)
    /* 9E048 800AF838 FE000224 */  addiu      $v0, $zero, 0xFE
    /* 9E04C 800AF83C 09F8E000 */  jalr       $a3
    /* 9E050 800AF840 1000A2AF */   sw        $v0, 0x10($sp)
    /* 9E054 800AF844 B83B838E */  lw         $v1, %lo(D_800C3BB8)($s4)
    /* 9E058 800AF848 31BE0208 */  j          .L800AF8C4
    /* 9E05C 800AF84C 01001424 */   addiu     $s4, $zero, 0x1
  .L800AF850:
    /* 9E060 800AF850 1000A427 */  addiu      $a0, $sp, 0x10
    /* 9E064 800AF854 00002296 */  lhu        $v0, 0x0($s1)
    /* 9E068 800AF858 00000396 */  lhu        $v1, 0x0($s0)
    /* 9E06C 800AF85C 2128C003 */  addu       $a1, $fp, $zero
    /* 9E070 800AF860 25104300 */  or         $v0, $v0, $v1
    /* 9E074 800AF864 000022A6 */  sh         $v0, 0x0($s1)
    /* 9E078 800AF868 0000A68E */  lw         $a2, 0x0($s5)
    /* 9E07C 800AF86C 0000478E */  lw         $a3, 0x0($s2)
    /* 9E080 800AF870 FF000224 */  addiu      $v0, $zero, 0xFF
    /* 9E084 800AF874 09F8E000 */  jalr       $a3
    /* 9E088 800AF878 1000A2AF */   sw        $v0, 0x10($sp)
    /* 9E08C 800AF87C B83B838E */  lw         $v1, %lo(D_800C3BB8)($s4)
    /* 9E090 800AF880 31BE0208 */  j          .L800AF8C4
    /* 9E094 800AF884 01001424 */   addiu     $s4, $zero, 0x1
  .L800AF888:
    /* 9E098 800AF888 23004010 */  beqz       $v0, .L800AF918
    /* 9E09C 800AF88C 1000A427 */   addiu     $a0, $sp, 0x10
    /* 9E0A0 800AF890 00000296 */  lhu        $v0, 0x0($s0)
    /* 9E0A4 800AF894 00002396 */  lhu        $v1, 0x0($s1)
    /* 9E0A8 800AF898 27100200 */  nor        $v0, $zero, $v0
    /* 9E0AC 800AF89C 24186200 */  and        $v1, $v1, $v0
    /* 9E0B0 800AF8A0 000023A6 */  sh         $v1, 0x0($s1)
    /* 9E0B4 800AF8A4 0000A68E */  lw         $a2, 0x0($s5)
    /* 9E0B8 800AF8A8 0000478E */  lw         $a3, 0x0($s2)
    /* 9E0BC 800AF8AC 2128C003 */  addu       $a1, $fp, $zero
    /* 9E0C0 800AF8B0 09F8E000 */  jalr       $a3
    /* 9E0C4 800AF8B4 1000A0AF */   sw        $zero, 0x10($sp)
    /* 9E0C8 800AF8B8 0C80023C */  lui        $v0, %hi(D_800C3BB8)
    /* 9E0CC 800AF8BC B83B438C */  lw         $v1, %lo(D_800C3BB8)($v0)
    /* 9E0D0 800AF8C0 01001424 */  addiu      $s4, $zero, 0x1
  .L800AF8C4:
    /* 9E0D4 800AF8C4 4A006014 */  bnez       $v1, .L800AF9F0
    /* 9E0D8 800AF8C8 04001026 */   addiu     $s0, $s0, 0x4
    /* 9E0DC 800AF8CC 48BE0208 */  j          .L800AF920
    /* 9E0E0 800AF8D0 0400F726 */   addiu     $s7, $s7, 0x4
  .L800AF8D4:
    /* 9E0E4 800AF8D4 0C80083C */  lui        $t0, %hi(D_800C3BC4)
    /* 9E0E8 800AF8D8 C43B0825 */  addiu      $t0, $t0, %lo(D_800C3BC4)
    /* 9E0EC 800AF8DC 2110E802 */  addu       $v0, $s7, $t0
    /* 9E0F0 800AF8E0 00004494 */  lhu        $a0, 0x0($v0)
    /* 9E0F4 800AF8E4 00006596 */  lhu        $a1, 0x0($s3)
    /* 9E0F8 800AF8E8 00002396 */  lhu        $v1, 0x0($s1)
    /* 9E0FC 800AF8EC 24208500 */  and        $a0, $a0, $a1
    /* 9E100 800AF8F0 25186400 */  or         $v1, $v1, $a0
    /* 9E104 800AF8F4 46BE0208 */  j          .L800AF918
    /* 9E108 800AF8F8 000023A6 */   sh        $v1, 0x0($s1)
  .L800AF8FC:
    /* 9E10C 800AF8FC 00006296 */  lhu        $v0, 0x0($s3)
    /* 9E110 800AF900 0000038E */  lw         $v1, 0x0($s0)
    /* 9E114 800AF904 00000000 */  nop
    /* 9E118 800AF908 24104300 */  and        $v0, $v0, $v1
    /* 9E11C 800AF90C 02004010 */  beqz       $v0, .L800AF918
    /* 9E120 800AF910 00000000 */   nop
    /* 9E124 800AF914 01001424 */  addiu      $s4, $zero, 0x1
  .L800AF918:
    /* 9E128 800AF918 04001026 */  addiu      $s0, $s0, 0x4
    /* 9E12C 800AF91C 0400F726 */  addiu      $s7, $s7, 0x4
  .L800AF920:
    /* 9E130 800AF920 0C80083C */  lui        $t0, %hi(D_800C3BC4)
    /* 9E134 800AF924 C43B0825 */  addiu      $t0, $t0, %lo(D_800C3BC4)
    /* 9E138 800AF928 44000225 */  addiu      $v0, $t0, 0x44
    /* 9E13C 800AF92C 2B100202 */  sltu       $v0, $s0, $v0
    /* 9E140 800AF930 AEFF4014 */  bnez       $v0, .L800AF7EC
    /* 9E144 800AF934 04005226 */   addiu     $s2, $s2, 0x4
    /* 9E148 800AF938 5400A88F */  lw         $t0, 0x54($sp)
    /* 9E14C 800AF93C 00000000 */  nop
    /* 9E150 800AF940 2C000015 */  bnez       $t0, .L800AF9F4
    /* 9E154 800AF944 21108002 */   addu      $v0, $s4, $zero
    /* 9E158 800AF948 8400A38E */  lw         $v1, 0x84($s5)
    /* 9E15C 800AF94C 00000000 */  nop
    /* 9E160 800AF950 06006010 */  beqz       $v1, .L800AF96C
    /* 9E164 800AF954 1000A427 */   addiu     $a0, $sp, 0x10
    /* 9E168 800AF958 0000A68E */  lw         $a2, 0x0($s5)
    /* 9E16C 800AF95C 0C00628E */  lw         $v0, 0xC($s3)
    /* 9E170 800AF960 2128C003 */  addu       $a1, $fp, $zero
    /* 9E174 800AF964 09F86000 */  jalr       $v1
    /* 9E178 800AF968 1000A2AF */   sw        $v0, 0x10($sp)
  .L800AF96C:
    /* 9E17C 800AF96C 8800A38E */  lw         $v1, 0x88($s5)
    /* 9E180 800AF970 00000000 */  nop
    /* 9E184 800AF974 06006010 */  beqz       $v1, .L800AF990
    /* 9E188 800AF978 1000A427 */   addiu     $a0, $sp, 0x10
    /* 9E18C 800AF97C 0000A68E */  lw         $a2, 0x0($s5)
    /* 9E190 800AF980 1000628E */  lw         $v0, 0x10($s3)
    /* 9E194 800AF984 2128C003 */  addu       $a1, $fp, $zero
    /* 9E198 800AF988 09F86000 */  jalr       $v1
    /* 9E19C 800AF98C 1000A2AF */   sw        $v0, 0x10($sp)
  .L800AF990:
    /* 9E1A0 800AF990 8C00A38E */  lw         $v1, 0x8C($s5)
    /* 9E1A4 800AF994 00000000 */  nop
    /* 9E1A8 800AF998 06006010 */  beqz       $v1, .L800AF9B4
    /* 9E1AC 800AF99C 1000A427 */   addiu     $a0, $sp, 0x10
    /* 9E1B0 800AF9A0 0000A68E */  lw         $a2, 0x0($s5)
    /* 9E1B4 800AF9A4 0400628E */  lw         $v0, 0x4($s3)
    /* 9E1B8 800AF9A8 2128C003 */  addu       $a1, $fp, $zero
    /* 9E1BC 800AF9AC 09F86000 */  jalr       $v1
    /* 9E1C0 800AF9B0 1000A2AF */   sw        $v0, 0x10($sp)
  .L800AF9B4:
    /* 9E1C4 800AF9B4 9000A38E */  lw         $v1, 0x90($s5)
    /* 9E1C8 800AF9B8 00000000 */  nop
    /* 9E1CC 800AF9BC 0C006010 */  beqz       $v1, .L800AF9F0
    /* 9E1D0 800AF9C0 2128C003 */   addu      $a1, $fp, $zero
    /* 9E1D4 800AF9C4 1000A427 */  addiu      $a0, $sp, 0x10
    /* 9E1D8 800AF9C8 0000A68E */  lw         $a2, 0x0($s5)
    /* 9E1DC 800AF9CC 0800628E */  lw         $v0, 0x8($s3)
    /* 9E1E0 800AF9D0 09F86000 */  jalr       $v1
    /* 9E1E4 800AF9D4 1000A2AF */   sw        $v0, 0x10($sp)
    /* 9E1E8 800AF9D8 7DBE0208 */  j          .L800AF9F4
    /* 9E1EC 800AF9DC 21108002 */   addu      $v0, $s4, $zero
  .L800AF9E0:
    /* 9E1F0 800AF9E0 59BA020C */  jal        func_800AE964
    /* 9E1F4 800AF9E4 21200002 */   addu      $a0, $s0, $zero
    /* 9E1F8 800AF9E8 0E80033C */  lui        $v1, %hi(D_800DE410)
    /* 9E1FC 800AF9EC 10E462AC */  sw         $v0, %lo(D_800DE410)($v1)
  .L800AF9F0:
    /* 9E200 800AF9F0 21108002 */  addu       $v0, $s4, $zero
  .L800AF9F4:
    /* 9E204 800AF9F4 4400BF8F */  lw         $ra, 0x44($sp)
    /* 9E208 800AF9F8 4000BE8F */  lw         $fp, 0x40($sp)
    /* 9E20C 800AF9FC 3C00B78F */  lw         $s7, 0x3C($sp)
    /* 9E210 800AFA00 3800B68F */  lw         $s6, 0x38($sp)
    /* 9E214 800AFA04 3400B58F */  lw         $s5, 0x34($sp)
    /* 9E218 800AFA08 3000B48F */  lw         $s4, 0x30($sp)
    /* 9E21C 800AFA0C 2C00B38F */  lw         $s3, 0x2C($sp)
    /* 9E220 800AFA10 2800B28F */  lw         $s2, 0x28($sp)
    /* 9E224 800AFA14 2400B18F */  lw         $s1, 0x24($sp)
    /* 9E228 800AFA18 2000B08F */  lw         $s0, 0x20($sp)
    /* 9E22C 800AFA1C 0800E003 */  jr         $ra
    /* 9E230 800AFA20 4800BD27 */   addiu     $sp, $sp, 0x48
endlabel func_800AF700
