nonmatching func_800B10BC, 0x238

glabel func_800B10BC
    /* 9F8CC 800B10BC D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* 9F8D0 800B10C0 1000B0AF */  sw         $s0, 0x10($sp)
    /* 9F8D4 800B10C4 21808000 */  addu       $s0, $a0, $zero
    /* 9F8D8 800B10C8 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* 9F8DC 800B10CC 2198A000 */  addu       $s3, $a1, $zero
    /* 9F8E0 800B10D0 2000BFAF */  sw         $ra, 0x20($sp)
    /* 9F8E4 800B10D4 1800B2AF */  sw         $s2, 0x18($sp)
    /* 9F8E8 800B10D8 1400B1AF */  sw         $s1, 0x14($sp)
    /* 9F8EC 800B10DC 3C00028E */  lw         $v0, 0x3C($s0)
    /* 9F8F0 800B10E0 00000000 */  nop
    /* 9F8F4 800B10E4 00004290 */  lbu        $v0, 0x0($v0)
    /* 9F8F8 800B10E8 08000324 */  addiu      $v1, $zero, 0x8
    /* 9F8FC 800B10EC 03110200 */  sra        $v0, $v0, 4
    /* 9F900 800B10F0 07004314 */  bne        $v0, $v1, .L800B1110
    /* 9F904 800B10F4 88001124 */   addiu     $s1, $zero, 0x88
    /* 9F908 800B10F8 44000292 */  lbu        $v0, 0x44($s0)
    /* 9F90C 800B10FC 00000000 */  nop
    /* 9F910 800B1100 0900422C */  sltiu      $v0, $v0, 0x9
    /* 9F914 800B1104 02004014 */  bnez       $v0, .L800B1110
    /* 9F918 800B1108 00000000 */   nop
    /* 9F91C 800B110C 22001124 */  addiu      $s1, $zero, 0x22
  .L800B1110:
    /* 9F920 800B1110 0C80033C */  lui        $v1, %hi(D_800C3CEC)
    /* 9F924 800B1114 EC3C638C */  lw         $v1, %lo(D_800C3CEC)($v1)
    /* 9F928 800B1118 00000000 */  nop
  .L800B111C:
    /* 9F92C 800B111C 04006294 */  lhu        $v0, 0x4($v1)
    /* 9F930 800B1120 00000000 */  nop
    /* 9F934 800B1124 02004230 */  andi       $v0, $v0, 0x2
    /* 9F938 800B1128 FCFF4010 */  beqz       $v0, .L800B111C
    /* 9F93C 800B112C 00000000 */   nop
    /* 9F940 800B1130 77CB020C */  jal        func_800B2DDC
    /* 9F944 800B1134 90010424 */   addiu     $a0, $zero, 0x190
    /* 9F948 800B1138 0C80043C */  lui        $a0, %hi(D_800C3CEC)
    /* 9F94C 800B113C EC3C848C */  lw         $a0, %lo(D_800C3CEC)($a0)
    /* 9F950 800B1140 00000000 */  nop
    /* 9F954 800B1144 00008290 */  lbu        $v0, 0x0($a0)
    /* 9F958 800B1148 44000392 */  lbu        $v1, 0x44($s0)
    /* 9F95C 800B114C 00000000 */  nop
    /* 9F960 800B1150 05006014 */  bnez       $v1, .L800B1168
    /* 9F964 800B1154 FF005230 */   andi      $s2, $v0, 0xFF
    /* 9F968 800B1158 03191200 */  sra        $v1, $s2, 4
    /* 9F96C 800B115C 08000224 */  addiu      $v0, $zero, 0x8
    /* 9F970 800B1160 04006210 */  beq        $v1, $v0, .L800B1174
    /* 9F974 800B1164 22000224 */   addiu     $v0, $zero, 0x22
  .L800B1168:
    /* 9F978 800B1168 0E0091A4 */  sh         $s1, 0xE($a0)
    /* 9F97C 800B116C 5EC40208 */  j          .L800B1178
    /* 9F980 800B1170 00000000 */   nop
  .L800B1174:
    /* 9F984 800B1174 0E0082A4 */  sh         $v0, 0xE($a0)
  .L800B1178:
    /* 9F988 800B1178 0C80033C */  lui        $v1, %hi(D_800C3CE8)
    /* 9F98C 800B117C E83C638C */  lw         $v1, %lo(D_800C3CE8)($v1)
    /* 9F990 800B1180 00000000 */  nop
    /* 9F994 800B1184 0000628C */  lw         $v0, 0x0($v1)
    /* 9F998 800B1188 00000000 */  nop
    /* 9F99C 800B118C 80004230 */  andi       $v0, $v0, 0x80
    /* 9F9A0 800B1190 2E004014 */  bnez       $v0, .L800B124C
    /* 9F9A4 800B1194 00000000 */   nop
    /* 9F9A8 800B1198 801F093C */  lui        $t1, (0x1F801120 >> 16)
    /* 9F9AC 800B119C 20112935 */  ori        $t1, $t1, (0x1F801120 & 0xFFFF)
    /* 9F9B0 800B11A0 801F063C */  lui        $a2, (0x1F801128 >> 16)
    /* 9F9B4 800B11A4 2811C634 */  ori        $a2, $a2, (0x1F801128 & 0xFFFF)
    /* 9F9B8 800B11A8 01000A3C */  lui        $t2, (0x10000 >> 16)
    /* 9F9BC 800B11AC 801F083C */  lui        $t0, (0x1F801124 >> 16)
    /* 9F9C0 800B11B0 24110835 */  ori        $t0, $t0, (0x1F801124 & 0xFFFF)
    /* 9F9C4 800B11B4 21386000 */  addu       $a3, $v1, $zero
    /* 9F9C8 800B11B8 0E80043C */  lui        $a0, %hi(D_800DE6C0)
    /* 9F9CC 800B11BC C0E6848C */  lw         $a0, %lo(D_800DE6C0)($a0)
    /* 9F9D0 800B11C0 0E80053C */  lui        $a1, %hi(D_800DE6C4)
    /* 9F9D4 800B11C4 C4E6A58C */  lw         $a1, %lo(D_800DE6C4)($a1)
  .L800B11C8:
    /* 9F9D8 800B11C8 00002295 */  lhu        $v0, 0x0($t1)
    /* 9F9DC 800B11CC 00000000 */  nop
    /* 9F9E0 800B11D0 FFFF4330 */  andi       $v1, $v0, 0xFFFF
    /* 9F9E4 800B11D4 2B106400 */  sltu       $v0, $v1, $a0
    /* 9F9E8 800B11D8 09004010 */  beqz       $v0, .L800B1200
    /* 9F9EC 800B11DC 00000000 */   nop
    /* 9F9F0 800B11E0 0000C294 */  lhu        $v0, 0x0($a2)
    /* 9F9F4 800B11E4 00000000 */  nop
    /* 9F9F8 800B11E8 04004010 */  beqz       $v0, .L800B11FC
    /* 9F9FC 800B11EC 00000000 */   nop
    /* 9FA00 800B11F0 0000C294 */  lhu        $v0, 0x0($a2)
    /* 9FA04 800B11F4 80C40208 */  j          .L800B1200
    /* 9FA08 800B11F8 21184300 */   addu      $v1, $v0, $v1
  .L800B11FC:
    /* 9FA0C 800B11FC 21186A00 */  addu       $v1, $v1, $t2
  .L800B1200:
    /* 9FA10 800B1200 00000295 */  lhu        $v0, 0x0($t0)
    /* 9FA14 800B1204 00000000 */  nop
    /* 9FA18 800B1208 00024230 */  andi       $v0, $v0, 0x200
    /* 9FA1C 800B120C 06004010 */  beqz       $v0, .L800B1228
    /* 9FA20 800B1210 23106400 */   subu      $v0, $v1, $a0
    /* 9FA24 800B1214 2B104500 */  sltu       $v0, $v0, $a1
    /* 9FA28 800B1218 07004014 */  bnez       $v0, .L800B1238
    /* 9FA2C 800B121C FEFF0224 */   addiu     $v0, $zero, -0x2
    /* 9FA30 800B1220 B6C40208 */  j          .L800B12D8
    /* 9FA34 800B1224 00000000 */   nop
  .L800B1228:
    /* 9FA38 800B1228 C2100200 */  srl        $v0, $v0, 3
    /* 9FA3C 800B122C 2B104500 */  sltu       $v0, $v0, $a1
    /* 9FA40 800B1230 29004010 */  beqz       $v0, .L800B12D8
    /* 9FA44 800B1234 FEFF0224 */   addiu     $v0, $zero, -0x2
  .L800B1238:
    /* 9FA48 800B1238 0000E28C */  lw         $v0, 0x0($a3)
    /* 9FA4C 800B123C 00000000 */  nop
    /* 9FA50 800B1240 80004230 */  andi       $v0, $v0, 0x80
    /* 9FA54 800B1244 E0FF4010 */  beqz       $v0, .L800B11C8
    /* 9FA58 800B1248 00000000 */   nop
  .L800B124C:
    /* 9FA5C 800B124C E8000392 */  lbu        $v1, 0xE8($s0)
    /* 9FA60 800B1250 08000224 */  addiu      $v0, $zero, 0x8
    /* 9FA64 800B1254 0C006210 */  beq        $v1, $v0, .L800B1288
    /* 9FA68 800B1258 02000224 */   addiu     $v0, $zero, 0x2
    /* 9FA6C 800B125C 0C80033C */  lui        $v1, %hi(D_800C3CCC)
    /* 9FA70 800B1260 CC3C638C */  lw         $v1, %lo(D_800C3CCC)($v1)
    /* 9FA74 800B1264 00000000 */  nop
    /* 9FA78 800B1268 07006214 */  bne        $v1, $v0, .L800B1288
    /* 9FA7C 800B126C 00000000 */   nop
    /* 9FA80 800B1270 77CB020C */  jal        func_800B2DDC
    /* 9FA84 800B1274 3C000424 */   addiu     $a0, $zero, 0x3C
  .L800B1278:
    /* 9FA88 800B1278 7FCB020C */  jal        func_800B2DFC
    /* 9FA8C 800B127C 00000000 */   nop
    /* 9FA90 800B1280 FDFF4010 */  beqz       $v0, .L800B1278
    /* 9FA94 800B1284 00000000 */   nop
  .L800B1288:
    /* 9FA98 800B1288 0C80023C */  lui        $v0, %hi(D_800C3CEC)
    /* 9FA9C 800B128C EC3C428C */  lw         $v0, %lo(D_800C3CEC)($v0)
    /* 9FAA0 800B1290 00000000 */  nop
    /* 9FAA4 800B1294 000053A0 */  sb         $s3, 0x0($v0)
    /* 9FAA8 800B1298 45000292 */  lbu        $v0, 0x45($s0)
    /* 9FAAC 800B129C 44000392 */  lbu        $v1, 0x44($s0)
    /* 9FAB0 800B12A0 01004224 */  addiu      $v0, $v0, 0x1
    /* 9FAB4 800B12A4 450002A2 */  sb         $v0, 0x45($s0)
    /* 9FAB8 800B12A8 FF000224 */  addiu      $v0, $zero, 0xFF
    /* 9FABC 800B12AC 06006210 */  beq        $v1, $v0, .L800B12C8
    /* 9FAC0 800B12B0 00000000 */   nop
    /* 9FAC4 800B12B4 44000392 */  lbu        $v1, 0x44($s0)
    /* 9FAC8 800B12B8 3C00028E */  lw         $v0, 0x3C($s0)
    /* 9FACC 800B12BC 00000000 */  nop
    /* 9FAD0 800B12C0 21104300 */  addu       $v0, $v0, $v1
    /* 9FAD4 800B12C4 000052A0 */  sb         $s2, 0x0($v0)
  .L800B12C8:
    /* 9FAD8 800B12C8 44000392 */  lbu        $v1, 0x44($s0)
    /* 9FADC 800B12CC 21104002 */  addu       $v0, $s2, $zero
    /* 9FAE0 800B12D0 01006324 */  addiu      $v1, $v1, 0x1
    /* 9FAE4 800B12D4 440003A2 */  sb         $v1, 0x44($s0)
  .L800B12D8:
    /* 9FAE8 800B12D8 2000BF8F */  lw         $ra, 0x20($sp)
    /* 9FAEC 800B12DC 1C00B38F */  lw         $s3, 0x1C($sp)
    /* 9FAF0 800B12E0 1800B28F */  lw         $s2, 0x18($sp)
    /* 9FAF4 800B12E4 1400B18F */  lw         $s1, 0x14($sp)
    /* 9FAF8 800B12E8 1000B08F */  lw         $s0, 0x10($sp)
    /* 9FAFC 800B12EC 0800E003 */  jr         $ra
    /* 9FB00 800B12F0 2800BD27 */   addiu     $sp, $sp, 0x28
endlabel func_800B10BC
