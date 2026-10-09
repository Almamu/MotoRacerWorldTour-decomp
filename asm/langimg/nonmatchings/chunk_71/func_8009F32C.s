nonmatching func_8009F32C, 0x64

glabel func_8009F32C
    /* 8DB3C 8009F32C E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 8DB40 8009F330 0400C38C */  lw         $v1, 0x4($a2)
    /* 8DB44 8009F334 FE000224 */  addiu      $v0, $zero, 0xFE
    /* 8DB48 8009F338 1000BFAF */  sw         $ra, 0x10($sp)
    /* 8DB4C 8009F33C 0000858C */  lw         $a1, 0x0($a0)
    /* 8DB50 8009F340 0D80043C */  lui        $a0, %hi(D_800C886C)
    /* 8DB54 8009F344 6C88848C */  lw         $a0, %lo(D_800C886C)($a0)
    /* 8DB58 8009F348 980A638C */  lw         $v1, 0xA98($v1)
    /* 8DB5C 8009F34C 0C00A214 */  bne        $a1, $v0, .L8009F380
    /* 8DB60 8009F350 00000000 */   nop
    /* 8DB64 8009F354 FC00628C */  lw         $v0, 0xFC($v1)
    /* 8DB68 8009F358 00000000 */  nop
    /* 8DB6C 8009F35C 01004224 */  addiu      $v0, $v0, 0x1
    /* 8DB70 8009F360 FC0062AC */  sw         $v0, 0xFC($v1)
    /* 8DB74 8009F364 15004228 */  slti       $v0, $v0, 0x15
    /* 8DB78 8009F368 02004014 */  bnez       $v0, .L8009F374
    /* 8DB7C 8009F36C 14000224 */   addiu     $v0, $zero, 0x14
    /* 8DB80 8009F370 FC0062AC */  sw         $v0, 0xFC($v1)
  .L8009F374:
    /* 8DB84 8009F374 FC00628C */  lw         $v0, 0xFC($v1)
    /* 8DB88 8009F378 B7E4010C */  jal        func_800792DC
    /* 8DB8C 8009F37C 600182AC */   sw        $v0, 0x160($a0)
  .L8009F380:
    /* 8DB90 8009F380 1000BF8F */  lw         $ra, 0x10($sp)
    /* 8DB94 8009F384 00000000 */  nop
    /* 8DB98 8009F388 0800E003 */  jr         $ra
    /* 8DB9C 8009F38C 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_8009F32C
