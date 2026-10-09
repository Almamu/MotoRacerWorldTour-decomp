nonmatching func_80070140, 0x1D4

glabel func_80070140
    /* 5E950 80070140 B0FFBD27 */  addiu      $sp, $sp, -0x50
    /* 5E954 80070144 4400B5AF */  sw         $s5, 0x44($sp)
    /* 5E958 80070148 21A88000 */  addu       $s5, $a0, $zero
    /* 5E95C 8007014C 3C00B3AF */  sw         $s3, 0x3C($sp)
    /* 5E960 80070150 0800B326 */  addiu      $s3, $s5, 0x8
    /* 5E964 80070154 21206002 */  addu       $a0, $s3, $zero
    /* 5E968 80070158 4000B4AF */  sw         $s4, 0x40($sp)
    /* 5E96C 8007015C 21A0A000 */  addu       $s4, $a1, $zero
    /* 5E970 80070160 01000524 */  addiu      $a1, $zero, 0x1
    /* 5E974 80070164 3000B0AF */  sw         $s0, 0x30($sp)
    /* 5E978 80070168 21806002 */  addu       $s0, $s3, $zero
    /* 5E97C 8007016C 4800BFAF */  sw         $ra, 0x48($sp)
    /* 5E980 80070170 3800B2AF */  sw         $s2, 0x38($sp)
    /* 5E984 80070174 DD5A020C */  jal        func_80096B74
    /* 5E988 80070178 3400B1AF */   sw        $s1, 0x34($sp)
    /* 5E98C 8007017C 09004010 */  beqz       $v0, .L800701A4
    /* 5E990 80070180 21206002 */   addu      $a0, $s3, $zero
    /* 5E994 80070184 04000524 */  addiu      $a1, $zero, 0x4
    /* 5E998 80070188 07000624 */  addiu      $a2, $zero, 0x7
    /* 5E99C 8007018C 20000724 */  addiu      $a3, $zero, 0x20
    /* 5E9A0 80070190 FFFF0324 */  addiu      $v1, $zero, -0x1
    /* 5E9A4 80070194 615B020C */  jal        func_80096D84
    /* 5E9A8 80070198 1000A3AF */   sw        $v1, 0x10($sp)
    /* 5E9AC 8007019C 6AC00108 */  j          .L800701A8
    /* 5E9B0 800701A0 000082AE */   sw        $v0, 0x0($s4)
  .L800701A4:
    /* 5E9B4 800701A4 000080AE */  sw         $zero, 0x0($s4)
  .L800701A8:
    /* 5E9B8 800701A8 21200002 */  addu       $a0, $s0, $zero
    /* 5E9BC 800701AC DD5A020C */  jal        func_80096B74
    /* 5E9C0 800701B0 01000524 */   addiu     $a1, $zero, 0x1
    /* 5E9C4 800701B4 37004010 */  beqz       $v0, .L80070294
    /* 5E9C8 800701B8 21206002 */   addu      $a0, $s3, $zero
    /* 5E9CC 800701BC 04000524 */  addiu      $a1, $zero, 0x4
    /* 5E9D0 800701C0 07000624 */  addiu      $a2, $zero, 0x7
    /* 5E9D4 800701C4 0A000724 */  addiu      $a3, $zero, 0xA
    /* 5E9D8 800701C8 20001224 */  addiu      $s2, $zero, 0x20
    /* 5E9DC 800701CC FFFF1124 */  addiu      $s1, $zero, -0x1
    /* 5E9E0 800701D0 1000B2AF */  sw         $s2, 0x10($sp)
    /* 5E9E4 800701D4 615B020C */  jal        func_80096D84
    /* 5E9E8 800701D8 1400B1AF */   sw        $s1, 0x14($sp)
    /* 5E9EC 800701DC 21206002 */  addu       $a0, $s3, $zero
    /* 5E9F0 800701E0 04000524 */  addiu      $a1, $zero, 0x4
    /* 5E9F4 800701E4 07000624 */  addiu      $a2, $zero, 0x7
    /* 5E9F8 800701E8 0A000724 */  addiu      $a3, $zero, 0xA
    /* 5E9FC 800701EC 040082AE */  sw         $v0, 0x4($s4)
    /* 5EA00 800701F0 1000B2AF */  sw         $s2, 0x10($sp)
    /* 5EA04 800701F4 615B020C */  jal        func_80096D84
    /* 5EA08 800701F8 1400B1AF */   sw        $s1, 0x14($sp)
    /* 5EA0C 800701FC 21206002 */  addu       $a0, $s3, $zero
    /* 5EA10 80070200 04000524 */  addiu      $a1, $zero, 0x4
    /* 5EA14 80070204 07000624 */  addiu      $a2, $zero, 0x7
    /* 5EA18 80070208 0A000724 */  addiu      $a3, $zero, 0xA
    /* 5EA1C 8007020C 080082AE */  sw         $v0, 0x8($s4)
    /* 5EA20 80070210 1000B2AF */  sw         $s2, 0x10($sp)
    /* 5EA24 80070214 615B020C */  jal        func_80096D84
    /* 5EA28 80070218 1400B1AF */   sw        $s1, 0x14($sp)
    /* 5EA2C 8007021C 21206002 */  addu       $a0, $s3, $zero
    /* 5EA30 80070220 03000524 */  addiu      $a1, $zero, 0x3
    /* 5EA34 80070224 05000624 */  addiu      $a2, $zero, 0x5
    /* 5EA38 80070228 07000724 */  addiu      $a3, $zero, 0x7
    /* 5EA3C 8007022C 09001024 */  addiu      $s0, $zero, 0x9
    /* 5EA40 80070230 0C0082AE */  sw         $v0, 0xC($s4)
    /* 5EA44 80070234 1000B0AF */  sw         $s0, 0x10($sp)
    /* 5EA48 80070238 1400B2AF */  sw         $s2, 0x14($sp)
    /* 5EA4C 8007023C 615B020C */  jal        func_80096D84
    /* 5EA50 80070240 1800B1AF */   sw        $s1, 0x18($sp)
    /* 5EA54 80070244 21206002 */  addu       $a0, $s3, $zero
    /* 5EA58 80070248 03000524 */  addiu      $a1, $zero, 0x3
    /* 5EA5C 8007024C 05000624 */  addiu      $a2, $zero, 0x5
    /* 5EA60 80070250 07000724 */  addiu      $a3, $zero, 0x7
    /* 5EA64 80070254 100082A6 */  sh         $v0, 0x10($s4)
    /* 5EA68 80070258 1000B0AF */  sw         $s0, 0x10($sp)
    /* 5EA6C 8007025C 1400B2AF */  sw         $s2, 0x14($sp)
    /* 5EA70 80070260 615B020C */  jal        func_80096D84
    /* 5EA74 80070264 1800B1AF */   sw        $s1, 0x18($sp)
    /* 5EA78 80070268 21206002 */  addu       $a0, $s3, $zero
    /* 5EA7C 8007026C 03000524 */  addiu      $a1, $zero, 0x3
    /* 5EA80 80070270 05000624 */  addiu      $a2, $zero, 0x5
    /* 5EA84 80070274 07000724 */  addiu      $a3, $zero, 0x7
    /* 5EA88 80070278 120082A6 */  sh         $v0, 0x12($s4)
    /* 5EA8C 8007027C 1000B0AF */  sw         $s0, 0x10($sp)
    /* 5EA90 80070280 1400B2AF */  sw         $s2, 0x14($sp)
    /* 5EA94 80070284 615B020C */  jal        func_80096D84
    /* 5EA98 80070288 1800B1AF */   sw        $s1, 0x18($sp)
    /* 5EA9C 8007028C B9C00108 */  j          .L800702E4
    /* 5EAA0 80070290 140082A6 */   sh        $v0, 0x14($s4)
  .L80070294:
    /* 5EAA4 80070294 2000A227 */  addiu      $v0, $sp, 0x20
    /* 5EAA8 80070298 2000A0AF */  sw         $zero, 0x20($sp)
    /* 5EAAC 8007029C 040040AC */  sw         $zero, 0x4($v0)
    /* 5EAB0 800702A0 080040AC */  sw         $zero, 0x8($v0)
    /* 5EAB4 800702A4 2000A48F */  lw         $a0, 0x20($sp)
    /* 5EAB8 800702A8 04008326 */  addiu      $v1, $s4, 0x4
    /* 5EABC 800702AC 2000A0A7 */  sh         $zero, 0x20($sp)
    /* 5EAC0 800702B0 020040A4 */  sh         $zero, 0x2($v0)
    /* 5EAC4 800702B4 040040A4 */  sh         $zero, 0x4($v0)
    /* 5EAC8 800702B8 040084AE */  sw         $a0, 0x4($s4)
    /* 5EACC 800702BC 040060AC */  sw         $zero, 0x4($v1)
    /* 5EAD0 800702C0 080060AC */  sw         $zero, 0x8($v1)
    /* 5EAD4 800702C4 2300A88B */  lwl        $t0, 0x23($sp)
    /* 5EAD8 800702C8 2000A89B */  lwr        $t0, 0x20($sp)
    /* 5EADC 800702CC 2700A98B */  lwl        $t1, 0x27($sp)
    /* 5EAE0 800702D0 2400A99B */  lwr        $t1, 0x24($sp)
    /* 5EAE4 800702D4 130088AA */  swl        $t0, 0x13($s4)
    /* 5EAE8 800702D8 100088BA */  swr        $t0, 0x10($s4)
    /* 5EAEC 800702DC 170089AA */  swl        $t1, 0x17($s4)
    /* 5EAF0 800702E0 140089BA */  swr        $t1, 0x14($s4)
  .L800702E4:
    /* 5EAF4 800702E4 0400A28E */  lw         $v0, 0x4($s5)
    /* 5EAF8 800702E8 4800BF8F */  lw         $ra, 0x48($sp)
    /* 5EAFC 800702EC 4000B48F */  lw         $s4, 0x40($sp)
    /* 5EB00 800702F0 3C00B38F */  lw         $s3, 0x3C($sp)
    /* 5EB04 800702F4 3800B28F */  lw         $s2, 0x38($sp)
    /* 5EB08 800702F8 3400B18F */  lw         $s1, 0x34($sp)
    /* 5EB0C 800702FC 3000B08F */  lw         $s0, 0x30($sp)
    /* 5EB10 80070300 01004224 */  addiu      $v0, $v0, 0x1
    /* 5EB14 80070304 0400A2AE */  sw         $v0, 0x4($s5)
    /* 5EB18 80070308 4400B58F */  lw         $s5, 0x44($sp)
    /* 5EB1C 8007030C 0800E003 */  jr         $ra
    /* 5EB20 80070310 5000BD27 */   addiu     $sp, $sp, 0x50
endlabel func_80070140
