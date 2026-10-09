nonmatching func_800B1B94, 0x54

glabel func_800B1B94
    /* A03A4 800B1B94 46008390 */  lbu        $v1, 0x46($a0)
    /* A03A8 800B1B98 02000224 */  addiu      $v0, $zero, 0x2
    /* A03AC 800B1B9C 05006210 */  beq        $v1, $v0, .L800B1BB4
    /* A03B0 800B1BA0 03000224 */   addiu     $v0, $zero, 0x3
    /* A03B4 800B1BA4 09006210 */  beq        $v1, $v0, .L800B1BCC
    /* A03B8 800B1BA8 4D000224 */   addiu     $v0, $zero, 0x4D
    /* A03BC 800B1BAC F8C60208 */  j          .L800B1BE0
    /* A03C0 800B1BB0 00000000 */   nop
  .L800B1BB4:
    /* A03C4 800B1BB4 44000224 */  addiu      $v0, $zero, 0x44
    /* A03C8 800B1BB8 360082A0 */  sb         $v0, 0x36($a0)
    /* A03CC 800B1BBC 51008224 */  addiu      $v0, $a0, 0x51
    /* A03D0 800B1BC0 2C0082AC */  sw         $v0, 0x2C($a0)
    /* A03D4 800B1BC4 F8C60208 */  j          .L800B1BE0
    /* A03D8 800B1BC8 350083A0 */   sb        $v1, 0x35($a0)
  .L800B1BCC:
    /* A03DC 800B1BCC 360082A0 */  sb         $v0, 0x36($a0)
    /* A03E0 800B1BD0 5D008224 */  addiu      $v0, $a0, 0x5D
    /* A03E4 800B1BD4 2C0082AC */  sw         $v0, 0x2C($a0)
    /* A03E8 800B1BD8 06000224 */  addiu      $v0, $zero, 0x6
    /* A03EC 800B1BDC 350082A0 */  sb         $v0, 0x35($a0)
  .L800B1BE0:
    /* A03F0 800B1BE0 0800E003 */  jr         $ra
    /* A03F4 800B1BE4 00000000 */   nop
endlabel func_800B1B94
