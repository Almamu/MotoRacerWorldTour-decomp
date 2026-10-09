nonmatching func_8003DD8C, 0xF8

glabel func_8003DD8C
    /* 2C59C 8003DD8C E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 2C5A0 8003DD90 1400B1AF */  sw         $s1, 0x14($sp)
    /* 2C5A4 8003DD94 2188C000 */  addu       $s1, $a2, $zero
    /* 2C5A8 8003DD98 1C00BFAF */  sw         $ra, 0x1C($sp)
    /* 2C5AC 8003DD9C 1800B2AF */  sw         $s2, 0x18($sp)
    /* 2C5B0 8003DDA0 1000B0AF */  sw         $s0, 0x10($sp)
    /* 2C5B4 8003DDA4 0400308E */  lw         $s0, 0x4($s1)
    /* 2C5B8 8003DDA8 00000000 */  nop
    /* 2C5BC 8003DDAC 900A038E */  lw         $v1, 0xA90($s0)
    /* 2C5C0 8003DDB0 01000224 */  addiu      $v0, $zero, 0x1
    /* 2C5C4 8003DDB4 04006210 */  beq        $v1, $v0, .L8003DDC8
    /* 2C5C8 8003DDB8 21308000 */   addu      $a2, $a0, $zero
    /* 2C5CC 8003DDBC 04000224 */  addiu      $v0, $zero, 0x4
    /* 2C5D0 8003DDC0 04006214 */  bne        $v1, $v0, .L8003DDD4
    /* 2C5D4 8003DDC4 00000000 */   nop
  .L8003DDC8:
    /* 2C5D8 8003DDC8 840A048E */  lw         $a0, 0xA84($s0)
    /* 2C5DC 8003DDCC 76F70008 */  j          .L8003DDD8
    /* 2C5E0 8003DDD0 00000000 */   nop
  .L8003DDD4:
    /* 2C5E4 8003DDD4 800A048E */  lw         $a0, 0xA80($s0)
  .L8003DDD8:
    /* 2C5E8 8003DDD8 940A058E */  lw         $a1, 0xA94($s0)
    /* 2C5EC 8003DDDC 0000D28C */  lw         $s2, 0x0($a2)
    /* 2C5F0 8003DDE0 8000A230 */  andi       $v0, $a1, 0x80
    /* 2C5F4 8003DDE4 07004010 */  beqz       $v0, .L8003DE04
    /* 2C5F8 8003DDE8 08000224 */   addiu     $v0, $zero, 0x8
    /* 2C5FC 8003DDEC 1F004016 */  bnez       $s2, .L8003DE6C
    /* 2C600 8003DDF0 7FFF0224 */   addiu     $v0, $zero, -0x81
    /* 2C604 8003DDF4 900A038E */  lw         $v1, 0xA90($s0)
    /* 2C608 8003DDF8 2410A200 */  and        $v0, $a1, $v0
    /* 2C60C 8003DDFC 940A02AE */  sw         $v0, 0xA94($s0)
    /* 2C610 8003DE00 08000224 */  addiu      $v0, $zero, 0x8
  .L8003DE04:
    /* 2C614 8003DE04 19006210 */  beq        $v1, $v0, .L8003DE6C
    /* 2C618 8003DE08 00000000 */   nop
    /* 2C61C 8003DE0C 17006014 */  bnez       $v1, .L8003DE6C
    /* 2C620 8003DE10 00000000 */   nop
    /* 2C624 8003DE14 0000268E */  lw         $a2, 0x0($s1)
    /* 2C628 8003DE18 0EEC000C */  jal        func_8003B038
    /* 2C62C 8003DE1C 21280000 */   addu      $a1, $zero, $zero
    /* 2C630 8003DE20 21204000 */  addu       $a0, $v0, $zero
    /* 2C634 8003DE24 0F008010 */  beqz       $a0, .L8003DE64
    /* 2C638 8003DE28 00000000 */   nop
    /* 2C63C 8003DE2C 2000858C */  lw         $a1, 0x20($a0)
    /* 2C640 8003DE30 0000238E */  lw         $v1, 0x0($s1)
    /* 2C644 8003DE34 00110500 */  sll        $v0, $a1, 4
    /* 2C648 8003DE38 03140200 */  sra        $v0, $v0, 16
    /* 2C64C 8003DE3C 24104300 */  and        $v0, $v0, $v1
    /* 2C650 8003DE40 0A004010 */  beqz       $v0, .L8003DE6C
    /* 2C654 8003DE44 FF03A230 */   andi      $v0, $a1, 0x3FF
    /* 2C658 8003DE48 02004014 */  bnez       $v0, .L8003DE54
    /* 2C65C 8003DE4C 00000000 */   nop
    /* 2C660 8003DE50 FF000224 */  addiu      $v0, $zero, 0xFF
  .L8003DE54:
    /* 2C664 8003DE54 03004216 */  bne        $s2, $v0, .L8003DE64
    /* 2C668 8003DE58 00000000 */   nop
    /* 2C66C 8003DE5C 36E5000C */  jal        func_800394D8
    /* 2C670 8003DE60 21280002 */   addu      $a1, $s0, $zero
  .L8003DE64:
    /* 2C674 8003DE64 6CF9000C */  jal        func_8003E5B0
    /* 2C678 8003DE68 21200002 */   addu      $a0, $s0, $zero
  .L8003DE6C:
    /* 2C67C 8003DE6C 1C00BF8F */  lw         $ra, 0x1C($sp)
    /* 2C680 8003DE70 1800B28F */  lw         $s2, 0x18($sp)
    /* 2C684 8003DE74 1400B18F */  lw         $s1, 0x14($sp)
    /* 2C688 8003DE78 1000B08F */  lw         $s0, 0x10($sp)
    /* 2C68C 8003DE7C 0800E003 */  jr         $ra
    /* 2C690 8003DE80 2000BD27 */   addiu     $sp, $sp, 0x20
endlabel func_8003DD8C
