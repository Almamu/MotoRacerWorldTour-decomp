nonmatching func_8009DDA8, 0x64

glabel func_8009DDA8
    /* 8C5B8 8009DDA8 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 8C5BC 8009DDAC 1C00BFAF */  sw         $ra, 0x1C($sp)
    /* 8C5C0 8009DDB0 1800B0AF */  sw         $s0, 0x18($sp)
    /* 8C5C4 8009DDB4 800A838C */  lw         $v1, 0xA80($a0)
    /* 8C5C8 8009DDB8 00000000 */  nop
    /* 8C5CC 8009DDBC 6000708C */  lw         $s0, 0x60($v1)
    /* 8C5D0 8009DDC0 6F90020C */  jal        func_800A41BC
    /* 8C5D4 8009DDC4 00000000 */   nop
    /* 8C5D8 8009DDC8 8291020C */  jal        func_800A4608
    /* 8C5DC 8009DDCC 01000424 */   addiu     $a0, $zero, 0x1
    /* 8C5E0 8009DDD0 AC150224 */  addiu      $v0, $zero, 0x15AC
    /* 8C5E4 8009DDD4 0D80053C */  lui        $a1, %hi(D_800C9BFC)
    /* 8C5E8 8009DDD8 FC9BA524 */  addiu      $a1, $a1, %lo(D_800C9BFC)
    /* 8C5EC 8009DDDC 0C80073C */  lui        $a3, %hi(D_800BC884)
    /* 8C5F0 8009DDE0 84C8E78C */  lw         $a3, %lo(D_800BC884)($a3)
    /* 8C5F4 8009DDE4 21300000 */  addu       $a2, $zero, $zero
    /* 8C5F8 8009DDE8 1000A2AF */  sw         $v0, 0x10($sp)
    /* 8C5FC 8009DDEC 0778020C */  jal        func_8009E01C
    /* 8C600 8009DDF0 21200002 */   addu      $a0, $s0, $zero
    /* 8C604 8009DDF4 3A78020C */  jal        func_8009E0E8
    /* 8C608 8009DDF8 21200002 */   addu      $a0, $s0, $zero
    /* 8C60C 8009DDFC 1C00BF8F */  lw         $ra, 0x1C($sp)
    /* 8C610 8009DE00 1800B08F */  lw         $s0, 0x18($sp)
    /* 8C614 8009DE04 0800E003 */  jr         $ra
    /* 8C618 8009DE08 2000BD27 */   addiu     $sp, $sp, 0x20
endlabel func_8009DDA8
