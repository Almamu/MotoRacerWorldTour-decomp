nonmatching func_8014AC5C, 0x9C

glabel func_8014AC5C
    /* 18128 8014AC5C FFFF8830 */  andi       $t0, $a0, 0xFFFF
    /* 1812C 8014AC60 03000229 */  slti       $v0, $t0, 0x3
    /* 18130 8014AC64 03004014 */  bnez       $v0, .L8014AC74
    /* 18134 8014AC68 48000724 */   addiu     $a3, $zero, 0x48
    /* 18138 8014AC6C 3C2B0508 */  j          .L8014ACF0
    /* 1813C 8014AC70 21100000 */   addu      $v0, $zero, $zero
  .L8014AC74:
    /* 18140 8014AC74 1C80023C */  lui        $v0, %hi(D_801C0978)
    /* 18144 8014AC78 7809428C */  lw         $v0, %lo(D_801C0978)($v0)
    /* 18148 8014AC7C 00190800 */  sll        $v1, $t0, 4
    /* 1814C 8014AC80 21186200 */  addu       $v1, $v1, $v0
    /* 18150 8014AC84 0200022D */  sltiu      $v0, $t0, 0x2
    /* 18154 8014AC88 040060A4 */  sh         $zero, 0x4($v1)
    /* 18158 8014AC8C 080065A4 */  sh         $a1, 0x8($v1)
    /* 1815C 8014AC90 08004010 */  beqz       $v0, .L8014ACB4
    /* 18160 8014AC94 1000C230 */   andi      $v0, $a2, 0x10
    /* 18164 8014AC98 02004010 */  beqz       $v0, .L8014ACA4
    /* 18168 8014AC9C 0100C230 */   andi      $v0, $a2, 0x1
    /* 1816C 8014ACA0 49000724 */  addiu      $a3, $zero, 0x49
  .L8014ACA4:
    /* 18170 8014ACA4 0A004014 */  bnez       $v0, .L8014ACD0
    /* 18174 8014ACA8 0010C230 */   andi      $v0, $a2, 0x1000
    /* 18178 8014ACAC 342B0508 */  j          .L8014ACD0
    /* 1817C 8014ACB0 0001E734 */   ori       $a3, $a3, 0x100
  .L8014ACB4:
    /* 18180 8014ACB4 02000224 */  addiu      $v0, $zero, 0x2
    /* 18184 8014ACB8 05000215 */  bne        $t0, $v0, .L8014ACD0
    /* 18188 8014ACBC 0010C230 */   andi      $v0, $a2, 0x1000
    /* 1818C 8014ACC0 0100C230 */  andi       $v0, $a2, 0x1
    /* 18190 8014ACC4 02004014 */  bnez       $v0, .L8014ACD0
    /* 18194 8014ACC8 0010C230 */   andi      $v0, $a2, 0x1000
    /* 18198 8014ACCC 48020724 */  addiu      $a3, $zero, 0x248
  .L8014ACD0:
    /* 1819C 8014ACD0 02004010 */  beqz       $v0, .L8014ACDC
    /* 181A0 8014ACD4 01000224 */   addiu     $v0, $zero, 0x1
    /* 181A4 8014ACD8 1000E734 */  ori        $a3, $a3, 0x10
  .L8014ACDC:
    /* 181A8 8014ACDC 1C80043C */  lui        $a0, %hi(D_801C0978)
    /* 181AC 8014ACE0 7809848C */  lw         $a0, %lo(D_801C0978)($a0)
    /* 181B0 8014ACE4 00190800 */  sll        $v1, $t0, 4
    /* 181B4 8014ACE8 21186400 */  addu       $v1, $v1, $a0
    /* 181B8 8014ACEC 040067A4 */  sh         $a3, 0x4($v1)
  .L8014ACF0:
    /* 181BC 8014ACF0 0800E003 */  jr         $ra
    /* 181C0 8014ACF4 00000000 */   nop
endlabel func_8014AC5C
