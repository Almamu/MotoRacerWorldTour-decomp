nonmatching func_8003BD5C, 0x1B0

glabel func_8003BD5C
    /* 2A56C 8003BD5C C8FFBD27 */  addiu      $sp, $sp, -0x38
    /* 2A570 8003BD60 2C00B1AF */  sw         $s1, 0x2C($sp)
    /* 2A574 8003BD64 2188C000 */  addu       $s1, $a2, $zero
    /* 2A578 8003BD68 01000224 */  addiu      $v0, $zero, 0x1
    /* 2A57C 8003BD6C 3000BFAF */  sw         $ra, 0x30($sp)
    /* 2A580 8003BD70 0F00A210 */  beq        $a1, $v0, .L8003BDB0
    /* 2A584 8003BD74 2800B0AF */   sw        $s0, 0x28($sp)
    /* 2A588 8003BD78 0200A228 */  slti       $v0, $a1, 0x2
    /* 2A58C 8003BD7C 05004010 */  beqz       $v0, .L8003BD94
    /* 2A590 8003BD80 00000000 */   nop
    /* 2A594 8003BD84 0800A010 */  beqz       $a1, .L8003BDA8
    /* 2A598 8003BD88 00000000 */   nop
    /* 2A59C 8003BD8C BEEF0008 */  j          .L8003BEF8
    /* 2A5A0 8003BD90 00000000 */   nop
  .L8003BD94:
    /* 2A5A4 8003BD94 0400A228 */  slti       $v0, $a1, 0x4
    /* 2A5A8 8003BD98 57004010 */  beqz       $v0, .L8003BEF8
    /* 2A5AC 8003BD9C D8009024 */   addiu     $s0, $a0, 0xD8
    /* 2A5B0 8003BDA0 A7EF0008 */  j          .L8003BE9C
    /* 2A5B4 8003BDA4 21200002 */   addu      $a0, $s0, $zero
  .L8003BDA8:
    /* 2A5B8 8003BDA8 BEEF0008 */  j          .L8003BEF8
    /* 2A5BC 8003BDAC D80080AC */   sw        $zero, 0xD8($a0)
  .L8003BDB0:
    /* 2A5C0 8003BDB0 4801888C */  lw         $t0, 0x148($a0)
    /* 2A5C4 8003BDB4 00000000 */  nop
    /* 2A5C8 8003BDB8 4F000011 */  beqz       $t0, .L8003BEF8
    /* 2A5CC 8003BDBC 21280000 */   addu      $a1, $zero, $zero
    /* 2A5D0 8003BDC0 21300000 */  addu       $a2, $zero, $zero
    /* 2A5D4 8003BDC4 21380000 */  addu       $a3, $zero, $zero
    /* 2A5D8 8003BDC8 1000238E */  lw         $v1, 0x10($s1)
    /* 2A5DC 8003BDCC 00000000 */  nop
    /* 2A5E0 8003BDD0 08006004 */  bltz       $v1, .L8003BDF4
    /* 2A5E4 8003BDD4 21480000 */   addu      $t1, $zero, $zero
    /* 2A5E8 8003BDD8 4C01828C */  lw         $v0, 0x14C($a0)
    /* 2A5EC 8003BDDC 00000000 */  nop
    /* 2A5F0 8003BDE0 2A106200 */  slt        $v0, $v1, $v0
    /* 2A5F4 8003BDE4 03004010 */  beqz       $v0, .L8003BDF4
    /* 2A5F8 8003BDE8 80100300 */   sll       $v0, $v1, 2
    /* 2A5FC 8003BDEC 21104800 */  addu       $v0, $v0, $t0
    /* 2A600 8003BDF0 0000458C */  lw         $a1, 0x0($v0)
  .L8003BDF4:
    /* 2A604 8003BDF4 1400238E */  lw         $v1, 0x14($s1)
    /* 2A608 8003BDF8 00000000 */  nop
    /* 2A60C 8003BDFC 08006004 */  bltz       $v1, .L8003BE20
    /* 2A610 8003BE00 00000000 */   nop
    /* 2A614 8003BE04 4C01828C */  lw         $v0, 0x14C($a0)
    /* 2A618 8003BE08 00000000 */  nop
    /* 2A61C 8003BE0C 2A106200 */  slt        $v0, $v1, $v0
    /* 2A620 8003BE10 03004010 */  beqz       $v0, .L8003BE20
    /* 2A624 8003BE14 80100300 */   sll       $v0, $v1, 2
    /* 2A628 8003BE18 21104800 */  addu       $v0, $v0, $t0
    /* 2A62C 8003BE1C 0000468C */  lw         $a2, 0x0($v0)
  .L8003BE20:
    /* 2A630 8003BE20 1800238E */  lw         $v1, 0x18($s1)
    /* 2A634 8003BE24 00000000 */  nop
    /* 2A638 8003BE28 08006004 */  bltz       $v1, .L8003BE4C
    /* 2A63C 8003BE2C 00000000 */   nop
    /* 2A640 8003BE30 4C01828C */  lw         $v0, 0x14C($a0)
    /* 2A644 8003BE34 00000000 */  nop
    /* 2A648 8003BE38 2A106200 */  slt        $v0, $v1, $v0
    /* 2A64C 8003BE3C 03004010 */  beqz       $v0, .L8003BE4C
    /* 2A650 8003BE40 80100300 */   sll       $v0, $v1, 2
    /* 2A654 8003BE44 21104800 */  addu       $v0, $v0, $t0
    /* 2A658 8003BE48 0000478C */  lw         $a3, 0x0($v0)
  .L8003BE4C:
    /* 2A65C 8003BE4C 1C00238E */  lw         $v1, 0x1C($s1)
    /* 2A660 8003BE50 00000000 */  nop
    /* 2A664 8003BE54 09006004 */  bltz       $v1, .L8003BE7C
    /* 2A668 8003BE58 D8009024 */   addiu     $s0, $a0, 0xD8
    /* 2A66C 8003BE5C 4C01828C */  lw         $v0, 0x14C($a0)
    /* 2A670 8003BE60 00000000 */  nop
    /* 2A674 8003BE64 2A106200 */  slt        $v0, $v1, $v0
    /* 2A678 8003BE68 04004010 */  beqz       $v0, .L8003BE7C
    /* 2A67C 8003BE6C 80100300 */   sll       $v0, $v1, 2
    /* 2A680 8003BE70 21104800 */  addu       $v0, $v0, $t0
    /* 2A684 8003BE74 0000498C */  lw         $t1, 0x0($v0)
    /* 2A688 8003BE78 D8009024 */  addiu      $s0, $a0, 0xD8
  .L8003BE7C:
    /* 2A68C 8003BE7C 21200002 */  addu       $a0, $s0, $zero
    /* 2A690 8003BE80 FA31020C */  jal        func_8008C7E8
    /* 2A694 8003BE84 1000A9AF */   sw        $t1, 0x10($sp)
    /* 2A698 8003BE88 0000228E */  lw         $v0, 0x0($s1)
    /* 2A69C 8003BE8C 0400238E */  lw         $v1, 0x4($s1)
    /* 2A6A0 8003BE90 080002AE */  sw         $v0, 0x8($s0)
    /* 2A6A4 8003BE94 BEEF0008 */  j          .L8003BEF8
    /* 2A6A8 8003BE98 0C0003AE */   sw        $v1, 0xC($s0)
  .L8003BE9C:
    /* 2A6AC 8003BE9C 1800A627 */  addiu      $a2, $sp, 0x18
    /* 2A6B0 8003BEA0 1C00A727 */  addiu      $a3, $sp, 0x1C
    /* 2A6B4 8003BEA4 2000A227 */  addiu      $v0, $sp, 0x20
    /* 2A6B8 8003BEA8 1000A2AF */  sw         $v0, 0x10($sp)
    /* 2A6BC 8003BEAC 1000238E */  lw         $v1, 0x10($s1)
    /* 2A6C0 8003BEB0 1400288E */  lw         $t0, 0x14($s1)
    /* 2A6C4 8003BEB4 1800298E */  lw         $t1, 0x18($s1)
    /* 2A6C8 8003BEB8 1C002A8E */  lw         $t2, 0x1C($s1)
    /* 2A6CC 8003BEBC 2400A227 */  addiu      $v0, $sp, 0x24
    /* 2A6D0 8003BEC0 1400A2AF */  sw         $v0, 0x14($sp)
    /* 2A6D4 8003BEC4 1800A3AF */  sw         $v1, 0x18($sp)
    /* 2A6D8 8003BEC8 1C00A8AF */  sw         $t0, 0x1C($sp)
    /* 2A6DC 8003BECC 2000A9AF */  sw         $t1, 0x20($sp)
    /* 2A6E0 8003BED0 0232020C */  jal        func_8008C808
    /* 2A6E4 8003BED4 2400AAAF */   sw        $t2, 0x24($sp)
    /* 2A6E8 8003BED8 0000228E */  lw         $v0, 0x0($s1)
    /* 2A6EC 8003BEDC 0400238E */  lw         $v1, 0x4($s1)
    /* 2A6F0 8003BEE0 080002AE */  sw         $v0, 0x8($s0)
    /* 2A6F4 8003BEE4 0C0003AE */  sw         $v1, 0xC($s0)
    /* 2A6F8 8003BEE8 0800248E */  lw         $a0, 0x8($s1)
    /* 2A6FC 8003BEEC 0C00228E */  lw         $v0, 0xC($s1)
    /* 2A700 8003BEF0 180004AE */  sw         $a0, 0x18($s0)
    /* 2A704 8003BEF4 1C0002AE */  sw         $v0, 0x1C($s0)
  .L8003BEF8:
    /* 2A708 8003BEF8 3000BF8F */  lw         $ra, 0x30($sp)
    /* 2A70C 8003BEFC 2C00B18F */  lw         $s1, 0x2C($sp)
    /* 2A710 8003BF00 2800B08F */  lw         $s0, 0x28($sp)
    /* 2A714 8003BF04 0800E003 */  jr         $ra
    /* 2A718 8003BF08 3800BD27 */   addiu     $sp, $sp, 0x38
endlabel func_8003BD5C
