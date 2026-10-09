nonmatching func_8009F2C8, 0x64

glabel func_8009F2C8
    /* 8DAD8 8009F2C8 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 8DADC 8009F2CC 0400C38C */  lw         $v1, 0x4($a2)
    /* 8DAE0 8009F2D0 FE000224 */  addiu      $v0, $zero, 0xFE
    /* 8DAE4 8009F2D4 1000BFAF */  sw         $ra, 0x10($sp)
    /* 8DAE8 8009F2D8 0000858C */  lw         $a1, 0x0($a0)
    /* 8DAEC 8009F2DC 0D80043C */  lui        $a0, %hi(D_800C886C)
    /* 8DAF0 8009F2E0 6C88848C */  lw         $a0, %lo(D_800C886C)($a0)
    /* 8DAF4 8009F2E4 980A638C */  lw         $v1, 0xA98($v1)
    /* 8DAF8 8009F2E8 0C00A214 */  bne        $a1, $v0, .L8009F31C
    /* 8DAFC 8009F2EC 00000000 */   nop
    /* 8DB00 8009F2F0 FC00628C */  lw         $v0, 0xFC($v1)
    /* 8DB04 8009F2F4 00000000 */  nop
    /* 8DB08 8009F2F8 FFFF4224 */  addiu      $v0, $v0, -0x1
    /* 8DB0C 8009F2FC FC0062AC */  sw         $v0, 0xFC($v1)
    /* 8DB10 8009F300 F6FF4228 */  slti       $v0, $v0, -0xA
    /* 8DB14 8009F304 02004010 */  beqz       $v0, .L8009F310
    /* 8DB18 8009F308 F6FF0224 */   addiu     $v0, $zero, -0xA
    /* 8DB1C 8009F30C FC0062AC */  sw         $v0, 0xFC($v1)
  .L8009F310:
    /* 8DB20 8009F310 FC00628C */  lw         $v0, 0xFC($v1)
    /* 8DB24 8009F314 B7E4010C */  jal        func_800792DC
    /* 8DB28 8009F318 600182AC */   sw        $v0, 0x160($a0)
  .L8009F31C:
    /* 8DB2C 8009F31C 1000BF8F */  lw         $ra, 0x10($sp)
    /* 8DB30 8009F320 00000000 */  nop
    /* 8DB34 8009F324 0800E003 */  jr         $ra
    /* 8DB38 8009F328 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_8009F2C8
