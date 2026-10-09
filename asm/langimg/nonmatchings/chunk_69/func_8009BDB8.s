nonmatching func_8009BDB8, 0x604

glabel func_8009BDB8
    /* 8A5C8 8009BDB8 D0FFBD27 */  addiu      $sp, $sp, -0x30
    /* 8A5CC 8009BDBC 2800BFAF */  sw         $ra, 0x28($sp)
    /* 8A5D0 8009BDC0 2400B3AF */  sw         $s3, 0x24($sp)
    /* 8A5D4 8009BDC4 2000B2AF */  sw         $s2, 0x20($sp)
    /* 8A5D8 8009BDC8 1C00B1AF */  sw         $s1, 0x1C($sp)
    /* 8A5DC 8009BDCC 1800B0AF */  sw         $s0, 0x18($sp)
    /* 8A5E0 8009BDD0 800A828C */  lw         $v0, 0xA80($a0)
    /* 8A5E4 8009BDD4 00000000 */  nop
    /* 8A5E8 8009BDD8 6000528C */  lw         $s2, 0x60($v0)
    /* 8A5EC 8009BDDC 00000000 */  nop
    /* 8A5F0 8009BDE0 0400508E */  lw         $s0, 0x4($s2)
    /* 8A5F4 8009BDE4 00000000 */  nop
    /* 8A5F8 8009BDE8 74010426 */  addiu      $a0, $s0, 0x174
    /* 8A5FC 8009BDEC 7001058E */  lw         $a1, 0x170($s0)
    /* 8A600 8009BDF0 DBA5010C */  jal        func_8006976C
    /* 8A604 8009BDF4 21300002 */   addu      $a2, $s0, $zero
    /* 8A608 8009BDF8 21200002 */  addu       $a0, $s0, $zero
    /* 8A60C 8009BDFC B8005126 */  addiu      $s1, $s2, 0xB8
    /* 8A610 8009BE00 21282002 */  addu       $a1, $s1, $zero
    /* 8A614 8009BE04 10000624 */  addiu      $a2, $zero, 0x10
    /* 8A618 8009BE08 928F000C */  jal        func_80023E48
    /* 8A61C 8009BE0C D0070724 */   addiu     $a3, $zero, 0x7D0
    /* 8A620 8009BE10 21200002 */  addu       $a0, $s0, $zero
    /* 8A624 8009BE14 21282002 */  addu       $a1, $s1, $zero
    /* 8A628 8009BE18 10000624 */  addiu      $a2, $zero, 0x10
    /* 8A62C 8009BE1C D0070724 */  addiu      $a3, $zero, 0x7D0
    /* 8A630 8009BE20 0D80093C */  lui        $t1, %hi(D_800D49A8)
    /* 8A634 8009BE24 A849298D */  lw         $t1, %lo(D_800D49A8)($t1)
    /* 8A638 8009BE28 1400488E */  lw         $t0, 0x14($s2)
    /* 8A63C 8009BE2C 40180900 */  sll        $v1, $t1, 1
    /* 8A640 8009BE30 21186900 */  addu       $v1, $v1, $t1
    /* 8A644 8009BE34 21400301 */  addu       $t0, $t0, $v1
    /* 8A648 8009BE38 00110800 */  sll        $v0, $t0, 4
    /* 8A64C 8009BE3C 23104800 */  subu       $v0, $v0, $t0
    /* 8A650 8009BE40 80100200 */  sll        $v0, $v0, 2
    /* 8A654 8009BE44 F81F4224 */  addiu      $v0, $v0, 0x1FF8
    /* 8A658 8009BE48 21884202 */  addu       $s1, $s2, $v0
    /* 8A65C 8009BE4C 040020AE */  sw         $zero, 0x4($s1)
    /* 8A660 8009BE50 0C0020AE */  sw         $zero, 0xC($s1)
    /* 8A664 8009BE54 200020AE */  sw         $zero, 0x20($s1)
    /* 8A668 8009BE58 2C0020AE */  sw         $zero, 0x2C($s1)
    /* 8A66C 8009BE5C 380020AE */  sw         $zero, 0x38($s1)
    /* 8A670 8009BE60 180020AE */  sw         $zero, 0x18($s1)
    /* 8A674 8009BE64 8C8E000C */  jal        func_80023A30
    /* 8A678 8009BE68 1000B1AF */   sw        $s1, 0x10($sp)
    /* 8A67C 8009BE6C 6666083C */  lui        $t0, (0x66666667 >> 16)
    /* 8A680 8009BE70 0400248E */  lw         $a0, 0x4($s1)
    /* 8A684 8009BE74 67660835 */  ori        $t0, $t0, (0x66666667 & 0xFFFF)
    /* 8A688 8009BE78 18008800 */  mult       $a0, $t0
    /* 8A68C 8009BE7C 10100000 */  mfhi       $v0
    /* 8A690 8009BE80 0C00258E */  lw         $a1, 0xC($s1)
    /* 8A694 8009BE84 00000000 */  nop
    /* 8A698 8009BE88 1800A800 */  mult       $a1, $t0
    /* 8A69C 8009BE8C 10180000 */  mfhi       $v1
    /* 8A6A0 8009BE90 2000298E */  lw         $t1, 0x20($s1)
    /* 8A6A4 8009BE94 00000000 */  nop
    /* 8A6A8 8009BE98 18002801 */  mult       $t1, $t0
    /* 8A6AC 8009BE9C 10300000 */  mfhi       $a2
    /* 8A6B0 8009BEA0 2C002B8E */  lw         $t3, 0x2C($s1)
    /* 8A6B4 8009BEA4 00000000 */  nop
    /* 8A6B8 8009BEA8 18006801 */  mult       $t3, $t0
    /* 8A6BC 8009BEAC 10380000 */  mfhi       $a3
    /* 8A6C0 8009BEB0 38002C8E */  lw         $t4, 0x38($s1)
    /* 8A6C4 8009BEB4 00000000 */  nop
    /* 8A6C8 8009BEB8 18008801 */  mult       $t4, $t0
    /* 8A6CC 8009BEBC AC215326 */  addiu      $s3, $s2, 0x21AC
    /* 8A6D0 8009BEC0 C3270400 */  sra        $a0, $a0, 31
    /* 8A6D4 8009BEC4 83100200 */  sra        $v0, $v0, 2
    /* 8A6D8 8009BEC8 23104400 */  subu       $v0, $v0, $a0
    /* 8A6DC 8009BECC C32F0500 */  sra        $a1, $a1, 31
    /* 8A6E0 8009BED0 040022AE */  sw         $v0, 0x4($s1)
    /* 8A6E4 8009BED4 1800228E */  lw         $v0, 0x18($s1)
    /* 8A6E8 8009BED8 83180300 */  sra        $v1, $v1, 2
    /* 8A6EC 8009BEDC 23186500 */  subu       $v1, $v1, $a1
    /* 8A6F0 8009BEE0 C34F0900 */  sra        $t1, $t1, 31
    /* 8A6F4 8009BEE4 10500000 */  mfhi       $t2
    /* 8A6F8 8009BEE8 0C0023AE */  sw         $v1, 0xC($s1)
    /* 8A6FC 8009BEEC 83300600 */  sra        $a2, $a2, 2
    /* 8A700 8009BEF0 18004800 */  mult       $v0, $t0
    /* 8A704 8009BEF4 2330C900 */  subu       $a2, $a2, $t1
    /* 8A708 8009BEF8 C35F0B00 */  sra        $t3, $t3, 31
    /* 8A70C 8009BEFC 200026AE */  sw         $a2, 0x20($s1)
    /* 8A710 8009BF00 83380700 */  sra        $a3, $a3, 2
    /* 8A714 8009BF04 2338EB00 */  subu       $a3, $a3, $t3
    /* 8A718 8009BF08 C3670C00 */  sra        $t4, $t4, 31
    /* 8A71C 8009BF0C 2C0027AE */  sw         $a3, 0x2C($s1)
    /* 8A720 8009BF10 83500A00 */  sra        $t2, $t2, 2
    /* 8A724 8009BF14 23504C01 */  subu       $t2, $t2, $t4
    /* 8A728 8009BF18 C3170200 */  sra        $v0, $v0, 31
    /* 8A72C 8009BF1C 38002AAE */  sw         $t2, 0x38($s1)
    /* 8A730 8009BF20 10400000 */  mfhi       $t0
    /* 8A734 8009BF24 83400800 */  sra        $t0, $t0, 2
    /* 8A738 8009BF28 23400201 */  subu       $t0, $t0, $v0
    /* 8A73C 8009BF2C 180028AE */  sw         $t0, 0x18($s1)
    /* 8A740 8009BF30 0D80033C */  lui        $v1, %hi(D_800D49A8)
    /* 8A744 8009BF34 A849638C */  lw         $v1, %lo(D_800D49A8)($v1)
    /* 8A748 8009BF38 0D80043C */  lui        $a0, %hi(D_800C8C0C)
    /* 8A74C 8009BF3C 0C8C848C */  lw         $a0, %lo(D_800C8C0C)($a0)
    /* 8A750 8009BF40 0100632C */  sltiu      $v1, $v1, 0x1
    /* 8A754 8009BF44 80180300 */  sll        $v1, $v1, 2
    /* 8A758 8009BF48 21186302 */  addu       $v1, $s3, $v1
    /* 8A75C 8009BF4C 0000658C */  lw         $a1, 0x0($v1)
    /* 8A760 8009BF50 8E1A020C */  jal        func_80086A38
    /* 8A764 8009BF54 0D80103C */   lui       $s0, %hi(D_800C92D8)
    /* 8A768 8009BF58 D8920526 */  addiu      $a1, $s0, %lo(D_800C92D8)
    /* 8A76C 8009BF5C A021438E */  lw         $v1, 0x21A0($s2)
    /* 8A770 8009BF60 0000268E */  lw         $a2, 0x0($s1)
    /* 8A774 8009BF64 0C00648C */  lw         $a0, 0xC($v1)
    /* 8A778 8009BF68 96D9020C */  jal        sprintf
    /* 8A77C 8009BF6C 21384000 */   addu      $a3, $v0, $zero
    /* 8A780 8009BF70 0400288E */  lw         $t0, 0x4($s1)
    /* 8A784 8009BF74 00000000 */  nop
    /* 8A788 8009BF78 15000011 */  beqz       $t0, .L8009BFD0
    /* 8A78C 8009BF7C EB51023C */   lui       $v0, (0x51EB851F >> 16)
    /* 8A790 8009BF80 1F854234 */  ori        $v0, $v0, (0x51EB851F & 0xFFFF)
    /* 8A794 8009BF84 18000201 */  mult       $t0, $v0
    /* 8A798 8009BF88 0D80053C */  lui        $a1, %hi(D_800C92E4)
    /* 8A79C 8009BF8C E492A524 */  addiu      $a1, $a1, %lo(D_800C92E4)
    /* 8A7A0 8009BF90 8021468E */  lw         $a2, 0x2180($s2)
    /* 8A7A4 8009BF94 C31F0800 */  sra        $v1, $t0, 31
    /* 8A7A8 8009BF98 0C00C48C */  lw         $a0, 0xC($a2)
    /* 8A7AC 8009BF9C 10100000 */  mfhi       $v0
    /* 8A7B0 8009BFA0 43110200 */  sra        $v0, $v0, 5
    /* 8A7B4 8009BFA4 23104300 */  subu       $v0, $v0, $v1
    /* 8A7B8 8009BFA8 21304000 */  addu       $a2, $v0, $zero
    /* 8A7BC 8009BFAC 40380200 */  sll        $a3, $v0, 1
    /* 8A7C0 8009BFB0 2138E200 */  addu       $a3, $a3, $v0
    /* 8A7C4 8009BFB4 C0380700 */  sll        $a3, $a3, 3
    /* 8A7C8 8009BFB8 2138E200 */  addu       $a3, $a3, $v0
    /* 8A7CC 8009BFBC 80380700 */  sll        $a3, $a3, 2
    /* 8A7D0 8009BFC0 96D9020C */  jal        sprintf
    /* 8A7D4 8009BFC4 23380701 */   subu      $a3, $t0, $a3
    /* 8A7D8 8009BFC8 F96F0208 */  j          .L8009BFE4
    /* 8A7DC 8009BFCC 00000000 */   nop
  .L8009BFD0:
    /* 8A7E0 8009BFD0 8021428E */  lw         $v0, 0x2180($s2)
    /* 8A7E4 8009BFD4 0D80053C */  lui        $a1, %hi(D_800C92F0)
    /* 8A7E8 8009BFD8 0C00448C */  lw         $a0, 0xC($v0)
    /* 8A7EC 8009BFDC 96D9020C */  jal        sprintf
    /* 8A7F0 8009BFE0 F092A524 */   addiu     $a1, $a1, %lo(D_800C92F0)
  .L8009BFE4:
    /* 8A7F4 8009BFE4 0D80033C */  lui        $v1, %hi(D_800D49A8)
    /* 8A7F8 8009BFE8 A849638C */  lw         $v1, %lo(D_800D49A8)($v1)
    /* 8A7FC 8009BFEC 0D80043C */  lui        $a0, %hi(D_800C8C0C)
    /* 8A800 8009BFF0 0C8C848C */  lw         $a0, %lo(D_800C8C0C)($a0)
    /* 8A804 8009BFF4 0100632C */  sltiu      $v1, $v1, 0x1
    /* 8A808 8009BFF8 80180300 */  sll        $v1, $v1, 2
    /* 8A80C 8009BFFC 21186302 */  addu       $v1, $s3, $v1
    /* 8A810 8009C000 0000658C */  lw         $a1, 0x0($v1)
    /* 8A814 8009C004 8E1A020C */  jal        func_80086A38
    /* 8A818 8009C008 00000000 */   nop
    /* 8A81C 8009C00C D8920526 */  addiu      $a1, $s0, %lo(D_800C92D8)
    /* 8A820 8009C010 A421438E */  lw         $v1, 0x21A4($s2)
    /* 8A824 8009C014 0800268E */  lw         $a2, 0x8($s1)
    /* 8A828 8009C018 0C00648C */  lw         $a0, 0xC($v1)
    /* 8A82C 8009C01C 96D9020C */  jal        sprintf
    /* 8A830 8009C020 21384000 */   addu      $a3, $v0, $zero
    /* 8A834 8009C024 0C00288E */  lw         $t0, 0xC($s1)
    /* 8A838 8009C028 00000000 */  nop
    /* 8A83C 8009C02C 15000011 */  beqz       $t0, .L8009C084
    /* 8A840 8009C030 EB51023C */   lui       $v0, (0x51EB851F >> 16)
    /* 8A844 8009C034 1F854234 */  ori        $v0, $v0, (0x51EB851F & 0xFFFF)
    /* 8A848 8009C038 18000201 */  mult       $t0, $v0
    /* 8A84C 8009C03C 0D80053C */  lui        $a1, %hi(D_800C92E4)
    /* 8A850 8009C040 E492A524 */  addiu      $a1, $a1, %lo(D_800C92E4)
    /* 8A854 8009C044 8421468E */  lw         $a2, 0x2184($s2)
    /* 8A858 8009C048 C31F0800 */  sra        $v1, $t0, 31
    /* 8A85C 8009C04C 0C00C48C */  lw         $a0, 0xC($a2)
    /* 8A860 8009C050 10100000 */  mfhi       $v0
    /* 8A864 8009C054 43110200 */  sra        $v0, $v0, 5
    /* 8A868 8009C058 23104300 */  subu       $v0, $v0, $v1
    /* 8A86C 8009C05C 21304000 */  addu       $a2, $v0, $zero
    /* 8A870 8009C060 40380200 */  sll        $a3, $v0, 1
    /* 8A874 8009C064 2138E200 */  addu       $a3, $a3, $v0
    /* 8A878 8009C068 C0380700 */  sll        $a3, $a3, 3
    /* 8A87C 8009C06C 2138E200 */  addu       $a3, $a3, $v0
    /* 8A880 8009C070 80380700 */  sll        $a3, $a3, 2
    /* 8A884 8009C074 96D9020C */  jal        sprintf
    /* 8A888 8009C078 23380701 */   subu      $a3, $t0, $a3
    /* 8A88C 8009C07C 26700208 */  j          .L8009C098
    /* 8A890 8009C080 00000000 */   nop
  .L8009C084:
    /* 8A894 8009C084 8421428E */  lw         $v0, 0x2184($s2)
    /* 8A898 8009C088 0D80053C */  lui        $a1, %hi(D_800C92F0)
    /* 8A89C 8009C08C 0C00448C */  lw         $a0, 0xC($v0)
    /* 8A8A0 8009C090 96D9020C */  jal        sprintf
    /* 8A8A4 8009C094 F092A524 */   addiu     $a1, $a1, %lo(D_800C92F0)
  .L8009C098:
    /* 8A8A8 8009C098 2000288E */  lw         $t0, 0x20($s1)
    /* 8A8AC 8009C09C 00000000 */  nop
    /* 8A8B0 8009C0A0 15000011 */  beqz       $t0, .L8009C0F8
    /* 8A8B4 8009C0A4 EB51023C */   lui       $v0, (0x51EB851F >> 16)
    /* 8A8B8 8009C0A8 1F854234 */  ori        $v0, $v0, (0x51EB851F & 0xFFFF)
    /* 8A8BC 8009C0AC 18000201 */  mult       $t0, $v0
    /* 8A8C0 8009C0B0 0D80053C */  lui        $a1, %hi(D_800C92E4)
    /* 8A8C4 8009C0B4 E492A524 */  addiu      $a1, $a1, %lo(D_800C92E4)
    /* 8A8C8 8009C0B8 8821468E */  lw         $a2, 0x2188($s2)
    /* 8A8CC 8009C0BC C31F0800 */  sra        $v1, $t0, 31
    /* 8A8D0 8009C0C0 0C00C48C */  lw         $a0, 0xC($a2)
    /* 8A8D4 8009C0C4 10100000 */  mfhi       $v0
    /* 8A8D8 8009C0C8 43110200 */  sra        $v0, $v0, 5
    /* 8A8DC 8009C0CC 23104300 */  subu       $v0, $v0, $v1
    /* 8A8E0 8009C0D0 21304000 */  addu       $a2, $v0, $zero
    /* 8A8E4 8009C0D4 40380200 */  sll        $a3, $v0, 1
    /* 8A8E8 8009C0D8 2138E200 */  addu       $a3, $a3, $v0
    /* 8A8EC 8009C0DC C0380700 */  sll        $a3, $a3, 3
    /* 8A8F0 8009C0E0 2138E200 */  addu       $a3, $a3, $v0
    /* 8A8F4 8009C0E4 80380700 */  sll        $a3, $a3, 2
    /* 8A8F8 8009C0E8 96D9020C */  jal        sprintf
    /* 8A8FC 8009C0EC 23380701 */   subu      $a3, $t0, $a3
    /* 8A900 8009C0F0 43700208 */  j          .L8009C10C
    /* 8A904 8009C0F4 00000000 */   nop
  .L8009C0F8:
    /* 8A908 8009C0F8 8821428E */  lw         $v0, 0x2188($s2)
    /* 8A90C 8009C0FC 0D80053C */  lui        $a1, %hi(D_800C92F0)
    /* 8A910 8009C100 0C00448C */  lw         $a0, 0xC($v0)
    /* 8A914 8009C104 96D9020C */  jal        sprintf
    /* 8A918 8009C108 F092A524 */   addiu     $a1, $a1, %lo(D_800C92F0)
  .L8009C10C:
    /* 8A91C 8009C10C 2C00288E */  lw         $t0, 0x2C($s1)
    /* 8A920 8009C110 00000000 */  nop
    /* 8A924 8009C114 15000011 */  beqz       $t0, .L8009C16C
    /* 8A928 8009C118 EB51023C */   lui       $v0, (0x51EB851F >> 16)
    /* 8A92C 8009C11C 1F854234 */  ori        $v0, $v0, (0x51EB851F & 0xFFFF)
    /* 8A930 8009C120 18000201 */  mult       $t0, $v0
    /* 8A934 8009C124 0D80053C */  lui        $a1, %hi(D_800C92E4)
    /* 8A938 8009C128 E492A524 */  addiu      $a1, $a1, %lo(D_800C92E4)
    /* 8A93C 8009C12C 8C21468E */  lw         $a2, 0x218C($s2)
    /* 8A940 8009C130 C31F0800 */  sra        $v1, $t0, 31
    /* 8A944 8009C134 0C00C48C */  lw         $a0, 0xC($a2)
    /* 8A948 8009C138 10100000 */  mfhi       $v0
    /* 8A94C 8009C13C 43110200 */  sra        $v0, $v0, 5
    /* 8A950 8009C140 23104300 */  subu       $v0, $v0, $v1
    /* 8A954 8009C144 21304000 */  addu       $a2, $v0, $zero
    /* 8A958 8009C148 40380200 */  sll        $a3, $v0, 1
    /* 8A95C 8009C14C 2138E200 */  addu       $a3, $a3, $v0
    /* 8A960 8009C150 C0380700 */  sll        $a3, $a3, 3
    /* 8A964 8009C154 2138E200 */  addu       $a3, $a3, $v0
    /* 8A968 8009C158 80380700 */  sll        $a3, $a3, 2
    /* 8A96C 8009C15C 96D9020C */  jal        sprintf
    /* 8A970 8009C160 23380701 */   subu      $a3, $t0, $a3
    /* 8A974 8009C164 60700208 */  j          .L8009C180
    /* 8A978 8009C168 00000000 */   nop
  .L8009C16C:
    /* 8A97C 8009C16C 8C21428E */  lw         $v0, 0x218C($s2)
    /* 8A980 8009C170 0D80053C */  lui        $a1, %hi(D_800C92F0)
    /* 8A984 8009C174 0C00448C */  lw         $a0, 0xC($v0)
    /* 8A988 8009C178 96D9020C */  jal        sprintf
    /* 8A98C 8009C17C F092A524 */   addiu     $a1, $a1, %lo(D_800C92F0)
  .L8009C180:
    /* 8A990 8009C180 0D80033C */  lui        $v1, %hi(D_800D49A8)
    /* 8A994 8009C184 A849638C */  lw         $v1, %lo(D_800D49A8)($v1)
    /* 8A998 8009C188 0D80043C */  lui        $a0, %hi(D_800C8C0C)
    /* 8A99C 8009C18C 0C8C848C */  lw         $a0, %lo(D_800C8C0C)($a0)
    /* 8A9A0 8009C190 0100632C */  sltiu      $v1, $v1, 0x1
    /* 8A9A4 8009C194 80180300 */  sll        $v1, $v1, 2
    /* 8A9A8 8009C198 21186302 */  addu       $v1, $s3, $v1
    /* 8A9AC 8009C19C 0000658C */  lw         $a1, 0x0($v1)
    /* 8A9B0 8009C1A0 8E1A020C */  jal        func_80086A38
    /* 8A9B4 8009C1A4 00000000 */   nop
    /* 8A9B8 8009C1A8 A821488E */  lw         $t0, 0x21A8($s2)
    /* 8A9BC 8009C1AC 0D80053C */  lui        $a1, %hi(D_800C92F4)
    /* 8A9C0 8009C1B0 1000A2AF */  sw         $v0, 0x10($sp)
    /* 8A9C4 8009C1B4 1000268E */  lw         $a2, 0x10($s1)
    /* 8A9C8 8009C1B8 1400278E */  lw         $a3, 0x14($s1)
    /* 8A9CC 8009C1BC 0C00048D */  lw         $a0, 0xC($t0)
    /* 8A9D0 8009C1C0 96D9020C */  jal        sprintf
    /* 8A9D4 8009C1C4 F492A524 */   addiu     $a1, $a1, %lo(D_800C92F4)
    /* 8A9D8 8009C1C8 1800288E */  lw         $t0, 0x18($s1)
    /* 8A9DC 8009C1CC 00000000 */  nop
    /* 8A9E0 8009C1D0 15000011 */  beqz       $t0, .L8009C228
    /* 8A9E4 8009C1D4 EB51023C */   lui       $v0, (0x51EB851F >> 16)
    /* 8A9E8 8009C1D8 1F854234 */  ori        $v0, $v0, (0x51EB851F & 0xFFFF)
    /* 8A9EC 8009C1DC 18000201 */  mult       $t0, $v0
    /* 8A9F0 8009C1E0 0D80053C */  lui        $a1, %hi(D_800C92E4)
    /* 8A9F4 8009C1E4 E492A524 */  addiu      $a1, $a1, %lo(D_800C92E4)
    /* 8A9F8 8009C1E8 9021468E */  lw         $a2, 0x2190($s2)
    /* 8A9FC 8009C1EC C31F0800 */  sra        $v1, $t0, 31
    /* 8AA00 8009C1F0 0C00C48C */  lw         $a0, 0xC($a2)
    /* 8AA04 8009C1F4 10100000 */  mfhi       $v0
    /* 8AA08 8009C1F8 43110200 */  sra        $v0, $v0, 5
    /* 8AA0C 8009C1FC 23104300 */  subu       $v0, $v0, $v1
    /* 8AA10 8009C200 21304000 */  addu       $a2, $v0, $zero
    /* 8AA14 8009C204 40380200 */  sll        $a3, $v0, 1
    /* 8AA18 8009C208 2138E200 */  addu       $a3, $a3, $v0
    /* 8AA1C 8009C20C C0380700 */  sll        $a3, $a3, 3
    /* 8AA20 8009C210 2138E200 */  addu       $a3, $a3, $v0
    /* 8AA24 8009C214 80380700 */  sll        $a3, $a3, 2
    /* 8AA28 8009C218 96D9020C */  jal        sprintf
    /* 8AA2C 8009C21C 23380701 */   subu      $a3, $t0, $a3
    /* 8AA30 8009C220 8F700208 */  j          .L8009C23C
    /* 8AA34 8009C224 00000000 */   nop
  .L8009C228:
    /* 8AA38 8009C228 9021428E */  lw         $v0, 0x2190($s2)
    /* 8AA3C 8009C22C 0D80053C */  lui        $a1, %hi(D_800C92F0)
    /* 8AA40 8009C230 0C00448C */  lw         $a0, 0xC($v0)
    /* 8AA44 8009C234 96D9020C */  jal        sprintf
    /* 8AA48 8009C238 F092A524 */   addiu     $a1, $a1, %lo(D_800C92F0)
  .L8009C23C:
    /* 8AA4C 8009C23C 3400248E */  lw         $a0, 0x34($s1)
    /* 8AA50 8009C240 149A020C */  jal        func_800A6850
    /* 8AA54 8009C244 00000000 */   nop
    /* 8AA58 8009C248 0D80033C */  lui        $v1, %hi(D_800D49A8)
    /* 8AA5C 8009C24C A849638C */  lw         $v1, %lo(D_800D49A8)($v1)
    /* 8AA60 8009C250 0D80043C */  lui        $a0, %hi(D_800C8C0C)
    /* 8AA64 8009C254 0C8C848C */  lw         $a0, %lo(D_800C8C0C)($a0)
    /* 8AA68 8009C258 0100632C */  sltiu      $v1, $v1, 0x1
    /* 8AA6C 8009C25C 80180300 */  sll        $v1, $v1, 2
    /* 8AA70 8009C260 21186302 */  addu       $v1, $s3, $v1
    /* 8AA74 8009C264 0000658C */  lw         $a1, 0x0($v1)
    /* 8AA78 8009C268 8E1A020C */  jal        func_80086A38
    /* 8AA7C 8009C26C 21804000 */   addu      $s0, $v0, $zero
    /* 8AA80 8009C270 0D80053C */  lui        $a1, %hi(D_800C9300)
    /* 8AA84 8009C274 0093A524 */  addiu      $a1, $a1, %lo(D_800C9300)
    /* 8AA88 8009C278 9421438E */  lw         $v1, 0x2194($s2)
    /* 8AA8C 8009C27C 21300002 */  addu       $a2, $s0, $zero
    /* 8AA90 8009C280 0C00648C */  lw         $a0, 0xC($v1)
    /* 8AA94 8009C284 96D9020C */  jal        sprintf
    /* 8AA98 8009C288 21384000 */   addu      $a3, $v0, $zero
    /* 8AA9C 8009C28C 3800238E */  lw         $v1, 0x38($s1)
    /* 8AAA0 8009C290 00000000 */  nop
    /* 8AAA4 8009C294 1D006010 */  beqz       $v1, .L8009C30C
    /* 8AAA8 8009C298 00000000 */   nop
    /* 8AAAC 8009C29C 0D80043C */  lui        $a0, %hi(D_800C8C0C)
    /* 8AAB0 8009C2A0 0C8C848C */  lw         $a0, %lo(D_800C8C0C)($a0)
    /* 8AAB4 8009C2A4 B421458E */  lw         $a1, 0x21B4($s2)
    /* 8AAB8 8009C2A8 8E1A020C */  jal        func_80086A38
    /* 8AABC 8009C2AC 00000000 */   nop
    /* 8AAC0 8009C2B0 EB51073C */  lui        $a3, (0x51EB851F >> 16)
    /* 8AAC4 8009C2B4 3800288E */  lw         $t0, 0x38($s1)
    /* 8AAC8 8009C2B8 1F85E734 */  ori        $a3, $a3, (0x51EB851F & 0xFFFF)
    /* 8AACC 8009C2BC 18000701 */  mult       $t0, $a3
    /* 8AAD0 8009C2C0 0D80053C */  lui        $a1, %hi(D_800C9308)
    /* 8AAD4 8009C2C4 21304000 */  addu       $a2, $v0, $zero
    /* 8AAD8 8009C2C8 C31F0800 */  sra        $v1, $t0, 31
    /* 8AADC 8009C2CC 10380000 */  mfhi       $a3
    /* 8AAE0 8009C2D0 43390700 */  sra        $a3, $a3, 5
    /* 8AAE4 8009C2D4 2338E300 */  subu       $a3, $a3, $v1
    /* 8AAE8 8009C2D8 40100700 */  sll        $v0, $a3, 1
    /* 8AAEC 8009C2DC 21104700 */  addu       $v0, $v0, $a3
    /* 8AAF0 8009C2E0 C0100200 */  sll        $v0, $v0, 3
    /* 8AAF4 8009C2E4 21104700 */  addu       $v0, $v0, $a3
    /* 8AAF8 8009C2E8 80100200 */  sll        $v0, $v0, 2
    /* 8AAFC 8009C2EC 9821438E */  lw         $v1, 0x2198($s2)
    /* 8AB00 8009C2F0 23400201 */  subu       $t0, $t0, $v0
    /* 8AB04 8009C2F4 1000A8AF */  sw         $t0, 0x10($sp)
    /* 8AB08 8009C2F8 0C00648C */  lw         $a0, 0xC($v1)
    /* 8AB0C 8009C2FC 96D9020C */  jal        sprintf
    /* 8AB10 8009C300 0893A524 */   addiu     $a1, $a1, %lo(D_800C9308)
    /* 8AB14 8009C304 CE700208 */  j          .L8009C338
    /* 8AB18 8009C308 00000000 */   nop
  .L8009C30C:
    /* 8AB1C 8009C30C 0D80043C */  lui        $a0, %hi(D_800C8C0C)
    /* 8AB20 8009C310 0C8C848C */  lw         $a0, %lo(D_800C8C0C)($a0)
    /* 8AB24 8009C314 B421458E */  lw         $a1, 0x21B4($s2)
    /* 8AB28 8009C318 8E1A020C */  jal        func_80086A38
    /* 8AB2C 8009C31C 00000000 */   nop
    /* 8AB30 8009C320 0D80053C */  lui        $a1, %hi(D_800C9314)
    /* 8AB34 8009C324 9821438E */  lw         $v1, 0x2198($s2)
    /* 8AB38 8009C328 1493A524 */  addiu      $a1, $a1, %lo(D_800C9314)
    /* 8AB3C 8009C32C 0C00648C */  lw         $a0, 0xC($v1)
    /* 8AB40 8009C330 96D9020C */  jal        sprintf
    /* 8AB44 8009C334 21304000 */   addu      $a2, $v0, $zero
  .L8009C338:
    /* 8AB48 8009C338 2400248E */  lw         $a0, 0x24($s1)
    /* 8AB4C 8009C33C 149A020C */  jal        func_800A6850
    /* 8AB50 8009C340 00000000 */   nop
    /* 8AB54 8009C344 0D80043C */  lui        $a0, %hi(D_800C8C0C)
    /* 8AB58 8009C348 0C8C848C */  lw         $a0, %lo(D_800C8C0C)($a0)
    /* 8AB5C 8009C34C BC21458E */  lw         $a1, 0x21BC($s2)
    /* 8AB60 8009C350 8E1A020C */  jal        func_80086A38
    /* 8AB64 8009C354 21884000 */   addu      $s1, $v0, $zero
    /* 8AB68 8009C358 0D80033C */  lui        $v1, %hi(D_800D49A8)
    /* 8AB6C 8009C35C A849638C */  lw         $v1, %lo(D_800D49A8)($v1)
    /* 8AB70 8009C360 0D80043C */  lui        $a0, %hi(D_800C8C0C)
    /* 8AB74 8009C364 0C8C848C */  lw         $a0, %lo(D_800C8C0C)($a0)
    /* 8AB78 8009C368 0100632C */  sltiu      $v1, $v1, 0x1
    /* 8AB7C 8009C36C 80180300 */  sll        $v1, $v1, 2
    /* 8AB80 8009C370 21186302 */  addu       $v1, $s3, $v1
    /* 8AB84 8009C374 0000658C */  lw         $a1, 0x0($v1)
    /* 8AB88 8009C378 8E1A020C */  jal        func_80086A38
    /* 8AB8C 8009C37C 21804000 */   addu      $s0, $v0, $zero
    /* 8AB90 8009C380 0D80053C */  lui        $a1, %hi(D_800C931C)
    /* 8AB94 8009C384 1C93A524 */  addiu      $a1, $a1, %lo(D_800C931C)
    /* 8AB98 8009C388 9C21438E */  lw         $v1, 0x219C($s2)
    /* 8AB9C 8009C38C 21300002 */  addu       $a2, $s0, $zero
    /* 8ABA0 8009C390 1000A2AF */  sw         $v0, 0x10($sp)
    /* 8ABA4 8009C394 0C00648C */  lw         $a0, 0xC($v1)
    /* 8ABA8 8009C398 96D9020C */  jal        sprintf
    /* 8ABAC 8009C39C 21382002 */   addu      $a3, $s1, $zero
    /* 8ABB0 8009C3A0 2800BF8F */  lw         $ra, 0x28($sp)
    /* 8ABB4 8009C3A4 2400B38F */  lw         $s3, 0x24($sp)
    /* 8ABB8 8009C3A8 2000B28F */  lw         $s2, 0x20($sp)
    /* 8ABBC 8009C3AC 1C00B18F */  lw         $s1, 0x1C($sp)
    /* 8ABC0 8009C3B0 1800B08F */  lw         $s0, 0x18($sp)
    /* 8ABC4 8009C3B4 0800E003 */  jr         $ra
    /* 8ABC8 8009C3B8 3000BD27 */   addiu     $sp, $sp, 0x30
endlabel func_8009BDB8
