nonmatching func_8008BCB0, 0x850

glabel func_8008BCB0
    /* 7A4C0 8008BCB0 40FFBD27 */  addiu      $sp, $sp, -0xC0
    /* 7A4C4 8008BCB4 B000B6AF */  sw         $s6, 0xB0($sp)
    /* 7A4C8 8008BCB8 21B08000 */  addu       $s6, $a0, $zero
    /* 7A4CC 8008BCBC 0C00C226 */  addiu      $v0, $s6, 0xC
    /* 7A4D0 8008BCC0 AC00B5AF */  sw         $s5, 0xAC($sp)
    /* 7A4D4 8008BCC4 21A8A000 */  addu       $s5, $a1, $zero
    /* 7A4D8 8008BCC8 B800BFAF */  sw         $ra, 0xB8($sp)
    /* 7A4DC 8008BCCC B400B7AF */  sw         $s7, 0xB4($sp)
    /* 7A4E0 8008BCD0 A800B4AF */  sw         $s4, 0xA8($sp)
    /* 7A4E4 8008BCD4 A400B3AF */  sw         $s3, 0xA4($sp)
    /* 7A4E8 8008BCD8 A000B2AF */  sw         $s2, 0xA0($sp)
    /* 7A4EC 8008BCDC 9C00B1AF */  sw         $s1, 0x9C($sp)
    /* 7A4F0 8008BCE0 9800B0AF */  sw         $s0, 0x98($sp)
    /* 7A4F4 8008BCE4 0C00C38E */  lw         $v1, 0xC($s6)
    /* 7A4F8 8008BCE8 0400448C */  lw         $a0, 0x4($v0)
    /* 7A4FC 8008BCEC 0800468C */  lw         $a2, 0x8($v0)
    /* 7A500 8008BCF0 0D800F3C */  lui        $t7, %hi(D_800CBE48)
    /* 7A504 8008BCF4 48BEEF25 */  addiu      $t7, $t7, %lo(D_800CBE48)
    /* 7A508 8008BCF8 0000EC8D */  lw         $t4, 0x0($t7)
    /* 7A50C 8008BCFC 0400ED8D */  lw         $t5, 0x4($t7)
    /* 7A510 8008BD00 0800EE8D */  lw         $t6, 0x8($t7)
    /* 7A514 8008BD04 1800ACAF */  sw         $t4, 0x18($sp)
    /* 7A518 8008BD08 1C00ADAF */  sw         $t5, 0x1C($sp)
    /* 7A51C 8008BD0C 2000AEAF */  sw         $t6, 0x20($sp)
    /* 7A520 8008BD10 587783AF */  sw         $v1, %gp_rel(D_800CBE48)($gp)
    /* 7A524 8008BD14 5C7784AF */  sw         $a0, %gp_rel(D_800CBE4C)($gp)
    /* 7A528 8008BD18 607786AF */  sw         $a2, %gp_rel(D_800CBE50)($gp)
    /* 7A52C 8008BD1C 5800C48E */  lw         $a0, 0x58($s6)
    /* 7A530 8008BD20 D000B38F */  lw         $s3, 0xD0($sp)
    /* 7A534 8008BD24 01008230 */  andi       $v0, $a0, 0x1
    /* 7A538 8008BD28 36004010 */  beqz       $v0, .L8008BE04
    /* 7A53C 8008BD2C 21B8E000 */   addu      $s7, $a3, $zero
    /* 7A540 8008BD30 6200C286 */  lh         $v0, 0x62($s6)
    /* 7A544 8008BD34 E076838F */  lw         $v1, %gp_rel(D_800CBDD0)($gp)
    /* 7A548 8008BD38 00000000 */  nop
    /* 7A54C 8008BD3C 2A106200 */  slt        $v0, $v1, $v0
    /* 7A550 8008BD40 2D004010 */  beqz       $v0, .L8008BDF8
    /* 7A554 8008BD44 18006300 */   mult      $v1, $v1
    /* 7A558 8008BD48 12900000 */  mflo       $s2
    /* 7A55C 8008BD4C 00000000 */  nop
    /* 7A560 8008BD50 00000000 */  nop
    /* 7A564 8008BD54 18004302 */  mult       $s2, $v1
    /* 7A568 8008BD58 2800B127 */  addiu      $s1, $sp, 0x28
    /* 7A56C 8008BD5C 1877828F */  lw         $v0, %gp_rel(D_800CBE08)($gp)
    /* 7A570 8008BD60 2077868F */  lw         $a2, %gp_rel(D_800CBE10)($gp)
    /* 7A574 8008BD64 1C77838F */  lw         $v1, %gp_rel(D_800CBE0C)($gp)
    /* 7A578 8008BD68 21202002 */  addu       $a0, $s1, $zero
    /* 7A57C 8008BD6C 2800A2AF */  sw         $v0, 0x28($sp)
    /* 7A580 8008BD70 3000A6AF */  sw         $a2, 0x30($sp)
    /* 7A584 8008BD74 2C00A3AF */  sw         $v1, 0x2C($sp)
    /* 7A588 8008BD78 12280000 */  mflo       $a1
    /* 7A58C 8008BD7C 9365020C */  jal        func_8009964C
    /* 7A590 8008BD80 032A0500 */   sra       $a1, $a1, 8
    /* 7A594 8008BD84 3800B027 */  addiu      $s0, $sp, 0x38
    /* 7A598 8008BD88 21200002 */  addu       $a0, $s0, $zero
    /* 7A59C 8008BD8C 0D80053C */  lui        $a1, %hi(D_800CBE18)
    /* 7A5A0 8008BD90 18BEA524 */  addiu      $a1, $a1, %lo(D_800CBE18)
    /* 7A5A4 8008BD94 C665020C */  jal        func_80099718
    /* 7A5A8 8008BD98 21304002 */   addu      $a2, $s2, $zero
    /* 7A5AC 8008BD9C 21202002 */  addu       $a0, $s1, $zero
    /* 7A5B0 8008BDA0 F465020C */  jal        func_800997D0
    /* 7A5B4 8008BDA4 21280002 */   addu      $a1, $s0, $zero
    /* 7A5B8 8008BDA8 E076868F */  lw         $a2, %gp_rel(D_800CBDD0)($gp)
    /* 7A5BC 8008BDAC 0D80053C */  lui        $a1, %hi(D_800CBE28)
    /* 7A5C0 8008BDB0 28BEA524 */  addiu      $a1, $a1, %lo(D_800CBE28)
    /* 7A5C4 8008BDB4 C665020C */  jal        func_80099718
    /* 7A5C8 8008BDB8 21200002 */   addu      $a0, $s0, $zero
    /* 7A5CC 8008BDBC 21202002 */  addu       $a0, $s1, $zero
    /* 7A5D0 8008BDC0 F465020C */  jal        func_800997D0
    /* 7A5D4 8008BDC4 21280002 */   addu      $a1, $s0, $zero
    /* 7A5D8 8008BDC8 0D80053C */  lui        $a1, %hi(D_800CBE38)
    /* 7A5DC 8008BDCC 38BEA524 */  addiu      $a1, $a1, %lo(D_800CBE38)
    /* 7A5E0 8008BDD0 F465020C */  jal        func_800997D0
    /* 7A5E4 8008BDD4 21202002 */   addu      $a0, $s1, $zero
    /* 7A5E8 8008BDD8 2800A38F */  lw         $v1, 0x28($sp)
    /* 7A5EC 8008BDDC 2C00A28F */  lw         $v0, 0x2C($sp)
    /* 7A5F0 8008BDE0 3000A48F */  lw         $a0, 0x30($sp)
    /* 7A5F4 8008BDE4 587783AF */  sw         $v1, %gp_rel(D_800CBE48)($gp)
    /* 7A5F8 8008BDE8 5C7782AF */  sw         $v0, %gp_rel(D_800CBE4C)($gp)
    /* 7A5FC 8008BDEC 607784AF */  sw         $a0, %gp_rel(D_800CBE50)($gp)
    /* 7A600 8008BDF0 812F0208 */  j          .L8008BE04
    /* 7A604 8008BDF4 00000000 */   nop
  .L8008BDF8:
    /* 7A608 8008BDF8 DFFF0224 */  addiu      $v0, $zero, -0x21
    /* 7A60C 8008BDFC 24108200 */  and        $v0, $a0, $v0
    /* 7A610 8008BE00 5800C2AE */  sw         $v0, 0x58($s6)
  .L8008BE04:
    /* 7A614 8008BE04 0D80043C */  lui        $a0, %hi(D_800CBDF8)
    /* 7A618 8008BE08 F8BD8424 */  addiu      $a0, $a0, %lo(D_800CBDF8)
    /* 7A61C 8008BE0C 5877828F */  lw         $v0, %gp_rel(D_800CBE48)($gp)
    /* 7A620 8008BE10 5C77838F */  lw         $v1, %gp_rel(D_800CBE4C)($gp)
    /* 7A624 8008BE14 6077858F */  lw         $a1, %gp_rel(D_800CBE50)($gp)
    /* 7A628 8008BE18 F800B126 */  addiu      $s1, $s5, 0xF8
    /* 7A62C 8008BE1C F800A2AE */  sw         $v0, 0xF8($s5)
    /* 7A630 8008BE20 040023AE */  sw         $v1, 0x4($s1)
    /* 7A634 8008BE24 080025AE */  sw         $a1, 0x8($s1)
    /* 7A638 8008BE28 5877828F */  lw         $v0, %gp_rel(D_800CBE48)($gp)
    /* 7A63C 8008BE2C 5C77838F */  lw         $v1, %gp_rel(D_800CBE4C)($gp)
    /* 7A640 8008BE30 6077868F */  lw         $a2, %gp_rel(D_800CBE50)($gp)
    /* 7A644 8008BE34 0D80053C */  lui        $a1, %hi(D_800CBDD8)
    /* 7A648 8008BE38 D8BDA524 */  addiu      $a1, $a1, %lo(D_800CBDD8)
    /* 7A64C 8008BE3C 087782AF */  sw         $v0, %gp_rel(D_800CBDF8)($gp)
    /* 7A650 8008BE40 0C7783AF */  sw         $v1, %gp_rel(D_800CBDFC)($gp)
    /* 7A654 8008BE44 107786AF */  sw         $a2, %gp_rel(D_800CBE00)($gp)
    /* 7A658 8008BE48 0D66020C */  jal        func_80099834
    /* 7A65C 8008BE4C 00000000 */   nop
    /* 7A660 8008BE50 5877838F */  lw         $v1, %gp_rel(D_800CBE48)($gp)
    /* 7A664 8008BE54 5C77828F */  lw         $v0, %gp_rel(D_800CBE4C)($gp)
    /* 7A668 8008BE58 6077848F */  lw         $a0, %gp_rel(D_800CBE50)($gp)
    /* 7A66C 8008BE5C E87683AF */  sw         $v1, %gp_rel(D_800CBDD8)($gp)
    /* 7A670 8008BE60 EC7682AF */  sw         $v0, %gp_rel(D_800CBDDC)($gp)
    /* 7A674 8008BE64 F07684AF */  sw         $a0, %gp_rel(D_800CBDE0)($gp)
    /* 7A678 8008BE68 6000C386 */  lh         $v1, 0x60($s6)
    /* 7A67C 8008BE6C 00000000 */  nop
    /* 7A680 8008BE70 03006010 */  beqz       $v1, .L8008BE80
    /* 7A684 8008BE74 04000224 */   addiu     $v0, $zero, 0x4
    /* 7A688 8008BE78 40006214 */  bne        $v1, $v0, .L8008BF7C
    /* 7A68C 8008BE7C 00000000 */   nop
  .L8008BE80:
    /* 7A690 8008BE80 2800B027 */  addiu      $s0, $sp, 0x28
    /* 7A694 8008BE84 0D80053C */  lui        $a1, %hi(D_800CBE48)
    /* 7A698 8008BE88 48BEA524 */  addiu      $a1, $a1, %lo(D_800CBE48)
    /* 7A69C 8008BE8C 00006C8E */  lw         $t4, 0x0($s3)
    /* 7A6A0 8008BE90 04006D8E */  lw         $t5, 0x4($s3)
    /* 7A6A4 8008BE94 08006E8E */  lw         $t6, 0x8($s3)
    /* 7A6A8 8008BE98 2800ACAF */  sw         $t4, 0x28($sp)
    /* 7A6AC 8008BE9C 2C00ADAF */  sw         $t5, 0x2C($sp)
    /* 7A6B0 8008BEA0 3000AEAF */  sw         $t6, 0x30($sp)
    /* 7A6B4 8008BEA4 0D66020C */  jal        func_80099834
    /* 7A6B8 8008BEA8 21200002 */   addu      $a0, $s0, $zero
    /* 7A6BC 8008BEAC 8F64020C */  jal        func_8009923C
    /* 7A6C0 8008BEB0 21200002 */   addu      $a0, $s0, $zero
    /* 7A6C4 8008BEB4 00500424 */  addiu      $a0, $zero, 0x5000
    /* 7A6C8 8008BEB8 5AB9020C */  jal        func_800AE568
    /* 7A6CC 8008BEBC 21284000 */   addu      $a1, $v0, $zero
    /* 7A6D0 8008BEC0 5800C38E */  lw         $v1, 0x58($s6)
    /* 7A6D4 8008BEC4 00000000 */  nop
    /* 7A6D8 8008BEC8 01006330 */  andi       $v1, $v1, 0x1
    /* 7A6DC 8008BECC 15006010 */  beqz       $v1, .L8008BF24
    /* 7A6E0 8008BED0 21284000 */   addu      $a1, $v0, $zero
    /* 7A6E4 8008BED4 6200C486 */  lh         $a0, 0x62($s6)
    /* 7A6E8 8008BED8 E076838F */  lw         $v1, %gp_rel(D_800CBDD0)($gp)
    /* 7A6EC 8008BEDC 00000000 */  nop
    /* 7A6F0 8008BEE0 2A106400 */  slt        $v0, $v1, $a0
    /* 7A6F4 8008BEE4 0C004010 */  beqz       $v0, .L8008BF18
    /* 7A6F8 8008BEE8 1800A300 */   mult      $a1, $v1
    /* 7A6FC 8008BEEC 12280000 */  mflo       $a1
    /* 7A700 8008BEF0 DA768287 */  lh         $v0, %gp_rel(D_800CBDCA)($gp)
    /* 7A704 8008BEF4 23188300 */  subu       $v1, $a0, $v1
    /* 7A708 8008BEF8 18004300 */  mult       $v0, $v1
    /* 7A70C 8008BEFC 12100000 */  mflo       $v0
    /* 7A710 8008BF00 2128A200 */  addu       $a1, $a1, $v0
    /* 7A714 8008BF04 00000000 */  nop
    /* 7A718 8008BF08 1A00A400 */  div        $zero, $a1, $a0
    /* 7A71C 8008BF0C 12280000 */  mflo       $a1
    /* 7A720 8008BF10 D42F0208 */  j          .L8008BF50
    /* 7A724 8008BF14 00000000 */   nop
  .L8008BF18:
    /* 7A728 8008BF18 DA768587 */  lh         $a1, %gp_rel(D_800CBDCA)($gp)
    /* 7A72C 8008BF1C D42F0208 */  j          .L8008BF50
    /* 7A730 8008BF20 00000000 */   nop
  .L8008BF24:
    /* 7A734 8008BF24 6000C386 */  lh         $v1, 0x60($s6)
    /* 7A738 8008BF28 04000224 */  addiu      $v0, $zero, 0x4
    /* 7A73C 8008BF2C 08006214 */  bne        $v1, $v0, .L8008BF50
    /* 7A740 8008BF30 00000000 */   nop
    /* 7A744 8008BF34 DA768487 */  lh         $a0, %gp_rel(D_800CBDCA)($gp)
    /* 7A748 8008BF38 6600C386 */  lh         $v1, 0x66($s6)
    /* 7A74C 8008BF3C 2310A400 */  subu       $v0, $a1, $a0
    /* 7A750 8008BF40 1A004300 */  div        $zero, $v0, $v1
    /* 7A754 8008BF44 12100000 */  mflo       $v0
    /* 7A758 8008BF48 00000000 */  nop
    /* 7A75C 8008BF4C 21288200 */  addu       $a1, $a0, $v0
  .L8008BF50:
    /* 7A760 8008BF50 6E00C286 */  lh         $v0, 0x6E($s6)
    /* 7A764 8008BF54 6E00C396 */  lhu        $v1, 0x6E($s6)
    /* 7A768 8008BF58 2A104500 */  slt        $v0, $v0, $a1
    /* 7A76C 8008BF5C 04004010 */  beqz       $v0, .L8008BF70
    /* 7A770 8008BF60 00000000 */   nop
    /* 7A774 8008BF64 DA7683A7 */  sh         $v1, %gp_rel(D_800CBDCA)($gp)
    /* 7A778 8008BF68 03300208 */  j          .L8008C00C
    /* 7A77C 8008BF6C 00000000 */   nop
  .L8008BF70:
    /* 7A780 8008BF70 DA7685A7 */  sh         $a1, %gp_rel(D_800CBDCA)($gp)
    /* 7A784 8008BF74 03300208 */  j          .L8008C00C
    /* 7A788 8008BF78 00000000 */   nop
  .L8008BF7C:
    /* 7A78C 8008BF7C 5800C28E */  lw         $v0, 0x58($s6)
    /* 7A790 8008BF80 00000000 */  nop
    /* 7A794 8008BF84 01004230 */  andi       $v0, $v0, 0x1
    /* 7A798 8008BF88 1D004010 */  beqz       $v0, .L8008C000
    /* 7A79C 8008BF8C 00000000 */   nop
    /* 7A7A0 8008BF90 DA768287 */  lh         $v0, %gp_rel(D_800CBDCA)($gp)
    /* 7A7A4 8008BF94 6E00C386 */  lh         $v1, 0x6E($s6)
    /* 7A7A8 8008BF98 6E00C696 */  lhu        $a2, 0x6E($s6)
    /* 7A7AC 8008BF9C 2A106200 */  slt        $v0, $v1, $v0
    /* 7A7B0 8008BFA0 07004014 */  bnez       $v0, .L8008BFC0
    /* 7A7B4 8008BFA4 00000000 */   nop
    /* 7A7B8 8008BFA8 6200C586 */  lh         $a1, 0x62($s6)
    /* 7A7BC 8008BFAC E076848F */  lw         $a0, %gp_rel(D_800CBDD0)($gp)
    /* 7A7C0 8008BFB0 00000000 */  nop
    /* 7A7C4 8008BFB4 2A10A400 */  slt        $v0, $a1, $a0
    /* 7A7C8 8008BFB8 04004010 */  beqz       $v0, .L8008BFCC
    /* 7A7CC 8008BFBC 18006400 */   mult      $v1, $a0
  .L8008BFC0:
    /* 7A7D0 8008BFC0 DA7686A7 */  sh         $a2, %gp_rel(D_800CBDCA)($gp)
    /* 7A7D4 8008BFC4 03300208 */  j          .L8008C00C
    /* 7A7D8 8008BFC8 00000000 */   nop
  .L8008BFCC:
    /* 7A7DC 8008BFCC 12180000 */  mflo       $v1
    /* 7A7E0 8008BFD0 D8768287 */  lh         $v0, %gp_rel(D_800CBDC8)($gp)
    /* 7A7E4 8008BFD4 2320A400 */  subu       $a0, $a1, $a0
    /* 7A7E8 8008BFD8 18004400 */  mult       $v0, $a0
    /* 7A7EC 8008BFDC 12100000 */  mflo       $v0
    /* 7A7F0 8008BFE0 21186200 */  addu       $v1, $v1, $v0
    /* 7A7F4 8008BFE4 00000000 */  nop
    /* 7A7F8 8008BFE8 1A006500 */  div        $zero, $v1, $a1
    /* 7A7FC 8008BFEC 12180000 */  mflo       $v1
    /* 7A800 8008BFF0 00000000 */  nop
    /* 7A804 8008BFF4 DA7683A7 */  sh         $v1, %gp_rel(D_800CBDCA)($gp)
    /* 7A808 8008BFF8 03300208 */  j          .L8008C00C
    /* 7A80C 8008BFFC 00000000 */   nop
  .L8008C000:
    /* 7A810 8008C000 6E00C296 */  lhu        $v0, 0x6E($s6)
    /* 7A814 8008C004 00000000 */  nop
    /* 7A818 8008C008 DA7682A7 */  sh         $v0, %gp_rel(D_800CBDCA)($gp)
  .L8008C00C:
    /* 7A81C 8008C00C DA768287 */  lh         $v0, %gp_rel(D_800CBDCA)($gp)
    /* 7A820 8008C010 00000000 */  nop
    /* 7A824 8008C014 64004228 */  slti       $v0, $v0, 0x64
    /* 7A828 8008C018 02004010 */  beqz       $v0, .L8008C024
    /* 7A82C 8008C01C 64000224 */   addiu     $v0, $zero, 0x64
    /* 7A830 8008C020 DA7682A7 */  sh         $v0, %gp_rel(D_800CBDCA)($gp)
  .L8008C024:
    /* 7A834 8008C024 6000C386 */  lh         $v1, 0x60($s6)
    /* 7A838 8008C028 02000224 */  addiu      $v0, $zero, 0x2
    /* 7A83C 8008C02C 5F006210 */  beq        $v1, $v0, .L8008C1AC
    /* 7A840 8008C030 03006228 */   slti      $v0, $v1, 0x3
    /* 7A844 8008C034 05004010 */  beqz       $v0, .L8008C04C
    /* 7A848 8008C038 04000224 */   addiu     $v0, $zero, 0x4
    /* 7A84C 8008C03C 01016004 */  bltz       $v1, .L8008C444
    /* 7A850 8008C040 2800B427 */   addiu     $s4, $sp, 0x28
    /* 7A854 8008C044 16300208 */  j          .L8008C058
    /* 7A858 8008C048 21208002 */   addu      $a0, $s4, $zero
  .L8008C04C:
    /* 7A85C 8008C04C FD006214 */  bne        $v1, $v0, .L8008C444
    /* 7A860 8008C050 2800B427 */   addiu     $s4, $sp, 0x28
    /* 7A864 8008C054 21208002 */  addu       $a0, $s4, $zero
  .L8008C058:
    /* 7A868 8008C058 00006C8E */  lw         $t4, 0x0($s3)
    /* 7A86C 8008C05C 04006D8E */  lw         $t5, 0x4($s3)
    /* 7A870 8008C060 08006E8E */  lw         $t6, 0x8($s3)
    /* 7A874 8008C064 2800ACAF */  sw         $t4, 0x28($sp)
    /* 7A878 8008C068 2C00ADAF */  sw         $t5, 0x2C($sp)
    /* 7A87C 8008C06C 3000AEAF */  sw         $t6, 0x30($sp)
    /* 7A880 8008C070 2C00A38F */  lw         $v1, 0x2C($sp)
    /* 7A884 8008C074 21282002 */  addu       $a1, $s1, $zero
    /* 7A888 8008C078 00106324 */  addiu      $v1, $v1, 0x1000
    /* 7A88C 8008C07C 0D66020C */  jal        func_80099834
    /* 7A890 8008C080 2C00A3AF */   sw        $v1, 0x2C($sp)
    /* 7A894 8008C084 4800B327 */  addiu      $s3, $sp, 0x48
    /* 7A898 8008C088 21206002 */  addu       $a0, $s3, $zero
    /* 7A89C 8008C08C 5800B227 */  addiu      $s2, $sp, 0x58
    /* 7A8A0 8008C090 21284002 */  addu       $a1, $s2, $zero
    /* 7A8A4 8008C094 21308002 */  addu       $a2, $s4, $zero
    /* 7A8A8 8008C098 00100224 */  addiu      $v0, $zero, 0x1000
    /* 7A8AC 8008C09C 5800A0AF */  sw         $zero, 0x58($sp)
    /* 7A8B0 8008C0A0 040042AE */  sw         $v0, 0x4($s2)
    /* 7A8B4 8008C0A4 4266020C */  jal        func_80099908
    /* 7A8B8 8008C0A8 6000A0AF */   sw        $zero, 0x60($sp)
    /* 7A8BC 8008C0AC 21204002 */  addu       $a0, $s2, $zero
    /* 7A8C0 8008C0B0 21288002 */  addu       $a1, $s4, $zero
    /* 7A8C4 8008C0B4 4266020C */  jal        func_80099908
    /* 7A8C8 8008C0B8 21306002 */   addu      $a2, $s3, $zero
    /* 7A8CC 8008C0BC 21206002 */  addu       $a0, $s3, $zero
    /* 7A8D0 8008C0C0 E563020C */  jal        func_80098F94
    /* 7A8D4 8008C0C4 0D000524 */   addiu     $a1, $zero, 0xD
    /* 7A8D8 8008C0C8 21204002 */  addu       $a0, $s2, $zero
    /* 7A8DC 8008C0CC E563020C */  jal        func_80098F94
    /* 7A8E0 8008C0D0 0D000524 */   addiu     $a1, $zero, 0xD
    /* 7A8E4 8008C0D4 21208002 */  addu       $a0, $s4, $zero
    /* 7A8E8 8008C0D8 E563020C */  jal        func_80098F94
    /* 7A8EC 8008C0DC 0D000524 */   addiu     $a1, $zero, 0xD
    /* 7A8F0 8008C0E0 21206002 */  addu       $a0, $s3, $zero
    /* 7A8F4 8008C0E4 6800B127 */  addiu      $s1, $sp, 0x68
    /* 7A8F8 8008C0E8 21282002 */  addu       $a1, $s1, $zero
    /* 7A8FC 8008C0EC 01001024 */  addiu      $s0, $zero, 0x1
    /* 7A900 8008C0F0 6800B0AF */  sw         $s0, 0x68($sp)
    /* 7A904 8008C0F4 040030AE */  sw         $s0, 0x4($s1)
    /* 7A908 8008C0F8 F465020C */  jal        func_800997D0
    /* 7A90C 8008C0FC 080030AE */   sw        $s0, 0x8($s1)
    /* 7A910 8008C100 21204002 */  addu       $a0, $s2, $zero
    /* 7A914 8008C104 21282002 */  addu       $a1, $s1, $zero
    /* 7A918 8008C108 6800B0AF */  sw         $s0, 0x68($sp)
    /* 7A91C 8008C10C 040030AE */  sw         $s0, 0x4($s1)
    /* 7A920 8008C110 F465020C */  jal        func_800997D0
    /* 7A924 8008C114 080030AE */   sw        $s0, 0x8($s1)
    /* 7A928 8008C118 21208002 */  addu       $a0, $s4, $zero
    /* 7A92C 8008C11C 21282002 */  addu       $a1, $s1, $zero
    /* 7A930 8008C120 6800B0AF */  sw         $s0, 0x68($sp)
    /* 7A934 8008C124 040030AE */  sw         $s0, 0x4($s1)
    /* 7A938 8008C128 F465020C */  jal        func_800997D0
    /* 7A93C 8008C12C 080030AE */   sw        $s0, 0x8($s1)
    /* 7A940 8008C130 21206002 */  addu       $a0, $s3, $zero
    /* 7A944 8008C134 5267020C */  jal        func_80099D48
    /* 7A948 8008C138 01000524 */   addiu     $a1, $zero, 0x1
    /* 7A94C 8008C13C 21204002 */  addu       $a0, $s2, $zero
    /* 7A950 8008C140 5267020C */  jal        func_80099D48
    /* 7A954 8008C144 01000524 */   addiu     $a1, $zero, 0x1
    /* 7A958 8008C148 21208002 */  addu       $a0, $s4, $zero
    /* 7A95C 8008C14C 5267020C */  jal        func_80099D48
    /* 7A960 8008C150 01000524 */   addiu     $a1, $zero, 0x1
    /* 7A964 8008C154 4800A397 */  lhu        $v1, 0x48($sp)
    /* 7A968 8008C158 4C00A297 */  lhu        $v0, 0x4C($sp)
    /* 7A96C 8008C15C 5000A597 */  lhu        $a1, 0x50($sp)
    /* 7A970 8008C160 5800A697 */  lhu        $a2, 0x58($sp)
    /* 7A974 8008C164 5C00A797 */  lhu        $a3, 0x5C($sp)
    /* 7A978 8008C168 6000A897 */  lhu        $t0, 0x60($sp)
    /* 7A97C 8008C16C 2800A997 */  lhu        $t1, 0x28($sp)
    /* 7A980 8008C170 2C00AA97 */  lhu        $t2, 0x2C($sp)
    /* 7A984 8008C174 3000AB97 */  lhu        $t3, 0x30($sp)
    /* 7A988 8008C178 2120A002 */  addu       $a0, $s5, $zero
    /* 7A98C 8008C17C 0000A3A6 */  sh         $v1, 0x0($s5)
    /* 7A990 8008C180 0600A2A6 */  sh         $v0, 0x6($s5)
    /* 7A994 8008C184 0C00A5A6 */  sh         $a1, 0xC($s5)
    /* 7A998 8008C188 0200A6A6 */  sh         $a2, 0x2($s5)
    /* 7A99C 8008C18C 0800A7A6 */  sh         $a3, 0x8($s5)
    /* 7A9A0 8008C190 0E00A8A6 */  sh         $t0, 0xE($s5)
    /* 7A9A4 8008C194 0400A9A6 */  sh         $t1, 0x4($s5)
    /* 7A9A8 8008C198 0A00AAA6 */  sh         $t2, 0xA($s5)
    /* 7A9AC 8008C19C 3D60020C */  jal        func_800980F4
    /* 7A9B0 8008C1A0 1000ABA6 */   sh        $t3, 0x10($s5)
    /* 7A9B4 8008C1A4 11310208 */  j          .L8008C444
    /* 7A9B8 8008C1A8 00000000 */   nop
  .L8008C1AC:
    /* 7A9BC 8008C1AC 2800B027 */  addiu      $s0, $sp, 0x28
    /* 7A9C0 8008C1B0 21200002 */  addu       $a0, $s0, $zero
    /* 7A9C4 8008C1B4 00006C8E */  lw         $t4, 0x0($s3)
    /* 7A9C8 8008C1B8 04006D8E */  lw         $t5, 0x4($s3)
    /* 7A9CC 8008C1BC 08006E8E */  lw         $t6, 0x8($s3)
    /* 7A9D0 8008C1C0 2800ACAF */  sw         $t4, 0x28($sp)
    /* 7A9D4 8008C1C4 2C00ADAF */  sw         $t5, 0x2C($sp)
    /* 7A9D8 8008C1C8 3000AEAF */  sw         $t6, 0x30($sp)
    /* 7A9DC 8008C1CC 2C00A38F */  lw         $v1, 0x2C($sp)
    /* 7A9E0 8008C1D0 21282002 */  addu       $a1, $s1, $zero
    /* 7A9E4 8008C1D4 00106324 */  addiu      $v1, $v1, 0x1000
    /* 7A9E8 8008C1D8 0D66020C */  jal        func_80099834
    /* 7A9EC 8008C1DC 2C00A3AF */   sw        $v1, 0x2C($sp)
    /* 7A9F0 8008C1E0 A763020C */  jal        func_80098E9C
    /* 7A9F4 8008C1E4 21200002 */   addu      $a0, $s0, $zero
    /* 7A9F8 8008C1E8 2800A28F */  lw         $v0, 0x28($sp)
    /* 7A9FC 8008C1EC 00000000 */  nop
    /* 7AA00 8008C1F0 18004200 */  mult       $v0, $v0
    /* 7AA04 8008C1F4 12100000 */  mflo       $v0
    /* 7AA08 8008C1F8 3000A48F */  lw         $a0, 0x30($sp)
    /* 7AA0C 8008C1FC 00000000 */  nop
    /* 7AA10 8008C200 18008400 */  mult       $a0, $a0
    /* 7AA14 8008C204 6A00C586 */  lh         $a1, 0x6A($s6)
    /* 7AA18 8008C208 6C00C386 */  lh         $v1, 0x6C($s6)
    /* 7AA1C 8008C20C 00000000 */  nop
    /* 7AA20 8008C210 2380A300 */  subu       $s0, $a1, $v1
    /* 7AA24 8008C214 12200000 */  mflo       $a0
    /* 7AA28 8008C218 B25E020C */  jal        func_80097AC8
    /* 7AA2C 8008C21C 21204400 */   addu      $a0, $v0, $a0
    /* 7AA30 8008C220 21384000 */  addu       $a3, $v0, $zero
    /* 7AA34 8008C224 8700E010 */  beqz       $a3, .L8008C444
    /* 7AA38 8008C228 0C80133C */   lui       $s3, %hi(D_800BF3A0)
    /* 7AA3C 8008C22C 6400C386 */  lh         $v1, 0x64($s6)
    /* 7AA40 8008C230 E076828F */  lw         $v0, %gp_rel(D_800CBDD0)($gp)
    /* 7AA44 8008C234 00000000 */  nop
    /* 7AA48 8008C238 18004300 */  mult       $v0, $v1
    /* 7AA4C 8008C23C A0F36926 */  addiu      $t1, $s3, %lo(D_800BF3A0)
    /* 7AA50 8008C240 12100000 */  mflo       $v0
    /* 7AA54 8008C244 FF0F4230 */  andi       $v0, $v0, 0xFFF
    /* 7AA58 8008C248 80100200 */  sll        $v0, $v0, 2
    /* 7AA5C 8008C24C 21104900 */  addu       $v0, $v0, $t1
    /* 7AA60 8008C250 00004384 */  lh         $v1, 0x0($v0)
    /* 7AA64 8008C254 3800A427 */  addiu      $a0, $sp, 0x38
    /* 7AA68 8008C258 00106324 */  addiu      $v1, $v1, 0x1000
    /* 7AA6C 8008C25C 18000302 */  mult       $s0, $v1
    /* 7AA70 8008C260 2128A002 */  addu       $a1, $s5, $zero
    /* 7AA74 8008C264 7800A627 */  addiu      $a2, $sp, 0x78
    /* 7AA78 8008C268 00100B24 */  addiu      $t3, $zero, 0x1000
    /* 7AA7C 8008C26C 3800ABA7 */  sh         $t3, 0x38($sp)
    /* 7AA80 8008C270 3E00A0A7 */  sh         $zero, 0x3E($sp)
    /* 7AA84 8008C274 3A00A0A7 */  sh         $zero, 0x3A($sp)
    /* 7AA88 8008C278 4400A0A7 */  sh         $zero, 0x44($sp)
    /* 7AA8C 8008C27C 3C00A0A7 */  sh         $zero, 0x3C($sp)
    /* 7AA90 8008C280 4800A7A7 */  sh         $a3, 0x48($sp)
    /* 7AA94 8008C284 4000A7A7 */  sh         $a3, 0x40($sp)
    /* 7AA98 8008C288 6C00C786 */  lh         $a3, 0x6C($s6)
    /* 7AA9C 8008C28C 12180000 */  mflo       $v1
    /* 7AAA0 8008C290 431B0300 */  sra        $v1, $v1, 13
    /* 7AAA4 8008C294 2188E300 */  addu       $s1, $a3, $v1
    /* 7AAA8 8008C298 FF0F2232 */  andi       $v0, $s1, 0xFFF
    /* 7AAAC 8008C29C 6800C2A6 */  sh         $v0, 0x68($s6)
    /* 7AAB0 8008C2A0 80100200 */  sll        $v0, $v0, 2
    /* 7AAB4 8008C2A4 21182201 */  addu       $v1, $t1, $v0
    /* 7AAB8 8008C2A8 21104900 */  addu       $v0, $v0, $t1
    /* 7AABC 8008C2AC 02006A84 */  lh         $t2, 0x2($v1)
    /* 7AAC0 8008C2B0 2C00A88F */  lw         $t0, 0x2C($sp)
    /* 7AAC4 8008C2B4 00004784 */  lh         $a3, 0x0($v0)
    /* 7AAC8 8008C2B8 23180800 */  negu       $v1, $t0
    /* 7AACC 8008C2BC 4200A3A7 */  sh         $v1, 0x42($sp)
    /* 7AAD0 8008C2C0 4600A8A7 */  sh         $t0, 0x46($sp)
    /* 7AAD4 8008C2C4 0400A7A6 */  sh         $a3, 0x4($s5)
    /* 7AAD8 8008C2C8 23380700 */  negu       $a3, $a3
    /* 7AADC 8008C2CC 0800ABA6 */  sh         $t3, 0x8($s5)
    /* 7AAE0 8008C2D0 0600A0A6 */  sh         $zero, 0x6($s5)
    /* 7AAE4 8008C2D4 0200A0A6 */  sh         $zero, 0x2($s5)
    /* 7AAE8 8008C2D8 0E00A0A6 */  sh         $zero, 0xE($s5)
    /* 7AAEC 8008C2DC 0A00A0A6 */  sh         $zero, 0xA($s5)
    /* 7AAF0 8008C2E0 1000AAA6 */  sh         $t2, 0x10($s5)
    /* 7AAF4 8008C2E4 0000AAA6 */  sh         $t2, 0x0($s5)
    /* 7AAF8 8008C2E8 9D61020C */  jal        func_80098674
    /* 7AAFC 8008C2EC 0C00A7A6 */   sh        $a3, 0xC($s5)
    /* 7AB00 8008C2F0 1400B226 */  addiu      $s2, $s5, 0x14
    /* 7AB04 8008C2F4 21204002 */  addu       $a0, $s2, $zero
    /* 7AB08 8008C2F8 1F62020C */  jal        func_8009887C
    /* 7AB0C 8008C2FC 8C00A527 */   addiu     $a1, $sp, 0x8C
    /* 7AB10 8008C300 8C00A427 */  addiu      $a0, $sp, 0x8C
    /* 7AB14 8008C304 F465020C */  jal        func_800997D0
    /* 7AB18 8008C308 4C00A527 */   addiu     $a1, $sp, 0x4C
    /* 7AB1C 8008C30C 7800AC8F */  lw         $t4, 0x78($sp)
    /* 7AB20 8008C310 7C00AD8F */  lw         $t5, 0x7C($sp)
    /* 7AB24 8008C314 8000AE8F */  lw         $t6, 0x80($sp)
    /* 7AB28 8008C318 8400AF8F */  lw         $t7, 0x84($sp)
    /* 7AB2C 8008C31C 0000ACAE */  sw         $t4, 0x0($s5)
    /* 7AB30 8008C320 0400ADAE */  sw         $t5, 0x4($s5)
    /* 7AB34 8008C324 0800AEAE */  sw         $t6, 0x8($s5)
    /* 7AB38 8008C328 0C00AFAE */  sw         $t7, 0xC($s5)
    /* 7AB3C 8008C32C 8800AC8F */  lw         $t4, 0x88($sp)
    /* 7AB40 8008C330 8C00AD8F */  lw         $t5, 0x8C($sp)
    /* 7AB44 8008C334 9000AE8F */  lw         $t6, 0x90($sp)
    /* 7AB48 8008C338 9400AF8F */  lw         $t7, 0x94($sp)
    /* 7AB4C 8008C33C 1000ACAE */  sw         $t4, 0x10($s5)
    /* 7AB50 8008C340 1400ADAE */  sw         $t5, 0x14($s5)
    /* 7AB54 8008C344 1800AEAE */  sw         $t6, 0x18($s5)
    /* 7AB58 8008C348 1C00AFAE */  sw         $t7, 0x1C($s5)
    /* 7AB5C 8008C34C 04000016 */  bnez       $s0, .L8008C360
    /* 7AB60 8008C350 3800AA27 */   addiu     $t2, $sp, 0x38
    /* 7AB64 8008C354 7400C286 */  lh         $v0, 0x74($s6)
    /* 7AB68 8008C358 E6300208 */  j          .L8008C398
    /* 7AB6C 8008C35C 21204001 */   addu      $a0, $t2, $zero
  .L8008C360:
    /* 7AB70 8008C360 7400C286 */  lh         $v0, 0x74($s6)
    /* 7AB74 8008C364 7200C486 */  lh         $a0, 0x72($s6)
    /* 7AB78 8008C368 6C00C386 */  lh         $v1, 0x6C($s6)
    /* 7AB7C 8008C36C 23104400 */  subu       $v0, $v0, $a0
    /* 7AB80 8008C370 23182302 */  subu       $v1, $s1, $v1
    /* 7AB84 8008C374 18004300 */  mult       $v0, $v1
    /* 7AB88 8008C378 12100000 */  mflo       $v0
    /* 7AB8C 8008C37C 00000000 */  nop
    /* 7AB90 8008C380 00000000 */  nop
    /* 7AB94 8008C384 1A005000 */  div        $zero, $v0, $s0
    /* 7AB98 8008C388 12100000 */  mflo       $v0
    /* 7AB9C 8008C38C 00000000 */  nop
    /* 7ABA0 8008C390 21104400 */  addu       $v0, $v0, $a0
    /* 7ABA4 8008C394 21204001 */  addu       $a0, $t2, $zero
  .L8008C398:
    /* 7ABA8 8008C398 2128A002 */  addu       $a1, $s5, $zero
    /* 7ABAC 8008C39C 5800A627 */  addiu      $a2, $sp, 0x58
    /* 7ABB0 8008C3A0 A0F36326 */  addiu      $v1, $s3, %lo(D_800BF3A0)
    /* 7ABB4 8008C3A4 FF0F4230 */  andi       $v0, $v0, 0xFFF
    /* 7ABB8 8008C3A8 80100200 */  sll        $v0, $v0, 2
    /* 7ABBC 8008C3AC 21386200 */  addu       $a3, $v1, $v0
    /* 7ABC0 8008C3B0 21104300 */  addu       $v0, $v0, $v1
    /* 7ABC4 8008C3B4 0200E884 */  lh         $t0, 0x2($a3)
    /* 7ABC8 8008C3B8 00004984 */  lh         $t1, 0x0($v0)
    /* 7ABCC 8008C3BC 00100324 */  addiu      $v1, $zero, 0x1000
    /* 7ABD0 8008C3C0 100043A5 */  sh         $v1, 0x10($t2)
    /* 7ABD4 8008C3C4 4400A0A7 */  sh         $zero, 0x44($sp)
    /* 7ABD8 8008C3C8 3C00A0A7 */  sh         $zero, 0x3C($sp)
    /* 7ABDC 8008C3CC 4600A0A7 */  sh         $zero, 0x46($sp)
    /* 7ABE0 8008C3D0 4200A0A7 */  sh         $zero, 0x42($sp)
    /* 7ABE4 8008C3D4 23100900 */  negu       $v0, $t1
    /* 7ABE8 8008C3D8 4000A8A7 */  sh         $t0, 0x40($sp)
    /* 7ABEC 8008C3DC 3800A8A7 */  sh         $t0, 0x38($sp)
    /* 7ABF0 8008C3E0 3A00A2A7 */  sh         $v0, 0x3A($sp)
    /* 7ABF4 8008C3E4 9D61020C */  jal        func_80098674
    /* 7ABF8 8008C3E8 3E00A9A7 */   sh        $t1, 0x3E($sp)
    /* 7ABFC 8008C3EC 21204002 */  addu       $a0, $s2, $zero
    /* 7AC00 8008C3F0 1F62020C */  jal        func_8009887C
    /* 7AC04 8008C3F4 6C00A527 */   addiu     $a1, $sp, 0x6C
    /* 7AC08 8008C3F8 6C00A427 */  addiu      $a0, $sp, 0x6C
    /* 7AC0C 8008C3FC F465020C */  jal        func_800997D0
    /* 7AC10 8008C400 4C00A527 */   addiu     $a1, $sp, 0x4C
    /* 7AC14 8008C404 5800AC8F */  lw         $t4, 0x58($sp)
    /* 7AC18 8008C408 5C00AD8F */  lw         $t5, 0x5C($sp)
    /* 7AC1C 8008C40C 6000AE8F */  lw         $t6, 0x60($sp)
    /* 7AC20 8008C410 6400AF8F */  lw         $t7, 0x64($sp)
    /* 7AC24 8008C414 0000ACAE */  sw         $t4, 0x0($s5)
    /* 7AC28 8008C418 0400ADAE */  sw         $t5, 0x4($s5)
    /* 7AC2C 8008C41C 0800AEAE */  sw         $t6, 0x8($s5)
    /* 7AC30 8008C420 0C00AFAE */  sw         $t7, 0xC($s5)
    /* 7AC34 8008C424 6800AC8F */  lw         $t4, 0x68($sp)
    /* 7AC38 8008C428 6C00AD8F */  lw         $t5, 0x6C($sp)
    /* 7AC3C 8008C42C 7000AE8F */  lw         $t6, 0x70($sp)
    /* 7AC40 8008C430 7400AF8F */  lw         $t7, 0x74($sp)
    /* 7AC44 8008C434 1000ACAE */  sw         $t4, 0x10($s5)
    /* 7AC48 8008C438 1400ADAE */  sw         $t5, 0x14($s5)
    /* 7AC4C 8008C43C 1800AEAE */  sw         $t6, 0x18($s5)
    /* 7AC50 8008C440 1C00AFAE */  sw         $t7, 0x1C($s5)
  .L8008C444:
    /* 7AC54 8008C444 0D80043C */  lui        $a0, %hi(D_800CA7D8)
    /* 7AC58 8008C448 D8A78424 */  addiu      $a0, $a0, %lo(D_800CA7D8)
    /* 7AC5C 8008C44C 1C00A0AE */  sw         $zero, 0x1C($s5)
    /* 7AC60 8008C450 1800A0AE */  sw         $zero, 0x18($s5)
    /* 7AC64 8008C454 1400A0AE */  sw         $zero, 0x14($s5)
    /* 7AC68 8008C458 0D80103C */  lui        $s0, %hi(D_800CA940)
    /* 7AC6C 8008C45C 40A9108E */  lw         $s0, %lo(D_800CA940)($s0)
    /* 7AC70 8008C460 DA768687 */  lh         $a2, %gp_rel(D_800CBDCA)($gp)
    /* 7AC74 8008C464 00080724 */  addiu      $a3, $zero, 0x800
    /* 7AC78 8008C468 1000A0AF */  sw         $zero, 0x10($sp)
    /* 7AC7C 8008C46C C2171000 */  srl        $v0, $s0, 31
    /* 7AC80 8008C470 21100202 */  addu       $v0, $s0, $v0
    /* 7AC84 8008C474 43100200 */  sra        $v0, $v0, 1
    /* 7AC88 8008C478 21800202 */  addu       $s0, $s0, $v0
    /* 7AC8C 8008C47C 8F74000C */  jal        func_8001D23C
    /* 7AC90 8008C480 21280002 */   addu      $a1, $s0, $zero
    /* 7AC94 8008C484 21280002 */  addu       $a1, $s0, $zero
    /* 7AC98 8008C488 0C80043C */  lui        $a0, %hi(D_800C5E14)
    /* 7AC9C 8008C48C 145E848C */  lw         $a0, %lo(D_800C5E14)($a0)
    /* 7ACA0 8008C490 DA768687 */  lh         $a2, %gp_rel(D_800CBDCA)($gp)
    /* 7ACA4 8008C494 00080724 */  addiu      $a3, $zero, 0x800
    /* 7ACA8 8008C498 1000A0AF */  sw         $zero, 0x10($sp)
    /* 7ACAC 8008C49C 8F74000C */  jal        func_8001D23C
    /* 7ACB0 8008C4A0 9C048424 */   addiu     $a0, $a0, 0x49C
    /* 7ACB4 8008C4A4 E076828F */  lw         $v0, %gp_rel(D_800CBDD0)($gp)
    /* 7ACB8 8008C4A8 00000000 */  nop
    /* 7ACBC 8008C4AC 01004224 */  addiu      $v0, $v0, 0x1
    /* 7ACC0 8008C4B0 E07682AF */  sw         $v0, %gp_rel(D_800CBDD0)($gp)
    /* 7ACC4 8008C4B4 5800C38E */  lw         $v1, 0x58($s6)
    /* 7ACC8 8008C4B8 00000000 */  nop
    /* 7ACCC 8008C4BC 04006330 */  andi       $v1, $v1, 0x4
    /* 7ACD0 8008C4C0 03006010 */  beqz       $v1, .L8008C4D0
    /* 7ACD4 8008C4C4 01000224 */   addiu     $v0, $zero, 0x1
    /* 7ACD8 8008C4C8 35310208 */  j          .L8008C4D4
    /* 7ACDC 8008C4CC 2503E2A2 */   sb        $v0, 0x325($s7)
  .L8008C4D0:
    /* 7ACE0 8008C4D0 2503E0A2 */  sb         $zero, 0x325($s7)
  .L8008C4D4:
    /* 7ACE4 8008C4D4 B800BF8F */  lw         $ra, 0xB8($sp)
    /* 7ACE8 8008C4D8 B400B78F */  lw         $s7, 0xB4($sp)
    /* 7ACEC 8008C4DC B000B68F */  lw         $s6, 0xB0($sp)
    /* 7ACF0 8008C4E0 AC00B58F */  lw         $s5, 0xAC($sp)
    /* 7ACF4 8008C4E4 A800B48F */  lw         $s4, 0xA8($sp)
    /* 7ACF8 8008C4E8 A400B38F */  lw         $s3, 0xA4($sp)
    /* 7ACFC 8008C4EC A000B28F */  lw         $s2, 0xA0($sp)
    /* 7AD00 8008C4F0 9C00B18F */  lw         $s1, 0x9C($sp)
    /* 7AD04 8008C4F4 9800B08F */  lw         $s0, 0x98($sp)
    /* 7AD08 8008C4F8 0800E003 */  jr         $ra
    /* 7AD0C 8008C4FC C000BD27 */   addiu     $sp, $sp, 0xC0
endlabel func_8008BCB0
