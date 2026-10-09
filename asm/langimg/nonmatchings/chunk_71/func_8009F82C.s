nonmatching func_8009F82C, 0x284

glabel func_8009F82C
    /* 8E03C 8009F82C C8FFBD27 */  addiu      $sp, $sp, -0x38
    /* 8E040 8009F830 3000BFAF */  sw         $ra, 0x30($sp)
    /* 8E044 8009F834 2C00B5AF */  sw         $s5, 0x2C($sp)
    /* 8E048 8009F838 2800B4AF */  sw         $s4, 0x28($sp)
    /* 8E04C 8009F83C 2400B3AF */  sw         $s3, 0x24($sp)
    /* 8E050 8009F840 2000B2AF */  sw         $s2, 0x20($sp)
    /* 8E054 8009F844 1C00B1AF */  sw         $s1, 0x1C($sp)
    /* 8E058 8009F848 1800B0AF */  sw         $s0, 0x18($sp)
    /* 8E05C 8009F84C 900A838C */  lw         $v1, 0xA90($a0)
    /* 8E060 8009F850 01000224 */  addiu      $v0, $zero, 0x1
    /* 8E064 8009F854 03006210 */  beq        $v1, $v0, .L8009F864
    /* 8E068 8009F858 04000224 */   addiu     $v0, $zero, 0x4
    /* 8E06C 8009F85C 04006214 */  bne        $v1, $v0, .L8009F870
    /* 8E070 8009F860 00000000 */   nop
  .L8009F864:
    /* 8E074 8009F864 840A908C */  lw         $s0, 0xA84($a0)
    /* 8E078 8009F868 1D7E0208 */  j          .L8009F874
    /* 8E07C 8009F86C 00000000 */   nop
  .L8009F870:
    /* 8E080 8009F870 800A908C */  lw         $s0, 0xA80($a0)
  .L8009F874:
    /* 8E084 8009F874 00000000 */  nop
    /* 8E088 8009F878 0000048E */  lw         $a0, 0x0($s0)
    /* 8E08C 8009F87C 0D80053C */  lui        $a1, %hi(D_800C9CF0)
    /* 8E090 8009F880 F09CA524 */  addiu      $a1, $a1, %lo(D_800C9CF0)
    /* 8E094 8009F884 4098020C */  jal        strcmp
    /* 8E098 8009F888 05000624 */   addiu     $a2, $zero, 0x5
    /* 8E09C 8009F88C 7F004014 */  bnez       $v0, .L8009FA8C
    /* 8E0A0 8009F890 0D80053C */   lui       $a1, %hi(D_800C9CF8)
    /* 8E0A4 8009F894 F89CA524 */  addiu      $a1, $a1, %lo(D_800C9CF8)
    /* 8E0A8 8009F898 3800048E */  lw         $a0, 0x38($s0)
    /* 8E0AC 8009F89C 6000128E */  lw         $s2, 0x60($s0)
    /* 8E0B0 8009F8A0 845F000C */  jal        func_80017E10
    /* 8E0B4 8009F8A4 06000624 */   addiu     $a2, $zero, 0x6
    /* 8E0B8 8009F8A8 0D80053C */  lui        $a1, %hi(D_800C9D00)
    /* 8E0BC 8009F8AC 009DA524 */  addiu      $a1, $a1, %lo(D_800C9D00)
    /* 8E0C0 8009F8B0 04000624 */  addiu      $a2, $zero, 0x4
    /* 8E0C4 8009F8B4 3800048E */  lw         $a0, 0x38($s0)
    /* 8E0C8 8009F8B8 845F000C */  jal        func_80017E10
    /* 8E0CC 8009F8BC 21A84000 */   addu      $s5, $v0, $zero
    /* 8E0D0 8009F8C0 21200002 */  addu       $a0, $s0, $zero
    /* 8E0D4 8009F8C4 0D80053C */  lui        $a1, %hi(D_800C9D08)
    /* 8E0D8 8009F8C8 089DA524 */  addiu      $a1, $a1, %lo(D_800C9D08)
    /* 8E0DC 8009F8CC A4EA000C */  jal        func_8003AA90
    /* 8E0E0 8009F8D0 21A04000 */   addu      $s4, $v0, $zero
    /* 8E0E4 8009F8D4 0D80053C */  lui        $a1, %hi(D_800C9D14)
    /* 8E0E8 8009F8D8 149DA524 */  addiu      $a1, $a1, %lo(D_800C9D14)
    /* 8E0EC 8009F8DC 06000624 */  addiu      $a2, $zero, 0x6
    /* 8E0F0 8009F8E0 3800048E */  lw         $a0, 0x38($s0)
    /* 8E0F4 8009F8E4 845F000C */  jal        func_80017E10
    /* 8E0F8 8009F8E8 21984000 */   addu      $s3, $v0, $zero
    /* 8E0FC 8009F8EC 21200002 */  addu       $a0, $s0, $zero
    /* 8E100 8009F8F0 01000524 */  addiu      $a1, $zero, 0x1
    /* 8E104 8009F8F4 21300000 */  addu       $a2, $zero, $zero
    /* 8E108 8009F8F8 0EEC000C */  jal        func_8003B038
    /* 8E10C 8009F8FC 21884000 */   addu      $s1, $v0, $zero
    /* 8E110 8009F900 04004012 */  beqz       $s2, .L8009F914
    /* 8E114 8009F904 21304000 */   addu      $a2, $v0, $zero
    /* 8E118 8009F908 0A00C284 */  lh         $v0, 0xA($a2)
    /* 8E11C 8009F90C 00000000 */  nop
    /* 8E120 8009F910 400142AE */  sw         $v0, 0x140($s2)
  .L8009F914:
    /* 8E124 8009F914 0A00C284 */  lh         $v0, 0xA($a2)
    /* 8E128 8009F918 0C00C48C */  lw         $a0, 0xC($a2)
    /* 8E12C 8009F91C 80100200 */  sll        $v0, $v0, 2
    /* 8E130 8009F920 21104400 */  addu       $v0, $v0, $a0
    /* 8E134 8009F924 0000438C */  lw         $v1, 0x0($v0)
    /* 8E138 8009F928 00000000 */  nop
    /* 8E13C 8009F92C 2800728C */  lw         $s2, 0x28($v1)
    /* 8E140 8009F930 00000000 */  nop
    /* 8E144 8009F934 5800448E */  lw         $a0, 0x58($s2)
    /* 8E148 8009F938 5800858E */  lw         $a1, 0x58($s4)
    /* 8E14C 8009F93C 08008394 */  lhu        $v1, 0x8($a0)
    /* 8E150 8009F940 00000000 */  nop
    /* 8E154 8009F944 0800A3A4 */  sh         $v1, 0x8($a1)
    /* 8E158 8009F948 0A00C284 */  lh         $v0, 0xA($a2)
    /* 8E15C 8009F94C 2800648E */  lw         $a0, 0x28($s3)
    /* 8E160 8009F950 80100200 */  sll        $v0, $v0, 2
    /* 8E164 8009F954 21104400 */  addu       $v0, $v0, $a0
    /* 8E168 8009F958 0000438C */  lw         $v1, 0x0($v0)
    /* 8E16C 8009F95C 00000000 */  nop
    /* 8E170 8009F960 05006010 */  beqz       $v1, .L8009F978
    /* 8E174 8009F964 21282002 */   addu      $a1, $s1, $zero
    /* 8E178 8009F968 21200002 */  addu       $a0, $s0, $zero
    /* 8E17C 8009F96C 4204063C */  lui        $a2, (0x442FD9B >> 16)
    /* 8E180 8009F970 617E0208 */  j          .L8009F984
    /* 8E184 8009F974 9BFDC634 */   ori       $a2, $a2, (0x442FD9B & 0xFFFF)
  .L8009F978:
    /* 8E188 8009F978 21200002 */  addu       $a0, $s0, $zero
    /* 8E18C 8009F97C 6F2F063C */  lui        $a2, (0x2F6FAE58 >> 16)
    /* 8E190 8009F980 58AEC634 */  ori        $a2, $a2, (0x2F6FAE58 & 0xFFFF)
  .L8009F984:
    /* 8E194 8009F984 D8E9000C */  jal        func_8003A760
    /* 8E198 8009F988 00000000 */   nop
    /* 8E19C 8009F98C 2128A002 */  addu       $a1, $s5, $zero
    /* 8E1A0 8009F990 1000B127 */  addiu      $s1, $sp, 0x10
    /* 8E1A4 8009F994 0D80043C */  lui        $a0, %hi(D_800C8864)
    /* 8E1A8 8009F998 6488848C */  lw         $a0, %lo(D_800C8864)($a0)
    /* 8E1AC 8009F99C 21302002 */  addu       $a2, $s1, $zero
    /* 8E1B0 8009F9A0 5562000C */  jal        func_80018954
    /* 8E1B4 8009F9A4 60008424 */   addiu     $a0, $a0, 0x60
    /* 8E1B8 8009F9A8 21284002 */  addu       $a1, $s2, $zero
    /* 8E1BC 8009F9AC 1400B027 */  addiu      $s0, $sp, 0x14
    /* 8E1C0 8009F9B0 0D80043C */  lui        $a0, %hi(D_800C8864)
    /* 8E1C4 8009F9B4 6488848C */  lw         $a0, %lo(D_800C8864)($a0)
    /* 8E1C8 8009F9B8 21300002 */  addu       $a2, $s0, $zero
    /* 8E1CC 8009F9BC 5562000C */  jal        func_80018954
    /* 8E1D0 8009F9C0 60008424 */   addiu     $a0, $a0, 0x60
    /* 8E1D4 8009F9C4 5555073C */  lui        $a3, (0x55555555 >> 16)
    /* 8E1D8 8009F9C8 5555E734 */  ori        $a3, $a3, (0x55555555 & 0xFFFF)
    /* 8E1DC 8009F9CC FF4C043C */  lui        $a0, (0x4CFFFFFF >> 16)
    /* 8E1E0 8009F9D0 FFFF8434 */  ori        $a0, $a0, (0x4CFFFFFF & 0xFFFF)
    /* 8E1E4 8009F9D4 0D80053C */  lui        $a1, %hi(D_800C8C70)
    /* 8E1E8 8009F9D8 708CA58C */  lw         $a1, %lo(D_800C8C70)($a1)
    /* 8E1EC 8009F9DC 0006023C */  lui        $v0, (0x6000000 >> 16)
    /* 8E1F0 8009F9E0 0000A2AC */  sw         $v0, 0x0($a1)
    /* 8E1F4 8009F9E4 FFFF023C */  lui        $v0, (0xFFFF0000 >> 16)
    /* 8E1F8 8009F9E8 1800A7AC */  sw         $a3, 0x18($a1)
    /* 8E1FC 8009F9EC 0400A4AC */  sw         $a0, 0x4($a1)
    /* 8E200 8009F9F0 1400A387 */  lh         $v1, 0x14($sp)
    /* 8E204 8009F9F4 02000496 */  lhu        $a0, 0x2($s0)
    /* 8E208 8009F9F8 FEFF6324 */  addiu      $v1, $v1, -0x2
    /* 8E20C 8009F9FC FFFF6330 */  andi       $v1, $v1, 0xFFFF
    /* 8E210 8009FA00 00240400 */  sll        $a0, $a0, 16
    /* 8E214 8009FA04 21208200 */  addu       $a0, $a0, $v0
    /* 8E218 8009FA08 25186400 */  or         $v1, $v1, $a0
    /* 8E21C 8009FA0C 0800A3AC */  sw         $v1, 0x8($a1)
    /* 8E220 8009FA10 02000296 */  lhu        $v0, 0x2($s0)
    /* 8E224 8009FA14 FFFF033C */  lui        $v1, (0xFFFF0118 >> 16)
    /* 8E228 8009FA18 00140200 */  sll        $v0, $v0, 16
    /* 8E22C 8009FA1C 21104300 */  addu       $v0, $v0, $v1
    /* 8E230 8009FA20 18014234 */  ori        $v0, $v0, (0xFFFF0118 & 0xFFFF)
    /* 8E234 8009FA24 0C00A2AC */  sw         $v0, 0xC($a1)
    /* 8E238 8009FA28 02002396 */  lhu        $v1, 0x2($s1)
    /* 8E23C 8009FA2C 00000000 */  nop
    /* 8E240 8009FA30 001C0300 */  sll        $v1, $v1, 16
    /* 8E244 8009FA34 18016334 */  ori        $v1, $v1, 0x118
    /* 8E248 8009FA38 1000A3AC */  sw         $v1, 0x10($a1)
    /* 8E24C 8009FA3C 1000A487 */  lh         $a0, 0x10($sp)
    /* 8E250 8009FA40 02002396 */  lhu        $v1, 0x2($s1)
    /* 8E254 8009FA44 0C008424 */  addiu      $a0, $a0, 0xC
    /* 8E258 8009FA48 FFFF8430 */  andi       $a0, $a0, 0xFFFF
    /* 8E25C 8009FA4C 001C0300 */  sll        $v1, $v1, 16
    /* 8E260 8009FA50 25208300 */  or         $a0, $a0, $v1
    /* 8E264 8009FA54 1400A4AC */  sw         $a0, 0x14($a1)
    /* 8E268 8009FA58 0D80023C */  lui        $v0, %hi(D_800CBDC0)
    /* 8E26C 8009FA5C C0BD428C */  lw         $v0, %lo(D_800CBDC0)($v0)
    /* 8E270 8009FA60 0D80083C */  lui        $t0, %hi(D_800C8C70)
    /* 8E274 8009FA64 708C088D */  lw         $t0, %lo(D_800C8C70)($t0)
    /* 8E278 8009FA68 04004224 */  addiu      $v0, $v0, 0x4
    /* 8E27C 8009FA6C 02004588 */  lwl        $a1, 0x2($v0)
    /* 8E280 8009FA70 00220800 */  sll        $a0, $t0, 8
    /* 8E284 8009FA74 020005A9 */  swl        $a1, 0x2($t0)
    /* 8E288 8009FA78 020044A8 */  swl        $a0, 0x2($v0)
    /* 8E28C 8009FA7C 21180001 */  addu       $v1, $t0, $zero
    /* 8E290 8009FA80 1C006324 */  addiu      $v1, $v1, 0x1C
    /* 8E294 8009FA84 0D80013C */  lui        $at, %hi(D_800C8C70)
    /* 8E298 8009FA88 708C23AC */  sw         $v1, %lo(D_800C8C70)($at)
  .L8009FA8C:
    /* 8E29C 8009FA8C 3000BF8F */  lw         $ra, 0x30($sp)
    /* 8E2A0 8009FA90 2C00B58F */  lw         $s5, 0x2C($sp)
    /* 8E2A4 8009FA94 2800B48F */  lw         $s4, 0x28($sp)
    /* 8E2A8 8009FA98 2400B38F */  lw         $s3, 0x24($sp)
    /* 8E2AC 8009FA9C 2000B28F */  lw         $s2, 0x20($sp)
    /* 8E2B0 8009FAA0 1C00B18F */  lw         $s1, 0x1C($sp)
    /* 8E2B4 8009FAA4 1800B08F */  lw         $s0, 0x18($sp)
    /* 8E2B8 8009FAA8 0800E003 */  jr         $ra
    /* 8E2BC 8009FAAC 3800BD27 */   addiu     $sp, $sp, 0x38
endlabel func_8009F82C
