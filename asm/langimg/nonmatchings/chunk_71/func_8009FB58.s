nonmatching func_8009FB58, 0xA8

glabel func_8009FB58
    /* 8E368 8009FB58 D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* 8E36C 8009FB5C 2000BFAF */  sw         $ra, 0x20($sp)
    /* 8E370 8009FB60 1C00B1AF */  sw         $s1, 0x1C($sp)
    /* 8E374 8009FB64 1800B0AF */  sw         $s0, 0x18($sp)
    /* 8E378 8009FB68 900A838C */  lw         $v1, 0xA90($a0)
    /* 8E37C 8009FB6C 01000224 */  addiu      $v0, $zero, 0x1
    /* 8E380 8009FB70 03006210 */  beq        $v1, $v0, .L8009FB80
    /* 8E384 8009FB74 04000224 */   addiu     $v0, $zero, 0x4
    /* 8E388 8009FB78 04006214 */  bne        $v1, $v0, .L8009FB8C
    /* 8E38C 8009FB7C 00000000 */   nop
  .L8009FB80:
    /* 8E390 8009FB80 840A838C */  lw         $v1, 0xA84($a0)
    /* 8E394 8009FB84 E47E0208 */  j          .L8009FB90
    /* 8E398 8009FB88 00000000 */   nop
  .L8009FB8C:
    /* 8E39C 8009FB8C 800A838C */  lw         $v1, 0xA80($a0)
  .L8009FB90:
    /* 8E3A0 8009FB90 00000000 */  nop
    /* 8E3A4 8009FB94 6000708C */  lw         $s0, 0x60($v1)
    /* 8E3A8 8009FB98 00000000 */  nop
    /* 8E3AC 8009FB9C 13000012 */  beqz       $s0, .L8009FBEC
    /* 8E3B0 8009FBA0 00000000 */   nop
    /* 8E3B4 8009FBA4 4001118E */  lw         $s1, 0x140($s0)
    /* 8E3B8 8009FBA8 3C01028E */  lw         $v0, 0x13C($s0)
    /* 8E3BC 8009FBAC 00000000 */  nop
    /* 8E3C0 8009FBB0 0E002212 */  beq        $s1, $v0, .L8009FBEC
    /* 8E3C4 8009FBB4 20010426 */   addiu     $a0, $s0, 0x120
    /* 8E3C8 8009FBB8 80301100 */  sll        $a2, $s1, 2
    /* 8E3CC 8009FBBC 21180602 */  addu       $v1, $s0, $a2
    /* 8E3D0 8009FBC0 3001028E */  lw         $v0, 0x130($s0)
    /* 8E3D4 8009FBC4 21306000 */  addu       $a2, $v1, $zero
    /* 8E3D8 8009FBC8 1000A2AF */  sw         $v0, 0x10($sp)
    /* 8E3DC 8009FBCC D800628C */  lw         $v0, 0xD8($v1)
    /* 8E3E0 8009FBD0 00000000 */  nop
    /* 8E3E4 8009FBD4 1400A2AF */  sw         $v0, 0x14($sp)
    /* 8E3E8 8009FBD8 4800C58C */  lw         $a1, 0x48($a2)
    /* 8E3EC 8009FBDC 2C01078E */  lw         $a3, 0x12C($s0)
    /* 8E3F0 8009FBE0 1A1D020C */  jal        func_80087468
    /* 8E3F4 8009FBE4 21300000 */   addu      $a2, $zero, $zero
    /* 8E3F8 8009FBE8 3C0111AE */  sw         $s1, 0x13C($s0)
  .L8009FBEC:
    /* 8E3FC 8009FBEC 2000BF8F */  lw         $ra, 0x20($sp)
    /* 8E400 8009FBF0 1C00B18F */  lw         $s1, 0x1C($sp)
    /* 8E404 8009FBF4 1800B08F */  lw         $s0, 0x18($sp)
    /* 8E408 8009FBF8 0800E003 */  jr         $ra
    /* 8E40C 8009FBFC 2800BD27 */   addiu     $sp, $sp, 0x28
endlabel func_8009FB58
