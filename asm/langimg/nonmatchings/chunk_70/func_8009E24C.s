nonmatching func_8009E24C, 0x94

glabel func_8009E24C
    /* 8CA5C 8009E24C E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 8CA60 8009E250 1000BFAF */  sw         $ra, 0x10($sp)
    /* 8CA64 8009E254 2800838C */  lw         $v1, 0x28($a0)
    /* 8CA68 8009E258 00000000 */  nop
    /* 8CA6C 8009E25C 2800658C */  lw         $a1, 0x28($v1)
    /* 8CA70 8009E260 00000000 */  nop
    /* 8CA74 8009E264 0400A28C */  lw         $v0, 0x4($a1)
    /* 8CA78 8009E268 FDFF0824 */  addiu      $t0, $zero, -0x3
    /* 8CA7C 8009E26C 24104800 */  and        $v0, $v0, $t0
    /* 8CA80 8009E270 0400A2AC */  sw         $v0, 0x4($a1)
    /* 8CA84 8009E274 2C00838C */  lw         $v1, 0x2C($a0)
    /* 8CA88 8009E278 00000000 */  nop
    /* 8CA8C 8009E27C 2800668C */  lw         $a2, 0x28($v1)
    /* 8CA90 8009E280 00000000 */  nop
    /* 8CA94 8009E284 0400C28C */  lw         $v0, 0x4($a2)
    /* 8CA98 8009E288 00000000 */  nop
    /* 8CA9C 8009E28C 24104800 */  and        $v0, $v0, $t0
    /* 8CAA0 8009E290 0400C2AC */  sw         $v0, 0x4($a2)
    /* 8CAA4 8009E294 2800878C */  lw         $a3, 0x28($a0)
    /* 8CAA8 8009E298 F0FF053C */  lui        $a1, (0xFFF0FFFF >> 16)
    /* 8CAAC 8009E29C 0000E38C */  lw         $v1, 0x0($a3)
    /* 8CAB0 8009E2A0 FFFFA534 */  ori        $a1, $a1, (0xFFF0FFFF & 0xFFFF)
    /* 8CAB4 8009E2A4 24186500 */  and        $v1, $v1, $a1
    /* 8CAB8 8009E2A8 0000E3AC */  sw         $v1, 0x0($a3)
    /* 8CABC 8009E2AC 2C00868C */  lw         $a2, 0x2C($a0)
    /* 8CAC0 8009E2B0 00000000 */  nop
    /* 8CAC4 8009E2B4 0000C28C */  lw         $v0, 0x0($a2)
    /* 8CAC8 8009E2B8 00000000 */  nop
    /* 8CACC 8009E2BC 24104500 */  and        $v0, $v0, $a1
    /* 8CAD0 8009E2C0 0000C2AC */  sw         $v0, 0x0($a2)
    /* 8CAD4 8009E2C4 4400848C */  lw         $a0, 0x44($a0)
    /* 8CAD8 8009E2C8 6CF9000C */  jal        func_8003E5B0
    /* 8CADC 8009E2CC 00000000 */   nop
    /* 8CAE0 8009E2D0 1000BF8F */  lw         $ra, 0x10($sp)
    /* 8CAE4 8009E2D4 00000000 */  nop
    /* 8CAE8 8009E2D8 0800E003 */  jr         $ra
    /* 8CAEC 8009E2DC 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_8009E24C
