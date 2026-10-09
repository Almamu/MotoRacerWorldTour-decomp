nonmatching func_8003E194, 0x218

glabel func_8003E194
    /* 2C9A4 8003E194 D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* 2C9A8 8003E198 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* 2C9AC 8003E19C 2198C000 */  addu       $s3, $a2, $zero
    /* 2C9B0 8003E1A0 2400BFAF */  sw         $ra, 0x24($sp)
    /* 2C9B4 8003E1A4 2000B4AF */  sw         $s4, 0x20($sp)
    /* 2C9B8 8003E1A8 1800B2AF */  sw         $s2, 0x18($sp)
    /* 2C9BC 8003E1AC 1400B1AF */  sw         $s1, 0x14($sp)
    /* 2C9C0 8003E1B0 1000B0AF */  sw         $s0, 0x10($sp)
    /* 2C9C4 8003E1B4 0400708E */  lw         $s0, 0x4($s3)
    /* 2C9C8 8003E1B8 00000000 */  nop
    /* 2C9CC 8003E1BC 900A038E */  lw         $v1, 0xA90($s0)
    /* 2C9D0 8003E1C0 01000224 */  addiu      $v0, $zero, 0x1
    /* 2C9D4 8003E1C4 03006210 */  beq        $v1, $v0, .L8003E1D4
    /* 2C9D8 8003E1C8 04000224 */   addiu     $v0, $zero, 0x4
    /* 2C9DC 8003E1CC 04006214 */  bne        $v1, $v0, .L8003E1E0
    /* 2C9E0 8003E1D0 00000000 */   nop
  .L8003E1D4:
    /* 2C9E4 8003E1D4 840A148E */  lw         $s4, 0xA84($s0)
    /* 2C9E8 8003E1D8 79F80008 */  j          .L8003E1E4
    /* 2C9EC 8003E1DC 00000000 */   nop
  .L8003E1E0:
    /* 2C9F0 8003E1E0 800A148E */  lw         $s4, 0xA80($s0)
  .L8003E1E4:
    /* 2C9F4 8003E1E4 940A058E */  lw         $a1, 0xA94($s0)
    /* 2C9F8 8003E1E8 0000918C */  lw         $s1, 0x0($a0)
    /* 2C9FC 8003E1EC 8000A230 */  andi       $v0, $a1, 0x80
    /* 2CA00 8003E1F0 07004010 */  beqz       $v0, .L8003E210
    /* 2CA04 8003E1F4 21906000 */   addu      $s2, $v1, $zero
    /* 2CA08 8003E1F8 64002016 */  bnez       $s1, .L8003E38C
    /* 2CA0C 8003E1FC 7FFF0224 */   addiu     $v0, $zero, -0x81
    /* 2CA10 8003E200 900A038E */  lw         $v1, 0xA90($s0)
    /* 2CA14 8003E204 2410A200 */  and        $v0, $a1, $v0
    /* 2CA18 8003E208 940A02AE */  sw         $v0, 0xA94($s0)
    /* 2CA1C 8003E20C 21906000 */  addu       $s2, $v1, $zero
  .L8003E210:
    /* 2CA20 8003E210 05000224 */  addiu      $v0, $zero, 0x5
    /* 2CA24 8003E214 42004216 */  bne        $s2, $v0, .L8003E320
    /* 2CA28 8003E218 08000224 */   addiu     $v0, $zero, 0x8
    /* 2CA2C 8003E21C 21208002 */  addu       $a0, $s4, $zero
    /* 2CA30 8003E220 0000668E */  lw         $a2, 0x0($s3)
    /* 2CA34 8003E224 0EEC000C */  jal        func_8003B038
    /* 2CA38 8003E228 01000524 */   addiu     $a1, $zero, 0x1
    /* 2CA3C 8003E22C 21204000 */  addu       $a0, $v0, $zero
    /* 2CA40 8003E230 3B008010 */  beqz       $a0, .L8003E320
    /* 2CA44 8003E234 08000224 */   addiu     $v0, $zero, 0x8
    /* 2CA48 8003E238 2000828C */  lw         $v0, 0x20($a0)
    /* 2CA4C 8003E23C 0000638E */  lw         $v1, 0x0($s3)
    /* 2CA50 8003E240 00110200 */  sll        $v0, $v0, 4
    /* 2CA54 8003E244 03140200 */  sra        $v0, $v0, 16
    /* 2CA58 8003E248 24104300 */  and        $v0, $v0, $v1
    /* 2CA5C 8003E24C 4F004010 */  beqz       $v0, .L8003E38C
    /* 2CA60 8003E250 FE000224 */   addiu     $v0, $zero, 0xFE
    /* 2CA64 8003E254 10002212 */  beq        $s1, $v0, .L8003E298
    /* 2CA68 8003E258 21280000 */   addu      $a1, $zero, $zero
    /* 2CA6C 8003E25C FF00222A */  slti       $v0, $s1, 0xFF
    /* 2CA70 8003E260 05004010 */  beqz       $v0, .L8003E278
    /* 2CA74 8003E264 00000000 */   nop
    /* 2CA78 8003E268 25002012 */  beqz       $s1, .L8003E300
    /* 2CA7C 8003E26C 00000000 */   nop
    /* 2CA80 8003E270 C1F80008 */  j          .L8003E304
    /* 2CA84 8003E274 00000000 */   nop
  .L8003E278:
    /* 2CA88 8003E278 FF000224 */  addiu      $v0, $zero, 0xFF
    /* 2CA8C 8003E27C 21002216 */  bne        $s1, $v0, .L8003E304
    /* 2CA90 8003E280 00000000 */   nop
    /* 2CA94 8003E284 0D80023C */  lui        $v0, %hi(D_800D6128)
    /* 2CA98 8003E288 2861428C */  lw         $v0, %lo(D_800D6128)($v0)
    /* 2CA9C 8003E28C 01000524 */  addiu      $a1, $zero, 0x1
    /* 2CAA0 8003E290 C1F80008 */  j          .L8003E304
    /* 2CAA4 8003E294 100002AE */   sw        $v0, 0x10($s0)
  .L8003E298:
    /* 2CAA8 8003E298 1000038E */  lw         $v1, 0x10($s0)
    /* 2CAAC 8003E29C 00000000 */  nop
    /* 2CAB0 8003E2A0 03006010 */  beqz       $v1, .L8003E2B0
    /* 2CAB4 8003E2A4 21036228 */   slti      $v0, $v1, 0x321
    /* 2CAB8 8003E2A8 0F004014 */  bnez       $v0, .L8003E2E8
    /* 2CABC 8003E2AC 00000000 */   nop
  .L8003E2B0:
    /* 2CAC0 8003E2B0 1400038E */  lw         $v1, 0x14($s0)
    /* 2CAC4 8003E2B4 00000000 */  nop
    /* 2CAC8 8003E2B8 65006228 */  slti       $v0, $v1, 0x65
    /* 2CACC 8003E2BC 04004014 */  bnez       $v0, .L8003E2D0
    /* 2CAD0 8003E2C0 00000000 */   nop
    /* 2CAD4 8003E2C4 140000AE */  sw         $zero, 0x14($s0)
    /* 2CAD8 8003E2C8 01000524 */  addiu      $a1, $zero, 0x1
    /* 2CADC 8003E2CC 21180000 */  addu       $v1, $zero, $zero
  .L8003E2D0:
    /* 2CAE0 8003E2D0 0D80023C */  lui        $v0, %hi(D_800D6128)
    /* 2CAE4 8003E2D4 2861428C */  lw         $v0, %lo(D_800D6128)($v0)
    /* 2CAE8 8003E2D8 100000AE */  sw         $zero, 0x10($s0)
    /* 2CAEC 8003E2DC 21106200 */  addu       $v0, $v1, $v0
    /* 2CAF0 8003E2E0 C1F80008 */  j          .L8003E304
    /* 2CAF4 8003E2E4 140002AE */   sw        $v0, 0x14($s0)
  .L8003E2E8:
    /* 2CAF8 8003E2E8 0D80023C */  lui        $v0, %hi(D_800D6128)
    /* 2CAFC 8003E2EC 2861428C */  lw         $v0, %lo(D_800D6128)($v0)
    /* 2CB00 8003E2F0 00000000 */  nop
    /* 2CB04 8003E2F4 21106200 */  addu       $v0, $v1, $v0
    /* 2CB08 8003E2F8 C1F80008 */  j          .L8003E304
    /* 2CB0C 8003E2FC 100002AE */   sw        $v0, 0x10($s0)
  .L8003E300:
    /* 2CB10 8003E300 100000AE */  sw         $zero, 0x10($s0)
  .L8003E304:
    /* 2CB14 8003E304 0600A010 */  beqz       $a1, .L8003E320
    /* 2CB18 8003E308 08000224 */   addiu     $v0, $zero, 0x8
    /* 2CB1C 8003E30C D1E3000C */  jal        func_80038F44
    /* 2CB20 8003E310 21280002 */   addu      $a1, $s0, $zero
    /* 2CB24 8003E314 6CF9000C */  jal        func_8003E5B0
    /* 2CB28 8003E318 21200002 */   addu      $a0, $s0, $zero
    /* 2CB2C 8003E31C 08000224 */  addiu      $v0, $zero, 0x8
  .L8003E320:
    /* 2CB30 8003E320 1A004212 */  beq        $s2, $v0, .L8003E38C
    /* 2CB34 8003E324 00000000 */   nop
    /* 2CB38 8003E328 18004016 */  bnez       $s2, .L8003E38C
    /* 2CB3C 8003E32C 00000000 */   nop
    /* 2CB40 8003E330 21208002 */  addu       $a0, $s4, $zero
    /* 2CB44 8003E334 0000668E */  lw         $a2, 0x0($s3)
    /* 2CB48 8003E338 0EEC000C */  jal        func_8003B038
    /* 2CB4C 8003E33C 01000524 */   addiu     $a1, $zero, 0x1
    /* 2CB50 8003E340 21204000 */  addu       $a0, $v0, $zero
    /* 2CB54 8003E344 0F008010 */  beqz       $a0, .L8003E384
    /* 2CB58 8003E348 00000000 */   nop
    /* 2CB5C 8003E34C 2000858C */  lw         $a1, 0x20($a0)
    /* 2CB60 8003E350 0000638E */  lw         $v1, 0x0($s3)
    /* 2CB64 8003E354 00110500 */  sll        $v0, $a1, 4
    /* 2CB68 8003E358 03140200 */  sra        $v0, $v0, 16
    /* 2CB6C 8003E35C 24104300 */  and        $v0, $v0, $v1
    /* 2CB70 8003E360 0A004010 */  beqz       $v0, .L8003E38C
    /* 2CB74 8003E364 FF03A230 */   andi      $v0, $a1, 0x3FF
    /* 2CB78 8003E368 02004014 */  bnez       $v0, .L8003E374
    /* 2CB7C 8003E36C 00000000 */   nop
    /* 2CB80 8003E370 FF000224 */  addiu      $v0, $zero, 0xFF
  .L8003E374:
    /* 2CB84 8003E374 03002216 */  bne        $s1, $v0, .L8003E384
    /* 2CB88 8003E378 00000000 */   nop
    /* 2CB8C 8003E37C 1FE4000C */  jal        func_8003907C
    /* 2CB90 8003E380 21280002 */   addu      $a1, $s0, $zero
  .L8003E384:
    /* 2CB94 8003E384 6CF9000C */  jal        func_8003E5B0
    /* 2CB98 8003E388 21200002 */   addu      $a0, $s0, $zero
  .L8003E38C:
    /* 2CB9C 8003E38C 2400BF8F */  lw         $ra, 0x24($sp)
    /* 2CBA0 8003E390 2000B48F */  lw         $s4, 0x20($sp)
    /* 2CBA4 8003E394 1C00B38F */  lw         $s3, 0x1C($sp)
    /* 2CBA8 8003E398 1800B28F */  lw         $s2, 0x18($sp)
    /* 2CBAC 8003E39C 1400B18F */  lw         $s1, 0x14($sp)
    /* 2CBB0 8003E3A0 1000B08F */  lw         $s0, 0x10($sp)
    /* 2CBB4 8003E3A4 0800E003 */  jr         $ra
    /* 2CBB8 8003E3A8 2800BD27 */   addiu     $sp, $sp, 0x28
endlabel func_8003E194
