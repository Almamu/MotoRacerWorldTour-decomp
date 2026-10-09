nonmatching func_8009E1A0, 0xAC

glabel func_8009E1A0
    /* 8C9B0 8009E1A0 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 8C9B4 8009E1A4 1000B0AF */  sw         $s0, 0x10($sp)
    /* 8C9B8 8009E1A8 21808000 */  addu       $s0, $a0, $zero
    /* 8C9BC 8009E1AC 1400BFAF */  sw         $ra, 0x14($sp)
    /* 8C9C0 8009E1B0 2800038E */  lw         $v1, 0x28($s0)
    /* 8C9C4 8009E1B4 00000000 */  nop
    /* 8C9C8 8009E1B8 2800648C */  lw         $a0, 0x28($v1)
    /* 8C9CC 8009E1BC 00000000 */  nop
    /* 8C9D0 8009E1C0 0400828C */  lw         $v0, 0x4($a0)
    /* 8C9D4 8009E1C4 00000000 */  nop
    /* 8C9D8 8009E1C8 02004234 */  ori        $v0, $v0, 0x2
    /* 8C9DC 8009E1CC 040082AC */  sw         $v0, 0x4($a0)
    /* 8C9E0 8009E1D0 2C00038E */  lw         $v1, 0x2C($s0)
    /* 8C9E4 8009E1D4 00000000 */  nop
    /* 8C9E8 8009E1D8 2800658C */  lw         $a1, 0x28($v1)
    /* 8C9EC 8009E1DC 00000000 */  nop
    /* 8C9F0 8009E1E0 0400A28C */  lw         $v0, 0x4($a1)
    /* 8C9F4 8009E1E4 0100063C */  lui        $a2, (0x10000 >> 16)
    /* 8C9F8 8009E1E8 02004234 */  ori        $v0, $v0, 0x2
    /* 8C9FC 8009E1EC 0400A2AC */  sw         $v0, 0x4($a1)
    /* 8CA00 8009E1F0 2800078E */  lw         $a3, 0x28($s0)
    /* 8CA04 8009E1F4 F0FF043C */  lui        $a0, (0xFFF0FFFF >> 16)
    /* 8CA08 8009E1F8 0000E38C */  lw         $v1, 0x0($a3)
    /* 8CA0C 8009E1FC FFFF8434 */  ori        $a0, $a0, (0xFFF0FFFF & 0xFFFF)
    /* 8CA10 8009E200 24186400 */  and        $v1, $v1, $a0
    /* 8CA14 8009E204 25186600 */  or         $v1, $v1, $a2
    /* 8CA18 8009E208 0000E3AC */  sw         $v1, 0x0($a3)
    /* 8CA1C 8009E20C 2C00058E */  lw         $a1, 0x2C($s0)
    /* 8CA20 8009E210 00000000 */  nop
    /* 8CA24 8009E214 0000A28C */  lw         $v0, 0x0($a1)
    /* 8CA28 8009E218 00000000 */  nop
    /* 8CA2C 8009E21C 24104400 */  and        $v0, $v0, $a0
    /* 8CA30 8009E220 25104600 */  or         $v0, $v0, $a2
    /* 8CA34 8009E224 0000A2AC */  sw         $v0, 0x0($a1)
    /* 8CA38 8009E228 4400048E */  lw         $a0, 0x44($s0)
    /* 8CA3C 8009E22C 6CF9000C */  jal        func_8003E5B0
    /* 8CA40 8009E230 00000000 */   nop
    /* 8CA44 8009E234 4C00028E */  lw         $v0, 0x4C($s0)
    /* 8CA48 8009E238 1400BF8F */  lw         $ra, 0x14($sp)
    /* 8CA4C 8009E23C 1000B08F */  lw         $s0, 0x10($sp)
    /* 8CA50 8009E240 000040AC */  sw         $zero, 0x0($v0)
    /* 8CA54 8009E244 0800E003 */  jr         $ra
    /* 8CA58 8009E248 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_8009E1A0
