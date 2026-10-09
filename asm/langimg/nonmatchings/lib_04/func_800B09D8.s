nonmatching func_800B09D8, 0xCC

glabel func_800B09D8
    /* 9F1E8 800B09D8 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 9F1EC 800B09DC 1400BFAF */  sw         $ra, 0x14($sp)
    /* 9F1F0 800B09E0 1000B0AF */  sw         $s0, 0x10($sp)
    /* 9F1F4 800B09E4 0C80013C */  lui        $at, %hi(D_800C3CC0)
    /* 9F1F8 800B09E8 E0D6020C */  jal        func_800B5B80
    /* 9F1FC 800B09EC C03C20AC */   sw        $zero, %lo(D_800C3CC0)($at)
    /* 9F200 800B09F0 02000424 */  addiu      $a0, $zero, 0x2
    /* 9F204 800B09F4 0E80103C */  lui        $s0, %hi(D_800DE420)
    /* 9F208 800B09F8 20E41026 */  addiu      $s0, $s0, %lo(D_800DE420)
    /* 9F20C 800B09FC 14D7020C */  jal        func_800B5C50
    /* 9F210 800B0A00 21280002 */   addu      $a1, $s0, $zero
    /* 9F214 800B0A04 02000424 */  addiu      $a0, $zero, 0x2
    /* 9F218 800B0A08 10D7020C */  jal        func_800B5C40
    /* 9F21C 800B0A0C 21280002 */   addu      $a1, $s0, $zero
    /* 9F220 800B0A10 03000424 */  addiu      $a0, $zero, 0x3
    /* 9F224 800B0A14 0C80033C */  lui        $v1, %hi(D_800C3CE8)
    /* 9F228 800B0A18 E83C638C */  lw         $v1, %lo(D_800C3CE8)($v1)
    /* 9F22C 800B0A1C FEFF0224 */  addiu      $v0, $zero, -0x2
    /* 9F230 800B0A20 000062AC */  sw         $v0, 0x0($v1)
    /* 9F234 800B0A24 0400628C */  lw         $v0, 0x4($v1)
    /* 9F238 800B0A28 21280000 */  addu       $a1, $zero, $zero
    /* 9F23C 800B0A2C 01004234 */  ori        $v0, $v0, 0x1
    /* 9F240 800B0A30 18D7020C */  jal        func_800B5C60
    /* 9F244 800B0A34 040062AC */   sw        $v0, 0x4($v1)
    /* 9F248 800B0A38 E4D6020C */  jal        func_800B5B90
    /* 9F24C 800B0A3C 00000000 */   nop
    /* 9F250 800B0A40 0C80043C */  lui        $a0, %hi(D_800C3CBC)
    /* 9F254 800B0A44 BC3C848C */  lw         $a0, %lo(D_800C3CBC)($a0)
    /* 9F258 800B0A48 0C80023C */  lui        $v0, %hi(D_800C3C8C)
    /* 9F25C 800B0A4C 8C3C428C */  lw         $v0, %lo(D_800C3C8C)($v0)
    /* 9F260 800B0A50 00000000 */  nop
    /* 9F264 800B0A54 09F84000 */  jalr       $v0
    /* 9F268 800B0A58 00000000 */   nop
    /* 9F26C 800B0A5C 0C80043C */  lui        $a0, %hi(D_800C3CBC)
    /* 9F270 800B0A60 BC3C848C */  lw         $a0, %lo(D_800C3CBC)($a0)
    /* 9F274 800B0A64 0C80023C */  lui        $v0, %hi(D_800C3C8C)
    /* 9F278 800B0A68 8C3C428C */  lw         $v0, %lo(D_800C3C8C)($v0)
    /* 9F27C 800B0A6C 00000000 */  nop
    /* 9F280 800B0A70 09F84000 */  jalr       $v0
    /* 9F284 800B0A74 F0008424 */   addiu     $a0, $a0, 0xF0
    /* 9F288 800B0A78 0E80023C */  lui        $v0, %hi(D_800DE430)
    /* 9F28C 800B0A7C 30E44224 */  addiu      $v0, $v0, %lo(D_800DE430)
    /* 9F290 800B0A80 040040AC */  sw         $zero, 0x4($v0)
    /* 9F294 800B0A84 000040AC */  sw         $zero, 0x0($v0)
    /* 9F298 800B0A88 01000224 */  addiu      $v0, $zero, 0x1
    /* 9F29C 800B0A8C 0C80013C */  lui        $at, %hi(D_800C3CC0)
    /* 9F2A0 800B0A90 C03C22AC */  sw         $v0, %lo(D_800C3CC0)($at)
    /* 9F2A4 800B0A94 1400BF8F */  lw         $ra, 0x14($sp)
    /* 9F2A8 800B0A98 1000B08F */  lw         $s0, 0x10($sp)
    /* 9F2AC 800B0A9C 0800E003 */  jr         $ra
    /* 9F2B0 800B0AA0 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_800B09D8
