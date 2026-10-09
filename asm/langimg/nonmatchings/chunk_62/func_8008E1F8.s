nonmatching func_8008E1F8, 0x15C

glabel func_8008E1F8
    /* 7CA08 8008E1F8 F0FFBD27 */  addiu      $sp, $sp, -0x10
    /* 7CA0C 8008E1FC 5300C010 */  beqz       $a2, .L8008E34C
    /* 7CA10 8008E200 2110A000 */   addu      $v0, $a1, $zero
    /* 7CA14 8008E204 F0FF063C */  lui        $a2, (0xFFF003FF >> 16)
    /* 7CA18 8008E208 FF03C634 */  ori        $a2, $a2, (0xFFF003FF & 0xFFFF)
    /* 7CA1C 8008E20C 0FC0053C */  lui        $a1, (0xC00FFFFF >> 16)
    /* 7CA20 8008E210 FFFFA534 */  ori        $a1, $a1, (0xC00FFFFF & 0xFFFF)
    /* 7CA24 8008E214 21480000 */  addu       $t1, $zero, $zero
    /* 7CA28 8008E218 0000EF8C */  lw         $t7, 0x0($a3)
    /* 7CA2C 8008E21C 0400E724 */  addiu      $a3, $a3, 0x4
    /* 7CA30 8008E220 04004D8C */  lw         $t5, 0x4($v0)
    /* 7CA34 8008E224 10004C8C */  lw         $t4, 0x10($v0)
    /* 7CA38 8008E228 08004B8C */  lw         $t3, 0x8($v0)
    /* 7CA3C 8008E22C 0C004A8C */  lw         $t2, 0xC($v0)
    /* 7CA40 8008E230 03005980 */  lb         $t9, 0x3($v0)
    /* 7CA44 8008E234 00009880 */  lb         $t8, 0x0($a0)
    /* 7CA48 8008E238 0800848C */  lw         $a0, 0x8($a0)
    /* 7CA4C 8008E23C 0800A28F */  lw         $v0, 0x8($sp)
    /* 7CA50 8008E240 00FC0324 */  addiu      $v1, $zero, -0x400
    /* 7CA54 8008E244 0000A0A7 */  sh         $zero, 0x0($sp)
    /* 7CA58 8008E248 0200A0A7 */  sh         $zero, 0x2($sp)
    /* 7CA5C 8008E24C 0400A0A7 */  sh         $zero, 0x4($sp)
    /* 7CA60 8008E250 30008E24 */  addiu      $t6, $a0, 0x30
    /* 7CA64 8008E254 2C008824 */  addiu      $t0, $a0, 0x2C
    /* 7CA68 8008E258 24104300 */  and        $v0, $v0, $v1
    /* 7CA6C 8008E25C 24104600 */  and        $v0, $v0, $a2
    /* 7CA70 8008E260 24104500 */  and        $v0, $v0, $a1
    /* 7CA74 8008E264 0800A2AF */  sw         $v0, 0x8($sp)
  .L8008E268:
    /* 7CA78 8008E268 03002013 */  beqz       $t9, .L8008E278
    /* 7CA7C 8008E26C 2118A001 */   addu      $v1, $t5, $zero
    /* 7CA80 8008E270 A7380208 */  j          .L8008E29C
    /* 7CA84 8008E274 04006D24 */   addiu     $t5, $v1, 0x4
  .L8008E278:
    /* 7CA88 8008E278 08006011 */  beqz       $t3, .L8008E29C
    /* 7CA8C 8008E27C 0800A327 */   addiu     $v1, $sp, 0x8
    /* 7CA90 8008E280 00006281 */  lb         $v0, 0x0($t3)
    /* 7CA94 8008E284 00000000 */  nop
    /* 7CA98 8008E288 04004914 */  bne        $v0, $t1, .L8008E29C
    /* 7CA9C 8008E28C 00000000 */   nop
    /* 7CAA0 8008E290 2118A001 */  addu       $v1, $t5, $zero
    /* 7CAA4 8008E294 04006D24 */  addiu      $t5, $v1, 0x4
    /* 7CAA8 8008E298 01006B25 */  addiu      $t3, $t3, 0x1
  .L8008E29C:
    /* 7CAAC 8008E29C 03002013 */  beqz       $t9, .L8008E2AC
    /* 7CAB0 8008E2A0 21288001 */   addu      $a1, $t4, $zero
    /* 7CAB4 8008E2A4 B4380208 */  j          .L8008E2D0
    /* 7CAB8 8008E2A8 0800AC24 */   addiu     $t4, $a1, 0x8
  .L8008E2AC:
    /* 7CABC 8008E2AC 08004011 */  beqz       $t2, .L8008E2D0
    /* 7CAC0 8008E2B0 2128A003 */   addu      $a1, $sp, $zero
    /* 7CAC4 8008E2B4 00004281 */  lb         $v0, 0x0($t2)
    /* 7CAC8 8008E2B8 00000000 */  nop
    /* 7CACC 8008E2BC 04004914 */  bne        $v0, $t1, .L8008E2D0
    /* 7CAD0 8008E2C0 00000000 */   nop
    /* 7CAD4 8008E2C4 21288001 */  addu       $a1, $t4, $zero
    /* 7CAD8 8008E2C8 0800AC24 */  addiu      $t4, $a1, 0x8
    /* 7CADC 8008E2CC 01004A25 */  addiu      $t2, $t2, 0x1
  .L8008E2D0:
    /* 7CAE0 8008E2D0 19002F15 */  bne        $t1, $t7, .L8008E338
    /* 7CAE4 8008E2D4 00000000 */   nop
    /* 7CAE8 8008E2D8 0000628C */  lw         $v0, 0x0($v1)
    /* 7CAEC 8008E2DC 00000000 */  nop
    /* 7CAF0 8008E2E0 001B0200 */  sll        $v1, $v0, 12
    /* 7CAF4 8008E2E4 831D0300 */  sra        $v1, $v1, 22
    /* 7CAF8 8008E2E8 80200200 */  sll        $a0, $v0, 2
    /* 7CAFC 8008E2EC 83250400 */  sra        $a0, $a0, 22
    /* 7CB00 8008E2F0 80150200 */  sll        $v0, $v0, 22
    /* 7CB04 8008E2F4 03150200 */  sra        $v0, $v0, 20
    /* 7CB08 8008E2F8 80180300 */  sll        $v1, $v1, 2
    /* 7CB0C 8008E2FC E8FF02A5 */  sh         $v0, -0x18($t0)
    /* 7CB10 8008E300 0A000295 */  lhu        $v0, 0xA($t0)
    /* 7CB14 8008E304 80200400 */  sll        $a0, $a0, 2
    /* 7CB18 8008E308 EAFF03A5 */  sh         $v1, -0x16($t0)
    /* 7CB1C 8008E30C 40004230 */  andi       $v0, $v0, 0x40
    /* 7CB20 8008E310 07004010 */  beqz       $v0, .L8008E330
    /* 7CB24 8008E314 ECFF04A5 */   sh        $a0, -0x14($t0)
    /* 7CB28 8008E318 0000A284 */  lh         $v0, 0x0($a1)
    /* 7CB2C 8008E31C 0200A384 */  lh         $v1, 0x2($a1)
    /* 7CB30 8008E320 0400A484 */  lh         $a0, 0x4($a1)
    /* 7CB34 8008E324 FCFF02AD */  sw         $v0, -0x4($t0)
    /* 7CB38 8008E328 000003AD */  sw         $v1, 0x0($t0)
    /* 7CB3C 8008E32C 0000C4AD */  sw         $a0, 0x0($t6)
  .L8008E330:
    /* 7CB40 8008E330 0000EF8C */  lw         $t7, 0x0($a3)
    /* 7CB44 8008E334 0400E724 */  addiu      $a3, $a3, 0x4
  .L8008E338:
    /* 7CB48 8008E338 80000825 */  addiu      $t0, $t0, 0x80
    /* 7CB4C 8008E33C 8000CE25 */  addiu      $t6, $t6, 0x80
    /* 7CB50 8008E340 FFFF1827 */  addiu      $t8, $t8, -0x1
    /* 7CB54 8008E344 C8FF0017 */  bnez       $t8, .L8008E268
    /* 7CB58 8008E348 01002925 */   addiu     $t1, $t1, 0x1
  .L8008E34C:
    /* 7CB5C 8008E34C 0800E003 */  jr         $ra
    /* 7CB60 8008E350 1000BD27 */   addiu     $sp, $sp, 0x10
endlabel func_8008E1F8
