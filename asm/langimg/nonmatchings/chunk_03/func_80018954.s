/* Handwritten function */
nonmatching func_80018954, 0x198

glabel func_80018954
    /* 7164 80018954 80FFBD27 */  addiu      $sp, $sp, -0x80
    /* 7168 80018958 7000B0AF */  sw         $s0, 0x70($sp)
    /* 716C 8001895C 21808000 */  addu       $s0, $a0, $zero
    /* 7170 80018960 7800BFAF */  sw         $ra, 0x78($sp)
    /* 7174 80018964 7400B1AF */  sw         $s1, 0x74($sp)
    /* 7178 80018968 0800A98C */  lw         $t1, 0x8($a1)
    /* 717C 8001896C 0C00AA8C */  lw         $t2, 0xC($a1)
    /* 7180 80018970 1000AB8C */  lw         $t3, 0x10($a1)
    /* 7184 80018974 1000A9AF */  sw         $t1, 0x10($sp)
    /* 7188 80018978 1400AAAF */  sw         $t2, 0x14($sp)
    /* 718C 8001897C 1800ABAF */  sw         $t3, 0x18($sp)
    /* 7190 80018980 4000A527 */  addiu      $a1, $sp, 0x40
    /* 7194 80018984 00100224 */  addiu      $v0, $zero, 0x1000
    /* 7198 80018988 1000A2A4 */  sh         $v0, 0x10($a1)
    /* 719C 8001898C 0800A2A4 */  sh         $v0, 0x8($a1)
    /* 71A0 80018990 4000A2A7 */  sh         $v0, 0x40($sp)
    /* 71A4 80018994 1000A227 */  addiu      $v0, $sp, 0x10
    /* 71A8 80018998 1000A38F */  lw         $v1, 0x10($sp)
    /* 71AC 8001899C 2188C000 */  addu       $s1, $a2, $zero
    /* 71B0 800189A0 4400A0A7 */  sh         $zero, 0x44($sp)
    /* 71B4 800189A4 4200A0A7 */  sh         $zero, 0x42($sp)
    /* 71B8 800189A8 4A00A0A7 */  sh         $zero, 0x4A($sp)
    /* 71BC 800189AC 4600A0A7 */  sh         $zero, 0x46($sp)
    /* 71C0 800189B0 4E00A0A7 */  sh         $zero, 0x4E($sp)
    /* 71C4 800189B4 4C00A0A7 */  sh         $zero, 0x4C($sp)
    /* 71C8 800189B8 0400478C */  lw         $a3, 0x4($v0)
    /* 71CC 800189BC 0800488C */  lw         $t0, 0x8($v0)
    /* 71D0 800189C0 2000A627 */  addiu      $a2, $sp, 0x20
    /* 71D4 800189C4 5400A3AF */  sw         $v1, 0x54($sp)
    /* 71D8 800189C8 5800A7AF */  sw         $a3, 0x58($sp)
    /* 71DC 800189CC 9D61020C */  jal        func_80098674
    /* 71E0 800189D0 5C00A8AF */   sw        $t0, 0x5C($sp)
    /* 71E4 800189D4 6000A427 */  addiu      $a0, $sp, 0x60
    /* 71E8 800189D8 3400A527 */  addiu      $a1, $sp, 0x34
    /* 71EC 800189DC 5400A227 */  addiu      $v0, $sp, 0x54
    /* 71F0 800189E0 1400038E */  lw         $v1, 0x14($s0)
    /* 71F4 800189E4 14001026 */  addiu      $s0, $s0, 0x14
    /* 71F8 800189E8 5400A88F */  lw         $t0, 0x54($sp)
    /* 71FC 800189EC 0400468C */  lw         $a2, 0x4($v0)
    /* 7200 800189F0 0800478C */  lw         $a3, 0x8($v0)
    /* 7204 800189F4 0400028E */  lw         $v0, 0x4($s0)
    /* 7208 800189F8 23400301 */  subu       $t0, $t0, $v1
    /* 720C 800189FC 0800038E */  lw         $v1, 0x8($s0)
    /* 7210 80018A00 2330C200 */  subu       $a2, $a2, $v0
    /* 7214 80018A04 6000A8AF */  sw         $t0, 0x60($sp)
    /* 7218 80018A08 6400A6AF */  sw         $a2, 0x64($sp)
    /* 721C 80018A0C 2338E300 */  subu       $a3, $a3, $v1
    /* 7220 80018A10 1F62020C */  jal        func_8009887C
    /* 7224 80018A14 6800A7AF */   sw        $a3, 0x68($sp)
    /* 7228 80018A18 0D80063C */  lui        $a2, %hi(D_800C8864)
    /* 722C 80018A1C 6488C68C */  lw         $a2, %lo(D_800C8864)($a2)
    /* 7230 80018A20 00000000 */  nop
    /* 7234 80018A24 3C01C28C */  lw         $v0, 0x13C($a2)
    /* 7238 80018A28 00000000 */  nop
    /* 723C 80018A2C 1C00438C */  lw         $v1, 0x1C($v0)
    /* 7240 80018A30 1400448C */  lw         $a0, 0x14($v0)
    /* 7244 80018A34 001C0300 */  sll        $v1, $v1, 16
    /* 7248 80018A38 802B0400 */  sll        $a1, $a0, 14
    /* 724C 80018A3C C0130400 */  sll        $v0, $a0, 15
    /* 7250 80018A40 21104500 */  addu       $v0, $v0, $a1
    /* 7254 80018A44 1A006200 */  div        $zero, $v1, $v0
    /* 7258 80018A48 12100000 */  mflo       $v0
    /* 725C 80018A4C 00240400 */  sll        $a0, $a0, 16
    /* 7260 80018A50 00000000 */  nop
    /* 7264 80018A54 1A006400 */  div        $zero, $v1, $a0
    /* 7268 80018A58 12180000 */  mflo       $v1
    /* 726C 80018A5C 00E8C248 */  ctc2       $v0, $29 /* handwritten instruction */
    /* 7270 80018A60 00F0C348 */  ctc2       $v1, $30 /* handwritten instruction */
    /* 7274 80018A64 2000A227 */  addiu      $v0, $sp, 0x20
    /* 7278 80018A68 3400A58F */  lw         $a1, 0x34($sp)
    /* 727C 80018A6C 3800A38F */  lw         $v1, 0x38($sp)
    /* 7280 80018A70 3C00A48F */  lw         $a0, 0x3C($sp)
    /* 7284 80018A74 83280500 */  sra        $a1, $a1, 2
    /* 7288 80018A78 83180300 */  sra        $v1, $v1, 2
    /* 728C 80018A7C 83200400 */  sra        $a0, $a0, 2
    /* 7290 80018A80 0000468C */  lw         $a2, 0x0($v0)
    /* 7294 80018A84 0400478C */  lw         $a3, 0x4($v0)
    /* 7298 80018A88 0000C648 */  ctc2       $a2, $0 /* handwritten instruction */
    /* 729C 80018A8C 0008C748 */  ctc2       $a3, $1 /* handwritten instruction */
    /* 72A0 80018A90 0800468C */  lw         $a2, 0x8($v0)
    /* 72A4 80018A94 0C00478C */  lw         $a3, 0xC($v0)
    /* 72A8 80018A98 0010C648 */  ctc2       $a2, $2 /* handwritten instruction */
    /* 72AC 80018A9C 1000468C */  lw         $a2, 0x10($v0)
    /* 72B0 80018AA0 0018C748 */  ctc2       $a3, $3 /* handwritten instruction */
    /* 72B4 80018AA4 0020C648 */  ctc2       $a2, $4 /* handwritten instruction */
    /* 72B8 80018AA8 0028C548 */  ctc2       $a1, $5 /* handwritten instruction */
    /* 72BC 80018AAC 0030C348 */  ctc2       $v1, $6 /* handwritten instruction */
    /* 72C0 80018AB0 0038C448 */  ctc2       $a0, $7 /* handwritten instruction */
    /* 72C4 80018AB4 21480000 */  addu       $t1, $zero, $zero
    /* 72C8 80018AB8 00008948 */  mtc2       $t1, $0 /* handwritten instruction */
    /* 72CC 80018ABC 21500000 */  addu       $t2, $zero, $zero
    /* 72D0 80018AC0 00088A48 */  mtc2       $t2, $1 /* handwritten instruction */
    /* 72D4 80018AC4 00000000 */  nop
    /* 72D8 80018AC8 00000000 */  nop
    /* 72DC 80018ACC 0100184A */  rtps
    /* 72E0 80018AD0 00700B48 */  mfc2       $t3, $14 /* handwritten instruction */
    /* 72E4 80018AD4 7800BF8F */  lw         $ra, 0x78($sp)
    /* 72E8 80018AD8 00002BAE */  sw         $t3, 0x0($s1)
    /* 72EC 80018ADC 7400B18F */  lw         $s1, 0x74($sp)
    /* 72F0 80018AE0 7000B08F */  lw         $s0, 0x70($sp)
    /* 72F4 80018AE4 0800E003 */  jr         $ra
    /* 72F8 80018AE8 8000BD27 */   addiu     $sp, $sp, 0x80
endlabel func_80018954
