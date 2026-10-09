nonmatching func_800B4274, 0x5C

glabel func_800B4274
    /* A2A84 800B4274 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* A2A88 800B4278 1000B0AF */  sw         $s0, 0x10($sp)
    /* A2A8C 800B427C 2180A000 */  addu       $s0, $a1, $zero
    /* A2A90 800B4280 0700023C */  lui        $v0, (0x7EFF0 >> 16)
    /* A2A94 800B4284 F0EF4234 */  ori        $v0, $v0, (0x7EFF0 & 0xFFFF)
    /* A2A98 800B4288 2B105000 */  sltu       $v0, $v0, $s0
    /* A2A9C 800B428C 03004010 */  beqz       $v0, .L800B429C
    /* A2AA0 800B4290 1400BFAF */   sw        $ra, 0x14($sp)
    /* A2AA4 800B4294 0700103C */  lui        $s0, (0x7EFF0 >> 16)
    /* A2AA8 800B4298 F0EF1036 */  ori        $s0, $s0, (0x7EFF0 & 0xFFFF)
  .L800B429C:
    /* A2AAC 800B429C E6CD020C */  jal        func_800B3798
    /* A2AB0 800B42A0 21280002 */   addu      $a1, $s0, $zero
    /* A2AB4 800B42A4 0C80023C */  lui        $v0, %hi(D_800C3DE8)
    /* A2AB8 800B42A8 E83D428C */  lw         $v0, %lo(D_800C3DE8)($v0)
    /* A2ABC 800B42AC 00000000 */  nop
    /* A2AC0 800B42B0 03004014 */  bnez       $v0, .L800B42C0
    /* A2AC4 800B42B4 21100002 */   addu      $v0, $s0, $zero
    /* A2AC8 800B42B8 0C80013C */  lui        $at, %hi(D_800C3DE4)
    /* A2ACC 800B42BC E43D20AC */  sw         $zero, %lo(D_800C3DE4)($at)
  .L800B42C0:
    /* A2AD0 800B42C0 1400BF8F */  lw         $ra, 0x14($sp)
    /* A2AD4 800B42C4 1000B08F */  lw         $s0, 0x10($sp)
    /* A2AD8 800B42C8 0800E003 */  jr         $ra
    /* A2ADC 800B42CC 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_800B4274
    /* A2AE0 800B42D0 00000000 */  nop
