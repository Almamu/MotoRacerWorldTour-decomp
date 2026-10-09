nonmatching func_8009FAB0, 0xA8

glabel func_8009FAB0
    /* 8E2C0 8009FAB0 D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* 8E2C4 8009FAB4 2000BFAF */  sw         $ra, 0x20($sp)
    /* 8E2C8 8009FAB8 1C00B1AF */  sw         $s1, 0x1C($sp)
    /* 8E2CC 8009FABC 1800B0AF */  sw         $s0, 0x18($sp)
    /* 8E2D0 8009FAC0 900A838C */  lw         $v1, 0xA90($a0)
    /* 8E2D4 8009FAC4 01000224 */  addiu      $v0, $zero, 0x1
    /* 8E2D8 8009FAC8 03006210 */  beq        $v1, $v0, .L8009FAD8
    /* 8E2DC 8009FACC 04000224 */   addiu     $v0, $zero, 0x4
    /* 8E2E0 8009FAD0 04006214 */  bne        $v1, $v0, .L8009FAE4
    /* 8E2E4 8009FAD4 00000000 */   nop
  .L8009FAD8:
    /* 8E2E8 8009FAD8 840A838C */  lw         $v1, 0xA84($a0)
    /* 8E2EC 8009FADC BA7E0208 */  j          .L8009FAE8
    /* 8E2F0 8009FAE0 00000000 */   nop
  .L8009FAE4:
    /* 8E2F4 8009FAE4 800A838C */  lw         $v1, 0xA80($a0)
  .L8009FAE8:
    /* 8E2F8 8009FAE8 00000000 */  nop
    /* 8E2FC 8009FAEC 6000708C */  lw         $s0, 0x60($v1)
    /* 8E300 8009FAF0 00000000 */  nop
    /* 8E304 8009FAF4 13000012 */  beqz       $s0, .L8009FB44
    /* 8E308 8009FAF8 00000000 */   nop
    /* 8E30C 8009FAFC 4001118E */  lw         $s1, 0x140($s0)
    /* 8E310 8009FB00 3C01028E */  lw         $v0, 0x13C($s0)
    /* 8E314 8009FB04 00000000 */  nop
    /* 8E318 8009FB08 0E002212 */  beq        $s1, $v0, .L8009FB44
    /* 8E31C 8009FB0C 20010426 */   addiu     $a0, $s0, 0x120
    /* 8E320 8009FB10 80301100 */  sll        $a2, $s1, 2
    /* 8E324 8009FB14 21180602 */  addu       $v1, $s0, $a2
    /* 8E328 8009FB18 3001028E */  lw         $v0, 0x130($s0)
    /* 8E32C 8009FB1C 21306000 */  addu       $a2, $v1, $zero
    /* 8E330 8009FB20 1000A2AF */  sw         $v0, 0x10($sp)
    /* 8E334 8009FB24 9000628C */  lw         $v0, 0x90($v1)
    /* 8E338 8009FB28 00000000 */  nop
    /* 8E33C 8009FB2C 1400A2AF */  sw         $v0, 0x14($sp)
    /* 8E340 8009FB30 0000C58C */  lw         $a1, 0x0($a2)
    /* 8E344 8009FB34 2C01078E */  lw         $a3, 0x12C($s0)
    /* 8E348 8009FB38 1A1D020C */  jal        func_80087468
    /* 8E34C 8009FB3C 21300000 */   addu      $a2, $zero, $zero
    /* 8E350 8009FB40 3C0111AE */  sw         $s1, 0x13C($s0)
  .L8009FB44:
    /* 8E354 8009FB44 2000BF8F */  lw         $ra, 0x20($sp)
    /* 8E358 8009FB48 1C00B18F */  lw         $s1, 0x1C($sp)
    /* 8E35C 8009FB4C 1800B08F */  lw         $s0, 0x18($sp)
    /* 8E360 8009FB50 0800E003 */  jr         $ra
    /* 8E364 8009FB54 2800BD27 */   addiu     $sp, $sp, 0x28
endlabel func_8009FAB0
