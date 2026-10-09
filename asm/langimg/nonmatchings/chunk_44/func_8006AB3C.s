nonmatching func_8006AB3C, 0x98

glabel func_8006AB3C
    /* 5934C 8006AB3C E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 59350 8006AB40 1800B2AF */  sw         $s2, 0x18($sp)
    /* 59354 8006AB44 21908000 */  addu       $s2, $a0, $zero
    /* 59358 8006AB48 1400B1AF */  sw         $s1, 0x14($sp)
    /* 5935C 8006AB4C 2188A000 */  addu       $s1, $a1, $zero
    /* 59360 8006AB50 1C00BFAF */  sw         $ra, 0x1C($sp)
    /* 59364 8006AB54 19002006 */  bltz       $s1, .L8006ABBC
    /* 59368 8006AB58 1000B0AF */   sw        $s0, 0x10($sp)
    /* 5936C 8006AB5C 0400428E */  lw         $v0, 0x4($s2)
    /* 59370 8006AB60 00000000 */  nop
    /* 59374 8006AB64 2A102202 */  slt        $v0, $s1, $v0
    /* 59378 8006AB68 14004010 */  beqz       $v0, .L8006ABBC
    /* 5937C 8006AB6C 80801100 */   sll       $s0, $s1, 2
    /* 59380 8006AB70 0000438E */  lw         $v1, 0x0($s2)
    /* 59384 8006AB74 00000000 */  nop
    /* 59388 8006AB78 21100302 */  addu       $v0, $s0, $v1
    /* 5938C 8006AB7C 0000458C */  lw         $a1, 0x0($v0)
    /* 59390 8006AB80 00000000 */  nop
    /* 59394 8006AB84 0B00A010 */  beqz       $a1, .L8006ABB4
    /* 59398 8006AB88 00000000 */   nop
    /* 5939C 8006AB8C 0C00A28C */  lw         $v0, 0xC($a1)
    /* 593A0 8006AB90 00000000 */  nop
    /* 593A4 8006AB94 28004484 */  lh         $a0, 0x28($v0)
    /* 593A8 8006AB98 2C00438C */  lw         $v1, 0x2C($v0)
    /* 593AC 8006AB9C 00000000 */  nop
    /* 593B0 8006ABA0 09F86000 */  jalr       $v1
    /* 593B4 8006ABA4 2120A400 */   addu      $a0, $a1, $a0
    /* 593B8 8006ABA8 0000438E */  lw         $v1, 0x0($s2)
    /* 593BC 8006ABAC 00000000 */  nop
    /* 593C0 8006ABB0 21100302 */  addu       $v0, $s0, $v1
  .L8006ABB4:
    /* 593C4 8006ABB4 000040AC */  sw         $zero, 0x0($v0)
    /* 593C8 8006ABB8 080051AE */  sw         $s1, 0x8($s2)
  .L8006ABBC:
    /* 593CC 8006ABBC 1C00BF8F */  lw         $ra, 0x1C($sp)
    /* 593D0 8006ABC0 1800B28F */  lw         $s2, 0x18($sp)
    /* 593D4 8006ABC4 1400B18F */  lw         $s1, 0x14($sp)
    /* 593D8 8006ABC8 1000B08F */  lw         $s0, 0x10($sp)
    /* 593DC 8006ABCC 0800E003 */  jr         $ra
    /* 593E0 8006ABD0 2000BD27 */   addiu     $sp, $sp, 0x20
endlabel func_8006AB3C
