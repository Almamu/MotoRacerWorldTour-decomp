nonmatching func_800B1BE8, 0x60

glabel func_800B1BE8
    /* A03F8 800B1BE8 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* A03FC 800B1BEC 1000BFAF */  sw         $ra, 0x10($sp)
    /* A0400 800B1BF0 53008290 */  lbu        $v0, 0x53($a0)
    /* A0404 800B1BF4 00000000 */  nop
    /* A0408 800B1BF8 09004010 */  beqz       $v0, .L800B1C20
    /* A040C 800B1BFC 02000224 */   addiu     $v0, $zero, 0x2
    /* A0410 800B1C00 46008390 */  lbu        $v1, 0x46($a0)
    /* A0414 800B1C04 00000000 */  nop
    /* A0418 800B1C08 03006214 */  bne        $v1, $v0, .L800B1C18
    /* A041C 800B1C0C FE000224 */   addiu     $v0, $zero, 0xFE
    /* A0420 800B1C10 0EC70208 */  j          .L800B1C38
    /* A0424 800B1C14 01000224 */   addiu     $v0, $zero, 0x1
  .L800B1C18:
    /* A0428 800B1C18 0DC70208 */  j          .L800B1C34
    /* A042C 800B1C1C 460082A0 */   sb        $v0, 0x46($a0)
  .L800B1C20:
    /* A0430 800B1C20 0C80023C */  lui        $v0, %hi(D_800C3C8C)
    /* A0434 800B1C24 8C3C428C */  lw         $v0, %lo(D_800C3C8C)($v0)
    /* A0438 800B1C28 00000000 */  nop
    /* A043C 800B1C2C 09F84000 */  jalr       $v0
    /* A0440 800B1C30 00000000 */   nop
  .L800B1C34:
    /* A0444 800B1C34 21100000 */  addu       $v0, $zero, $zero
  .L800B1C38:
    /* A0448 800B1C38 1000BF8F */  lw         $ra, 0x10($sp)
    /* A044C 800B1C3C 1800BD27 */  addiu      $sp, $sp, 0x18
    /* A0450 800B1C40 0800E003 */  jr         $ra
    /* A0454 800B1C44 00000000 */   nop
endlabel func_800B1BE8
