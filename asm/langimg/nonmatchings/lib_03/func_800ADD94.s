nonmatching func_800ADD94, 0x150

glabel func_800ADD94
    /* 9C5A4 800ADD94 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 9C5A8 800ADD98 1000B0AF */  sw         $s0, 0x10($sp)
    /* 9C5AC 800ADD9C 21808000 */  addu       $s0, $a0, $zero
    /* 9C5B0 800ADDA0 1400BFAF */  sw         $ra, 0x14($sp)
    /* 9C5B4 800ADDA4 79AB020C */  jal        func_800AADE4
    /* 9C5B8 800ADDA8 21200000 */   addu      $a0, $zero, $zero
    /* 9C5BC 800ADDAC 0C80013C */  lui        $at, %hi(D_800BF36C)
    /* 9C5C0 800ADDB0 6CF320AC */  sw         $zero, %lo(D_800BF36C)($at)
    /* 9C5C4 800ADDB4 0C80033C */  lui        $v1, %hi(D_800BF36C)
    /* 9C5C8 800ADDB8 6CF3638C */  lw         $v1, %lo(D_800BF36C)($v1)
    /* 9C5CC 800ADDBC 0C80013C */  lui        $at, %hi(D_800BF378)
    /* 9C5D0 800ADDC0 78F322AC */  sw         $v0, %lo(D_800BF378)($at)
    /* 9C5D4 800ADDC4 01000224 */  addiu      $v0, $zero, 0x1
    /* 9C5D8 800ADDC8 0C80013C */  lui        $at, %hi(D_800BF368)
    /* 9C5DC 800ADDCC 68F323AC */  sw         $v1, %lo(D_800BF368)($at)
    /* 9C5E0 800ADDD0 07000332 */  andi       $v1, $s0, 0x7
    /* 9C5E4 800ADDD4 23006210 */  beq        $v1, $v0, .L800ADE64
    /* 9C5E8 800ADDD8 02006228 */   slti      $v0, $v1, 0x2
    /* 9C5EC 800ADDDC 05004010 */  beqz       $v0, .L800ADDF4
    /* 9C5F0 800ADDE0 03000224 */   addiu     $v0, $zero, 0x3
    /* 9C5F4 800ADDE4 07006010 */  beqz       $v1, .L800ADE04
    /* 9C5F8 800ADDE8 00000000 */   nop
    /* 9C5FC 800ADDEC ACB70208 */  j          .L800ADEB0
    /* 9C600 800ADDF0 00000000 */   nop
  .L800ADDF4:
    /* 9C604 800ADDF4 1B006210 */  beq        $v1, $v0, .L800ADE64
    /* 9C608 800ADDF8 05000224 */   addiu     $v0, $zero, 0x5
    /* 9C60C 800ADDFC 2C006214 */  bne        $v1, $v0, .L800ADEB0
    /* 9C610 800ADE00 00000000 */   nop
  .L800ADE04:
    /* 9C614 800ADE04 0C80033C */  lui        $v1, %hi(D_800BF354)
    /* 9C618 800ADE08 54F3638C */  lw         $v1, %lo(D_800BF354)($v1)
    /* 9C61C 800ADE0C 01040224 */  addiu      $v0, $zero, 0x401
    /* 9C620 800ADE10 000062AC */  sw         $v0, 0x0($v1)
    /* 9C624 800ADE14 0C80033C */  lui        $v1, %hi(D_800BF364)
    /* 9C628 800ADE18 64F3638C */  lw         $v1, %lo(D_800BF364)($v1)
    /* 9C62C 800ADE1C 0E80043C */  lui        $a0, %hi(D_800DC9E0)
    /* 9C630 800ADE20 E0C98424 */  addiu      $a0, $a0, %lo(D_800DC9E0)
    /* 9C634 800ADE24 0000628C */  lw         $v0, 0x0($v1)
    /* 9C638 800ADE28 21280000 */  addu       $a1, $zero, $zero
    /* 9C63C 800ADE2C 00084234 */  ori        $v0, $v0, 0x800
    /* 9C640 800ADE30 000062AC */  sw         $v0, 0x0($v1)
    /* 9C644 800ADE34 0C80023C */  lui        $v0, %hi(D_800BF348)
    /* 9C648 800ADE38 48F3428C */  lw         $v0, %lo(D_800BF348)($v0)
    /* 9C64C 800ADE3C 00010624 */  addiu      $a2, $zero, 0x100
    /* 9C650 800ADE40 D7B8020C */  jal        func_800AE35C
    /* 9C654 800ADE44 000040AC */   sw        $zero, 0x0($v0)
    /* 9C658 800ADE48 0E80043C */  lui        $a0, %hi(D_800DCAE8)
    /* 9C65C 800ADE4C E8CA8424 */  addiu      $a0, $a0, %lo(D_800DCAE8)
    /* 9C660 800ADE50 21280000 */  addu       $a1, $zero, $zero
    /* 9C664 800ADE54 D7B8020C */  jal        func_800AE35C
    /* 9C668 800ADE58 00180624 */   addiu     $a2, $zero, 0x1800
    /* 9C66C 800ADE5C ACB70208 */  j          .L800ADEB0
    /* 9C670 800ADE60 00000000 */   nop
  .L800ADE64:
    /* 9C674 800ADE64 0C80033C */  lui        $v1, %hi(D_800BF354)
    /* 9C678 800ADE68 54F3638C */  lw         $v1, %lo(D_800BF354)($v1)
    /* 9C67C 800ADE6C 01040224 */  addiu      $v0, $zero, 0x401
    /* 9C680 800ADE70 000062AC */  sw         $v0, 0x0($v1)
    /* 9C684 800ADE74 0C80033C */  lui        $v1, %hi(D_800BF364)
    /* 9C688 800ADE78 64F3638C */  lw         $v1, %lo(D_800BF364)($v1)
    /* 9C68C 800ADE7C 00000000 */  nop
    /* 9C690 800ADE80 0000628C */  lw         $v0, 0x0($v1)
    /* 9C694 800ADE84 00000000 */  nop
    /* 9C698 800ADE88 00084234 */  ori        $v0, $v0, 0x800
    /* 9C69C 800ADE8C 000062AC */  sw         $v0, 0x0($v1)
    /* 9C6A0 800ADE90 0C80033C */  lui        $v1, %hi(D_800BF348)
    /* 9C6A4 800ADE94 48F3638C */  lw         $v1, %lo(D_800BF348)($v1)
    /* 9C6A8 800ADE98 0002023C */  lui        $v0, (0x2000000 >> 16)
    /* 9C6AC 800ADE9C 000062AC */  sw         $v0, 0x0($v1)
    /* 9C6B0 800ADEA0 0C80033C */  lui        $v1, %hi(D_800BF348)
    /* 9C6B4 800ADEA4 48F3638C */  lw         $v1, %lo(D_800BF348)($v1)
    /* 9C6B8 800ADEA8 0001023C */  lui        $v0, (0x1000000 >> 16)
    /* 9C6BC 800ADEAC 000062AC */  sw         $v0, 0x0($v1)
  .L800ADEB0:
    /* 9C6C0 800ADEB0 0C80043C */  lui        $a0, %hi(D_800BF378)
    /* 9C6C4 800ADEB4 78F3848C */  lw         $a0, %lo(D_800BF378)($a0)
    /* 9C6C8 800ADEB8 79AB020C */  jal        func_800AADE4
    /* 9C6CC 800ADEBC 00000000 */   nop
    /* 9C6D0 800ADEC0 07000232 */  andi       $v0, $s0, 0x7
    /* 9C6D4 800ADEC4 03004014 */  bnez       $v0, .L800ADED4
    /* 9C6D8 800ADEC8 21100000 */   addu      $v0, $zero, $zero
    /* 9C6DC 800ADECC 66B8020C */  jal        func_800AE198
    /* 9C6E0 800ADED0 21200002 */   addu      $a0, $s0, $zero
  .L800ADED4:
    /* 9C6E4 800ADED4 1400BF8F */  lw         $ra, 0x14($sp)
    /* 9C6E8 800ADED8 1000B08F */  lw         $s0, 0x10($sp)
    /* 9C6EC 800ADEDC 0800E003 */  jr         $ra
    /* 9C6F0 800ADEE0 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_800ADD94
