nonmatching func_800811C4, 0x78

glabel func_800811C4
    /* 6F9D4 800811C4 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 6F9D8 800811C8 1000B0AF */  sw         $s0, 0x10($sp)
    /* 6F9DC 800811CC 21808000 */  addu       $s0, $a0, $zero
    /* 6F9E0 800811D0 1400B1AF */  sw         $s1, 0x14($sp)
    /* 6F9E4 800811D4 2188A000 */  addu       $s1, $a1, $zero
    /* 6F9E8 800811D8 1800B2AF */  sw         $s2, 0x18($sp)
    /* 6F9EC 800811DC 1C00BFAF */  sw         $ra, 0x1C($sp)
    /* 6F9F0 800811E0 9C04020C */  jal        func_80081270
    /* 6F9F4 800811E4 2190C000 */   addu      $s2, $a2, $zero
    /* 6F9F8 800811E8 B104020C */  jal        func_800812C4
    /* 6F9FC 800811EC 21200002 */   addu      $a0, $s0, $zero
    /* 6FA00 800811F0 21284000 */  addu       $a1, $v0, $zero
    /* 6FA04 800811F4 FFFF0324 */  addiu      $v1, $zero, -0x1
    /* 6FA08 800811F8 0900A310 */  beq        $a1, $v1, .L80081220
    /* 6FA0C 800811FC 80180500 */   sll       $v1, $a1, 2
    /* 6FA10 80081200 0000028E */  lw         $v0, 0x0($s0)
    /* 6FA14 80081204 00000000 */  nop
    /* 6FA18 80081208 21106200 */  addu       $v0, $v1, $v0
    /* 6FA1C 8008120C 000051AC */  sw         $s1, 0x0($v0)
    /* 6FA20 80081210 0400048E */  lw         $a0, 0x4($s0)
    /* 6FA24 80081214 00000000 */  nop
    /* 6FA28 80081218 21186400 */  addu       $v1, $v1, $a0
    /* 6FA2C 8008121C 000072AC */  sw         $s2, 0x0($v1)
  .L80081220:
    /* 6FA30 80081220 1C00BF8F */  lw         $ra, 0x1C($sp)
    /* 6FA34 80081224 1800B28F */  lw         $s2, 0x18($sp)
    /* 6FA38 80081228 1400B18F */  lw         $s1, 0x14($sp)
    /* 6FA3C 8008122C 1000B08F */  lw         $s0, 0x10($sp)
    /* 6FA40 80081230 2110A000 */  addu       $v0, $a1, $zero
    /* 6FA44 80081234 0800E003 */  jr         $ra
    /* 6FA48 80081238 2000BD27 */   addiu     $sp, $sp, 0x20
endlabel func_800811C4
