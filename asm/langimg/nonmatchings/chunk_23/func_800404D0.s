nonmatching func_800404D0, 0xA8

glabel func_800404D0
    /* 2ECE0 800404D0 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 2ECE4 800404D4 1000B0AF */  sw         $s0, 0x10($sp)
    /* 2ECE8 800404D8 1400BFAF */  sw         $ra, 0x14($sp)
    /* 2ECEC 800404DC 3113010C */  jal        func_80044CC4
    /* 2ECF0 800404E0 21808000 */   addu      $s0, $a0, $zero
    /* 2ECF4 800404E4 A8000426 */  addiu      $a0, $s0, 0xA8
    /* 2ECF8 800404E8 0C80023C */  lui        $v0, %hi(D_800C53E8)
    /* 2ECFC 800404EC E8534224 */  addiu      $v0, $v0, %lo(D_800C53E8)
    /* 2ED00 800404F0 6A12010C */  jal        func_800449A8
    /* 2ED04 800404F4 680002AE */   sw        $v0, 0x68($s0)
    /* 2ED08 800404F8 21200002 */  addu       $a0, $s0, $zero
    /* 2ED0C 800404FC FFFF0524 */  addiu      $a1, $zero, -0x1
    /* 2ED10 80040500 12000324 */  addiu      $v1, $zero, 0x12
    /* 2ED14 80040504 0C80023C */  lui        $v0, %hi(D_800C54B8)
    /* 2ED18 80040508 B8544224 */  addiu      $v0, $v0, %lo(D_800C54B8)
    /* 2ED1C 8004050C 0C0005AE */  sw         $a1, 0xC($s0)
    /* 2ED20 80040510 180005AE */  sw         $a1, 0x18($s0)
    /* 2ED24 80040514 500105AE */  sw         $a1, 0x150($s0)
    /* 2ED28 80040518 680105AE */  sw         $a1, 0x168($s0)
    /* 2ED2C 8004051C 0C80053C */  lui        $a1, %hi(D_800C4FB8)
    /* 2ED30 80040520 0000068E */  lw         $a2, 0x0($s0)
    /* 2ED34 80040524 B84FA524 */  addiu      $a1, $a1, %lo(D_800C4FB8)
    /* 2ED38 80040528 A00000AE */  sw         $zero, 0xA0($s0)
    /* 2ED3C 8004052C 100003AE */  sw         $v1, 0x10($s0)
    /* 2ED40 80040530 600002AE */  sw         $v0, 0x60($s0)
    /* 2ED44 80040534 400100A2 */  sb         $zero, 0x140($s0)
    /* 2ED48 80040538 5C0100AE */  sw         $zero, 0x15C($s0)
    /* 2ED4C 8004053C 480100AE */  sw         $zero, 0x148($s0)
    /* 2ED50 80040540 410100A2 */  sb         $zero, 0x141($s0)
    /* 2ED54 80040544 3C0100AE */  sw         $zero, 0x13C($s0)
    /* 2ED58 80040548 700100AE */  sw         $zero, 0x170($s0)
    /* 2ED5C 8004054C 600100AE */  sw         $zero, 0x160($s0)
    /* 2ED60 80040550 640100AE */  sw         $zero, 0x164($s0)
    /* 2ED64 80040554 6C0100AE */  sw         $zero, 0x16C($s0)
    /* 2ED68 80040558 8000C634 */  ori        $a2, $a2, 0x80
    /* 2ED6C 8004055C 8BFF000C */  jal        func_8003FE2C
    /* 2ED70 80040560 000006AE */   sw        $a2, 0x0($s0)
    /* 2ED74 80040564 21100002 */  addu       $v0, $s0, $zero
    /* 2ED78 80040568 1400BF8F */  lw         $ra, 0x14($sp)
    /* 2ED7C 8004056C 1000B08F */  lw         $s0, 0x10($sp)
    /* 2ED80 80040570 0800E003 */  jr         $ra
    /* 2ED84 80040574 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_800404D0
