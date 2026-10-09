nonmatching func_8005C304, 0xF8

glabel func_8005C304
    /* 4AB14 8005C304 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 4AB18 8005C308 1400B1AF */  sw         $s1, 0x14($sp)
    /* 4AB1C 8005C30C 21888000 */  addu       $s1, $a0, $zero
    /* 4AB20 8005C310 0300A22C */  sltiu      $v0, $a1, 0x3
    /* 4AB24 8005C314 1800BFAF */  sw         $ra, 0x18($sp)
    /* 4AB28 8005C318 33004010 */  beqz       $v0, .L8005C3E8
    /* 4AB2C 8005C31C 1000B0AF */   sw        $s0, 0x10($sp)
    /* 4AB30 8005C320 40800500 */  sll        $s0, $a1, 1
    /* 4AB34 8005C324 21800502 */  addu       $s0, $s0, $a1
    /* 4AB38 8005C328 C0801000 */  sll        $s0, $s0, 3
    /* 4AB3C 8005C32C 23800502 */  subu       $s0, $s0, $a1
    /* 4AB40 8005C330 80801000 */  sll        $s0, $s0, 2
    /* 4AB44 8005C334 BC032526 */  addiu      $a1, $s1, 0x3BC
    /* 4AB48 8005C338 B803248E */  lw         $a0, 0x3B8($s1)
    /* 4AB4C 8005C33C F4010624 */  addiu      $a2, $zero, 0x1F4
    /* 4AB50 8005C340 F318020C */  jal        func_800863CC
    /* 4AB54 8005C344 21209000 */   addu      $a0, $a0, $s0
    /* 4AB58 8005C348 B803228E */  lw         $v0, 0x3B8($s1)
    /* 4AB5C 8005C34C 00000000 */  nop
    /* 4AB60 8005C350 21100202 */  addu       $v0, $s0, $v0
    /* 4AB64 8005C354 14004494 */  lhu        $a0, 0x14($v0)
    /* 4AB68 8005C358 00000000 */  nop
    /* 4AB6C 8005C35C 1C0044A4 */  sh         $a0, 0x1C($v0)
    /* 4AB70 8005C360 B803238E */  lw         $v1, 0x3B8($s1)
    /* 4AB74 8005C364 00000000 */  nop
    /* 4AB78 8005C368 21180302 */  addu       $v1, $s0, $v1
    /* 4AB7C 8005C36C 16006494 */  lhu        $a0, 0x16($v1)
    /* 4AB80 8005C370 00000000 */  nop
    /* 4AB84 8005C374 1E0064A4 */  sh         $a0, 0x1E($v1)
    /* 4AB88 8005C378 B803228E */  lw         $v0, 0x3B8($s1)
    /* 4AB8C 8005C37C CC032596 */  lhu        $a1, 0x3CC($s1)
    /* 4AB90 8005C380 21100202 */  addu       $v0, $s0, $v0
    /* 4AB94 8005C384 240045A4 */  sh         $a1, 0x24($v0)
    /* 4AB98 8005C388 B803238E */  lw         $v1, 0x3B8($s1)
    /* 4AB9C 8005C38C CE032496 */  lhu        $a0, 0x3CE($s1)
    /* 4ABA0 8005C390 21180302 */  addu       $v1, $s0, $v1
    /* 4ABA4 8005C394 260064A4 */  sh         $a0, 0x26($v1)
    /* 4ABA8 8005C398 B803228E */  lw         $v0, 0x3B8($s1)
    /* 4ABAC 8005C39C 00000000 */  nop
    /* 4ABB0 8005C3A0 21100202 */  addu       $v0, $s0, $v0
    /* 4ABB4 8005C3A4 18004494 */  lhu        $a0, 0x18($v0)
    /* 4ABB8 8005C3A8 00000000 */  nop
    /* 4ABBC 8005C3AC 200044A4 */  sh         $a0, 0x20($v0)
    /* 4ABC0 8005C3B0 B803238E */  lw         $v1, 0x3B8($s1)
    /* 4ABC4 8005C3B4 00000000 */  nop
    /* 4ABC8 8005C3B8 21180302 */  addu       $v1, $s0, $v1
    /* 4ABCC 8005C3BC 1A006494 */  lhu        $a0, 0x1A($v1)
    /* 4ABD0 8005C3C0 00000000 */  nop
    /* 4ABD4 8005C3C4 220064A4 */  sh         $a0, 0x22($v1)
    /* 4ABD8 8005C3C8 B803228E */  lw         $v0, 0x3B8($s1)
    /* 4ABDC 8005C3CC D0032596 */  lhu        $a1, 0x3D0($s1)
    /* 4ABE0 8005C3D0 21100202 */  addu       $v0, $s0, $v0
    /* 4ABE4 8005C3D4 280045A4 */  sh         $a1, 0x28($v0)
    /* 4ABE8 8005C3D8 B803238E */  lw         $v1, 0x3B8($s1)
    /* 4ABEC 8005C3DC D2032496 */  lhu        $a0, 0x3D2($s1)
    /* 4ABF0 8005C3E0 21800302 */  addu       $s0, $s0, $v1
    /* 4ABF4 8005C3E4 2A0004A6 */  sh         $a0, 0x2A($s0)
  .L8005C3E8:
    /* 4ABF8 8005C3E8 1800BF8F */  lw         $ra, 0x18($sp)
    /* 4ABFC 8005C3EC 1400B18F */  lw         $s1, 0x14($sp)
    /* 4AC00 8005C3F0 1000B08F */  lw         $s0, 0x10($sp)
    /* 4AC04 8005C3F4 0800E003 */  jr         $ra
    /* 4AC08 8005C3F8 2000BD27 */   addiu     $sp, $sp, 0x20
endlabel func_8005C304
