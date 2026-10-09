nonmatching func_800B1F68, 0x37C

glabel func_800B1F68
    /* A0778 800B1F68 D0FFBD27 */  addiu      $sp, $sp, -0x30
    /* A077C 800B1F6C 1400B1AF */  sw         $s1, 0x14($sp)
    /* A0780 800B1F70 21888000 */  addu       $s1, $a0, $zero
    /* A0784 800B1F74 0C80023C */  lui        $v0, %hi(D_800C3C94)
    /* A0788 800B1F78 943C428C */  lw         $v0, %lo(D_800C3C94)($v0)
    /* A078C 800B1F7C 2800BFAF */  sw         $ra, 0x28($sp)
    /* A0790 800B1F80 2400B5AF */  sw         $s5, 0x24($sp)
    /* A0794 800B1F84 2000B4AF */  sw         $s4, 0x20($sp)
    /* A0798 800B1F88 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* A079C 800B1F8C 1800B2AF */  sw         $s2, 0x18($sp)
    /* A07A0 800B1F90 09F84000 */  jalr       $v0
    /* A07A4 800B1F94 1000B0AF */   sw        $s0, 0x10($sp)
    /* A07A8 800B1F98 0C80023C */  lui        $v0, %hi(D_800C3CD4)
    /* A07AC 800B1F9C D43C428C */  lw         $v0, %lo(D_800C3CD4)($v0)
    /* A07B0 800B1FA0 00000000 */  nop
    /* A07B4 800B1FA4 0B004010 */  beqz       $v0, .L800B1FD4
    /* A07B8 800B1FA8 21A00000 */   addu      $s4, $zero, $zero
    /* A07BC 800B1FAC 3C00228E */  lw         $v0, 0x3C($s1)
    /* A07C0 800B1FB0 00000000 */  nop
    /* A07C4 800B1FB4 00004290 */  lbu        $v0, 0x0($v0)
    /* A07C8 800B1FB8 08000324 */  addiu      $v1, $zero, 0x8
    /* A07CC 800B1FBC 03110200 */  sra        $v0, $v0, 4
    /* A07D0 800B1FC0 04004314 */  bne        $v0, $v1, .L800B1FD4
    /* A07D4 800B1FC4 00000000 */   nop
    /* A07D8 800B1FC8 36002292 */  lbu        $v0, 0x36($s1)
    /* A07DC 800B1FCC 00000000 */  nop
    /* A07E0 800B1FD0 0100542C */  sltiu      $s4, $v0, 0x1
  .L800B1FD4:
    /* A07E4 800B1FD4 26008012 */  beqz       $s4, .L800B2070
    /* A07E8 800B1FD8 00000000 */   nop
    /* A07EC 800B1FDC FFFF1024 */  addiu      $s0, $zero, -0x1
    /* A07F0 800B1FE0 10FF1224 */  addiu      $s2, $zero, -0xF0
  .L800B1FE4:
    /* A07F4 800B1FE4 0C80023C */  lui        $v0, %hi(D_800C3D00)
    /* A07F8 800B1FE8 003D428C */  lw         $v0, %lo(D_800C3D00)($v0)
    /* A07FC 800B1FEC 00000000 */  nop
    /* A0800 800B1FF0 FFFF4224 */  addiu      $v0, $v0, -0x1
    /* A0804 800B1FF4 0C80013C */  lui        $at, %hi(D_800C3D00)
    /* A0808 800B1FF8 1D004018 */  blez       $v0, .L800B2070
    /* A080C 800B1FFC 003D22AC */   sw        $v0, %lo(D_800C3D00)($at)
    /* A0810 800B2000 07000006 */  bltz       $s0, .L800B2020
    /* A0814 800B2004 00000000 */   nop
    /* A0818 800B2008 0C00248E */  lw         $a0, 0xC($s1)
    /* A081C 800B200C 0C80023C */  lui        $v0, %hi(D_800C3C94)
    /* A0820 800B2010 943C428C */  lw         $v0, %lo(D_800C3C94)($v0)
    /* A0824 800B2014 00000000 */  nop
    /* A0828 800B2018 09F84000 */  jalr       $v0
    /* A082C 800B201C 21209200 */   addu      $a0, $a0, $s2
  .L800B2020:
    /* A0830 800B2020 21202002 */  addu       $a0, $s1, $zero
    /* A0834 800B2024 0C80023C */  lui        $v0, %hi(D_800C3C90)
    /* A0838 800B2028 903C428C */  lw         $v0, %lo(D_800C3C90)($v0)
    /* A083C 800B202C 00000000 */  nop
    /* A0840 800B2030 09F84000 */  jalr       $v0
    /* A0844 800B2034 01000524 */   addiu     $a1, $zero, 0x1
    /* A0848 800B2038 21202002 */  addu       $a0, $s1, $zero
    /* A084C 800B203C 2FC4020C */  jal        _padSioRW2
    /* A0850 800B2040 FF004530 */   andi      $a1, $v0, 0xFF
    /* A0854 800B2044 9E004004 */  bltz       $v0, .L800B22C0
    /* A0858 800B2048 00000000 */   nop
    /* A085C 800B204C 77CB020C */  jal        setRC2wait
    /* A0860 800B2050 3C000424 */   addiu     $a0, $zero, 0x3C
    /* A0864 800B2054 BDC4020C */  jal        _padClrIntSio0
    /* A0868 800B2058 00000000 */   nop
    /* A086C 800B205C 61004010 */  beqz       $v0, .L800B21E4
    /* A0870 800B2060 01001026 */   addiu     $s0, $s0, 0x1
    /* A0874 800B2064 0400022A */  slti       $v0, $s0, 0x4
    /* A0878 800B2068 DEFF4014 */  bnez       $v0, .L800B1FE4
    /* A087C 800B206C F0005226 */   addiu     $s2, $s2, 0xF0
  .L800B2070:
    /* A0880 800B2070 0C80033C */  lui        $v1, %hi(D_800C3CC8)
    /* A0884 800B2074 C83C638C */  lw         $v1, %lo(D_800C3CC8)($v1)
    /* A0888 800B2078 0C80023C */  lui        $v0, %hi(D_800C3D00)
    /* A088C 800B207C 003D428C */  lw         $v0, %lo(D_800C3D00)($v0)
    /* A0890 800B2080 00000000 */  nop
    /* A0894 800B2084 02004228 */  slti       $v0, $v0, 0x2
    /* A0898 800B2088 74004014 */  bnez       $v0, .L800B225C
    /* A089C 800B208C 0100642C */   sltiu     $a0, $v1, 0x1
    /* A08A0 800B2090 0C80033C */  lui        $v1, %hi(D_800C3CE0)
    /* A08A4 800B2094 E03C6324 */  addiu      $v1, $v1, %lo(D_800C3CE0)
    /* A08A8 800B2098 80100400 */  sll        $v0, $a0, 2
    /* A08AC 800B209C 21804300 */  addu       $s0, $v0, $v1
    /* A08B0 800B20A0 00110400 */  sll        $v0, $a0, 4
    /* A08B4 800B20A4 23104400 */  subu       $v0, $v0, $a0
    /* A08B8 800B20A8 00910200 */  sll        $s2, $v0, 4
    /* A08BC 800B20AC 03001524 */  addiu      $s5, $zero, 0x3
  .L800B20B0:
    /* A08C0 800B20B0 0000048E */  lw         $a0, 0x0($s0)
    /* A08C4 800B20B4 00000000 */  nop
    /* A08C8 800B20B8 68008004 */  bltz       $a0, .L800B225C
    /* A08CC 800B20BC 00000000 */   nop
    /* A08D0 800B20C0 0E008018 */  blez       $a0, .L800B20FC
    /* A08D4 800B20C4 00110400 */   sll       $v0, $a0, 4
    /* A08D8 800B20C8 0C80033C */  lui        $v1, %hi(D_800C3CBC)
    /* A08DC 800B20CC BC3C638C */  lw         $v1, %lo(D_800C3CBC)($v1)
    /* A08E0 800B20D0 23104400 */  subu       $v0, $v0, $a0
    /* A08E4 800B20D4 21184302 */  addu       $v1, $s2, $v1
    /* A08E8 800B20D8 0C00638C */  lw         $v1, 0xC($v1)
    /* A08EC 800B20DC 00110200 */  sll        $v0, $v0, 4
    /* A08F0 800B20E0 21186200 */  addu       $v1, $v1, $v0
    /* A08F4 800B20E4 10FF7324 */  addiu      $s3, $v1, -0xF0
    /* A08F8 800B20E8 0C80023C */  lui        $v0, %hi(_padFuncRecvAuto)
    /* A08FC 800B20EC A83C428C */  lw         $v0, %lo(_padFuncRecvAuto)($v0)
    /* A0900 800B20F0 00000000 */  nop
    /* A0904 800B20F4 09F84000 */  jalr       $v0
    /* A0908 800B20F8 21206002 */   addu      $a0, $s3, $zero
  .L800B20FC:
    /* A090C 800B20FC 0000038E */  lw         $v1, 0x0($s0)
    /* A0910 800B2100 00000000 */  nop
    /* A0914 800B2104 0F007510 */  beq        $v1, $s5, .L800B2144
    /* A0918 800B2108 00000000 */   nop
    /* A091C 800B210C 04006228 */  slti       $v0, $v1, 0x4
    /* A0920 800B2110 07004010 */  beqz       $v0, .L800B2130
    /* A0924 800B2114 02006228 */   slti      $v0, $v1, 0x2
    /* A0928 800B2118 22004010 */  beqz       $v0, .L800B21A4
    /* A092C 800B211C 21202002 */   addu      $a0, $s1, $zero
    /* A0930 800B2120 20006004 */  bltz       $v1, .L800B21A4
    /* A0934 800B2124 00000000 */   nop
    /* A0938 800B2128 58C80208 */  j          .L800B2160
    /* A093C 800B212C 00000000 */   nop
  .L800B2130:
    /* A0940 800B2130 04000224 */  addiu      $v0, $zero, 0x4
    /* A0944 800B2134 1B006214 */  bne        $v1, $v0, .L800B21A4
    /* A0948 800B2138 21202002 */   addu      $a0, $s1, $zero
    /* A094C 800B213C 69C80208 */  j          .L800B21A4
    /* A0950 800B2140 000015AE */   sw        $s5, 0x0($s0)
  .L800B2144:
    /* A0954 800B2144 0C80023C */  lui        $v0, %hi(_padFuncRecvAuto)
    /* A0958 800B2148 A83C428C */  lw         $v0, %lo(_padFuncRecvAuto)($v0)
    /* A095C 800B214C 00000000 */  nop
    /* A0960 800B2150 09F84000 */  jalr       $v0
    /* A0964 800B2154 10FF6426 */   addiu     $a0, $s3, -0xF0
    /* A0968 800B2158 67C80208 */  j          .L800B219C
    /* A096C 800B215C 01000224 */   addiu     $v0, $zero, 0x1
  .L800B2160:
    /* A0970 800B2160 0C80023C */  lui        $v0, %hi(D_800C3CBC)
    /* A0974 800B2164 BC3C428C */  lw         $v0, %lo(D_800C3CBC)($v0)
    /* A0978 800B2168 00000000 */  nop
    /* A097C 800B216C 21985200 */  addu       $s3, $v0, $s2
    /* A0980 800B2170 0C80023C */  lui        $v0, %hi(_padFuncRecvAuto)
    /* A0984 800B2174 A83C428C */  lw         $v0, %lo(_padFuncRecvAuto)($v0)
    /* A0988 800B2178 00000000 */  nop
    /* A098C 800B217C 09F84000 */  jalr       $v0
    /* A0990 800B2180 21206002 */   addu      $a0, $s3, $zero
    /* A0994 800B2184 0C80023C */  lui        $v0, %hi(D_800C3CAC)
    /* A0998 800B2188 AC3C428C */  lw         $v0, %lo(D_800C3CAC)($v0)
    /* A099C 800B218C 00000000 */  nop
    /* A09A0 800B2190 09F84000 */  jalr       $v0
    /* A09A4 800B2194 21206002 */   addu      $a0, $s3, $zero
    /* A09A8 800B2198 FFFF0224 */  addiu      $v0, $zero, -0x1
  .L800B219C:
    /* A09AC 800B219C 000002AE */  sw         $v0, 0x0($s0)
    /* A09B0 800B21A0 21202002 */  addu       $a0, $s1, $zero
  .L800B21A4:
    /* A09B4 800B21A4 0C80023C */  lui        $v0, %hi(D_800C3C90)
    /* A09B8 800B21A8 903C428C */  lw         $v0, %lo(D_800C3C90)($v0)
    /* A09BC 800B21AC 00000000 */  nop
    /* A09C0 800B21B0 09F84000 */  jalr       $v0
    /* A09C4 800B21B4 21288002 */   addu      $a1, $s4, $zero
    /* A09C8 800B21B8 21202002 */  addu       $a0, $s1, $zero
    /* A09CC 800B21BC B9C3020C */  jal        _padSioRW
    /* A09D0 800B21C0 FF004530 */   andi      $a1, $v0, 0xFF
    /* A09D4 800B21C4 3E004004 */  bltz       $v0, .L800B22C0
    /* A09D8 800B21C8 00000000 */   nop
    /* A09DC 800B21CC 77CB020C */  jal        setRC2wait
    /* A09E0 800B21D0 3C000424 */   addiu     $a0, $zero, 0x3C
    /* A09E4 800B21D4 BDC4020C */  jal        _padClrIntSio0
    /* A09E8 800B21D8 00000000 */   nop
    /* A09EC 800B21DC 03004014 */  bnez       $v0, .L800B21EC
    /* A09F0 800B21E0 00000000 */   nop
  .L800B21E4:
    /* A09F4 800B21E4 B0C80208 */  j          .L800B22C0
    /* A09F8 800B21E8 FDFF0224 */   addiu     $v0, $zero, -0x3
  .L800B21EC:
    /* A09FC 800B21EC 0C80023C */  lui        $v0, %hi(D_800C3D00)
    /* A0A00 800B21F0 003D428C */  lw         $v0, %lo(D_800C3D00)($v0)
    /* A0A04 800B21F4 00000000 */  nop
    /* A0A08 800B21F8 FFFF4224 */  addiu      $v0, $v0, -0x1
    /* A0A0C 800B21FC 0C80013C */  lui        $at, %hi(D_800C3D00)
    /* A0A10 800B2200 003D22AC */  sw         $v0, %lo(D_800C3D00)($at)
    /* A0A14 800B2204 02004228 */  slti       $v0, $v0, 0x2
    /* A0A18 800B2208 A9FF4010 */  beqz       $v0, .L800B20B0
    /* A0A1C 800B220C 00000000 */   nop
    /* A0A20 800B2210 97C80208 */  j          .L800B225C
    /* A0A24 800B2214 00000000 */   nop
  .L800B2218:
    /* A0A28 800B2218 21202002 */  addu       $a0, $s1, $zero
    /* A0A2C 800B221C 0C80023C */  lui        $v0, %hi(D_800C3C90)
    /* A0A30 800B2220 903C428C */  lw         $v0, %lo(D_800C3C90)($v0)
    /* A0A34 800B2224 00000000 */  nop
    /* A0A38 800B2228 09F84000 */  jalr       $v0
    /* A0A3C 800B222C 21288002 */   addu      $a1, $s4, $zero
    /* A0A40 800B2230 21202002 */  addu       $a0, $s1, $zero
    /* A0A44 800B2234 B9C3020C */  jal        _padSioRW
    /* A0A48 800B2238 FF004530 */   andi      $a1, $v0, 0xFF
    /* A0A4C 800B223C 20004004 */  bltz       $v0, .L800B22C0
    /* A0A50 800B2240 00000000 */   nop
    /* A0A54 800B2244 77CB020C */  jal        setRC2wait
    /* A0A58 800B2248 3C000424 */   addiu     $a0, $zero, 0x3C
    /* A0A5C 800B224C BDC4020C */  jal        _padClrIntSio0
    /* A0A60 800B2250 00000000 */   nop
    /* A0A64 800B2254 1A004010 */  beqz       $v0, .L800B22C0
    /* A0A68 800B2258 FDFF0224 */   addiu     $v0, $zero, -0x3
  .L800B225C:
    /* A0A6C 800B225C 0C80023C */  lui        $v0, %hi(D_800C3D00)
    /* A0A70 800B2260 003D428C */  lw         $v0, %lo(D_800C3D00)($v0)
    /* A0A74 800B2264 00000000 */  nop
    /* A0A78 800B2268 FFFF4224 */  addiu      $v0, $v0, -0x1
    /* A0A7C 800B226C 0C80013C */  lui        $at, %hi(D_800C3D00)
    /* A0A80 800B2270 E9FF401C */  bgtz       $v0, .L800B2218
    /* A0A84 800B2274 003D22AC */   sw        $v0, %lo(D_800C3D00)($at)
    /* A0A88 800B2278 E1C4020C */  jal        _padWaitRXready
    /* A0A8C 800B227C 00000000 */   nop
    /* A0A90 800B2280 44002392 */  lbu        $v1, 0x44($s1)
    /* A0A94 800B2284 00000000 */  nop
    /* A0A98 800B2288 01006224 */  addiu      $v0, $v1, 0x1
    /* A0A9C 800B228C 440022A2 */  sb         $v0, 0x44($s1)
    /* A0AA0 800B2290 0C80023C */  lui        $v0, %hi(D_800C3D04)
    /* A0AA4 800B2294 043D428C */  lw         $v0, %lo(D_800C3D04)($v0)
    /* A0AA8 800B2298 3C00248E */  lw         $a0, 0x3C($s1)
    /* A0AAC 800B229C 00004290 */  lbu        $v0, 0x0($v0)
    /* A0AB0 800B22A0 21186400 */  addu       $v1, $v1, $a0
    /* A0AB4 800B22A4 000062A0 */  sb         $v0, 0x0($v1)
    /* A0AB8 800B22A8 0C80023C */  lui        $v0, %hi(D_800C3C88)
    /* A0ABC 800B22AC 883C428C */  lw         $v0, %lo(D_800C3C88)($v0)
    /* A0AC0 800B22B0 00000000 */  nop
    /* A0AC4 800B22B4 09F84000 */  jalr       $v0
    /* A0AC8 800B22B8 21200000 */   addu      $a0, $zero, $zero
    /* A0ACC 800B22BC 21100000 */  addu       $v0, $zero, $zero
  .L800B22C0:
    /* A0AD0 800B22C0 2800BF8F */  lw         $ra, 0x28($sp)
    /* A0AD4 800B22C4 2400B58F */  lw         $s5, 0x24($sp)
    /* A0AD8 800B22C8 2000B48F */  lw         $s4, 0x20($sp)
    /* A0ADC 800B22CC 1C00B38F */  lw         $s3, 0x1C($sp)
    /* A0AE0 800B22D0 1800B28F */  lw         $s2, 0x18($sp)
    /* A0AE4 800B22D4 1400B18F */  lw         $s1, 0x14($sp)
    /* A0AE8 800B22D8 1000B08F */  lw         $s0, 0x10($sp)
    /* A0AEC 800B22DC 0800E003 */  jr         $ra
    /* A0AF0 800B22E0 3000BD27 */   addiu     $sp, $sp, 0x30
endlabel func_800B1F68
    /* A0AF4 800B22E4 00000000 */  nop
    /* A0AF8 800B22E8 00000000 */  nop
