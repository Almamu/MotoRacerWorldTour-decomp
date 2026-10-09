/* Handwritten function */
nonmatching func_800950B0, 0x230

glabel func_800950B0
    /* 838C0 800950B0 98FFBD27 */  addiu      $sp, $sp, -0x68
    /* 838C4 800950B4 21388000 */  addu       $a3, $a0, $zero
    /* 838C8 800950B8 6400BFAF */  sw         $ra, 0x64($sp)
    /* 838CC 800950BC 6000B0AF */  sw         $s0, 0x60($sp)
    /* 838D0 800950C0 0000E0C8 */  lwc2       $0, 0x0($a3)
    /* 838D4 800950C4 0400E1C8 */  lwc2       $1, 0x4($a3)
    /* 838D8 800950C8 00000000 */  nop
    /* 838DC 800950CC 00000000 */  nop
    /* 838E0 800950D0 1200484A */  mvmva      1, 0, 0, 0, 0
    /* 838E4 800950D4 00004B48 */  cfc2       $t3, $0 /* handwritten instruction */
    /* 838E8 800950D8 00000000 */  nop
    /* 838EC 800950DC 4000ABAF */  sw         $t3, 0x40($sp)
    /* 838F0 800950E0 00084B48 */  cfc2       $t3, $1 /* handwritten instruction */
    /* 838F4 800950E4 00000000 */  nop
    /* 838F8 800950E8 4400ABAF */  sw         $t3, 0x44($sp)
    /* 838FC 800950EC 00104B48 */  cfc2       $t3, $2 /* handwritten instruction */
    /* 83900 800950F0 00000000 */  nop
    /* 83904 800950F4 4800ABAF */  sw         $t3, 0x48($sp)
    /* 83908 800950F8 00184B48 */  cfc2       $t3, $3 /* handwritten instruction */
    /* 8390C 800950FC 00000000 */  nop
    /* 83910 80095100 4C00ABAF */  sw         $t3, 0x4C($sp)
    /* 83914 80095104 00204B48 */  cfc2       $t3, $4 /* handwritten instruction */
    /* 83918 80095108 1000A427 */  addiu      $a0, $sp, 0x10
    /* 8391C 8009510C 5000ABAF */  sw         $t3, 0x50($sp)
    /* 83920 80095110 0000A284 */  lh         $v0, 0x0($a1)
    /* 83924 80095114 0000E984 */  lh         $t1, 0x0($a3)
    /* 83928 80095118 0200A384 */  lh         $v1, 0x2($a1)
    /* 8392C 8009511C 0200EA84 */  lh         $t2, 0x2($a3)
    /* 83930 80095120 23104900 */  subu       $v0, $v0, $t1
    /* 83934 80095124 23186A00 */  subu       $v1, $v1, $t2
    /* 83938 80095128 1000A2AF */  sw         $v0, 0x10($sp)
    /* 8393C 8009512C 1400A3AF */  sw         $v1, 0x14($sp)
    /* 83940 80095130 0400A284 */  lh         $v0, 0x4($a1)
    /* 83944 80095134 0400E884 */  lh         $t0, 0x4($a3)
    /* 83948 80095138 0000C384 */  lh         $v1, 0x0($a2)
    /* 8394C 8009513C 0400C584 */  lh         $a1, 0x4($a2)
    /* 83950 80095140 23104800 */  subu       $v0, $v0, $t0
    /* 83954 80095144 23186900 */  subu       $v1, $v1, $t1
    /* 83958 80095148 1800A2AF */  sw         $v0, 0x18($sp)
    /* 8395C 8009514C 0200C284 */  lh         $v0, 0x2($a2)
    /* 83960 80095150 2328A800 */  subu       $a1, $a1, $t0
    /* 83964 80095154 2000A3AF */  sw         $v1, 0x20($sp)
    /* 83968 80095158 2800A5AF */  sw         $a1, 0x28($sp)
    /* 8396C 8009515C 23104A00 */  subu       $v0, $v0, $t2
    /* 83970 80095160 F553020C */  jal        func_80094FD4
    /* 83974 80095164 2400A2AF */   sw        $v0, 0x24($sp)
    /* 83978 80095168 F553020C */  jal        func_80094FD4
    /* 8397C 8009516C 2000A427 */   addiu     $a0, $sp, 0x20
    /* 83980 80095170 00480248 */  mfc2       $v0, $9 /* handwritten instruction */
    /* 83984 80095174 00000000 */  nop
    /* 83988 80095178 5800A2A7 */  sh         $v0, 0x58($sp)
    /* 8398C 8009517C 00500348 */  mfc2       $v1, $10 /* handwritten instruction */
    /* 83990 80095180 00000000 */  nop
    /* 83994 80095184 5A00A3A7 */  sh         $v1, 0x5A($sp)
    /* 83998 80095188 00580248 */  mfc2       $v0, $11 /* handwritten instruction */
    /* 8399C 8009518C 1000AB8F */  lw         $t3, 0x10($sp)
    /* 839A0 80095190 5C00A2A7 */  sh         $v0, 0x5C($sp)
    /* 839A4 80095194 0000CB48 */  ctc2       $t3, $0 /* handwritten instruction */
    /* 839A8 80095198 1400AB8F */  lw         $t3, 0x14($sp)
    /* 839AC 8009519C 00000000 */  nop
    /* 839B0 800951A0 0010CB48 */  ctc2       $t3, $2 /* handwritten instruction */
    /* 839B4 800951A4 1800AB8F */  lw         $t3, 0x18($sp)
    /* 839B8 800951A8 00000000 */  nop
    /* 839BC 800951AC 0020CB48 */  ctc2       $t3, $4 /* handwritten instruction */
    /* 839C0 800951B0 2000AB8F */  lw         $t3, 0x20($sp)
    /* 839C4 800951B4 00000000 */  nop
    /* 839C8 800951B8 00488B48 */  mtc2       $t3, $9 /* handwritten instruction */
    /* 839CC 800951BC 2400AB8F */  lw         $t3, 0x24($sp)
    /* 839D0 800951C0 00000000 */  nop
    /* 839D4 800951C4 00508B48 */  mtc2       $t3, $10 /* handwritten instruction */
    /* 839D8 800951C8 2800AB8F */  lw         $t3, 0x28($sp)
    /* 839DC 800951CC 00000000 */  nop
    /* 839E0 800951D0 00588B48 */  mtc2       $t3, $11 /* handwritten instruction */
    /* 839E4 800951D4 00000000 */  nop
    /* 839E8 800951D8 00000000 */  nop
    /* 839EC 800951DC 0C00784B */  op         1
    /* 839F0 800951E0 00F84248 */  cfc2       $v0, $31 /* handwritten instruction */
    /* 839F4 800951E4 00C80B48 */  mfc2       $t3, $25 /* handwritten instruction */
    /* 839F8 800951E8 00000000 */  nop
    /* 839FC 800951EC 3000ABAF */  sw         $t3, 0x30($sp)
    /* 83A00 800951F0 00D00B48 */  mfc2       $t3, $26 /* handwritten instruction */
    /* 83A04 800951F4 00000000 */  nop
    /* 83A08 800951F8 3400ABAF */  sw         $t3, 0x34($sp)
    /* 83A0C 800951FC 00D80B48 */  mfc2       $t3, $27 /* handwritten instruction */
    /* 83A10 80095200 3000B027 */  addiu      $s0, $sp, 0x30
    /* 83A14 80095204 21200002 */  addu       $a0, $s0, $zero
    /* 83A18 80095208 F553020C */  jal        func_80094FD4
    /* 83A1C 8009520C 3800ABAF */   sw        $t3, 0x38($sp)
    /* 83A20 80095210 000009CA */  lwc2       $9, 0x0($s0)
    /* 83A24 80095214 3400A227 */  addiu      $v0, $sp, 0x34
    /* 83A28 80095218 00004AC8 */  lwc2       $10, 0x0($v0)
    /* 83A2C 8009521C 3800A327 */  addiu      $v1, $sp, 0x38
    /* 83A30 80095220 00006BC8 */  lwc2       $11, 0x0($v1)
    /* 83A34 80095224 4000AB8F */  lw         $t3, 0x40($sp)
    /* 83A38 80095228 00000000 */  nop
    /* 83A3C 8009522C 0000CB48 */  ctc2       $t3, $0 /* handwritten instruction */
    /* 83A40 80095230 4400AB8F */  lw         $t3, 0x44($sp)
    /* 83A44 80095234 00000000 */  nop
    /* 83A48 80095238 0008CB48 */  ctc2       $t3, $1 /* handwritten instruction */
    /* 83A4C 8009523C 4800AB8F */  lw         $t3, 0x48($sp)
    /* 83A50 80095240 00000000 */  nop
    /* 83A54 80095244 0010CB48 */  ctc2       $t3, $2 /* handwritten instruction */
    /* 83A58 80095248 4C00AB8F */  lw         $t3, 0x4C($sp)
    /* 83A5C 8009524C 00000000 */  nop
    /* 83A60 80095250 0018CB48 */  ctc2       $t3, $3 /* handwritten instruction */
    /* 83A64 80095254 5000AB8F */  lw         $t3, 0x50($sp)
    /* 83A68 80095258 00000000 */  nop
    /* 83A6C 8009525C 0020CB48 */  ctc2       $t3, $4 /* handwritten instruction */
    /* 83A70 80095260 00000000 */  nop
    /* 83A74 80095264 00000000 */  nop
    /* 83A78 80095268 12E0494A */  mvmva      1, 0, 3, 3, 0
    /* 83A7C 8009526C 5800A287 */  lh         $v0, 0x58($sp)
    /* 83A80 80095270 24002387 */  lh         $v1, 0x24($t9)
    /* 83A84 80095274 00000000 */  nop
    /* 83A88 80095278 18004300 */  mult       $v0, $v1
    /* 83A8C 8009527C 5C00A387 */  lh         $v1, 0x5C($sp)
    /* 83A90 80095280 12100000 */  mflo       $v0
    /* 83A94 80095284 03120200 */  sra        $v0, $v0, 8
    /* 83A98 80095288 5800A2A7 */  sh         $v0, 0x58($sp)
    /* 83A9C 8009528C 24002487 */  lh         $a0, 0x24($t9)
    /* 83AA0 80095290 00000000 */  nop
    /* 83AA4 80095294 18006400 */  mult       $v1, $a0
    /* 83AA8 80095298 5800AB8F */  lw         $t3, 0x58($sp)
    /* 83AAC 8009529C 12180000 */  mflo       $v1
    /* 83AB0 800952A0 031A0300 */  sra        $v1, $v1, 8
    /* 83AB4 800952A4 5C00A3A7 */  sh         $v1, 0x5C($sp)
    /* 83AB8 800952A8 0040CB48 */  ctc2       $t3, $8 /* handwritten instruction */
    /* 83ABC 800952AC 5C00AB8F */  lw         $t3, 0x5C($sp)
    /* 83AC0 800952B0 00000000 */  nop
    /* 83AC4 800952B4 0048CB48 */  ctc2       $t3, $9 /* handwritten instruction */
    /* 83AC8 800952B8 00F84248 */  cfc2       $v0, $31 /* handwritten instruction */
    /* 83ACC 800952BC 00000000 */  nop
    /* 83AD0 800952C0 12E04B4A */  mvmva      1, 1, 3, 3, 0
    /* 83AD4 800952C4 00F84348 */  cfc2       $v1, $31 /* handwritten instruction */
    /* 83AD8 800952C8 00C80248 */  mfc2       $v0, $25 /* handwritten instruction */
    /* 83ADC 800952CC 6400BF8F */  lw         $ra, 0x64($sp)
    /* 83AE0 800952D0 6000B08F */  lw         $s0, 0x60($sp)
    /* 83AE4 800952D4 01004228 */  slti       $v0, $v0, 0x1
    /* 83AE8 800952D8 0800E003 */  jr         $ra
    /* 83AEC 800952DC 6800BD27 */   addiu     $sp, $sp, 0x68
endlabel func_800950B0
