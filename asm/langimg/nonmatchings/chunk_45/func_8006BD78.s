nonmatching func_8006BD78, 0x64

glabel func_8006BD78
    /* 5A588 8006BD78 F0FFBD27 */  addiu      $sp, $sp, -0x10
    /* 5A58C 8006BD7C 21180000 */  addu       $v1, $zero, $zero
    /* 5A590 8006BD80 401FA22C */  sltiu      $v0, $a1, 0x1F40
    /* 5A594 8006BD84 12004010 */  beqz       $v0, .L8006BDD0
    /* 5A598 8006BD88 21408000 */   addu      $t0, $a0, $zero
    /* 5A59C 8006BD8C FFFF0224 */  addiu      $v0, $zero, -0x1
    /* 5A5A0 8006BD90 0200E214 */  bne        $a3, $v0, .L8006BD9C
    /* 5A5A4 8006BD94 0020A22C */   sltiu     $v0, $a1, 0x2000
    /* 5A5A8 8006BD98 FF3F0724 */  addiu      $a3, $zero, 0x3FFF
  .L8006BD9C:
    /* 5A5AC 8006BD9C 0C004010 */  beqz       $v0, .L8006BDD0
    /* 5A5B0 8006BDA0 2000C22C */   sltiu     $v0, $a2, 0x20
    /* 5A5B4 8006BDA4 0A004010 */  beqz       $v0, .L8006BDD0
    /* 5A5B8 8006BDA8 0040E22C */   sltiu     $v0, $a3, 0x4000
    /* 5A5BC 8006BDAC 08004010 */  beqz       $v0, .L8006BDD0
    /* 5A5C0 8006BDB0 1F00C230 */   andi      $v0, $a2, 0x1F
    /* 5A5C4 8006BDB4 40130200 */  sll        $v0, $v0, 13
    /* 5A5C8 8006BDB8 FF1FA330 */  andi       $v1, $a1, 0x1FFF
    /* 5A5CC 8006BDBC 25186200 */  or         $v1, $v1, $v0
    /* 5A5D0 8006BDC0 80240700 */  sll        $a0, $a3, 18
    /* 5A5D4 8006BDC4 25186400 */  or         $v1, $v1, $a0
    /* 5A5D8 8006BDC8 000003AD */  sw         $v1, 0x0($t0)
    /* 5A5DC 8006BDCC 01000324 */  addiu      $v1, $zero, 0x1
  .L8006BDD0:
    /* 5A5E0 8006BDD0 21106000 */  addu       $v0, $v1, $zero
    /* 5A5E4 8006BDD4 0800E003 */  jr         $ra
    /* 5A5E8 8006BDD8 1000BD27 */   addiu     $sp, $sp, 0x10
endlabel func_8006BD78
