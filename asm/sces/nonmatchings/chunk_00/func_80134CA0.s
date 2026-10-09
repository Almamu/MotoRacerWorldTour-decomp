nonmatching func_80134CA0, 0x194

glabel func_80134CA0
    /* 216C 80134CA0 B0FFBD27 */  addiu      $sp, $sp, -0x50
    /* 2170 80134CA4 3000B2AF */  sw         $s2, 0x30($sp)
    /* 2174 80134CA8 21908000 */  addu       $s2, $a0, $zero
    /* 2178 80134CAC 1000A427 */  addiu      $a0, $sp, 0x10
    /* 217C 80134CB0 05000224 */  addiu      $v0, $zero, 0x5
    /* 2180 80134CB4 1300A2A3 */  sb         $v0, 0x13($sp)
    /* 2184 80134CB8 28000224 */  addiu      $v0, $zero, 0x28
    /* 2188 80134CBC 2800B0AF */  sw         $s0, 0x28($sp)
    /* 218C 80134CC0 00860600 */  sll        $s0, $a2, 24
    /* 2190 80134CC4 03861000 */  sra        $s0, $s0, 24
    /* 2194 80134CC8 2C00B1AF */  sw         $s1, 0x2C($sp)
    /* 2198 80134CCC 2188A000 */  addu       $s1, $a1, $zero
    /* 219C 80134CD0 4800BEAF */  sw         $fp, 0x48($sp)
    /* 21A0 80134CD4 FDFF5E26 */  addiu      $fp, $s2, -0x3
    /* 21A4 80134CD8 3C00B5AF */  sw         $s5, 0x3C($sp)
    /* 21A8 80134CDC FDFF3526 */  addiu      $s5, $s1, -0x3
    /* 21AC 80134CE0 4400B7AF */  sw         $s7, 0x44($sp)
    /* 21B0 80134CE4 80005726 */  addiu      $s7, $s2, 0x80
    /* 21B4 80134CE8 4000B6AF */  sw         $s6, 0x40($sp)
    /* 21B8 80134CEC 83005626 */  addiu      $s6, $s2, 0x83
    /* 21BC 80134CF0 4C00BFAF */  sw         $ra, 0x4C($sp)
    /* 21C0 80134CF4 3800B4AF */  sw         $s4, 0x38($sp)
    /* 21C4 80134CF8 3400B3AF */  sw         $s3, 0x34($sp)
    /* 21C8 80134CFC 1700A2A3 */  sb         $v0, 0x17($sp)
    /* 21CC 80134D00 1400B0A3 */  sb         $s0, 0x14($sp)
    /* 21D0 80134D04 1500B0A3 */  sb         $s0, 0x15($sp)
    /* 21D4 80134D08 1600B0A3 */  sb         $s0, 0x16($sp)
    /* 21D8 80134D0C 1800B2A7 */  sh         $s2, 0x18($sp)
    /* 21DC 80134D10 1A00B1A7 */  sh         $s1, 0x1A($sp)
    /* 21E0 80134D14 1C00BEA7 */  sh         $fp, 0x1C($sp)
    /* 21E4 80134D18 1E00B5A7 */  sh         $s5, 0x1E($sp)
    /* 21E8 80134D1C 2000B7A7 */  sh         $s7, 0x20($sp)
    /* 21EC 80134D20 2200B1A7 */  sh         $s1, 0x22($sp)
    /* 21F0 80134D24 2400B6A7 */  sh         $s6, 0x24($sp)
    /* 21F4 80134D28 BCF1040C */  jal        func_8013C6F0
    /* 21F8 80134D2C 2600B5A7 */   sh        $s5, 0x26($sp)
    /* 21FC 80134D30 1000A427 */  addiu      $a0, $sp, 0x10
    /* 2200 80134D34 05000224 */  addiu      $v0, $zero, 0x5
    /* 2204 80134D38 1300A2A3 */  sb         $v0, 0x13($sp)
    /* 2208 80134D3C 28000224 */  addiu      $v0, $zero, 0x28
    /* 220C 80134D40 2B003426 */  addiu      $s4, $s1, 0x2B
    /* 2210 80134D44 2E003326 */  addiu      $s3, $s1, 0x2E
    /* 2214 80134D48 1700A2A3 */  sb         $v0, 0x17($sp)
    /* 2218 80134D4C 1400B0A3 */  sb         $s0, 0x14($sp)
    /* 221C 80134D50 1500B0A3 */  sb         $s0, 0x15($sp)
    /* 2220 80134D54 1600B0A3 */  sb         $s0, 0x16($sp)
    /* 2224 80134D58 1800B7A7 */  sh         $s7, 0x18($sp)
    /* 2228 80134D5C 1A00B1A7 */  sh         $s1, 0x1A($sp)
    /* 222C 80134D60 1C00B6A7 */  sh         $s6, 0x1C($sp)
    /* 2230 80134D64 1E00B5A7 */  sh         $s5, 0x1E($sp)
    /* 2234 80134D68 2000B7A7 */  sh         $s7, 0x20($sp)
    /* 2238 80134D6C 2200B4A7 */  sh         $s4, 0x22($sp)
    /* 223C 80134D70 2400B6A7 */  sh         $s6, 0x24($sp)
    /* 2240 80134D74 BCF1040C */  jal        func_8013C6F0
    /* 2244 80134D78 2600B3A7 */   sh        $s3, 0x26($sp)
    /* 2248 80134D7C 1000A427 */  addiu      $a0, $sp, 0x10
    /* 224C 80134D80 05000224 */  addiu      $v0, $zero, 0x5
    /* 2250 80134D84 1300A2A3 */  sb         $v0, 0x13($sp)
    /* 2254 80134D88 28000224 */  addiu      $v0, $zero, 0x28
    /* 2258 80134D8C 1700A2A3 */  sb         $v0, 0x17($sp)
    /* 225C 80134D90 1400B0A3 */  sb         $s0, 0x14($sp)
    /* 2260 80134D94 1500B0A3 */  sb         $s0, 0x15($sp)
    /* 2264 80134D98 1600B0A3 */  sb         $s0, 0x16($sp)
    /* 2268 80134D9C 1800B2A7 */  sh         $s2, 0x18($sp)
    /* 226C 80134DA0 1A00B1A7 */  sh         $s1, 0x1A($sp)
    /* 2270 80134DA4 1C00BEA7 */  sh         $fp, 0x1C($sp)
    /* 2274 80134DA8 1E00B5A7 */  sh         $s5, 0x1E($sp)
    /* 2278 80134DAC 2000B2A7 */  sh         $s2, 0x20($sp)
    /* 227C 80134DB0 2200B4A7 */  sh         $s4, 0x22($sp)
    /* 2280 80134DB4 2400BEA7 */  sh         $fp, 0x24($sp)
    /* 2284 80134DB8 BCF1040C */  jal        func_8013C6F0
    /* 2288 80134DBC 2600B3A7 */   sh        $s3, 0x26($sp)
    /* 228C 80134DC0 1000A427 */  addiu      $a0, $sp, 0x10
    /* 2290 80134DC4 05000224 */  addiu      $v0, $zero, 0x5
    /* 2294 80134DC8 1300A2A3 */  sb         $v0, 0x13($sp)
    /* 2298 80134DCC 28000224 */  addiu      $v0, $zero, 0x28
    /* 229C 80134DD0 1700A2A3 */  sb         $v0, 0x17($sp)
    /* 22A0 80134DD4 1400B0A3 */  sb         $s0, 0x14($sp)
    /* 22A4 80134DD8 1500B0A3 */  sb         $s0, 0x15($sp)
    /* 22A8 80134DDC 1600B0A3 */  sb         $s0, 0x16($sp)
    /* 22AC 80134DE0 1800B2A7 */  sh         $s2, 0x18($sp)
    /* 22B0 80134DE4 1A00B4A7 */  sh         $s4, 0x1A($sp)
    /* 22B4 80134DE8 1C00BEA7 */  sh         $fp, 0x1C($sp)
    /* 22B8 80134DEC 1E00B3A7 */  sh         $s3, 0x1E($sp)
    /* 22BC 80134DF0 2000B7A7 */  sh         $s7, 0x20($sp)
    /* 22C0 80134DF4 2200B4A7 */  sh         $s4, 0x22($sp)
    /* 22C4 80134DF8 2400B6A7 */  sh         $s6, 0x24($sp)
    /* 22C8 80134DFC BCF1040C */  jal        func_8013C6F0
    /* 22CC 80134E00 2600B3A7 */   sh        $s3, 0x26($sp)
    /* 22D0 80134E04 4C00BF8F */  lw         $ra, 0x4C($sp)
    /* 22D4 80134E08 4800BE8F */  lw         $fp, 0x48($sp)
    /* 22D8 80134E0C 4400B78F */  lw         $s7, 0x44($sp)
    /* 22DC 80134E10 4000B68F */  lw         $s6, 0x40($sp)
    /* 22E0 80134E14 3C00B58F */  lw         $s5, 0x3C($sp)
    /* 22E4 80134E18 3800B48F */  lw         $s4, 0x38($sp)
    /* 22E8 80134E1C 3400B38F */  lw         $s3, 0x34($sp)
    /* 22EC 80134E20 3000B28F */  lw         $s2, 0x30($sp)
    /* 22F0 80134E24 2C00B18F */  lw         $s1, 0x2C($sp)
    /* 22F4 80134E28 2800B08F */  lw         $s0, 0x28($sp)
    /* 22F8 80134E2C 0800E003 */  jr         $ra
    /* 22FC 80134E30 5000BD27 */   addiu     $sp, $sp, 0x50
endlabel func_80134CA0
