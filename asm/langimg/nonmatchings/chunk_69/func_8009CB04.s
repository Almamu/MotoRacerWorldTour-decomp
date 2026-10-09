nonmatching func_8009CB04, 0x114

glabel func_8009CB04
    /* 8B314 8009CB04 D0FFBD27 */  addiu      $sp, $sp, -0x30
    /* 8B318 8009CB08 21108000 */  addu       $v0, $a0, $zero
    /* 8B31C 8009CB0C 2C00BFAF */  sw         $ra, 0x2C($sp)
    /* 8B320 8009CB10 2800B2AF */  sw         $s2, 0x28($sp)
    /* 8B324 8009CB14 2400B1AF */  sw         $s1, 0x24($sp)
    /* 8B328 8009CB18 2000B0AF */  sw         $s0, 0x20($sp)
    /* 8B32C 8009CB1C 9C0A438C */  lw         $v1, 0xA9C($v0)
    /* 8B330 8009CB20 800A458C */  lw         $a1, 0xA80($v0)
    /* 8B334 8009CB24 980A508C */  lw         $s0, 0xA98($v0)
    /* 8B338 8009CB28 6000B18C */  lw         $s1, 0x60($a1)
    /* 8B33C 8009CB2C ECED000C */  jal        func_8003B7B0
    /* 8B340 8009CB30 08007224 */   addiu     $s2, $v1, 0x8
    /* 8B344 8009CB34 5001038E */  lw         $v1, 0x150($s0)
    /* 8B348 8009CB38 05000224 */  addiu      $v0, $zero, 0x5
    /* 8B34C 8009CB3C 03006210 */  beq        $v1, $v0, .L8009CB4C
    /* 8B350 8009CB40 00000000 */   nop
    /* 8B354 8009CB44 6C2B010C */  jal        func_8004ADB0
    /* 8B358 8009CB48 00000000 */   nop
  .L8009CB4C:
    /* 8B35C 8009CB4C EF2B010C */  jal        func_8004AFBC
    /* 8B360 8009CB50 00000000 */   nop
    /* 8B364 8009CB54 2A002012 */  beqz       $s1, .L8009CC00
    /* 8B368 8009CB58 0D80023C */   lui       $v0, %hi(D_800C933C)
    /* 8B36C 8009CB5C 0D80043C */  lui        $a0, %hi(D_800D5F38)
    /* 8B370 8009CB60 385F848C */  lw         $a0, %lo(D_800D5F38)($a0)
    /* 8B374 8009CB64 FFFF0324 */  addiu      $v1, $zero, -0x1
    /* 8B378 8009CB68 3C934924 */  addiu      $t1, $v0, %lo(D_800C933C)
    /* 8B37C 8009CB6C 0000268D */  lw         $a2, 0x0($t1)
    /* 8B380 8009CB70 0400278D */  lw         $a3, 0x4($t1)
    /* 8B384 8009CB74 0800288D */  lw         $t0, 0x8($t1)
    /* 8B388 8009CB78 1000A6AF */  sw         $a2, 0x10($sp)
    /* 8B38C 8009CB7C 1400A7AF */  sw         $a3, 0x14($sp)
    /* 8B390 8009CB80 1800A8AF */  sw         $t0, 0x18($sp)
    /* 8B394 8009CB84 400124AE */  sw         $a0, 0x140($s1)
    /* 8B398 8009CB88 000044AE */  sw         $a0, 0x0($s2)
    /* 8B39C 8009CB8C 3C0123AE */  sw         $v1, 0x13C($s1)
    /* 8B3A0 8009CB90 0D80043C */  lui        $a0, %hi(D_800D5F38)
    /* 8B3A4 8009CB94 385F848C */  lw         $a0, %lo(D_800D5F38)($a0)
    /* 8B3A8 8009CB98 0C80033C */  lui        $v1, %hi(D_800C6710)
    /* 8B3AC 8009CB9C 1067638C */  lw         $v1, %lo(D_800C6710)($v1)
    /* 8B3B0 8009CBA0 C0100400 */  sll        $v0, $a0, 3
    /* 8B3B4 8009CBA4 23104400 */  subu       $v0, $v0, $a0
    /* 8B3B8 8009CBA8 0400658C */  lw         $a1, 0x4($v1)
    /* 8B3BC 8009CBAC 80100200 */  sll        $v0, $v0, 2
    /* 8B3C0 8009CBB0 21104500 */  addu       $v0, $v0, $a1
    /* 8B3C4 8009CBB4 1800438C */  lw         $v1, 0x18($v0)
    /* 8B3C8 8009CBB8 00000000 */  nop
    /* 8B3CC 8009CBBC FFFF6324 */  addiu      $v1, $v1, -0x1
    /* 8B3D0 8009CBC0 80180300 */  sll        $v1, $v1, 2
    /* 8B3D4 8009CBC4 2110A303 */  addu       $v0, $sp, $v1
    /* 8B3D8 8009CBC8 1000448C */  lw         $a0, 0x10($v0)
    /* 8B3DC 8009CBCC 00000000 */  nop
    /* 8B3E0 8009CBD0 0C0044AE */  sw         $a0, 0xC($s2)
    /* 8B3E4 8009CBD4 0D80053C */  lui        $a1, %hi(D_800D5F38)
    /* 8B3E8 8009CBD8 385FA58C */  lw         $a1, %lo(D_800D5F38)($a1)
    /* 8B3EC 8009CBDC 00000000 */  nop
    /* 8B3F0 8009CBE0 400125AE */  sw         $a1, 0x140($s1)
    /* 8B3F4 8009CBE4 0C00428E */  lw         $v0, 0xC($s2)
    /* 8B3F8 8009CBE8 000045AE */  sw         $a1, 0x0($s2)
    /* 8B3FC 8009CBEC 0D80033C */  lui        $v1, %hi(D_800D5F34)
    /* 8B400 8009CBF0 345F638C */  lw         $v1, %lo(D_800D5F34)($v1)
    /* 8B404 8009CBF4 40100200 */  sll        $v0, $v0, 1
    /* 8B408 8009CBF8 21186200 */  addu       $v1, $v1, $v0
    /* 8B40C 8009CBFC 100043AE */  sw         $v1, 0x10($s2)
  .L8009CC00:
    /* 8B410 8009CC00 2C00BF8F */  lw         $ra, 0x2C($sp)
    /* 8B414 8009CC04 2800B28F */  lw         $s2, 0x28($sp)
    /* 8B418 8009CC08 2400B18F */  lw         $s1, 0x24($sp)
    /* 8B41C 8009CC0C 2000B08F */  lw         $s0, 0x20($sp)
    /* 8B420 8009CC10 0800E003 */  jr         $ra
    /* 8B424 8009CC14 3000BD27 */   addiu     $sp, $sp, 0x30
endlabel func_8009CB04
