/* Handwritten function */
nonmatching func_8007C1B8, 0x19C

glabel func_8007C1B8
    /* 6A9C8 8007C1B8 C8FFBD27 */  addiu      $sp, $sp, -0x38
    /* 6A9CC 8007C1BC 2800B2AF */  sw         $s2, 0x28($sp)
    /* 6A9D0 8007C1C0 801F123C */  lui        $s2, (0x1F8003E0 >> 16)
    /* 6A9D4 8007C1C4 E0035236 */  ori        $s2, $s2, (0x1F8003E0 & 0xFFFF)
    /* 6A9D8 8007C1C8 2000B0AF */  sw         $s0, 0x20($sp)
    /* 6A9DC 8007C1CC 21808000 */  addu       $s0, $a0, $zero
    /* 6A9E0 8007C1D0 2C00B3AF */  sw         $s3, 0x2C($sp)
    /* 6A9E4 8007C1D4 2198A000 */  addu       $s3, $a1, $zero
    /* 6A9E8 8007C1D8 21280002 */  addu       $a1, $s0, $zero
    /* 6A9EC 8007C1DC 801F063C */  lui        $a2, (0x1F8003E0 >> 16)
    /* 6A9F0 8007C1E0 2400B1AF */  sw         $s1, 0x24($sp)
    /* 6A9F4 8007C1E4 0D80113C */  lui        $s1, %hi(D_800C8864)
    /* 6A9F8 8007C1E8 6488318E */  lw         $s1, %lo(D_800C8864)($s1)
    /* 6A9FC 8007C1EC E003C634 */  ori        $a2, $a2, (0x1F8003E0 & 0xFFFF)
    /* 6AA00 8007C1F0 3000BFAF */  sw         $ra, 0x30($sp)
    /* 6AA04 8007C1F4 9D61020C */  jal        func_80098674
    /* 6AA08 8007C1F8 60002426 */   addiu     $a0, $s1, 0x60
    /* 6AA0C 8007C1FC 1000A427 */  addiu      $a0, $sp, 0x10
    /* 6AA10 8007C200 801F053C */  lui        $a1, (0x1F8003F4 >> 16)
    /* 6AA14 8007C204 F403A534 */  ori        $a1, $a1, (0x1F8003F4 & 0xFFFF)
    /* 6AA18 8007C208 1400088E */  lw         $t0, 0x14($s0)
    /* 6AA1C 8007C20C 14001026 */  addiu      $s0, $s0, 0x14
    /* 6AA20 8007C210 7400228E */  lw         $v0, 0x74($s1)
    /* 6AA24 8007C214 74003126 */  addiu      $s1, $s1, 0x74
    /* 6AA28 8007C218 0400078E */  lw         $a3, 0x4($s0)
    /* 6AA2C 8007C21C 0800068E */  lw         $a2, 0x8($s0)
    /* 6AA30 8007C220 0400238E */  lw         $v1, 0x4($s1)
    /* 6AA34 8007C224 23400201 */  subu       $t0, $t0, $v0
    /* 6AA38 8007C228 0800228E */  lw         $v0, 0x8($s1)
    /* 6AA3C 8007C22C 2338E300 */  subu       $a3, $a3, $v1
    /* 6AA40 8007C230 1000A8AF */  sw         $t0, 0x10($sp)
    /* 6AA44 8007C234 1400A7AF */  sw         $a3, 0x14($sp)
    /* 6AA48 8007C238 2330C200 */  subu       $a2, $a2, $v0
    /* 6AA4C 8007C23C 1F62020C */  jal        func_8009887C
    /* 6AA50 8007C240 1800A6AF */   sw        $a2, 0x18($sp)
    /* 6AA54 8007C244 0800033C */  lui        $v1, (0x80000 >> 16)
    /* 6AA58 8007C248 0B006316 */  bne        $s3, $v1, .L8007C278
    /* 6AA5C 8007C24C 18000A24 */   addiu     $t2, $zero, 0x18
    /* 6AA60 8007C250 801F023C */  lui        $v0, (0x1F8003F4 >> 16)
    /* 6AA64 8007C254 F403428C */  lw         $v0, (0x1F8003F4 & 0xFFFF)($v0)
    /* 6AA68 8007C258 801F033C */  lui        $v1, (0x1F8003F8 >> 16)
    /* 6AA6C 8007C25C F803638C */  lw         $v1, (0x1F8003F8 & 0xFFFF)($v1)
    /* 6AA70 8007C260 801F043C */  lui        $a0, (0x1F8003FC >> 16)
    /* 6AA74 8007C264 FC03848C */  lw         $a0, (0x1F8003FC & 0xFFFF)($a0)
    /* 6AA78 8007C268 43390200 */  sra        $a3, $v0, 5
    /* 6AA7C 8007C26C 43310300 */  sra        $a2, $v1, 5
    /* 6AA80 8007C270 BDF00108 */  j          .L8007C2F4
    /* 6AA84 8007C274 43290400 */   sra       $a1, $a0, 5
  .L8007C278:
    /* 6AA88 8007C278 1400498E */  lw         $t1, 0x14($s2)
    /* 6AA8C 8007C27C 00000000 */  nop
    /* 6AA90 8007C280 18003301 */  mult       $t1, $s3
    /* 6AA94 8007C284 20000234 */  ori        $v0, $zero, 0x20
    /* 6AA98 8007C288 22104A00 */  sub        $v0, $v0, $t2 /* handwritten instruction */
    /* 6AA9C 8007C28C 10380000 */  mfhi       $a3
    /* 6AAA0 8007C290 04384700 */  sllv       $a3, $a3, $v0
    /* 6AAA4 8007C294 12100000 */  mflo       $v0
    /* 6AAA8 8007C298 06104201 */  srlv       $v0, $v0, $t2
    /* 6AAAC 8007C29C 2538E200 */  or         $a3, $a3, $v0
    /* 6AAB0 8007C2A0 1800498E */  lw         $t1, 0x18($s2)
    /* 6AAB4 8007C2A4 00000000 */  nop
    /* 6AAB8 8007C2A8 18003301 */  mult       $t1, $s3
    /* 6AABC 8007C2AC 20000334 */  ori        $v1, $zero, 0x20
    /* 6AAC0 8007C2B0 22186A00 */  sub        $v1, $v1, $t2 /* handwritten instruction */
    /* 6AAC4 8007C2B4 10300000 */  mfhi       $a2
    /* 6AAC8 8007C2B8 04306600 */  sllv       $a2, $a2, $v1
    /* 6AACC 8007C2BC 12180000 */  mflo       $v1
    /* 6AAD0 8007C2C0 06184301 */  srlv       $v1, $v1, $t2
    /* 6AAD4 8007C2C4 2530C300 */  or         $a2, $a2, $v1
    /* 6AAD8 8007C2C8 18000924 */  addiu      $t1, $zero, 0x18
    /* 6AADC 8007C2CC 1C00528E */  lw         $s2, 0x1C($s2)
    /* 6AAE0 8007C2D0 00000000 */  nop
    /* 6AAE4 8007C2D4 18005302 */  mult       $s2, $s3
    /* 6AAE8 8007C2D8 20000434 */  ori        $a0, $zero, 0x20
    /* 6AAEC 8007C2DC 22208900 */  sub        $a0, $a0, $t1 /* handwritten instruction */
    /* 6AAF0 8007C2E0 10280000 */  mfhi       $a1
    /* 6AAF4 8007C2E4 04288500 */  sllv       $a1, $a1, $a0
    /* 6AAF8 8007C2E8 12200000 */  mflo       $a0
    /* 6AAFC 8007C2EC 06202401 */  srlv       $a0, $a0, $t1
    /* 6AB00 8007C2F0 2528A400 */  or         $a1, $a1, $a0
  .L8007C2F4:
    /* 6AB04 8007C2F4 801F0A3C */  lui        $t2, (0x1F8003E0 >> 16)
    /* 6AB08 8007C2F8 E0034A35 */  ori        $t2, $t2, (0x1F8003E0 & 0xFFFF)
    /* 6AB0C 8007C2FC 0000428D */  lw         $v0, 0x0($t2)
    /* 6AB10 8007C300 801F093C */  lui        $t1, (0x1F8003E0 >> 16)
    /* 6AB14 8007C304 E0032935 */  ori        $t1, $t1, (0x1F8003E0 & 0xFFFF)
    /* 6AB18 8007C308 0400238D */  lw         $v1, 0x4($t1)
    /* 6AB1C 8007C30C 0000C248 */  ctc2       $v0, $0 /* handwritten instruction */
    /* 6AB20 8007C310 0008C348 */  ctc2       $v1, $1 /* handwritten instruction */
    /* 6AB24 8007C314 0800428D */  lw         $v0, 0x8($t2)
    /* 6AB28 8007C318 0C00438D */  lw         $v1, 0xC($t2)
    /* 6AB2C 8007C31C 0010C248 */  ctc2       $v0, $2 /* handwritten instruction */
    /* 6AB30 8007C320 1000228D */  lw         $v0, 0x10($t1)
    /* 6AB34 8007C324 0018C348 */  ctc2       $v1, $3 /* handwritten instruction */
    /* 6AB38 8007C328 0020C248 */  ctc2       $v0, $4 /* handwritten instruction */
    /* 6AB3C 8007C32C 0028C748 */  ctc2       $a3, $5 /* handwritten instruction */
    /* 6AB40 8007C330 0030C648 */  ctc2       $a2, $6 /* handwritten instruction */
    /* 6AB44 8007C334 0038C548 */  ctc2       $a1, $7 /* handwritten instruction */
    /* 6AB48 8007C338 3000BF8F */  lw         $ra, 0x30($sp)
    /* 6AB4C 8007C33C 2C00B38F */  lw         $s3, 0x2C($sp)
    /* 6AB50 8007C340 2800B28F */  lw         $s2, 0x28($sp)
    /* 6AB54 8007C344 2400B18F */  lw         $s1, 0x24($sp)
    /* 6AB58 8007C348 2000B08F */  lw         $s0, 0x20($sp)
    /* 6AB5C 8007C34C 0800E003 */  jr         $ra
    /* 6AB60 8007C350 3800BD27 */   addiu     $sp, $sp, 0x38
endlabel func_8007C1B8
