nonmatching VSync, 0x178

glabel VSync
    /* 992E0 800AAAD0 0C80023C */  lui        $v0, %hi(D_800BD4D8)
    /* 992E4 800AAAD4 D8D4428C */  lw         $v0, %lo(D_800BD4D8)($v0)
    /* 992E8 800AAAD8 0C80053C */  lui        $a1, %hi(D_800BD4DC)
    /* 992EC 800AAADC DCD4A58C */  lw         $a1, %lo(D_800BD4DC)($a1)
    /* 992F0 800AAAE0 D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* 992F4 800AAAE4 2000BFAF */  sw         $ra, 0x20($sp)
    /* 992F8 800AAAE8 1C00B1AF */  sw         $s1, 0x1C($sp)
    /* 992FC 800AAAEC 1800B0AF */  sw         $s0, 0x18($sp)
    /* 99300 800AAAF0 0000508C */  lw         $s0, 0x0($v0)
  .L800AAAF4:
    /* 99304 800AAAF4 0000A28C */  lw         $v0, 0x0($a1)
    /* 99308 800AAAF8 00000000 */  nop
    /* 9930C 800AAAFC 1000A2AF */  sw         $v0, 0x10($sp)
    /* 99310 800AAB00 1000A38F */  lw         $v1, 0x10($sp)
    /* 99314 800AAB04 0000A28C */  lw         $v0, 0x0($a1)
    /* 99318 800AAB08 00000000 */  nop
    /* 9931C 800AAB0C F9FF6214 */  bne        $v1, $v0, .L800AAAF4
    /* 99320 800AAB10 00000000 */   nop
    /* 99324 800AAB14 1000A28F */  lw         $v0, 0x10($sp)
    /* 99328 800AAB18 0C80033C */  lui        $v1, %hi(D_800BD4E0)
    /* 9932C 800AAB1C E0D4638C */  lw         $v1, %lo(D_800BD4E0)($v1)
    /* 99330 800AAB20 00000000 */  nop
    /* 99334 800AAB24 23104300 */  subu       $v0, $v0, $v1
    /* 99338 800AAB28 05008104 */  bgez       $a0, .L800AAB40
    /* 9933C 800AAB2C FFFF5130 */   andi      $s1, $v0, 0xFFFF
    /* 99340 800AAB30 0C80023C */  lui        $v0, %hi(D_800BE610)
    /* 99344 800AAB34 10E6428C */  lw         $v0, %lo(D_800BE610)($v0)
    /* 99348 800AAB38 0DAB0208 */  j          .L800AAC34
    /* 9934C 800AAB3C 00000000 */   nop
  .L800AAB40:
    /* 99350 800AAB40 01000224 */  addiu      $v0, $zero, 0x1
    /* 99354 800AAB44 3A008210 */  beq        $a0, $v0, .L800AAC30
    /* 99358 800AAB48 00000000 */   nop
    /* 9935C 800AAB4C 07008018 */  blez       $a0, .L800AAB6C
    /* 99360 800AAB50 00000000 */   nop
    /* 99364 800AAB54 0C80023C */  lui        $v0, %hi(D_800BD4E4)
    /* 99368 800AAB58 E4D4428C */  lw         $v0, %lo(D_800BD4E4)($v0)
    /* 9936C 800AAB5C 00000000 */  nop
    /* 99370 800AAB60 FFFF4224 */  addiu      $v0, $v0, -0x1
    /* 99374 800AAB64 DDAA0208 */  j          .L800AAB74
    /* 99378 800AAB68 21104400 */   addu      $v0, $v0, $a0
  .L800AAB6C:
    /* 9937C 800AAB6C 0C80023C */  lui        $v0, %hi(D_800BD4E4)
    /* 99380 800AAB70 E4D4428C */  lw         $v0, %lo(D_800BD4E4)($v0)
  .L800AAB74:
    /* 99384 800AAB74 02008018 */  blez       $a0, .L800AAB80
    /* 99388 800AAB78 21280000 */   addu      $a1, $zero, $zero
    /* 9938C 800AAB7C FFFF8524 */  addiu      $a1, $a0, -0x1
  .L800AAB80:
    /* 99390 800AAB80 12AB020C */  jal        func_800AAC48
    /* 99394 800AAB84 21204000 */   addu      $a0, $v0, $zero
    /* 99398 800AAB88 0C80023C */  lui        $v0, %hi(D_800BD4D8)
    /* 9939C 800AAB8C D8D4428C */  lw         $v0, %lo(D_800BD4D8)($v0)
    /* 993A0 800AAB90 00000000 */  nop
    /* 993A4 800AAB94 0000508C */  lw         $s0, 0x0($v0)
    /* 993A8 800AAB98 0C80043C */  lui        $a0, %hi(D_800BE610)
    /* 993AC 800AAB9C 10E6848C */  lw         $a0, %lo(D_800BE610)($a0)
    /* 993B0 800AABA0 01000524 */  addiu      $a1, $zero, 0x1
    /* 993B4 800AABA4 12AB020C */  jal        func_800AAC48
    /* 993B8 800AABA8 01008424 */   addiu     $a0, $a0, 0x1
    /* 993BC 800AABAC 4000023C */  lui        $v0, (0x400000 >> 16)
    /* 993C0 800AABB0 24100202 */  and        $v0, $s0, $v0
    /* 993C4 800AABB4 0F004010 */  beqz       $v0, .L800AABF4
    /* 993C8 800AABB8 00000000 */   nop
    /* 993CC 800AABBC 0C80033C */  lui        $v1, %hi(D_800BD4D8)
    /* 993D0 800AABC0 D8D4638C */  lw         $v1, %lo(D_800BD4D8)($v1)
    /* 993D4 800AABC4 00000000 */  nop
    /* 993D8 800AABC8 0000628C */  lw         $v0, 0x0($v1)
    /* 993DC 800AABCC 00000000 */  nop
    /* 993E0 800AABD0 26100202 */  xor        $v0, $s0, $v0
    /* 993E4 800AABD4 07004004 */  bltz       $v0, .L800AABF4
    /* 993E8 800AABD8 0080043C */   lui       $a0, (0x80000000 >> 16)
  .L800AABDC:
    /* 993EC 800AABDC 0000628C */  lw         $v0, 0x0($v1)
    /* 993F0 800AABE0 00000000 */  nop
    /* 993F4 800AABE4 26100202 */  xor        $v0, $s0, $v0
    /* 993F8 800AABE8 24104400 */  and        $v0, $v0, $a0
    /* 993FC 800AABEC FBFF4010 */  beqz       $v0, .L800AABDC
    /* 99400 800AABF0 00000000 */   nop
  .L800AABF4:
    /* 99404 800AABF4 0C80023C */  lui        $v0, %hi(D_800BE610)
    /* 99408 800AABF8 10E6428C */  lw         $v0, %lo(D_800BE610)($v0)
    /* 9940C 800AABFC 0C80043C */  lui        $a0, %hi(D_800BD4DC)
    /* 99410 800AAC00 DCD4848C */  lw         $a0, %lo(D_800BD4DC)($a0)
    /* 99414 800AAC04 0C80013C */  lui        $at, %hi(D_800BD4E4)
    /* 99418 800AAC08 E4D422AC */  sw         $v0, %lo(D_800BD4E4)($at)
  .L800AAC0C:
    /* 9941C 800AAC0C 0000828C */  lw         $v0, 0x0($a0)
    /* 99420 800AAC10 0C80013C */  lui        $at, %hi(D_800BD4E0)
    /* 99424 800AAC14 E0D422AC */  sw         $v0, %lo(D_800BD4E0)($at)
    /* 99428 800AAC18 0C80033C */  lui        $v1, %hi(D_800BD4E0)
    /* 9942C 800AAC1C E0D4638C */  lw         $v1, %lo(D_800BD4E0)($v1)
    /* 99430 800AAC20 0000828C */  lw         $v0, 0x0($a0)
    /* 99434 800AAC24 00000000 */  nop
    /* 99438 800AAC28 F8FF6214 */  bne        $v1, $v0, .L800AAC0C
    /* 9943C 800AAC2C 00000000 */   nop
  .L800AAC30:
    /* 99440 800AAC30 21102002 */  addu       $v0, $s1, $zero
  .L800AAC34:
    /* 99444 800AAC34 2000BF8F */  lw         $ra, 0x20($sp)
    /* 99448 800AAC38 1C00B18F */  lw         $s1, 0x1C($sp)
    /* 9944C 800AAC3C 1800B08F */  lw         $s0, 0x18($sp)
    /* 99450 800AAC40 0800E003 */  jr         $ra
    /* 99454 800AAC44 2800BD27 */   addiu     $sp, $sp, 0x28
endlabel VSync
