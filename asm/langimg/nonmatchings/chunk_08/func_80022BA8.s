nonmatching func_80022BA8, 0x124

glabel func_80022BA8
    /* 113B8 80022BA8 D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* 113BC 80022BAC 2000B0AF */  sw         $s0, 0x20($sp)
    /* 113C0 80022BB0 21808000 */  addu       $s0, $a0, $zero
    /* 113C4 80022BB4 A0000426 */  addiu      $a0, $s0, 0xA0
    /* 113C8 80022BB8 1000A227 */  addiu      $v0, $sp, 0x10
    /* 113CC 80022BBC 2400BFAF */  sw         $ra, 0x24($sp)
    /* 113D0 80022BC0 1000A0AF */  sw         $zero, 0x10($sp)
    /* 113D4 80022BC4 040040AC */  sw         $zero, 0x4($v0)
    /* 113D8 80022BC8 080040AC */  sw         $zero, 0x8($v0)
    /* 113DC 80022BCC 1000A38F */  lw         $v1, 0x10($sp)
    /* 113E0 80022BD0 21280000 */  addu       $a1, $zero, $zero
    /* 113E4 80022BD4 0C0000AE */  sw         $zero, 0xC($s0)
    /* 113E8 80022BD8 100000AE */  sw         $zero, 0x10($s0)
    /* 113EC 80022BDC 140000AE */  sw         $zero, 0x14($s0)
    /* 113F0 80022BE0 1000A0AF */  sw         $zero, 0x10($sp)
    /* 113F4 80022BE4 040040AC */  sw         $zero, 0x4($v0)
    /* 113F8 80022BE8 080040AC */  sw         $zero, 0x8($v0)
    /* 113FC 80022BEC 18000226 */  addiu      $v0, $s0, 0x18
    /* 11400 80022BF0 180003AE */  sw         $v1, 0x18($s0)
    /* 11404 80022BF4 1000A68F */  lw         $a2, 0x10($sp)
    /* 11408 80022BF8 24000326 */  addiu      $v1, $s0, 0x24
    /* 1140C 80022BFC 040040AC */  sw         $zero, 0x4($v0)
    /* 11410 80022C00 080040AC */  sw         $zero, 0x8($v0)
    /* 11414 80022C04 34000226 */  addiu      $v0, $s0, 0x34
    /* 11418 80022C08 240006AE */  sw         $a2, 0x24($s0)
    /* 1141C 80022C0C 040060AC */  sw         $zero, 0x4($v1)
    /* 11420 80022C10 080060AC */  sw         $zero, 0x8($v1)
    /* 11424 80022C14 40000326 */  addiu      $v1, $s0, 0x40
    /* 11428 80022C18 340000AE */  sw         $zero, 0x34($s0)
    /* 1142C 80022C1C 040040AC */  sw         $zero, 0x4($v0)
    /* 11430 80022C20 080040AC */  sw         $zero, 0x8($v0)
    /* 11434 80022C24 02000224 */  addiu      $v0, $zero, 0x2
    /* 11438 80022C28 400000AE */  sw         $zero, 0x40($s0)
    /* 1143C 80022C2C 040060AC */  sw         $zero, 0x4($v1)
    /* 11440 80022C30 080060AC */  sw         $zero, 0x8($v1)
    /* 11444 80022C34 4C0000AE */  sw         $zero, 0x4C($s0)
    /* 11448 80022C38 500000AE */  sw         $zero, 0x50($s0)
    /* 1144C 80022C3C 540000AE */  sw         $zero, 0x54($s0)
    /* 11450 80022C40 580000AE */  sw         $zero, 0x58($s0)
    /* 11454 80022C44 5C0000AE */  sw         $zero, 0x5C($s0)
    /* 11458 80022C48 600000AE */  sw         $zero, 0x60($s0)
    /* 1145C 80022C4C E7AE010C */  jal        func_8006BB9C
    /* 11460 80022C50 640002AE */   sw        $v0, 0x64($s0)
    /* 11464 80022C54 BC000426 */  addiu      $a0, $s0, 0xBC
    /* 11468 80022C58 E7AE010C */  jal        func_8006BB9C
    /* 1146C 80022C5C 21280000 */   addu      $a1, $zero, $zero
    /* 11470 80022C60 D8000426 */  addiu      $a0, $s0, 0xD8
    /* 11474 80022C64 E7AE010C */  jal        func_8006BB9C
    /* 11478 80022C68 21280000 */   addu      $a1, $zero, $zero
    /* 1147C 80022C6C 84000426 */  addiu      $a0, $s0, 0x84
    /* 11480 80022C70 E7AE010C */  jal        func_8006BB9C
    /* 11484 80022C74 21280000 */   addu      $a1, $zero, $zero
    /* 11488 80022C78 68000426 */  addiu      $a0, $s0, 0x68
    /* 1148C 80022C7C E7AE010C */  jal        func_8006BB9C
    /* 11490 80022C80 21280000 */   addu      $a1, $zero, $zero
    /* 11494 80022C84 2400BF8F */  lw         $ra, 0x24($sp)
    /* 11498 80022C88 FB000224 */  addiu      $v0, $zero, 0xFB
    /* 1149C 80022C8C F40000AE */  sw         $zero, 0xF4($s0)
    /* 114A0 80022C90 F80000AE */  sw         $zero, 0xF8($s0)
    /* 114A4 80022C94 FC0000AE */  sw         $zero, 0xFC($s0)
    /* 114A8 80022C98 000100AE */  sw         $zero, 0x100($s0)
    /* 114AC 80022C9C 040100AE */  sw         $zero, 0x104($s0)
    /* 114B0 80022CA0 080100AE */  sw         $zero, 0x108($s0)
    /* 114B4 80022CA4 300002AE */  sw         $v0, 0x30($s0)
    /* 114B8 80022CA8 0E0100A6 */  sh         $zero, 0x10E($s0)
    /* 114BC 80022CAC 420100A2 */  sb         $zero, 0x142($s0)
    /* 114C0 80022CB0 0C0100A2 */  sb         $zero, 0x10C($s0)
    /* 114C4 80022CB4 0D0100A2 */  sb         $zero, 0x10D($s0)
    /* 114C8 80022CB8 100100AE */  sw         $zero, 0x110($s0)
    /* 114CC 80022CBC 2000B08F */  lw         $s0, 0x20($sp)
    /* 114D0 80022CC0 01000224 */  addiu      $v0, $zero, 0x1
    /* 114D4 80022CC4 0800E003 */  jr         $ra
    /* 114D8 80022CC8 2800BD27 */   addiu     $sp, $sp, 0x28
endlabel func_80022BA8
