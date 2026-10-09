nonmatching func_800B2980, 0x100

glabel func_800B2980
    /* A1190 800B2980 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* A1194 800B2984 1000B0AF */  sw         $s0, 0x10($sp)
    /* A1198 800B2988 21808000 */  addu       $s0, $a0, $zero
    /* A119C 800B298C 1400BFAF */  sw         $ra, 0x14($sp)
    /* A11A0 800B2990 3C00028E */  lw         $v0, 0x3C($s0)
    /* A11A4 800B2994 00000000 */  nop
    /* A11A8 800B2998 00004390 */  lbu        $v1, 0x0($v0)
    /* A11AC 800B299C F3000224 */  addiu      $v0, $zero, 0xF3
    /* A11B0 800B29A0 0E006214 */  bne        $v1, $v0, .L800B29DC
    /* A11B4 800B29A4 00000000 */   nop
    /* A11B8 800B29A8 E8000292 */  lbu        $v0, 0xE8($s0)
    /* A11BC 800B29AC 00000000 */  nop
    /* A11C0 800B29B0 20004010 */  beqz       $v0, .L800B2A34
    /* A11C4 800B29B4 02000224 */   addiu     $v0, $zero, 0x2
    /* A11C8 800B29B8 49000392 */  lbu        $v1, 0x49($s0)
    /* A11CC 800B29BC 00000000 */  nop
    /* A11D0 800B29C0 06006214 */  bne        $v1, $v0, .L800B29DC
    /* A11D4 800B29C4 00000000 */   nop
    /* A11D8 800B29C8 0C80023C */  lui        $v0, %hi(D_800C3C8C)
    /* A11DC 800B29CC 8C3C428C */  lw         $v0, %lo(D_800C3C8C)($v0)
    /* A11E0 800B29D0 00000000 */  nop
    /* A11E4 800B29D4 09F84000 */  jalr       $v0
    /* A11E8 800B29D8 21200002 */   addu      $a0, $s0, $zero
  .L800B29DC:
    /* A11EC 800B29DC 46000392 */  lbu        $v1, 0x46($s0)
    /* A11F0 800B29E0 01000224 */  addiu      $v0, $zero, 0x1
    /* A11F4 800B29E4 0D006210 */  beq        $v1, $v0, .L800B2A1C
    /* A11F8 800B29E8 02006228 */   slti      $v0, $v1, 0x2
    /* A11FC 800B29EC 05004010 */  beqz       $v0, .L800B2A04
    /* A1200 800B29F0 FE000224 */   addiu     $v0, $zero, 0xFE
    /* A1204 800B29F4 1E006010 */  beqz       $v1, .L800B2A70
    /* A1208 800B29F8 21100000 */   addu      $v0, $zero, $zero
    /* A120C 800B29FC 91CA0208 */  j          .L800B2A44
    /* A1210 800B2A00 00000000 */   nop
  .L800B2A04:
    /* A1214 800B2A04 0A006210 */  beq        $v1, $v0, .L800B2A30
    /* A1218 800B2A08 FF000224 */   addiu     $v0, $zero, 0xFF
    /* A121C 800B2A0C 18006210 */  beq        $v1, $v0, .L800B2A70
    /* A1220 800B2A10 21100000 */   addu      $v0, $zero, $zero
    /* A1224 800B2A14 91CA0208 */  j          .L800B2A44
    /* A1228 800B2A18 00000000 */   nop
  .L800B2A1C:
    /* A122C 800B2A1C 21200002 */  addu       $a0, $s0, $zero
    /* A1230 800B2A20 12C7020C */  jal        _padCmdParaMode
    /* A1234 800B2A24 01000524 */   addiu     $a1, $zero, 0x1
    /* A1238 800B2A28 9CCA0208 */  j          .L800B2A70
    /* A123C 800B2A2C 21100000 */   addu      $v0, $zero, $zero
  .L800B2A30:
    /* A1240 800B2A30 21200002 */  addu       $a0, $s0, $zero
  .L800B2A34:
    /* A1244 800B2A34 12C7020C */  jal        _padCmdParaMode
    /* A1248 800B2A38 21280000 */   addu      $a1, $zero, $zero
    /* A124C 800B2A3C 9CCA0208 */  j          .L800B2A70
    /* A1250 800B2A40 21100000 */   addu      $v0, $zero, $zero
  .L800B2A44:
    /* A1254 800B2A44 1400028E */  lw         $v0, 0x14($s0)
    /* A1258 800B2A48 00000000 */  nop
    /* A125C 800B2A4C 05004010 */  beqz       $v0, .L800B2A64
    /* A1260 800B2A50 00000000 */   nop
    /* A1264 800B2A54 09F84000 */  jalr       $v0
    /* A1268 800B2A58 21200002 */   addu      $a0, $s0, $zero
    /* A126C 800B2A5C 9CCA0208 */  j          .L800B2A70
    /* A1270 800B2A60 21100000 */   addu      $v0, $zero, $zero
  .L800B2A64:
    /* A1274 800B2A64 EEC4020C */  jal        _padSendAtLoadInfo
    /* A1278 800B2A68 21200002 */   addu      $a0, $s0, $zero
    /* A127C 800B2A6C 21100000 */  addu       $v0, $zero, $zero
  .L800B2A70:
    /* A1280 800B2A70 1400BF8F */  lw         $ra, 0x14($sp)
    /* A1284 800B2A74 1000B08F */  lw         $s0, 0x10($sp)
    /* A1288 800B2A78 0800E003 */  jr         $ra
    /* A128C 800B2A7C 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_800B2980
