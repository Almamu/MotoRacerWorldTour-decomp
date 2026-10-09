nonmatching func_80014A98, 0x80

glabel func_80014A98
    /* 32A8 80014A98 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 32AC 80014A9C 1400B1AF */  sw         $s1, 0x14($sp)
    /* 32B0 80014AA0 2188C000 */  addu       $s1, $a2, $zero
    /* 32B4 80014AA4 1000B0AF */  sw         $s0, 0x10($sp)
    /* 32B8 80014AA8 FFFF1024 */  addiu      $s0, $zero, -0x1
    /* 32BC 80014AAC 1800B2AF */  sw         $s2, 0x18($sp)
    /* 32C0 80014AB0 21908000 */  addu       $s2, $a0, $zero
    /* 32C4 80014AB4 1100B010 */  beq        $a1, $s0, .L80014AFC
    /* 32C8 80014AB8 1C00BFAF */   sw        $ra, 0x1C($sp)
    /* 32CC 80014ABC 40100500 */  sll        $v0, $a1, 1
    /* 32D0 80014AC0 21104202 */  addu       $v0, $s2, $v0
    /* 32D4 80014AC4 06004384 */  lh         $v1, 0x6($v0)
    /* 32D8 80014AC8 00000000 */  nop
    /* 32DC 80014ACC 0C007010 */  beq        $v1, $s0, .L80014B00
    /* 32E0 80014AD0 21100002 */   addu      $v0, $s0, $zero
    /* 32E4 80014AD4 6250000C */  jal        func_80014188
    /* 32E8 80014AD8 01103136 */   ori       $s1, $s1, 0x1001
    /* 32EC 80014ADC 21804000 */  addu       $s0, $v0, $zero
    /* 32F0 80014AE0 21204002 */  addu       $a0, $s2, $zero
    /* 32F4 80014AE4 9F50000C */  jal        func_8001427C
    /* 32F8 80014AE8 21280002 */   addu      $a1, $s0, $zero
    /* 32FC 80014AEC 21204002 */  addu       $a0, $s2, $zero
    /* 3300 80014AF0 21284000 */  addu       $a1, $v0, $zero
    /* 3304 80014AF4 3652000C */  jal        func_800148D8
    /* 3308 80014AF8 21302002 */   addu      $a2, $s1, $zero
  .L80014AFC:
    /* 330C 80014AFC 21100002 */  addu       $v0, $s0, $zero
  .L80014B00:
    /* 3310 80014B00 1C00BF8F */  lw         $ra, 0x1C($sp)
    /* 3314 80014B04 1800B28F */  lw         $s2, 0x18($sp)
    /* 3318 80014B08 1400B18F */  lw         $s1, 0x14($sp)
    /* 331C 80014B0C 1000B08F */  lw         $s0, 0x10($sp)
    /* 3320 80014B10 0800E003 */  jr         $ra
    /* 3324 80014B14 2000BD27 */   addiu     $sp, $sp, 0x20
endlabel func_80014A98
