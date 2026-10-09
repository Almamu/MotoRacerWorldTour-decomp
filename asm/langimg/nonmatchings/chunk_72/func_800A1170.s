nonmatching func_800A1170, 0xB8

glabel func_800A1170
    /* 8F980 800A1170 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 8F984 800A1174 1000B0AF */  sw         $s0, 0x10($sp)
    /* 8F988 800A1178 21288000 */  addu       $a1, $a0, $zero
    /* 8F98C 800A117C 1400BFAF */  sw         $ra, 0x14($sp)
    /* 8F990 800A1180 A816A38C */  lw         $v1, 0x16A8($a1)
    /* 8F994 800A1184 04000224 */  addiu      $v0, $zero, 0x4
    /* 8F998 800A1188 22006214 */  bne        $v1, $v0, .L800A1214
    /* 8F99C 800A118C 21800000 */   addu      $s0, $zero, $zero
    /* 8F9A0 800A1190 2C16A28C */  lw         $v0, 0x162C($a1)
    /* 8F9A4 800A1194 00000000 */  nop
    /* 8F9A8 800A1198 1C004010 */  beqz       $v0, .L800A120C
    /* 8F9AC 800A119C 0D80023C */   lui       $v0, %hi(D_800C9EEC)
    /* 8F9B0 800A11A0 EC9E448C */  lw         $a0, %lo(D_800C9EEC)($v0)
    /* 8F9B4 800A11A4 00000000 */  nop
    /* 8F9B8 800A11A8 0000838C */  lw         $v1, 0x0($a0)
    /* 8F9BC 800A11AC 9416A28C */  lw         $v0, 0x1694($a1)
    /* 8F9C0 800A11B0 FFFF6324 */  addiu      $v1, $v1, -0x1
    /* 8F9C4 800A11B4 2A184300 */  slt        $v1, $v0, $v1
    /* 8F9C8 800A11B8 11006014 */  bnez       $v1, .L800A1200
    /* 8F9CC 800A11BC 01004224 */   addiu     $v0, $v0, 0x1
    /* 8F9D0 800A11C0 2816A38C */  lw         $v1, 0x1628($a1)
    /* 8F9D4 800A11C4 01000224 */  addiu      $v0, $zero, 0x1
    /* 8F9D8 800A11C8 8400A2AC */  sw         $v0, 0x84($a1)
    /* 8F9DC 800A11CC 8800A2AC */  sw         $v0, 0x88($a1)
    /* 8F9E0 800A11D0 8C00A2AC */  sw         $v0, 0x8C($a1)
    /* 8F9E4 800A11D4 9000A2AC */  sw         $v0, 0x90($a1)
    /* 8F9E8 800A11D8 9400A2AC */  sw         $v0, 0x94($a1)
    /* 8F9EC 800A11DC 9800A2AC */  sw         $v0, 0x98($a1)
    /* 8F9F0 800A11E0 9C00A2AC */  sw         $v0, 0x9C($a1)
    /* 8F9F4 800A11E4 A000A2AC */  sw         $v0, 0xA0($a1)
    /* 8F9F8 800A11E8 A400A2AC */  sw         $v0, 0xA4($a1)
    /* 8F9FC 800A11EC A800A2AC */  sw         $v0, 0xA8($a1)
    /* 8FA00 800A11F0 AC00A2AC */  sw         $v0, 0xAC($a1)
    /* 8FA04 800A11F4 04006334 */  ori        $v1, $v1, 0x4
    /* 8FA08 800A11F8 85840208 */  j          .L800A1214
    /* 8FA0C 800A11FC 2816A3AC */   sw        $v1, 0x1628($a1)
  .L800A1200:
    /* 8FA10 800A1200 9416A2AC */  sw         $v0, 0x1694($a1)
    /* 8FA14 800A1204 85840208 */  j          .L800A1214
    /* 8FA18 800A1208 01001024 */   addiu     $s0, $zero, 0x1
  .L800A120C:
    /* 8FA1C 800A120C 4484020C */  jal        func_800A1110
    /* 8FA20 800A1210 2120A000 */   addu      $a0, $a1, $zero
  .L800A1214:
    /* 8FA24 800A1214 21100002 */  addu       $v0, $s0, $zero
    /* 8FA28 800A1218 1400BF8F */  lw         $ra, 0x14($sp)
    /* 8FA2C 800A121C 1000B08F */  lw         $s0, 0x10($sp)
    /* 8FA30 800A1220 0800E003 */  jr         $ra
    /* 8FA34 800A1224 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_800A1170
