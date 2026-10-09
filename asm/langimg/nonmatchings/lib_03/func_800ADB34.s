nonmatching func_800ADB34, 0x260

glabel func_800ADB34
    /* 9C344 800ADB34 0C80023C */  lui        $v0, %hi(D_800BF354)
    /* 9C348 800ADB38 54F3428C */  lw         $v0, %lo(D_800BF354)($v0)
    /* 9C34C 800ADB3C E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 9C350 800ADB40 1800BFAF */  sw         $ra, 0x18($sp)
    /* 9C354 800ADB44 1400B1AF */  sw         $s1, 0x14($sp)
    /* 9C358 800ADB48 1000B0AF */  sw         $s0, 0x10($sp)
    /* 9C35C 800ADB4C 0000428C */  lw         $v0, 0x0($v0)
    /* 9C360 800ADB50 0001103C */  lui        $s0, (0x1000000 >> 16)
    /* 9C364 800ADB54 24105000 */  and        $v0, $v0, $s0
    /* 9C368 800ADB58 89004014 */  bnez       $v0, .L800ADD80
    /* 9C36C 800ADB5C 01000224 */   addiu     $v0, $zero, 0x1
    /* 9C370 800ADB60 79AB020C */  jal        SetIntrMask
    /* 9C374 800ADB64 21200000 */   addu      $a0, $zero, $zero
    /* 9C378 800ADB68 0C80043C */  lui        $a0, %hi(D_800BF368)
    /* 9C37C 800ADB6C 68F3848C */  lw         $a0, %lo(D_800BF368)($a0)
    /* 9C380 800ADB70 0C80033C */  lui        $v1, %hi(D_800BF36C)
    /* 9C384 800ADB74 6CF3638C */  lw         $v1, %lo(D_800BF36C)($v1)
    /* 9C388 800ADB78 0C80013C */  lui        $at, %hi(D_800BF374)
    /* 9C38C 800ADB7C 59008310 */  beq        $a0, $v1, .L800ADCE4
    /* 9C390 800ADB80 74F322AC */   sw        $v0, %lo(D_800BF374)($at)
    /* 9C394 800ADB84 0C80023C */  lui        $v0, %hi(D_800BF354)
    /* 9C398 800ADB88 54F3428C */  lw         $v0, %lo(D_800BF354)($v0)
    /* 9C39C 800ADB8C 00000000 */  nop
    /* 9C3A0 800ADB90 0000428C */  lw         $v0, 0x0($v0)
    /* 9C3A4 800ADB94 00000000 */  nop
    /* 9C3A8 800ADB98 24105000 */  and        $v0, $v0, $s0
    /* 9C3AC 800ADB9C 51004014 */  bnez       $v0, .L800ADCE4
    /* 9C3B0 800ADBA0 00000000 */   nop
    /* 9C3B4 800ADBA4 0004113C */  lui        $s1, (0x4000000 >> 16)
    /* 9C3B8 800ADBA8 0001103C */  lui        $s0, (0x1000000 >> 16)
  .L800ADBAC:
    /* 9C3BC 800ADBAC 0C80023C */  lui        $v0, %hi(D_800BF36C)
    /* 9C3C0 800ADBB0 6CF3428C */  lw         $v0, %lo(D_800BF36C)($v0)
    /* 9C3C4 800ADBB4 0C80033C */  lui        $v1, %hi(D_800BF368)
    /* 9C3C8 800ADBB8 68F3638C */  lw         $v1, %lo(D_800BF368)($v1)
    /* 9C3CC 800ADBBC 01004224 */  addiu      $v0, $v0, 0x1
    /* 9C3D0 800ADBC0 3F004230 */  andi       $v0, $v0, 0x3F
    /* 9C3D4 800ADBC4 08004314 */  bne        $v0, $v1, .L800ADBE8
    /* 9C3D8 800ADBC8 00000000 */   nop
    /* 9C3DC 800ADBCC 0C80023C */  lui        $v0, %hi(D_800BF24C)
    /* 9C3E0 800ADBD0 4CF2428C */  lw         $v0, %lo(D_800BF24C)($v0)
    /* 9C3E4 800ADBD4 00000000 */  nop
    /* 9C3E8 800ADBD8 03004014 */  bnez       $v0, .L800ADBE8
    /* 9C3EC 800ADBDC 02000424 */   addiu     $a0, $zero, 0x2
    /* 9C3F0 800ADBE0 50AB020C */  jal        DMACallback
    /* 9C3F4 800ADBE4 21280000 */   addu      $a1, $zero, $zero
  .L800ADBE8:
    /* 9C3F8 800ADBE8 0C80033C */  lui        $v1, %hi(D_800BF348)
    /* 9C3FC 800ADBEC 48F3638C */  lw         $v1, %lo(D_800BF348)($v1)
    /* 9C400 800ADBF0 00000000 */  nop
    /* 9C404 800ADBF4 0000628C */  lw         $v0, 0x0($v1)
    /* 9C408 800ADBF8 00000000 */  nop
    /* 9C40C 800ADBFC 24105100 */  and        $v0, $v0, $s1
    /* 9C410 800ADC00 06004014 */  bnez       $v0, .L800ADC1C
    /* 9C414 800ADC04 0004043C */   lui       $a0, (0x4000000 >> 16)
  .L800ADC08:
    /* 9C418 800ADC08 0000628C */  lw         $v0, 0x0($v1)
    /* 9C41C 800ADC0C 00000000 */  nop
    /* 9C420 800ADC10 24104400 */  and        $v0, $v0, $a0
    /* 9C424 800ADC14 FCFF4010 */  beqz       $v0, .L800ADC08
    /* 9C428 800ADC18 00000000 */   nop
  .L800ADC1C:
    /* 9C42C 800ADC1C 0C80053C */  lui        $a1, %hi(D_800BF36C)
    /* 9C430 800ADC20 6CF3A58C */  lw         $a1, %lo(D_800BF36C)($a1)
    /* 9C434 800ADC24 0C80033C */  lui        $v1, %hi(D_800BF36C)
    /* 9C438 800ADC28 6CF3638C */  lw         $v1, %lo(D_800BF36C)($v1)
    /* 9C43C 800ADC2C 00000000 */  nop
    /* 9C440 800ADC30 40100300 */  sll        $v0, $v1, 1
    /* 9C444 800ADC34 21104300 */  addu       $v0, $v0, $v1
    /* 9C448 800ADC38 40110200 */  sll        $v0, $v0, 5
    /* 9C44C 800ADC3C 40180500 */  sll        $v1, $a1, 1
    /* 9C450 800ADC40 21186500 */  addu       $v1, $v1, $a1
    /* 9C454 800ADC44 0E80043C */  lui        $a0, %hi(D_800DCAEC)
    /* 9C458 800ADC48 21208200 */  addu       $a0, $a0, $v0
    /* 9C45C 800ADC4C ECCA848C */  lw         $a0, %lo(D_800DCAEC)($a0)
    /* 9C460 800ADC50 0C80053C */  lui        $a1, %hi(D_800BF36C)
    /* 9C464 800ADC54 6CF3A58C */  lw         $a1, %lo(D_800BF36C)($a1)
    /* 9C468 800ADC58 40190300 */  sll        $v1, $v1, 5
    /* 9C46C 800ADC5C 40100500 */  sll        $v0, $a1, 1
    /* 9C470 800ADC60 21104500 */  addu       $v0, $v0, $a1
    /* 9C474 800ADC64 40110200 */  sll        $v0, $v0, 5
    /* 9C478 800ADC68 0E80053C */  lui        $a1, %hi(D_800DCAF0)
    /* 9C47C 800ADC6C 2128A200 */  addu       $a1, $a1, $v0
    /* 9C480 800ADC70 F0CAA58C */  lw         $a1, %lo(D_800DCAF0)($a1)
    /* 9C484 800ADC74 0E80023C */  lui        $v0, %hi(D_800DCAE8)
    /* 9C488 800ADC78 21104300 */  addu       $v0, $v0, $v1
    /* 9C48C 800ADC7C E8CA428C */  lw         $v0, %lo(D_800DCAE8)($v0)
    /* 9C490 800ADC80 00000000 */  nop
    /* 9C494 800ADC84 09F84000 */  jalr       $v0
    /* 9C498 800ADC88 00000000 */   nop
    /* 9C49C 800ADC8C 0C80023C */  lui        $v0, %hi(D_800BF36C)
    /* 9C4A0 800ADC90 6CF3428C */  lw         $v0, %lo(D_800BF36C)($v0)
    /* 9C4A4 800ADC94 00000000 */  nop
    /* 9C4A8 800ADC98 01004224 */  addiu      $v0, $v0, 0x1
    /* 9C4AC 800ADC9C 3F004230 */  andi       $v0, $v0, 0x3F
    /* 9C4B0 800ADCA0 0C80013C */  lui        $at, %hi(D_800BF36C)
    /* 9C4B4 800ADCA4 6CF322AC */  sw         $v0, %lo(D_800BF36C)($at)
    /* 9C4B8 800ADCA8 0C80033C */  lui        $v1, %hi(D_800BF368)
    /* 9C4BC 800ADCAC 68F3638C */  lw         $v1, %lo(D_800BF368)($v1)
    /* 9C4C0 800ADCB0 0C80023C */  lui        $v0, %hi(D_800BF36C)
    /* 9C4C4 800ADCB4 6CF3428C */  lw         $v0, %lo(D_800BF36C)($v0)
    /* 9C4C8 800ADCB8 00000000 */  nop
    /* 9C4CC 800ADCBC 09006210 */  beq        $v1, $v0, .L800ADCE4
    /* 9C4D0 800ADCC0 00000000 */   nop
    /* 9C4D4 800ADCC4 0C80023C */  lui        $v0, %hi(D_800BF354)
    /* 9C4D8 800ADCC8 54F3428C */  lw         $v0, %lo(D_800BF354)($v0)
    /* 9C4DC 800ADCCC 00000000 */  nop
    /* 9C4E0 800ADCD0 0000428C */  lw         $v0, 0x0($v0)
    /* 9C4E4 800ADCD4 00000000 */  nop
    /* 9C4E8 800ADCD8 24105000 */  and        $v0, $v0, $s0
    /* 9C4EC 800ADCDC B3FF4010 */  beqz       $v0, .L800ADBAC
    /* 9C4F0 800ADCE0 00000000 */   nop
  .L800ADCE4:
    /* 9C4F4 800ADCE4 0C80043C */  lui        $a0, %hi(D_800BF374)
    /* 9C4F8 800ADCE8 74F3848C */  lw         $a0, %lo(D_800BF374)($a0)
    /* 9C4FC 800ADCEC 79AB020C */  jal        SetIntrMask
    /* 9C500 800ADCF0 00000000 */   nop
    /* 9C504 800ADCF4 0C80033C */  lui        $v1, %hi(D_800BF368)
    /* 9C508 800ADCF8 68F3638C */  lw         $v1, %lo(D_800BF368)($v1)
    /* 9C50C 800ADCFC 0C80023C */  lui        $v0, %hi(D_800BF36C)
    /* 9C510 800ADD00 6CF3428C */  lw         $v0, %lo(D_800BF36C)($v0)
    /* 9C514 800ADD04 00000000 */  nop
    /* 9C518 800ADD08 16006214 */  bne        $v1, $v0, .L800ADD64
    /* 9C51C 800ADD0C 00000000 */   nop
    /* 9C520 800ADD10 0C80023C */  lui        $v0, %hi(D_800BF354)
    /* 9C524 800ADD14 54F3428C */  lw         $v0, %lo(D_800BF354)($v0)
    /* 9C528 800ADD18 00000000 */  nop
    /* 9C52C 800ADD1C 0000428C */  lw         $v0, 0x0($v0)
    /* 9C530 800ADD20 0001033C */  lui        $v1, (0x1000000 >> 16)
    /* 9C534 800ADD24 24104300 */  and        $v0, $v0, $v1
    /* 9C538 800ADD28 0E004014 */  bnez       $v0, .L800ADD64
    /* 9C53C 800ADD2C 00000000 */   nop
    /* 9C540 800ADD30 0C80033C */  lui        $v1, %hi(D_800BF248)
    /* 9C544 800ADD34 48F26324 */  addiu      $v1, $v1, %lo(D_800BF248)
    /* 9C548 800ADD38 0000628C */  lw         $v0, 0x0($v1)
    /* 9C54C 800ADD3C 00000000 */  nop
    /* 9C550 800ADD40 08004010 */  beqz       $v0, .L800ADD64
    /* 9C554 800ADD44 00000000 */   nop
    /* 9C558 800ADD48 0400648C */  lw         $a0, 0x4($v1)
    /* 9C55C 800ADD4C 00000000 */  nop
    /* 9C560 800ADD50 04008010 */  beqz       $a0, .L800ADD64
    /* 9C564 800ADD54 F8FF6224 */   addiu     $v0, $v1, -0x8
    /* 9C568 800ADD58 080040AC */  sw         $zero, 0x8($v0)
    /* 9C56C 800ADD5C 09F88000 */  jalr       $a0
    /* 9C570 800ADD60 00000000 */   nop
  .L800ADD64:
    /* 9C574 800ADD64 0C80023C */  lui        $v0, %hi(D_800BF368)
    /* 9C578 800ADD68 68F3428C */  lw         $v0, %lo(D_800BF368)($v0)
    /* 9C57C 800ADD6C 0C80033C */  lui        $v1, %hi(D_800BF36C)
    /* 9C580 800ADD70 6CF3638C */  lw         $v1, %lo(D_800BF36C)($v1)
    /* 9C584 800ADD74 00000000 */  nop
    /* 9C588 800ADD78 23104300 */  subu       $v0, $v0, $v1
    /* 9C58C 800ADD7C 3F004230 */  andi       $v0, $v0, 0x3F
  .L800ADD80:
    /* 9C590 800ADD80 1800BF8F */  lw         $ra, 0x18($sp)
    /* 9C594 800ADD84 1400B18F */  lw         $s1, 0x14($sp)
    /* 9C598 800ADD88 1000B08F */  lw         $s0, 0x10($sp)
    /* 9C59C 800ADD8C 0800E003 */  jr         $ra
    /* 9C5A0 800ADD90 2000BD27 */   addiu     $sp, $sp, 0x20
endlabel func_800ADB34
