nonmatching func_8008E354, 0x118

glabel func_8008E354
    /* 7CB64 8008E354 F8FFBD27 */  addiu      $sp, $sp, -0x8
    /* 7CB68 8008E358 21188000 */  addu       $v1, $a0, $zero
    /* 7CB6C 8008E35C 4100C010 */  beqz       $a2, .L8008E464
    /* 7CB70 8008E360 2110A000 */   addu      $v0, $a1, $zero
    /* 7CB74 8008E364 F0FF063C */  lui        $a2, (0xFFF003FF >> 16)
    /* 7CB78 8008E368 FF03C634 */  ori        $a2, $a2, (0xFFF003FF & 0xFFFF)
    /* 7CB7C 8008E36C 0FC0053C */  lui        $a1, (0xC00FFFFF >> 16)
    /* 7CB80 8008E370 FFFFA534 */  ori        $a1, $a1, (0xC00FFFFF & 0xFFFF)
    /* 7CB84 8008E374 21580000 */  addu       $t3, $zero, $zero
    /* 7CB88 8008E378 0000EC8C */  lw         $t4, 0x0($a3)
    /* 7CB8C 8008E37C 0400E724 */  addiu      $a3, $a3, 0x4
    /* 7CB90 8008E380 0800648C */  lw         $a0, 0x8($v1)
    /* 7CB94 8008E384 00006E80 */  lb         $t6, 0x0($v1)
    /* 7CB98 8008E388 00FC0324 */  addiu      $v1, $zero, -0x400
    /* 7CB9C 8008E38C 04004A8C */  lw         $t2, 0x4($v0)
    /* 7CBA0 8008E390 0800498C */  lw         $t1, 0x8($v0)
    /* 7CBA4 8008E394 03004F80 */  lb         $t7, 0x3($v0)
    /* 7CBA8 8008E398 0000A28F */  lw         $v0, 0x0($sp)
    /* 7CBAC 8008E39C 50008D24 */  addiu      $t5, $a0, 0x50
    /* 7CBB0 8008E3A0 4C008824 */  addiu      $t0, $a0, 0x4C
    /* 7CBB4 8008E3A4 24104300 */  and        $v0, $v0, $v1
    /* 7CBB8 8008E3A8 24104600 */  and        $v0, $v0, $a2
    /* 7CBBC 8008E3AC 24104500 */  and        $v0, $v0, $a1
    /* 7CBC0 8008E3B0 0000A2AF */  sw         $v0, 0x0($sp)
  .L8008E3B4:
    /* 7CBC4 8008E3B4 0300E011 */  beqz       $t7, .L8008E3C4
    /* 7CBC8 8008E3B8 21104001 */   addu      $v0, $t2, $zero
    /* 7CBCC 8008E3BC FA380208 */  j          .L8008E3E8
    /* 7CBD0 8008E3C0 04004A24 */   addiu     $t2, $v0, 0x4
  .L8008E3C4:
    /* 7CBD4 8008E3C4 08002011 */  beqz       $t1, .L8008E3E8
    /* 7CBD8 8008E3C8 2110A003 */   addu      $v0, $sp, $zero
    /* 7CBDC 8008E3CC 00002281 */  lb         $v0, 0x0($t1)
    /* 7CBE0 8008E3D0 00000000 */  nop
    /* 7CBE4 8008E3D4 04004B14 */  bne        $v0, $t3, .L8008E3E8
    /* 7CBE8 8008E3D8 2110A003 */   addu      $v0, $sp, $zero
    /* 7CBEC 8008E3DC 21104001 */  addu       $v0, $t2, $zero
    /* 7CBF0 8008E3E0 04004A24 */  addiu      $t2, $v0, 0x4
    /* 7CBF4 8008E3E4 01002925 */  addiu      $t1, $t1, 0x1
  .L8008E3E8:
    /* 7CBF8 8008E3E8 19006C15 */  bne        $t3, $t4, .L8008E450
    /* 7CBFC 8008E3EC 00000000 */   nop
    /* 7CC00 8008E3F0 0000428C */  lw         $v0, 0x0($v0)
    /* 7CC04 8008E3F4 00000000 */  nop
    /* 7CC08 8008E3F8 001B0200 */  sll        $v1, $v0, 12
    /* 7CC0C 8008E3FC 831D0300 */  sra        $v1, $v1, 22
    /* 7CC10 8008E400 80200200 */  sll        $a0, $v0, 2
    /* 7CC14 8008E404 83250400 */  sra        $a0, $a0, 22
    /* 7CC18 8008E408 80150200 */  sll        $v0, $v0, 22
    /* 7CC1C 8008E40C 03150200 */  sra        $v0, $v0, 20
    /* 7CC20 8008E410 80180300 */  sll        $v1, $v1, 2
    /* 7CC24 8008E414 C8FF02A5 */  sh         $v0, -0x38($t0)
    /* 7CC28 8008E418 EAFF0295 */  lhu        $v0, -0x16($t0)
    /* 7CC2C 8008E41C 80200400 */  sll        $a0, $a0, 2
    /* 7CC30 8008E420 CAFF03A5 */  sh         $v1, -0x36($t0)
    /* 7CC34 8008E424 40004230 */  andi       $v0, $v0, 0x40
    /* 7CC38 8008E428 07004010 */  beqz       $v0, .L8008E448
    /* 7CC3C 8008E42C CCFF04A5 */   sh        $a0, -0x34($t0)
    /* 7CC40 8008E430 F4FF00A5 */  sh         $zero, -0xC($t0)
    /* 7CC44 8008E434 F6FF00A5 */  sh         $zero, -0xA($t0)
    /* 7CC48 8008E438 F8FF00A5 */  sh         $zero, -0x8($t0)
    /* 7CC4C 8008E43C FCFF00AD */  sw         $zero, -0x4($t0)
    /* 7CC50 8008E440 000000AD */  sw         $zero, 0x0($t0)
    /* 7CC54 8008E444 0000A0AD */  sw         $zero, 0x0($t5)
  .L8008E448:
    /* 7CC58 8008E448 0000EC8C */  lw         $t4, 0x0($a3)
    /* 7CC5C 8008E44C 0400E724 */  addiu      $a3, $a3, 0x4
  .L8008E450:
    /* 7CC60 8008E450 80000825 */  addiu      $t0, $t0, 0x80
    /* 7CC64 8008E454 8000AD25 */  addiu      $t5, $t5, 0x80
    /* 7CC68 8008E458 FFFFCE25 */  addiu      $t6, $t6, -0x1
    /* 7CC6C 8008E45C D5FFC015 */  bnez       $t6, .L8008E3B4
    /* 7CC70 8008E460 01006B25 */   addiu     $t3, $t3, 0x1
  .L8008E464:
    /* 7CC74 8008E464 0800E003 */  jr         $ra
    /* 7CC78 8008E468 0800BD27 */   addiu     $sp, $sp, 0x8
endlabel func_8008E354
