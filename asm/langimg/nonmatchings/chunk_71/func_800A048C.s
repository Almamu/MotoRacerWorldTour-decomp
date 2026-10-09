nonmatching func_800A048C, 0xCC

glabel func_800A048C
    /* 8EC9C 800A048C A8FFBD27 */  addiu      $sp, $sp, -0x58
    /* 8ECA0 800A0490 0D80023C */  lui        $v0, %hi(D_800C9EE0)
    /* 8ECA4 800A0494 E09E4224 */  addiu      $v0, $v0, %lo(D_800C9EE0)
    /* 8ECA8 800A0498 0D80033C */  lui        $v1, %hi(D_800C9EE4)
    /* 8ECAC 800A049C E49E6324 */  addiu      $v1, $v1, %lo(D_800C9EE4)
    /* 8ECB0 800A04A0 2000A2AF */  sw         $v0, 0x20($sp)
    /* 8ECB4 800A04A4 0D80023C */  lui        $v0, %hi(D_800C9EE8)
    /* 8ECB8 800A04A8 E89E4224 */  addiu      $v0, $v0, %lo(D_800C9EE8)
    /* 8ECBC 800A04AC 2400A3AF */  sw         $v1, 0x24($sp)
    /* 8ECC0 800A04B0 0D80033C */  lui        $v1, %hi(D_800C9EEC)
    /* 8ECC4 800A04B4 EC9E6324 */  addiu      $v1, $v1, %lo(D_800C9EEC)
    /* 8ECC8 800A04B8 2800A2AF */  sw         $v0, 0x28($sp)
    /* 8ECCC 800A04BC 0D80023C */  lui        $v0, %hi(D_800C9EF0)
    /* 8ECD0 800A04C0 F09E4224 */  addiu      $v0, $v0, %lo(D_800C9EF0)
    /* 8ECD4 800A04C4 2C00A3AF */  sw         $v1, 0x2C($sp)
    /* 8ECD8 800A04C8 0D80033C */  lui        $v1, %hi(D_800C9EF4)
    /* 8ECDC 800A04CC F49E6324 */  addiu      $v1, $v1, %lo(D_800C9EF4)
    /* 8ECE0 800A04D0 3000A2AF */  sw         $v0, 0x30($sp)
    /* 8ECE4 800A04D4 0D80023C */  lui        $v0, %hi(D_800C9EF8)
    /* 8ECE8 800A04D8 F89E4224 */  addiu      $v0, $v0, %lo(D_800C9EF8)
    /* 8ECEC 800A04DC 3400A3AF */  sw         $v1, 0x34($sp)
    /* 8ECF0 800A04E0 0D80033C */  lui        $v1, %hi(D_800C9EFC)
    /* 8ECF4 800A04E4 FC9E6324 */  addiu      $v1, $v1, %lo(D_800C9EFC)
    /* 8ECF8 800A04E8 3800A2AF */  sw         $v0, 0x38($sp)
    /* 8ECFC 800A04EC 0D80023C */  lui        $v0, %hi(D_800C8D8C)
    /* 8ED00 800A04F0 8C8D4224 */  addiu      $v0, $v0, %lo(D_800C8D8C)
    /* 8ED04 800A04F4 3C00A3AF */  sw         $v1, 0x3C($sp)
    /* 8ED08 800A04F8 0C80033C */  lui        $v1, %hi(D_800C6710)
    /* 8ED0C 800A04FC 10676324 */  addiu      $v1, $v1, %lo(D_800C6710)
    /* 8ED10 800A0500 4000A2AF */  sw         $v0, 0x40($sp)
    /* 8ED14 800A0504 0D80023C */  lui        $v0, %hi(D_800C9EDC)
    /* 8ED18 800A0508 DC9E4224 */  addiu      $v0, $v0, %lo(D_800C9EDC)
    /* 8ED1C 800A050C 5000B0AF */  sw         $s0, 0x50($sp)
    /* 8ED20 800A0510 2000B027 */  addiu      $s0, $sp, 0x20
    /* 8ED24 800A0514 5400BFAF */  sw         $ra, 0x54($sp)
    /* 8ED28 800A0518 4400A3AF */  sw         $v1, 0x44($sp)
    /* 8ED2C 800A051C F37F020C */  jal        func_8009FFCC
    /* 8ED30 800A0520 4800A2AF */   sw        $v0, 0x48($sp)
    /* 8ED34 800A0524 21280002 */  addu       $a1, $s0, $zero
    /* 8ED38 800A0528 0B000624 */  addiu      $a2, $zero, 0xB
    /* 8ED3C 800A052C 1058848F */  lw         $a0, %gp_rel(D_800C9F00)($gp)
    /* 8ED40 800A0530 21380000 */  addu       $a3, $zero, $zero
    /* 8ED44 800A0534 1000A0AF */  sw         $zero, 0x10($sp)
    /* 8ED48 800A0538 1400A0AF */  sw         $zero, 0x14($sp)
    /* 8ED4C 800A053C 4C95020C */  jal        func_800A5530
    /* 8ED50 800A0540 1800A0AF */   sw        $zero, 0x18($sp)
    /* 8ED54 800A0544 5400BF8F */  lw         $ra, 0x54($sp)
    /* 8ED58 800A0548 5000B08F */  lw         $s0, 0x50($sp)
    /* 8ED5C 800A054C 2B100200 */  sltu       $v0, $zero, $v0
    /* 8ED60 800A0550 0800E003 */  jr         $ra
    /* 8ED64 800A0554 5800BD27 */   addiu     $sp, $sp, 0x58
endlabel func_800A048C
