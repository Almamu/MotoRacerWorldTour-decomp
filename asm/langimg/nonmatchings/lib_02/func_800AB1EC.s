nonmatching func_800AB1EC, 0xA0

glabel func_800AB1EC
    /* 999FC 800AB1EC E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 99A00 800AB1F0 1000B0AF */  sw         $s0, 0x10($sp)
    /* 99A04 800AB1F4 0C80103C */  lui        $s0, %hi(D_800BD548)
    /* 99A08 800AB1F8 48D51026 */  addiu      $s0, $s0, %lo(D_800BD548)
    /* 99A0C 800AB1FC 1400BFAF */  sw         $ra, 0x14($sp)
    /* 99A10 800AB200 00000296 */  lhu        $v0, 0x0($s0)
    /* 99A14 800AB204 00000000 */  nop
    /* 99A18 800AB208 1C004010 */  beqz       $v0, .L800AB27C
    /* 99A1C 800AB20C 21100000 */   addu      $v0, $zero, $zero
    /* 99A20 800AB210 E0D6020C */  jal        EnterCriticalSection
    /* 99A24 800AB214 00000000 */   nop
    /* 99A28 800AB218 0C80023C */  lui        $v0, %hi(D_800BE5D8)
    /* 99A2C 800AB21C D8E5428C */  lw         $v0, %lo(D_800BE5D8)($v0)
    /* 99A30 800AB220 0C80043C */  lui        $a0, %hi(D_800BE5DC)
    /* 99A34 800AB224 DCE5848C */  lw         $a0, %lo(D_800BE5DC)($a0)
    /* 99A38 800AB228 00004394 */  lhu        $v1, 0x0($v0)
    /* 99A3C 800AB22C 00000000 */  nop
    /* 99A40 800AB230 320003A6 */  sh         $v1, 0x32($s0)
    /* 99A44 800AB234 0000838C */  lw         $v1, 0x0($a0)
    /* 99A48 800AB238 0C80043C */  lui        $a0, %hi(D_800BE5D4)
    /* 99A4C 800AB23C D4E5848C */  lw         $a0, %lo(D_800BE5D4)($a0)
    /* 99A50 800AB240 340003AE */  sw         $v1, 0x34($s0)
    /* 99A54 800AB244 000040A4 */  sh         $zero, 0x0($v0)
    /* 99A58 800AB248 00004294 */  lhu        $v0, 0x0($v0)
    /* 99A5C 800AB24C 00000000 */  nop
    /* 99A60 800AB250 000082A4 */  sh         $v0, 0x0($a0)
    /* 99A64 800AB254 0C80043C */  lui        $a0, %hi(D_800BE5DC)
    /* 99A68 800AB258 DCE5848C */  lw         $a0, %lo(D_800BE5DC)($a0)
    /* 99A6C 800AB25C 7777033C */  lui        $v1, (0x77777777 >> 16)
    /* 99A70 800AB260 0000828C */  lw         $v0, 0x0($a0)
    /* 99A74 800AB264 77776334 */  ori        $v1, $v1, (0x77777777 & 0xFFFF)
    /* 99A78 800AB268 24104300 */  and        $v0, $v0, $v1
    /* 99A7C 800AB26C D8D6020C */  jal        ResetEntryInt
    /* 99A80 800AB270 000082AC */   sw        $v0, 0x0($a0)
    /* 99A84 800AB274 21100002 */  addu       $v0, $s0, $zero
    /* 99A88 800AB278 000040A4 */  sh         $zero, 0x0($v0)
  .L800AB27C:
    /* 99A8C 800AB27C 1400BF8F */  lw         $ra, 0x14($sp)
    /* 99A90 800AB280 1000B08F */  lw         $s0, 0x10($sp)
    /* 99A94 800AB284 0800E003 */  jr         $ra
    /* 99A98 800AB288 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_800AB1EC
