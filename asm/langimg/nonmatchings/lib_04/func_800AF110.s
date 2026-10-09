nonmatching func_800AF110, 0x298

glabel func_800AF110
    /* 9D920 800AF110 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 9D924 800AF114 1000B0AF */  sw         $s0, 0x10($sp)
    /* 9D928 800AF118 1400BFAF */  sw         $ra, 0x14($sp)
    /* 9D92C 800AF11C 8CBA020C */  jal        func_800AEA30
    /* 9D930 800AF120 21808000 */   addu      $s0, $a0, $zero
    /* 9D934 800AF124 21204000 */  addu       $a0, $v0, $zero
    /* 9D938 800AF128 9A008010 */  beqz       $a0, .L800AF394
    /* 9D93C 800AF12C 07000324 */   addiu     $v1, $zero, 0x7
    /* 9D940 800AF130 01008290 */  lbu        $v0, 0x1($a0)
    /* 9D944 800AF134 00000000 */  nop
    /* 9D948 800AF138 02110200 */  srl        $v0, $v0, 4
    /* 9D94C 800AF13C 96004314 */  bne        $v0, $v1, .L800AF398
    /* 9D950 800AF140 21100000 */   addu      $v0, $zero, $zero
    /* 9D954 800AF144 0F001032 */  andi       $s0, $s0, 0xF
    /* 9D958 800AF148 0E800C3C */  lui        $t4, %hi(D_800DE3D8)
    /* 9D95C 800AF14C 02008824 */  addiu      $t0, $a0, 0x2
    /* 9D960 800AF150 0E800B3C */  lui        $t3, %hi(D_800DE3F0)
    /* 9D964 800AF154 00391000 */  sll        $a3, $s0, 4
    /* 9D968 800AF158 0E800A3C */  lui        $t2, %hi(D_800DE398)
    /* 9D96C 800AF15C 98E34325 */  addiu      $v1, $t2, %lo(D_800DE398)
    /* 9D970 800AF160 02008294 */  lhu        $v0, 0x2($a0)
    /* 9D974 800AF164 2118E300 */  addu       $v1, $a3, $v1
    /* 9D978 800AF168 27100200 */  nor        $v0, $zero, $v0
    /* 9D97C 800AF16C D8E382A5 */  sh         $v0, %lo(D_800DE3D8)($t4)
    /* 9D980 800AF170 F0E36225 */  addiu      $v0, $t3, %lo(D_800DE3F0)
    /* 9D984 800AF174 2110E200 */  addu       $v0, $a3, $v0
    /* 9D988 800AF178 04000591 */  lbu        $a1, 0x4($t0)
    /* 9D98C 800AF17C 0000448C */  lw         $a0, 0x0($v0)
    /* 9D990 800AF180 0000668C */  lw         $a2, 0x0($v1)
    /* 9D994 800AF184 2318A400 */  subu       $v1, $a1, $a0
    /* 9D998 800AF188 23100600 */  negu       $v0, $a2
    /* 9D99C 800AF18C 2A106200 */  slt        $v0, $v1, $v0
    /* 9D9A0 800AF190 03004010 */  beqz       $v0, .L800AF1A0
    /* 9D9A4 800AF194 2A10C300 */   slt       $v0, $a2, $v1
    /* 9D9A8 800AF198 6BBC0208 */  j          .L800AF1AC
    /* 9D9AC 800AF19C 21186600 */   addu      $v1, $v1, $a2
  .L800AF1A0:
    /* 9D9B0 800AF1A0 02004014 */  bnez       $v0, .L800AF1AC
    /* 9D9B4 800AF1A4 23186600 */   subu      $v1, $v1, $a2
    /* 9D9B8 800AF1A8 21180000 */  addu       $v1, $zero, $zero
  .L800AF1AC:
    /* 9D9BC 800AF1AC 0E80093C */  lui        $t1, %hi(D_800DE3B8)
    /* 9D9C0 800AF1B0 B8E32225 */  addiu      $v0, $t1, %lo(D_800DE3B8)
    /* 9D9C4 800AF1B4 2110E200 */  addu       $v0, $a3, $v0
    /* 9D9C8 800AF1B8 0000448C */  lw         $a0, 0x0($v0)
    /* 9D9CC 800AF1BC 001A0300 */  sll        $v1, $v1, 8
    /* 9D9D0 800AF1C0 1A006400 */  div        $zero, $v1, $a0
    /* 9D9D4 800AF1C4 02008014 */  bnez       $a0, .L800AF1D0
    /* 9D9D8 800AF1C8 00000000 */   nop
    /* 9D9DC 800AF1CC 0D000700 */  break      7
  .L800AF1D0:
    /* 9D9E0 800AF1D0 FFFF0124 */  addiu      $at, $zero, -0x1
    /* 9D9E4 800AF1D4 04008114 */  bne        $a0, $at, .L800AF1E8
    /* 9D9E8 800AF1D8 0080013C */   lui       $at, (0x80000000 >> 16)
    /* 9D9EC 800AF1DC 02006114 */  bne        $v1, $at, .L800AF1E8
    /* 9D9F0 800AF1E0 00000000 */   nop
    /* 9D9F4 800AF1E4 0D000600 */  break      6
  .L800AF1E8:
    /* 9D9F8 800AF1E8 12180000 */  mflo       $v1
    /* 9D9FC 800AF1EC D8E38225 */  addiu      $v0, $t4, %lo(D_800DE3D8)
    /* 9DA00 800AF1F0 F0E36425 */  addiu      $a0, $t3, %lo(D_800DE3F0)
    /* 9DA04 800AF1F4 21208700 */  addu       $a0, $a0, $a3
    /* 9DA08 800AF1F8 0C0043AC */  sw         $v1, 0xC($v0)
    /* 9DA0C 800AF1FC 98E34325 */  addiu      $v1, $t2, %lo(D_800DE398)
    /* 9DA10 800AF200 21186700 */  addu       $v1, $v1, $a3
    /* 9DA14 800AF204 05000691 */  lbu        $a2, 0x5($t0)
    /* 9DA18 800AF208 0400858C */  lw         $a1, 0x4($a0)
    /* 9DA1C 800AF20C 0400648C */  lw         $a0, 0x4($v1)
    /* 9DA20 800AF210 2318C500 */  subu       $v1, $a2, $a1
    /* 9DA24 800AF214 23100400 */  negu       $v0, $a0
    /* 9DA28 800AF218 2A106200 */  slt        $v0, $v1, $v0
    /* 9DA2C 800AF21C 03004010 */  beqz       $v0, .L800AF22C
    /* 9DA30 800AF220 2A108300 */   slt       $v0, $a0, $v1
    /* 9DA34 800AF224 8EBC0208 */  j          .L800AF238
    /* 9DA38 800AF228 21186400 */   addu      $v1, $v1, $a0
  .L800AF22C:
    /* 9DA3C 800AF22C 02004014 */  bnez       $v0, .L800AF238
    /* 9DA40 800AF230 23186400 */   subu      $v1, $v1, $a0
    /* 9DA44 800AF234 21180000 */  addu       $v1, $zero, $zero
  .L800AF238:
    /* 9DA48 800AF238 B8E32225 */  addiu      $v0, $t1, %lo(D_800DE3B8)
    /* 9DA4C 800AF23C 21104700 */  addu       $v0, $v0, $a3
    /* 9DA50 800AF240 0400448C */  lw         $a0, 0x4($v0)
    /* 9DA54 800AF244 001A0300 */  sll        $v1, $v1, 8
    /* 9DA58 800AF248 1A006400 */  div        $zero, $v1, $a0
    /* 9DA5C 800AF24C 02008014 */  bnez       $a0, .L800AF258
    /* 9DA60 800AF250 00000000 */   nop
    /* 9DA64 800AF254 0D000700 */  break      7
  .L800AF258:
    /* 9DA68 800AF258 FFFF0124 */  addiu      $at, $zero, -0x1
    /* 9DA6C 800AF25C 04008114 */  bne        $a0, $at, .L800AF270
    /* 9DA70 800AF260 0080013C */   lui       $at, (0x80000000 >> 16)
    /* 9DA74 800AF264 02006114 */  bne        $v1, $at, .L800AF270
    /* 9DA78 800AF268 00000000 */   nop
    /* 9DA7C 800AF26C 0D000600 */  break      6
  .L800AF270:
    /* 9DA80 800AF270 12180000 */  mflo       $v1
    /* 9DA84 800AF274 D8E38225 */  addiu      $v0, $t4, %lo(D_800DE3D8)
    /* 9DA88 800AF278 F0E36425 */  addiu      $a0, $t3, %lo(D_800DE3F0)
    /* 9DA8C 800AF27C 21208700 */  addu       $a0, $a0, $a3
    /* 9DA90 800AF280 100043AC */  sw         $v1, 0x10($v0)
    /* 9DA94 800AF284 98E34325 */  addiu      $v1, $t2, %lo(D_800DE398)
    /* 9DA98 800AF288 21186700 */  addu       $v1, $v1, $a3
    /* 9DA9C 800AF28C 02000691 */  lbu        $a2, 0x2($t0)
    /* 9DAA0 800AF290 0800858C */  lw         $a1, 0x8($a0)
    /* 9DAA4 800AF294 0800648C */  lw         $a0, 0x8($v1)
    /* 9DAA8 800AF298 2318C500 */  subu       $v1, $a2, $a1
    /* 9DAAC 800AF29C 23100400 */  negu       $v0, $a0
    /* 9DAB0 800AF2A0 2A106200 */  slt        $v0, $v1, $v0
    /* 9DAB4 800AF2A4 03004010 */  beqz       $v0, .L800AF2B4
    /* 9DAB8 800AF2A8 2A108300 */   slt       $v0, $a0, $v1
    /* 9DABC 800AF2AC B0BC0208 */  j          .L800AF2C0
    /* 9DAC0 800AF2B0 21186400 */   addu      $v1, $v1, $a0
  .L800AF2B4:
    /* 9DAC4 800AF2B4 02004014 */  bnez       $v0, .L800AF2C0
    /* 9DAC8 800AF2B8 23186400 */   subu      $v1, $v1, $a0
    /* 9DACC 800AF2BC 21180000 */  addu       $v1, $zero, $zero
  .L800AF2C0:
    /* 9DAD0 800AF2C0 B8E32225 */  addiu      $v0, $t1, %lo(D_800DE3B8)
    /* 9DAD4 800AF2C4 21104700 */  addu       $v0, $v0, $a3
    /* 9DAD8 800AF2C8 0800448C */  lw         $a0, 0x8($v0)
    /* 9DADC 800AF2CC 001A0300 */  sll        $v1, $v1, 8
    /* 9DAE0 800AF2D0 1A006400 */  div        $zero, $v1, $a0
    /* 9DAE4 800AF2D4 02008014 */  bnez       $a0, .L800AF2E0
    /* 9DAE8 800AF2D8 00000000 */   nop
    /* 9DAEC 800AF2DC 0D000700 */  break      7
  .L800AF2E0:
    /* 9DAF0 800AF2E0 FFFF0124 */  addiu      $at, $zero, -0x1
    /* 9DAF4 800AF2E4 04008114 */  bne        $a0, $at, .L800AF2F8
    /* 9DAF8 800AF2E8 0080013C */   lui       $at, (0x80000000 >> 16)
    /* 9DAFC 800AF2EC 02006114 */  bne        $v1, $at, .L800AF2F8
    /* 9DB00 800AF2F0 00000000 */   nop
    /* 9DB04 800AF2F4 0D000600 */  break      6
  .L800AF2F8:
    /* 9DB08 800AF2F8 12180000 */  mflo       $v1
    /* 9DB0C 800AF2FC D8E38225 */  addiu      $v0, $t4, %lo(D_800DE3D8)
    /* 9DB10 800AF300 F0E36425 */  addiu      $a0, $t3, %lo(D_800DE3F0)
    /* 9DB14 800AF304 21208700 */  addu       $a0, $a0, $a3
    /* 9DB18 800AF308 040043AC */  sw         $v1, 0x4($v0)
    /* 9DB1C 800AF30C 98E34325 */  addiu      $v1, $t2, %lo(D_800DE398)
    /* 9DB20 800AF310 21186700 */  addu       $v1, $v1, $a3
    /* 9DB24 800AF314 03000691 */  lbu        $a2, 0x3($t0)
    /* 9DB28 800AF318 0C00858C */  lw         $a1, 0xC($a0)
    /* 9DB2C 800AF31C 0C00648C */  lw         $a0, 0xC($v1)
    /* 9DB30 800AF320 2318C500 */  subu       $v1, $a2, $a1
    /* 9DB34 800AF324 23100400 */  negu       $v0, $a0
    /* 9DB38 800AF328 2A106200 */  slt        $v0, $v1, $v0
    /* 9DB3C 800AF32C 03004010 */  beqz       $v0, .L800AF33C
    /* 9DB40 800AF330 2A108300 */   slt       $v0, $a0, $v1
    /* 9DB44 800AF334 D2BC0208 */  j          .L800AF348
    /* 9DB48 800AF338 21186400 */   addu      $v1, $v1, $a0
  .L800AF33C:
    /* 9DB4C 800AF33C 02004014 */  bnez       $v0, .L800AF348
    /* 9DB50 800AF340 23186400 */   subu      $v1, $v1, $a0
    /* 9DB54 800AF344 21180000 */  addu       $v1, $zero, $zero
  .L800AF348:
    /* 9DB58 800AF348 B8E32225 */  addiu      $v0, $t1, %lo(D_800DE3B8)
    /* 9DB5C 800AF34C 21104700 */  addu       $v0, $v0, $a3
    /* 9DB60 800AF350 0C00448C */  lw         $a0, 0xC($v0)
    /* 9DB64 800AF354 001A0300 */  sll        $v1, $v1, 8
    /* 9DB68 800AF358 1A006400 */  div        $zero, $v1, $a0
    /* 9DB6C 800AF35C 02008014 */  bnez       $a0, .L800AF368
    /* 9DB70 800AF360 00000000 */   nop
    /* 9DB74 800AF364 0D000700 */  break      7
  .L800AF368:
    /* 9DB78 800AF368 FFFF0124 */  addiu      $at, $zero, -0x1
    /* 9DB7C 800AF36C 04008114 */  bne        $a0, $at, .L800AF380
    /* 9DB80 800AF370 0080013C */   lui       $at, (0x80000000 >> 16)
    /* 9DB84 800AF374 02006114 */  bne        $v1, $at, .L800AF380
    /* 9DB88 800AF378 00000000 */   nop
    /* 9DB8C 800AF37C 0D000600 */  break      6
  .L800AF380:
    /* 9DB90 800AF380 12180000 */  mflo       $v1
    /* 9DB94 800AF384 D8E38525 */  addiu      $a1, $t4, %lo(D_800DE3D8)
    /* 9DB98 800AF388 2110A000 */  addu       $v0, $a1, $zero
    /* 9DB9C 800AF38C E6BC0208 */  j          .L800AF398
    /* 9DBA0 800AF390 0800A3AC */   sw        $v1, 0x8($a1)
  .L800AF394:
    /* 9DBA4 800AF394 21100000 */  addu       $v0, $zero, $zero
  .L800AF398:
    /* 9DBA8 800AF398 1400BF8F */  lw         $ra, 0x14($sp)
    /* 9DBAC 800AF39C 1000B08F */  lw         $s0, 0x10($sp)
    /* 9DBB0 800AF3A0 0800E003 */  jr         $ra
    /* 9DBB4 800AF3A4 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_800AF110
