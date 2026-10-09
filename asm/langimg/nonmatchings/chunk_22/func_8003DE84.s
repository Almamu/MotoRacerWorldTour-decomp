nonmatching func_8003DE84, 0xF8

glabel func_8003DE84
    /* 2C694 8003DE84 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 2C698 8003DE88 1400B1AF */  sw         $s1, 0x14($sp)
    /* 2C69C 8003DE8C 2188C000 */  addu       $s1, $a2, $zero
    /* 2C6A0 8003DE90 1C00BFAF */  sw         $ra, 0x1C($sp)
    /* 2C6A4 8003DE94 1800B2AF */  sw         $s2, 0x18($sp)
    /* 2C6A8 8003DE98 1000B0AF */  sw         $s0, 0x10($sp)
    /* 2C6AC 8003DE9C 0400308E */  lw         $s0, 0x4($s1)
    /* 2C6B0 8003DEA0 00000000 */  nop
    /* 2C6B4 8003DEA4 900A038E */  lw         $v1, 0xA90($s0)
    /* 2C6B8 8003DEA8 01000224 */  addiu      $v0, $zero, 0x1
    /* 2C6BC 8003DEAC 04006210 */  beq        $v1, $v0, .L8003DEC0
    /* 2C6C0 8003DEB0 21308000 */   addu      $a2, $a0, $zero
    /* 2C6C4 8003DEB4 04000224 */  addiu      $v0, $zero, 0x4
    /* 2C6C8 8003DEB8 04006214 */  bne        $v1, $v0, .L8003DECC
    /* 2C6CC 8003DEBC 00000000 */   nop
  .L8003DEC0:
    /* 2C6D0 8003DEC0 840A048E */  lw         $a0, 0xA84($s0)
    /* 2C6D4 8003DEC4 B4F70008 */  j          .L8003DED0
    /* 2C6D8 8003DEC8 00000000 */   nop
  .L8003DECC:
    /* 2C6DC 8003DECC 800A048E */  lw         $a0, 0xA80($s0)
  .L8003DED0:
    /* 2C6E0 8003DED0 940A058E */  lw         $a1, 0xA94($s0)
    /* 2C6E4 8003DED4 0000D28C */  lw         $s2, 0x0($a2)
    /* 2C6E8 8003DED8 8000A230 */  andi       $v0, $a1, 0x80
    /* 2C6EC 8003DEDC 07004010 */  beqz       $v0, .L8003DEFC
    /* 2C6F0 8003DEE0 08000224 */   addiu     $v0, $zero, 0x8
    /* 2C6F4 8003DEE4 1F004016 */  bnez       $s2, .L8003DF64
    /* 2C6F8 8003DEE8 7FFF0224 */   addiu     $v0, $zero, -0x81
    /* 2C6FC 8003DEEC 900A038E */  lw         $v1, 0xA90($s0)
    /* 2C700 8003DEF0 2410A200 */  and        $v0, $a1, $v0
    /* 2C704 8003DEF4 940A02AE */  sw         $v0, 0xA94($s0)
    /* 2C708 8003DEF8 08000224 */  addiu      $v0, $zero, 0x8
  .L8003DEFC:
    /* 2C70C 8003DEFC 19006210 */  beq        $v1, $v0, .L8003DF64
    /* 2C710 8003DF00 00000000 */   nop
    /* 2C714 8003DF04 17006014 */  bnez       $v1, .L8003DF64
    /* 2C718 8003DF08 00000000 */   nop
    /* 2C71C 8003DF0C 0000268E */  lw         $a2, 0x0($s1)
    /* 2C720 8003DF10 0EEC000C */  jal        func_8003B038
    /* 2C724 8003DF14 21280000 */   addu      $a1, $zero, $zero
    /* 2C728 8003DF18 21204000 */  addu       $a0, $v0, $zero
    /* 2C72C 8003DF1C 0F008010 */  beqz       $a0, .L8003DF5C
    /* 2C730 8003DF20 00000000 */   nop
    /* 2C734 8003DF24 2000858C */  lw         $a1, 0x20($a0)
    /* 2C738 8003DF28 0000238E */  lw         $v1, 0x0($s1)
    /* 2C73C 8003DF2C 00110500 */  sll        $v0, $a1, 4
    /* 2C740 8003DF30 03140200 */  sra        $v0, $v0, 16
    /* 2C744 8003DF34 24104300 */  and        $v0, $v0, $v1
    /* 2C748 8003DF38 0A004010 */  beqz       $v0, .L8003DF64
    /* 2C74C 8003DF3C FF03A230 */   andi      $v0, $a1, 0x3FF
    /* 2C750 8003DF40 02004014 */  bnez       $v0, .L8003DF4C
    /* 2C754 8003DF44 00000000 */   nop
    /* 2C758 8003DF48 FF000224 */  addiu      $v0, $zero, 0xFF
  .L8003DF4C:
    /* 2C75C 8003DF4C 03004216 */  bne        $s2, $v0, .L8003DF5C
    /* 2C760 8003DF50 00000000 */   nop
    /* 2C764 8003DF54 1FE4000C */  jal        func_8003907C
    /* 2C768 8003DF58 21280002 */   addu      $a1, $s0, $zero
  .L8003DF5C:
    /* 2C76C 8003DF5C 6CF9000C */  jal        func_8003E5B0
    /* 2C770 8003DF60 21200002 */   addu      $a0, $s0, $zero
  .L8003DF64:
    /* 2C774 8003DF64 1C00BF8F */  lw         $ra, 0x1C($sp)
    /* 2C778 8003DF68 1800B28F */  lw         $s2, 0x18($sp)
    /* 2C77C 8003DF6C 1400B18F */  lw         $s1, 0x14($sp)
    /* 2C780 8003DF70 1000B08F */  lw         $s0, 0x10($sp)
    /* 2C784 8003DF74 0800E003 */  jr         $ra
    /* 2C788 8003DF78 2000BD27 */   addiu     $sp, $sp, 0x20
endlabel func_8003DE84
