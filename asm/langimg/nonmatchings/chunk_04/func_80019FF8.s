nonmatching func_80019FF8, 0x2A8

glabel func_80019FF8
    /* 8808 80019FF8 B0FFBD27 */  addiu      $sp, $sp, -0x50
    /* 880C 80019FFC 3C00B3AF */  sw         $s3, 0x3C($sp)
    /* 8810 8001A000 21988000 */  addu       $s3, $a0, $zero
    /* 8814 8001A004 3400B1AF */  sw         $s1, 0x34($sp)
    /* 8818 8001A008 2188A000 */  addu       $s1, $a1, $zero
    /* 881C 8001A00C 4800BFAF */  sw         $ra, 0x48($sp)
    /* 8820 8001A010 4400B5AF */  sw         $s5, 0x44($sp)
    /* 8824 8001A014 4000B4AF */  sw         $s4, 0x40($sp)
    /* 8828 8001A018 3800B2AF */  sw         $s2, 0x38($sp)
    /* 882C 8001A01C 04002012 */  beqz       $s1, .L8001A030
    /* 8830 8001A020 3000B0AF */   sw        $s0, 0x30($sp)
    /* 8834 8001A024 4C001524 */  addiu      $s5, $zero, 0x4C
    /* 8838 8001A028 0E680008 */  j          .L8001A038
    /* 883C 8001A02C 0E001424 */   addiu     $s4, $zero, 0xE
  .L8001A030:
    /* 8840 8001A030 21A80000 */  addu       $s5, $zero, $zero
    /* 8844 8001A034 25001424 */  addiu      $s4, $zero, 0x25
  .L8001A038:
    /* 8848 8001A038 48006282 */  lb         $v0, 0x48($s3)
    /* 884C 8001A03C 00000000 */  nop
    /* 8850 8001A040 0B004010 */  beqz       $v0, .L8001A070
    /* 8854 8001A044 21206002 */   addu      $a0, $s3, $zero
    /* 8858 8001A048 9A000524 */  addiu      $a1, $zero, 0x9A
    /* 885C 8001A04C 4C000624 */  addiu      $a2, $zero, 0x4C
    /* 8860 8001A050 25000724 */  addiu      $a3, $zero, 0x25
    /* 8864 8001A054 FFFF0224 */  addiu      $v0, $zero, -0x1
    /* 8868 8001A058 00100324 */  addiu      $v1, $zero, 0x1000
    /* 886C 8001A05C 1000A2AF */  sw         $v0, 0x10($sp)
    /* 8870 8001A060 FF000224 */  addiu      $v0, $zero, 0xFF
    /* 8874 8001A064 1400A3AF */  sw         $v1, 0x14($sp)
    /* 8878 8001A068 3C69000C */  jal        func_8001A4F0
    /* 887C 8001A06C 1800A2AF */   sw        $v0, 0x18($sp)
  .L8001A070:
    /* 8880 8001A070 49006282 */  lb         $v0, 0x49($s3)
    /* 8884 8001A074 00000000 */  nop
    /* 8888 8001A078 0B004010 */  beqz       $v0, .L8001A0A8
    /* 888C 8001A07C 21206002 */   addu      $a0, $s3, $zero
    /* 8890 8001A080 9A000524 */  addiu      $a1, $zero, 0x9A
    /* 8894 8001A084 2130A002 */  addu       $a2, $s5, $zero
    /* 8898 8001A088 21388002 */  addu       $a3, $s4, $zero
    /* 889C 8001A08C FFFF0224 */  addiu      $v0, $zero, -0x1
    /* 88A0 8001A090 00100324 */  addiu      $v1, $zero, 0x1000
    /* 88A4 8001A094 1000A2AF */  sw         $v0, 0x10($sp)
    /* 88A8 8001A098 FF000224 */  addiu      $v0, $zero, 0xFF
    /* 88AC 8001A09C 1400A3AF */  sw         $v1, 0x14($sp)
    /* 88B0 8001A0A0 3C69000C */  jal        func_8001A4F0
    /* 88B4 8001A0A4 1800A2AF */   sw        $v0, 0x18($sp)
  .L8001A0A8:
    /* 88B8 8001A0A8 FF00103C */  lui        $s0, (0xFFFFFF >> 16)
    /* 88BC 8001A0AC FFFF1036 */  ori        $s0, $s0, (0xFFFFFF & 0xFFFF)
    /* 88C0 8001A0B0 21206002 */  addu       $a0, $s3, $zero
    /* 88C4 8001A0B4 99000524 */  addiu      $a1, $zero, 0x99
    /* 88C8 8001A0B8 0D000624 */  addiu      $a2, $zero, 0xD
    /* 88CC 8001A0BC 25000724 */  addiu      $a3, $zero, 0x25
    /* 88D0 8001A0C0 44006386 */  lh         $v1, 0x44($s3)
    /* 88D4 8001A0C4 FFFF0224 */  addiu      $v0, $zero, -0x1
    /* 88D8 8001A0C8 1000A2AF */  sw         $v0, 0x10($sp)
    /* 88DC 8001A0CC 1800B0AF */  sw         $s0, 0x18($sp)
    /* 88E0 8001A0D0 3C69000C */  jal        func_8001A4F0
    /* 88E4 8001A0D4 1400A3AF */   sw        $v1, 0x14($sp)
    /* 88E8 8001A0D8 2800A427 */  addiu      $a0, $sp, 0x28
    /* 88EC 8001A0DC 0C80053C */  lui        $a1, %hi(D_800C498C)
    /* 88F0 8001A0E0 46006686 */  lh         $a2, 0x46($s3)
    /* 88F4 8001A0E4 96D9020C */  jal        sprintf
    /* 88F8 8001A0E8 8C49A524 */   addiu     $a1, $a1, %lo(D_800C498C)
    /* 88FC 8001A0EC 80000224 */  addiu      $v0, $zero, 0x80
    /* 8900 8001A0F0 0D80013C */  lui        $at, %hi(D_800C885D)
    /* 8904 8001A0F4 5D8822A0 */  sb         $v0, %lo(D_800C885D)($at)
    /* 8908 8001A0F8 0D80023C */  lui        $v0, %hi(D_800C89D4)
    /* 890C 8001A0FC D4894290 */  lbu        $v0, %lo(D_800C89D4)($v0)
    /* 8910 8001A100 04000324 */  addiu      $v1, $zero, 0x4
    /* 8914 8001A104 0D80013C */  lui        $at, %hi(D_800C885C)
    /* 8918 8001A108 5C8823A0 */  sb         $v1, %lo(D_800C885C)($at)
    /* 891C 8001A10C 08000324 */  addiu      $v1, $zero, 0x8
    /* 8920 8001A110 0D80013C */  lui        $at, %hi(D_800C8860)
    /* 8924 8001A114 608830AC */  sw         $s0, %lo(D_800C8860)($at)
    /* 8928 8001A118 0D80013C */  lui        $at, %hi(D_800C89D0)
    /* 892C 8001A11C D08920AC */  sw         $zero, %lo(D_800C89D0)($at)
    /* 8930 8001A120 06004314 */  bne        $v0, $v1, .L8001A13C
    /* 8934 8001A124 00000000 */   nop
    /* 8938 8001A128 0D80023C */  lui        $v0, %hi(D_800C89D5)
    /* 893C 8001A12C D5894290 */  lbu        $v0, %lo(D_800C89D5)($v0)
    /* 8940 8001A130 00000000 */  nop
    /* 8944 8001A134 07004010 */  beqz       $v0, .L8001A154
    /* 8948 8001A138 00000000 */   nop
  .L8001A13C:
    /* 894C 8001A13C 0D80013C */  lui        $at, %hi(D_800C89D4)
    /* 8950 8001A140 D48923A0 */  sb         $v1, %lo(D_800C89D4)($at)
    /* 8954 8001A144 0D80013C */  lui        $at, %hi(D_800C89D5)
    /* 8958 8001A148 D58920A0 */  sb         $zero, %lo(D_800C89D5)($at)
    /* 895C 8001A14C E303020C */  jal        func_80080F8C
    /* 8960 8001A150 00000000 */   nop
  .L8001A154:
    /* 8964 8001A154 0D80023C */  lui        $v0, %hi(D_800C89D8)
    /* 8968 8001A158 D889428C */  lw         $v0, %lo(D_800C89D8)($v0)
    /* 896C 8001A15C FFFF0334 */  ori        $v1, $zero, 0xFFFF
    /* 8970 8001A160 06004310 */  beq        $v0, $v1, .L8001A17C
    /* 8974 8001A164 2800A527 */   addiu     $a1, $sp, 0x28
    /* 8978 8001A168 0D80013C */  lui        $at, %hi(D_800C89D8)
    /* 897C 8001A16C D88923AC */  sw         $v1, %lo(D_800C89D8)($at)
    /* 8980 8001A170 E303020C */  jal        func_80080F8C
    /* 8984 8001A174 00000000 */   nop
    /* 8988 8001A178 2800A527 */  addiu      $a1, $sp, 0x28
  .L8001A17C:
    /* 898C 8001A17C 0D80043C */  lui        $a0, %hi(D_800CBD58)
    /* 8990 8001A180 58BD848C */  lw         $a0, %lo(D_800CBD58)($a0)
    /* 8994 8001A184 3C006686 */  lh         $a2, 0x3C($s3)
    /* 8998 8001A188 2000A227 */  addiu      $v0, $sp, 0x20
    /* 899C 8001A18C 1000A2AF */  sw         $v0, 0x10($sp)
    /* 89A0 8001A190 3E006786 */  lh         $a3, 0x3E($s3)
    /* 89A4 8001A194 2130D500 */  addu       $a2, $a2, $s5
    /* 89A8 8001A198 FEFFC624 */  addiu      $a2, $a2, -0x2
    /* 89AC 8001A19C 2138F400 */  addu       $a3, $a3, $s4
    /* 89B0 8001A1A0 1000020C */  jal        func_80080040
    /* 89B4 8001A1A4 F5FFE724 */   addiu     $a3, $a3, -0xB
    /* 89B8 8001A1A8 16002012 */  beqz       $s1, .L8001A204
    /* 89BC 8001A1AC 8000103C */   lui       $s0, (0x808080 >> 16)
    /* 89C0 8001A1B0 80801036 */  ori        $s0, $s0, (0x808080 & 0xFFFF)
    /* 89C4 8001A1B4 21206002 */  addu       $a0, $s3, $zero
    /* 89C8 8001A1B8 9B000524 */  addiu      $a1, $zero, 0x9B
    /* 89CC 8001A1BC 1B000624 */  addiu      $a2, $zero, 0x1B
    /* 89D0 8001A1C0 12000724 */  addiu      $a3, $zero, 0x12
    /* 89D4 8001A1C4 FFFF0224 */  addiu      $v0, $zero, -0x1
    /* 89D8 8001A1C8 00101124 */  addiu      $s1, $zero, 0x1000
    /* 89DC 8001A1CC 1000A2AF */  sw         $v0, 0x10($sp)
    /* 89E0 8001A1D0 1400B1AF */  sw         $s1, 0x14($sp)
    /* 89E4 8001A1D4 3C69000C */  jal        func_8001A4F0
    /* 89E8 8001A1D8 1800B0AF */   sw        $s0, 0x18($sp)
    /* 89EC 8001A1DC A868000C */  jal        func_8001A2A0
    /* 89F0 8001A1E0 21206002 */   addu      $a0, $s3, $zero
    /* 89F4 8001A1E4 21206002 */  addu       $a0, $s3, $zero
    /* 89F8 8001A1E8 98000524 */  addiu      $a1, $zero, 0x98
    /* 89FC 8001A1EC 21300000 */  addu       $a2, $zero, $zero
    /* 8A00 8001A1F0 21380000 */  addu       $a3, $zero, $zero
    /* 8A04 8001A1F4 1000A0AF */  sw         $zero, 0x10($sp)
    /* 8A08 8001A1F8 1400B1AF */  sw         $s1, 0x14($sp)
    /* 8A0C 8001A1FC 9D680008 */  j          .L8001A274
    /* 8A10 8001A200 1800B0AF */   sw        $s0, 0x18($sp)
  .L8001A204:
    /* 8A14 8001A204 80801036 */  ori        $s0, $s0, (0x808080 & 0xFFFF)
    /* 8A18 8001A208 21206002 */  addu       $a0, $s3, $zero
    /* 8A1C 8001A20C 9D000524 */  addiu      $a1, $zero, 0x9D
    /* 8A20 8001A210 49000624 */  addiu      $a2, $zero, 0x49
    /* 8A24 8001A214 24000724 */  addiu      $a3, $zero, 0x24
    /* 8A28 8001A218 FFFF1224 */  addiu      $s2, $zero, -0x1
    /* 8A2C 8001A21C 00101124 */  addiu      $s1, $zero, 0x1000
    /* 8A30 8001A220 1000B2AF */  sw         $s2, 0x10($sp)
    /* 8A34 8001A224 1400B1AF */  sw         $s1, 0x14($sp)
    /* 8A38 8001A228 3C69000C */  jal        func_8001A4F0
    /* 8A3C 8001A22C 1800B0AF */   sw        $s0, 0x18($sp)
    /* 8A40 8001A230 21206002 */  addu       $a0, $s3, $zero
    /* 8A44 8001A234 9D000524 */  addiu      $a1, $zero, 0x9D
    /* 8A48 8001A238 FDFFA626 */  addiu      $a2, $s5, -0x3
    /* 8A4C 8001A23C FFFF8726 */  addiu      $a3, $s4, -0x1
    /* 8A50 8001A240 1000B2AF */  sw         $s2, 0x10($sp)
    /* 8A54 8001A244 1400B1AF */  sw         $s1, 0x14($sp)
    /* 8A58 8001A248 3C69000C */  jal        func_8001A4F0
    /* 8A5C 8001A24C 1800B0AF */   sw        $s0, 0x18($sp)
    /* 8A60 8001A250 4000023C */  lui        $v0, (0x404040 >> 16)
    /* 8A64 8001A254 40404234 */  ori        $v0, $v0, (0x404040 & 0xFFFF)
    /* 8A68 8001A258 21206002 */  addu       $a0, $s3, $zero
    /* 8A6C 8001A25C 9C000524 */  addiu      $a1, $zero, 0x9C
    /* 8A70 8001A260 0C000624 */  addiu      $a2, $zero, 0xC
    /* 8A74 8001A264 24000724 */  addiu      $a3, $zero, 0x24
    /* 8A78 8001A268 1000B2AF */  sw         $s2, 0x10($sp)
    /* 8A7C 8001A26C 1400B1AF */  sw         $s1, 0x14($sp)
    /* 8A80 8001A270 1800A2AF */  sw         $v0, 0x18($sp)
  .L8001A274:
    /* 8A84 8001A274 3C69000C */  jal        func_8001A4F0
    /* 8A88 8001A278 00000000 */   nop
    /* 8A8C 8001A27C 4800BF8F */  lw         $ra, 0x48($sp)
    /* 8A90 8001A280 4400B58F */  lw         $s5, 0x44($sp)
    /* 8A94 8001A284 4000B48F */  lw         $s4, 0x40($sp)
    /* 8A98 8001A288 3C00B38F */  lw         $s3, 0x3C($sp)
    /* 8A9C 8001A28C 3800B28F */  lw         $s2, 0x38($sp)
    /* 8AA0 8001A290 3400B18F */  lw         $s1, 0x34($sp)
    /* 8AA4 8001A294 3000B08F */  lw         $s0, 0x30($sp)
    /* 8AA8 8001A298 0800E003 */  jr         $ra
    /* 8AAC 8001A29C 5000BD27 */   addiu     $sp, $sp, 0x50
endlabel func_80019FF8
