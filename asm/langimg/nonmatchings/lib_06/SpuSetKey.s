nonmatching SpuSetKey, 0x1C0

glabel SpuSetKey
    /* A28C4 800B40B4 FF00023C */  lui        $v0, (0xFFFFFF >> 16)
    /* A28C8 800B40B8 FFFF4234 */  ori        $v0, $v0, (0xFFFFFF & 0xFFFF)
    /* A28CC 800B40BC 2428A200 */  and        $a1, $a1, $v0
    /* A28D0 800B40C0 35008010 */  beqz       $a0, .L800B4198
    /* A28D4 800B40C4 02340500 */   srl       $a2, $a1, 16
    /* A28D8 800B40C8 01000224 */  addiu      $v0, $zero, 0x1
    /* A28DC 800B40CC 66008214 */  bne        $a0, $v0, .L800B4268
    /* A28E0 800B40D0 00000000 */   nop
    /* A28E4 800B40D4 0C80023C */  lui        $v0, %hi(_spu_env)
    /* A28E8 800B40D8 9C3D428C */  lw         $v0, %lo(_spu_env)($v0)
    /* A28EC 800B40DC 00000000 */  nop
    /* A28F0 800B40E0 01004230 */  andi       $v0, $v0, 0x1
    /* A28F4 800B40E4 24004010 */  beqz       $v0, .L800B4178
    /* A28F8 800B40E8 00000000 */   nop
    /* A28FC 800B40EC 0E80043C */  lui        $a0, %hi(_spu_RQ)
    /* A2900 800B40F0 C8E68424 */  addiu      $a0, $a0, %lo(_spu_RQ)
    /* A2904 800B40F4 000085A4 */  sh         $a1, 0x0($a0)
    /* A2908 800B40F8 020086A4 */  sh         $a2, 0x2($a0)
    /* A290C 800B40FC 0C80023C */  lui        $v0, %hi(_spu_RQmask)
    /* A2910 800B4100 683D428C */  lw         $v0, %lo(_spu_RQmask)($v0)
    /* A2914 800B4104 00000000 */  nop
    /* A2918 800B4108 01004234 */  ori        $v0, $v0, 0x1
    /* A291C 800B410C 0C80013C */  lui        $at, %hi(_spu_RQmask)
    /* A2920 800B4110 683D22AC */  sw         $v0, %lo(_spu_RQmask)($at)
    /* A2924 800B4114 0C80023C */  lui        $v0, %hi(_spu_RQvoice)
    /* A2928 800B4118 643D428C */  lw         $v0, %lo(_spu_RQvoice)($v0)
    /* A292C 800B411C 00000000 */  nop
    /* A2930 800B4120 25104500 */  or         $v0, $v0, $a1
    /* A2934 800B4124 0C80013C */  lui        $at, %hi(_spu_RQvoice)
    /* A2938 800B4128 643D22AC */  sw         $v0, %lo(_spu_RQvoice)($at)
    /* A293C 800B412C 04008294 */  lhu        $v0, 0x4($a0)
    /* A2940 800B4130 00000000 */  nop
    /* A2944 800B4134 24104500 */  and        $v0, $v0, $a1
    /* A2948 800B4138 05004010 */  beqz       $v0, .L800B4150
    /* A294C 800B413C 00000000 */   nop
    /* A2950 800B4140 04008294 */  lhu        $v0, 0x4($a0)
    /* A2954 800B4144 27180500 */  nor        $v1, $zero, $a1
    /* A2958 800B4148 24104300 */  and        $v0, $v0, $v1
    /* A295C 800B414C 040082A4 */  sh         $v0, 0x4($a0)
  .L800B4150:
    /* A2960 800B4150 06008294 */  lhu        $v0, 0x6($a0)
    /* A2964 800B4154 00000000 */  nop
    /* A2968 800B4158 24104600 */  and        $v0, $v0, $a2
    /* A296C 800B415C 42004010 */  beqz       $v0, .L800B4268
    /* A2970 800B4160 00000000 */   nop
    /* A2974 800B4164 06008294 */  lhu        $v0, 0x6($a0)
    /* A2978 800B4168 27180600 */  nor        $v1, $zero, $a2
    /* A297C 800B416C 24104300 */  and        $v0, $v0, $v1
    /* A2980 800B4170 9AD00208 */  j          .L800B4268
    /* A2984 800B4174 060082A4 */   sh        $v0, 0x6($a0)
  .L800B4178:
    /* A2988 800B4178 0C80023C */  lui        $v0, %hi(_spu_keystat)
    /* A298C 800B417C 3C3D428C */  lw         $v0, %lo(_spu_keystat)($v0)
    /* A2990 800B4180 0C80033C */  lui        $v1, %hi(_spu_RXX)
    /* A2994 800B4184 B03D638C */  lw         $v1, %lo(_spu_RXX)($v1)
    /* A2998 800B4188 25104500 */  or         $v0, $v0, $a1
    /* A299C 800B418C 880165A4 */  sh         $a1, 0x188($v1)
    /* A29A0 800B4190 98D00208 */  j          .L800B4260
    /* A29A4 800B4194 8A0166A4 */   sh        $a2, 0x18A($v1)
  .L800B4198:
    /* A29A8 800B4198 0C80023C */  lui        $v0, %hi(_spu_env)
    /* A29AC 800B419C 9C3D428C */  lw         $v0, %lo(_spu_env)($v0)
    /* A29B0 800B41A0 00000000 */  nop
    /* A29B4 800B41A4 01004230 */  andi       $v0, $v0, 0x1
    /* A29B8 800B41A8 24004010 */  beqz       $v0, .L800B423C
    /* A29BC 800B41AC 00000000 */   nop
    /* A29C0 800B41B0 0E80043C */  lui        $a0, %hi(_spu_RQ)
    /* A29C4 800B41B4 C8E68424 */  addiu      $a0, $a0, %lo(_spu_RQ)
    /* A29C8 800B41B8 040085A4 */  sh         $a1, 0x4($a0)
    /* A29CC 800B41BC 060086A4 */  sh         $a2, 0x6($a0)
    /* A29D0 800B41C0 0C80023C */  lui        $v0, %hi(_spu_RQmask)
    /* A29D4 800B41C4 683D428C */  lw         $v0, %lo(_spu_RQmask)($v0)
    /* A29D8 800B41C8 00000000 */  nop
    /* A29DC 800B41CC 01004234 */  ori        $v0, $v0, 0x1
    /* A29E0 800B41D0 0C80013C */  lui        $at, %hi(_spu_RQmask)
    /* A29E4 800B41D4 683D22AC */  sw         $v0, %lo(_spu_RQmask)($at)
    /* A29E8 800B41D8 0C80023C */  lui        $v0, %hi(_spu_RQvoice)
    /* A29EC 800B41DC 643D428C */  lw         $v0, %lo(_spu_RQvoice)($v0)
    /* A29F0 800B41E0 27180500 */  nor        $v1, $zero, $a1
    /* A29F4 800B41E4 24104300 */  and        $v0, $v0, $v1
    /* A29F8 800B41E8 0C80013C */  lui        $at, %hi(_spu_RQvoice)
    /* A29FC 800B41EC 643D22AC */  sw         $v0, %lo(_spu_RQvoice)($at)
    /* A2A00 800B41F0 00008294 */  lhu        $v0, 0x0($a0)
    /* A2A04 800B41F4 00000000 */  nop
    /* A2A08 800B41F8 24104500 */  and        $v0, $v0, $a1
    /* A2A0C 800B41FC 05004010 */  beqz       $v0, .L800B4214
    /* A2A10 800B4200 00000000 */   nop
    /* A2A14 800B4204 00008294 */  lhu        $v0, 0x0($a0)
    /* A2A18 800B4208 00000000 */  nop
    /* A2A1C 800B420C 24104300 */  and        $v0, $v0, $v1
    /* A2A20 800B4210 000082A4 */  sh         $v0, 0x0($a0)
  .L800B4214:
    /* A2A24 800B4214 02008294 */  lhu        $v0, 0x2($a0)
    /* A2A28 800B4218 00000000 */  nop
    /* A2A2C 800B421C 24104600 */  and        $v0, $v0, $a2
    /* A2A30 800B4220 11004010 */  beqz       $v0, .L800B4268
    /* A2A34 800B4224 00000000 */   nop
    /* A2A38 800B4228 02008294 */  lhu        $v0, 0x2($a0)
    /* A2A3C 800B422C 27180600 */  nor        $v1, $zero, $a2
    /* A2A40 800B4230 24104300 */  and        $v0, $v0, $v1
    /* A2A44 800B4234 9AD00208 */  j          .L800B4268
    /* A2A48 800B4238 020082A4 */   sh        $v0, 0x2($a0)
  .L800B423C:
    /* A2A4C 800B423C 0C80023C */  lui        $v0, %hi(_spu_RXX)
    /* A2A50 800B4240 B03D428C */  lw         $v0, %lo(_spu_RXX)($v0)
    /* A2A54 800B4244 00000000 */  nop
    /* A2A58 800B4248 8C0145A4 */  sh         $a1, 0x18C($v0)
    /* A2A5C 800B424C 8E0146A4 */  sh         $a2, 0x18E($v0)
    /* A2A60 800B4250 0C80023C */  lui        $v0, %hi(_spu_keystat)
    /* A2A64 800B4254 3C3D428C */  lw         $v0, %lo(_spu_keystat)($v0)
    /* A2A68 800B4258 27180500 */  nor        $v1, $zero, $a1
    /* A2A6C 800B425C 24104300 */  and        $v0, $v0, $v1
  .L800B4260:
    /* A2A70 800B4260 0C80013C */  lui        $at, %hi(_spu_keystat)
    /* A2A74 800B4264 3C3D22AC */  sw         $v0, %lo(_spu_keystat)($at)
  .L800B4268:
    /* A2A78 800B4268 0800E003 */  jr         $ra
    /* A2A7C 800B426C 00000000 */   nop
    /* A2A80 800B4270 00000000 */  nop
endlabel SpuSetKey
