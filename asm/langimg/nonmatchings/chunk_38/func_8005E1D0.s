nonmatching func_8005E1D0, 0xD8

glabel func_8005E1D0
    /* 4C9E0 8005E1D0 D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* 4C9E4 8005E1D4 1C00B1AF */  sw         $s1, 0x1C($sp)
    /* 4C9E8 8005E1D8 21888000 */  addu       $s1, $a0, $zero
    /* 4C9EC 8005E1DC 2400BFAF */  sw         $ra, 0x24($sp)
    /* 4C9F0 8005E1E0 2000B2AF */  sw         $s2, 0x20($sp)
    /* 4C9F4 8005E1E4 1800B0AF */  sw         $s0, 0x18($sp)
    /* 4C9F8 8005E1E8 0403228E */  lw         $v0, 0x304($s1)
    /* 4C9FC 8005E1EC 00000000 */  nop
    /* 4CA00 8005E1F0 26004010 */  beqz       $v0, .L8005E28C
    /* 4CA04 8005E1F4 FFFF1224 */   addiu     $s2, $zero, -0x1
    /* 4CA08 8005E1F8 7803228E */  lw         $v0, 0x378($s1)
    /* 4CA0C 8005E1FC 21200000 */  addu       $a0, $zero, $zero
    /* 4CA10 8005E200 01000524 */  addiu      $a1, $zero, 0x1
    /* 4CA14 8005E204 87780108 */  j          .L8005E21C
    /* 4CA18 8005E208 E8025024 */   addiu     $s0, $v0, 0x2E8
  .L8005E20C:
    /* 4CA1C 8005E20C 01008424 */  addiu      $a0, $a0, 0x1
  .L8005E210:
    /* 4CA20 8005E210 05008228 */  slti       $v0, $a0, 0x5
    /* 4CA24 8005E214 1D004010 */  beqz       $v0, .L8005E28C
    /* 4CA28 8005E218 68051026 */   addiu     $s0, $s0, 0x568
  .L8005E21C:
    /* 4CA2C 8005E21C 0000038E */  lw         $v1, 0x0($s0)
    /* 4CA30 8005E220 00000000 */  nop
    /* 4CA34 8005E224 82110300 */  srl        $v0, $v1, 6
    /* 4CA38 8005E228 01004230 */  andi       $v0, $v0, 0x1
    /* 4CA3C 8005E22C F7FF4010 */  beqz       $v0, .L8005E20C
    /* 4CA40 8005E230 80160300 */   sll       $v0, $v1, 26
    /* 4CA44 8005E234 C3160200 */  sra        $v0, $v0, 27
    /* 4CA48 8005E238 F5FF4514 */  bne        $v0, $a1, .L8005E210
    /* 4CA4C 8005E23C 01008424 */   addiu     $a0, $a0, 0x1
    /* 4CA50 8005E240 0D80023C */  lui        $v0, %hi(D_800CB410)
    /* 4CA54 8005E244 10B4428C */  lw         $v0, %lo(D_800CB410)($v0)
    /* 4CA58 8005E248 00000000 */  nop
    /* 4CA5C 8005E24C 0D004014 */  bnez       $v0, .L8005E284
    /* 4CA60 8005E250 21200002 */   addu      $a0, $s0, $zero
    /* 4CA64 8005E254 0803248E */  lw         $a0, 0x308($s1)
    /* 4CA68 8005E258 2800058E */  lw         $a1, 0x28($s0)
    /* 4CA6C 8005E25C 28B1010C */  jal        func_8006C4A0
    /* 4CA70 8005E260 1000A627 */   addiu     $a2, $sp, 0x10
    /* 4CA74 8005E264 07004010 */  beqz       $v0, .L8005E284
    /* 4CA78 8005E268 21200002 */   addu      $a0, $s0, $zero
    /* 4CA7C 8005E26C 0803248E */  lw         $a0, 0x308($s1)
    /* 4CA80 8005E270 1000B287 */  lh         $s2, 0x10($sp)
    /* 4CA84 8005E274 F0AF010C */  jal        func_8006BFC0
    /* 4CA88 8005E278 00000000 */   nop
    /* 4CA8C 8005E27C A4780108 */  j          .L8005E290
    /* 4CA90 8005E280 21104002 */   addu      $v0, $s2, $zero
  .L8005E284:
    /* 4CA94 8005E284 2344010C */  jal        func_8005108C
    /* 4CA98 8005E288 03000524 */   addiu     $a1, $zero, 0x3
  .L8005E28C:
    /* 4CA9C 8005E28C 21104002 */  addu       $v0, $s2, $zero
  .L8005E290:
    /* 4CAA0 8005E290 2400BF8F */  lw         $ra, 0x24($sp)
    /* 4CAA4 8005E294 2000B28F */  lw         $s2, 0x20($sp)
    /* 4CAA8 8005E298 1C00B18F */  lw         $s1, 0x1C($sp)
    /* 4CAAC 8005E29C 1800B08F */  lw         $s0, 0x18($sp)
    /* 4CAB0 8005E2A0 0800E003 */  jr         $ra
    /* 4CAB4 8005E2A4 2800BD27 */   addiu     $sp, $sp, 0x28
endlabel func_8005E1D0
