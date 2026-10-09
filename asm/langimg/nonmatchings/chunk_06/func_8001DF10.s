nonmatching func_8001DF10, 0xC8

glabel func_8001DF10
    /* C720 8001DF10 C8FFBD27 */  addiu      $sp, $sp, -0x38
    /* C724 8001DF14 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* C728 8001DF18 4800B38F */  lw         $s3, 0x48($sp)
    /* C72C 8001DF1C 2C00B7AF */  sw         $s7, 0x2C($sp)
    /* C730 8001DF20 21B88000 */  addu       $s7, $a0, $zero
    /* C734 8001DF24 2800B6AF */  sw         $s6, 0x28($sp)
    /* C738 8001DF28 21B0A000 */  addu       $s6, $a1, $zero
    /* C73C 8001DF2C 2400B5AF */  sw         $s5, 0x24($sp)
    /* C740 8001DF30 21A8C000 */  addu       $s5, $a2, $zero
    /* C744 8001DF34 2000B4AF */  sw         $s4, 0x20($sp)
    /* C748 8001DF38 21A0E000 */  addu       $s4, $a3, $zero
    /* C74C 8001DF3C 1400B1AF */  sw         $s1, 0x14($sp)
    /* C750 8001DF40 01001124 */  addiu      $s1, $zero, 0x1
    /* C754 8001DF44 1000B0AF */  sw         $s0, 0x10($sp)
    /* C758 8001DF48 21800000 */  addu       $s0, $zero, $zero
    /* C75C 8001DF4C 1800B2AF */  sw         $s2, 0x18($sp)
    /* C760 8001DF50 01001224 */  addiu      $s2, $zero, 0x1
    /* C764 8001DF54 3000BFAF */  sw         $ra, 0x30($sp)
  .L8001DF58:
    /* C768 8001DF58 B800E28E */  lw         $v0, 0xB8($s7)
    /* C76C 8001DF5C C0201000 */  sll        $a0, $s0, 3
    /* C770 8001DF60 2128C002 */  addu       $a1, $s6, $zero
    /* C774 8001DF64 1F5C020C */  jal        func_8009707C
    /* C778 8001DF68 21204400 */   addu      $a0, $v0, $a0
    /* C77C 8001DF6C 2A18A202 */  slt        $v1, $s5, $v0
    /* C780 8001DF70 07006014 */  bnez       $v1, .L8001DF90
    /* C784 8001DF74 00000000 */   nop
    /* C788 8001DF78 07001216 */  bne        $s0, $s2, .L8001DF98
    /* C78C 8001DF7C 23100200 */   negu      $v0, $v0
    /* C790 8001DF80 000062AE */  sw         $v0, 0x0($s3)
    /* C794 8001DF84 2A108202 */  slt        $v0, $s4, $v0
    /* C798 8001DF88 04004010 */  beqz       $v0, .L8001DF9C
    /* C79C 8001DF8C 01001026 */   addiu     $s0, $s0, 0x1
  .L8001DF90:
    /* C7A0 8001DF90 EA770008 */  j          .L8001DFA8
    /* C7A4 8001DF94 21880000 */   addu      $s1, $zero, $zero
  .L8001DF98:
    /* C7A8 8001DF98 01001026 */  addiu      $s0, $s0, 0x1
  .L8001DF9C:
    /* C7AC 8001DF9C 0300022A */  slti       $v0, $s0, 0x3
    /* C7B0 8001DFA0 EDFF4014 */  bnez       $v0, .L8001DF58
    /* C7B4 8001DFA4 00000000 */   nop
  .L8001DFA8:
    /* C7B8 8001DFA8 21102002 */  addu       $v0, $s1, $zero
    /* C7BC 8001DFAC 3000BF8F */  lw         $ra, 0x30($sp)
    /* C7C0 8001DFB0 2C00B78F */  lw         $s7, 0x2C($sp)
    /* C7C4 8001DFB4 2800B68F */  lw         $s6, 0x28($sp)
    /* C7C8 8001DFB8 2400B58F */  lw         $s5, 0x24($sp)
    /* C7CC 8001DFBC 2000B48F */  lw         $s4, 0x20($sp)
    /* C7D0 8001DFC0 1C00B38F */  lw         $s3, 0x1C($sp)
    /* C7D4 8001DFC4 1800B28F */  lw         $s2, 0x18($sp)
    /* C7D8 8001DFC8 1400B18F */  lw         $s1, 0x14($sp)
    /* C7DC 8001DFCC 1000B08F */  lw         $s0, 0x10($sp)
    /* C7E0 8001DFD0 0800E003 */  jr         $ra
    /* C7E4 8001DFD4 3800BD27 */   addiu     $sp, $sp, 0x38
endlabel func_8001DF10
