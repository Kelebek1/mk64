glabel spawn_players_3p_battle
/* 03C19C 8003B59C 27BDFFC8 */  addiu $sp, $sp, -0x38
/* 03C1A0 8003B5A0 3C0E800E */  lui   $t6, %hi(gCurrentCourseId) # $t6, 0x800e
/* 03C1A4 8003B5A4 85CEC5A0 */  lh    $t6, %lo(gCurrentCourseId)($t6)
/* 03C1A8 8003B5A8 F7B40020 */  sdc1  $f20, 0x20($sp)
/* 03C1AC 8003B5AC 4486A000 */  mtc1  $a2, $f20
/* 03C1B0 8003B5B0 AFB10030 */  sw    $s1, 0x30($sp)
/* 03C1B4 8003B5B4 AFB0002C */  sw    $s0, 0x2c($sp)
/* 03C1B8 8003B5B8 24010013 */  li    $at, 19
/* 03C1BC 8003B5BC 00808025 */  move  $s0, $a0
/* 03C1C0 8003B5C0 00A08825 */  move  $s1, $a1
/* 03C1C4 8003B5C4 15C1002F */  bne   $t6, $at, .L8003B684
/* 03C1C8 8003B5C8 AFBF0034 */   sw    $ra, 0x34($sp)
/* 03C1CC 8003B5CC 8E060000 */  lw    $a2, ($s0)
/* 03C1D0 8003B5D0 8E270000 */  lw    $a3, ($s1)
/* 03C1D4 8003B5D4 3C01C680 */  li    $at, 0xC6800000 # -16384.000000
/* 03C1D8 8003B5D8 3C0F800F */  lui   $t7, %hi(D_800E86A8) # $t7, 0x800f
/* 03C1DC 8003B5DC 81EF86A8 */  lb    $t7, %lo(D_800E86A8)($t7)
/* 03C1E0 8003B5E0 44812000 */  mtc1  $at, $f4
/* 03C1E4 8003B5E4 3C04800E */  lui   $a0, %hi(D_800DC4DC) # $a0, 0x800e
/* 03C1E8 8003B5E8 2418E000 */  li    $t8, -8192
/* 03C1EC 8003B5EC AFB8001C */  sw    $t8, 0x1c($sp)
/* 03C1F0 8003B5F0 8C84C4DC */  lw    $a0, %lo(D_800DC4DC)($a0)
/* 03C1F4 8003B5F4 E7B40010 */  swc1  $f20, 0x10($sp)
/* 03C1F8 8003B5F8 00002825 */  move  $a1, $zero
/* 03C1FC 8003B5FC AFAF0018 */  sw    $t7, 0x18($sp)
/* 03C200 8003B600 0C00E4F0 */  jal   spawn_player
/* 03C204 8003B604 E7A40014 */   swc1  $f4, 0x14($sp)
/* 03C208 8003B608 8E060004 */  lw    $a2, 4($s0)
/* 03C20C 8003B60C 8E270004 */  lw    $a3, 4($s1)
/* 03C210 8003B610 3C014680 */  li    $at, 0x46800000 # 16384.000000
/* 03C214 8003B614 3C19800F */  lui   $t9, %hi(D_800E86A9) # $t9, 0x800f
/* 03C218 8003B618 833986A9 */  lb    $t9, %lo(D_800E86A9)($t9)
/* 03C21C 8003B61C 44813000 */  mtc1  $at, $f6
/* 03C220 8003B620 3C04800E */  lui   $a0, %hi(D_800DC4E0) # $a0, 0x800e
/* 03C224 8003B624 2408E000 */  li    $t0, -8192
/* 03C228 8003B628 AFA8001C */  sw    $t0, 0x1c($sp)
/* 03C22C 8003B62C 8C84C4E0 */  lw    $a0, %lo(D_800DC4E0)($a0)
/* 03C230 8003B630 E7B40010 */  swc1  $f20, 0x10($sp)
/* 03C234 8003B634 24050001 */  li    $a1, 1
/* 03C238 8003B638 AFB90018 */  sw    $t9, 0x18($sp)
/* 03C23C 8003B63C 0C00E4F0 */  jal   spawn_player
/* 03C240 8003B640 E7A60014 */   swc1  $f6, 0x14($sp)
/* 03C244 8003B644 8E060008 */  lw    $a2, 8($s0)
/* 03C248 8003B648 8E270008 */  lw    $a3, 8($s1)
/* 03C24C 8003B64C 3C09800F */  lui   $t1, %hi(D_800E86AA) # $t1, 0x800f
/* 03C250 8003B650 812986AA */  lb    $t1, %lo(D_800E86AA)($t1)
/* 03C254 8003B654 44804000 */  mtc1  $zero, $f8
/* 03C258 8003B658 3C04800E */  lui   $a0, %hi(D_800DC4E4) # $a0, 0x800e
/* 03C25C 8003B65C 240AE000 */  li    $t2, -8192
/* 03C260 8003B660 AFAA001C */  sw    $t2, 0x1c($sp)
/* 03C264 8003B664 8C84C4E4 */  lw    $a0, %lo(D_800DC4E4)($a0)
/* 03C268 8003B668 E7B40010 */  swc1  $f20, 0x10($sp)
/* 03C26C 8003B66C 24050002 */  li    $a1, 2
/* 03C270 8003B670 AFA90018 */  sw    $t1, 0x18($sp)
/* 03C274 8003B674 0C00E4F0 */  jal   spawn_player
/* 03C278 8003B678 E7A80014 */   swc1  $f8, 0x14($sp)
/* 03C27C 8003B67C 1000002E */  b     .L8003B738
/* 03C280 8003B680 8E06000C */   lw    $a2, 0xc($s0)
.L8003B684:
/* 03C284 8003B684 8E060000 */  lw    $a2, ($s0)
/* 03C288 8003B688 8E270000 */  lw    $a3, ($s1)
/* 03C28C 8003B68C 3C014700 */  li    $at, 0x47000000 # 32768.000000
/* 03C290 8003B690 3C0B800F */  lui   $t3, %hi(D_800E86A8) # $t3, 0x800f
/* 03C294 8003B694 816B86A8 */  lb    $t3, %lo(D_800E86A8)($t3)
/* 03C298 8003B698 44815000 */  mtc1  $at, $f10
/* 03C29C 8003B69C 3C04800E */  lui   $a0, %hi(D_800DC4DC) # $a0, 0x800e
/* 03C2A0 8003B6A0 240CE000 */  li    $t4, -8192
/* 03C2A4 8003B6A4 AFAC001C */  sw    $t4, 0x1c($sp)
/* 03C2A8 8003B6A8 8C84C4DC */  lw    $a0, %lo(D_800DC4DC)($a0)
/* 03C2AC 8003B6AC E7B40010 */  swc1  $f20, 0x10($sp)
/* 03C2B0 8003B6B0 00002825 */  move  $a1, $zero
/* 03C2B4 8003B6B4 AFAB0018 */  sw    $t3, 0x18($sp)
/* 03C2B8 8003B6B8 0C00E4F0 */  jal   spawn_player
/* 03C2BC 8003B6BC E7AA0014 */   swc1  $f10, 0x14($sp)
/* 03C2C0 8003B6C0 8E060004 */  lw    $a2, 4($s0)
/* 03C2C4 8003B6C4 8E270004 */  lw    $a3, 4($s1)
/* 03C2C8 8003B6C8 3C0D800F */  lui   $t5, %hi(D_800E86A9) # $t5, 0x800f
/* 03C2CC 8003B6CC 81AD86A9 */  lb    $t5, %lo(D_800E86A9)($t5)
/* 03C2D0 8003B6D0 44808000 */  mtc1  $zero, $f16
/* 03C2D4 8003B6D4 3C04800E */  lui   $a0, %hi(D_800DC4E0) # $a0, 0x800e
/* 03C2D8 8003B6D8 240EE000 */  li    $t6, -8192
/* 03C2DC 8003B6DC AFAE001C */  sw    $t6, 0x1c($sp)
/* 03C2E0 8003B6E0 8C84C4E0 */  lw    $a0, %lo(D_800DC4E0)($a0)
/* 03C2E4 8003B6E4 E7B40010 */  swc1  $f20, 0x10($sp)
/* 03C2E8 8003B6E8 24050001 */  li    $a1, 1
/* 03C2EC 8003B6EC AFAD0018 */  sw    $t5, 0x18($sp)
/* 03C2F0 8003B6F0 0C00E4F0 */  jal   spawn_player
/* 03C2F4 8003B6F4 E7B00014 */   swc1  $f16, 0x14($sp)
/* 03C2F8 8003B6F8 8E060008 */  lw    $a2, 8($s0)
/* 03C2FC 8003B6FC 8E270008 */  lw    $a3, 8($s1)
/* 03C300 8003B700 3C01C680 */  li    $at, 0xC6800000 # -16384.000000
/* 03C304 8003B704 3C0F800F */  lui   $t7, %hi(D_800E86AA) # $t7, 0x800f
/* 03C308 8003B708 81EF86AA */  lb    $t7, %lo(D_800E86AA)($t7)
/* 03C30C 8003B70C 44819000 */  mtc1  $at, $f18
/* 03C310 8003B710 3C04800E */  lui   $a0, %hi(D_800DC4E4) # $a0, 0x800e
/* 03C314 8003B714 2418E000 */  li    $t8, -8192
/* 03C318 8003B718 AFB8001C */  sw    $t8, 0x1c($sp)
/* 03C31C 8003B71C 8C84C4E4 */  lw    $a0, %lo(D_800DC4E4)($a0)
/* 03C320 8003B720 E7B40010 */  swc1  $f20, 0x10($sp)
/* 03C324 8003B724 24050002 */  li    $a1, 2
/* 03C328 8003B728 AFAF0018 */  sw    $t7, 0x18($sp)
/* 03C32C 8003B72C 0C00E4F0 */  jal   spawn_player
/* 03C330 8003B730 E7B20014 */   swc1  $f18, 0x14($sp)
/* 03C334 8003B734 8E06000C */  lw    $a2, 0xc($s0)
.L8003B738:
/* 03C338 8003B738 8E27000C */  lw    $a3, 0xc($s1)
/* 03C33C 8003B73C 3C014700 */  li    $at, 0x47000000 # 32768.000000
/* 03C340 8003B740 44812000 */  mtc1  $at, $f4
/* 03C344 8003B744 3C04800E */  lui   $a0, %hi(D_800DC4E8) # $a0, 0x800e
/* 03C348 8003B748 24190003 */  li    $t9, 3
/* 03C34C 8003B74C 24083000 */  li    $t0, 12288
/* 03C350 8003B750 AFA8001C */  sw    $t0, 0x1c($sp)
/* 03C354 8003B754 AFB90018 */  sw    $t9, 0x18($sp)
/* 03C358 8003B758 8C84C4E8 */  lw    $a0, %lo(D_800DC4E8)($a0)
/* 03C35C 8003B75C E7B40010 */  swc1  $f20, 0x10($sp)
/* 03C360 8003B760 24050003 */  li    $a1, 3
/* 03C364 8003B764 0C00E4F0 */  jal   spawn_player
/* 03C368 8003B768 E7A40014 */   swc1  $f4, 0x14($sp)
/* 03C36C 8003B76C 8E060010 */  lw    $a2, 0x10($s0)
/* 03C370 8003B770 8E270010 */  lw    $a3, 0x10($s1)
/* 03C374 8003B774 3C014700 */  li    $at, 0x47000000 # 32768.000000
/* 03C378 8003B778 44813000 */  mtc1  $at, $f6
/* 03C37C 8003B77C 3C04800E */  lui   $a0, %hi(D_800DC4EC) # $a0, 0x800e
/* 03C380 8003B780 24090004 */  li    $t1, 4
/* 03C384 8003B784 240A3000 */  li    $t2, 12288
/* 03C388 8003B788 AFAA001C */  sw    $t2, 0x1c($sp)
/* 03C38C 8003B78C AFA90018 */  sw    $t1, 0x18($sp)
/* 03C390 8003B790 8C84C4EC */  lw    $a0, %lo(D_800DC4EC)($a0)
/* 03C394 8003B794 E7B40010 */  swc1  $f20, 0x10($sp)
/* 03C398 8003B798 24050004 */  li    $a1, 4
/* 03C39C 8003B79C 0C00E4F0 */  jal   spawn_player
/* 03C3A0 8003B7A0 E7A60014 */   swc1  $f6, 0x14($sp)
/* 03C3A4 8003B7A4 8E060014 */  lw    $a2, 0x14($s0)
/* 03C3A8 8003B7A8 8E270014 */  lw    $a3, 0x14($s1)
/* 03C3AC 8003B7AC 3C014700 */  li    $at, 0x47000000 # 32768.000000
/* 03C3B0 8003B7B0 44814000 */  mtc1  $at, $f8
/* 03C3B4 8003B7B4 3C04800E */  lui   $a0, %hi(D_800DC4F0) # $a0, 0x800e
/* 03C3B8 8003B7B8 240B0005 */  li    $t3, 5
/* 03C3BC 8003B7BC 240C3000 */  li    $t4, 12288
/* 03C3C0 8003B7C0 AFAC001C */  sw    $t4, 0x1c($sp)
/* 03C3C4 8003B7C4 AFAB0018 */  sw    $t3, 0x18($sp)
/* 03C3C8 8003B7C8 8C84C4F0 */  lw    $a0, %lo(D_800DC4F0)($a0)
/* 03C3CC 8003B7CC E7B40010 */  swc1  $f20, 0x10($sp)
/* 03C3D0 8003B7D0 24050005 */  li    $a1, 5
/* 03C3D4 8003B7D4 0C00E4F0 */  jal   spawn_player
/* 03C3D8 8003B7D8 E7A80014 */   swc1  $f8, 0x14($sp)
/* 03C3DC 8003B7DC 8E060018 */  lw    $a2, 0x18($s0)
/* 03C3E0 8003B7E0 8E270018 */  lw    $a3, 0x18($s1)
/* 03C3E4 8003B7E4 3C014700 */  li    $at, 0x47000000 # 32768.000000
/* 03C3E8 8003B7E8 44815000 */  mtc1  $at, $f10
/* 03C3EC 8003B7EC 3C04800E */  lui   $a0, %hi(D_800DC4F4) # $a0, 0x800e
/* 03C3F0 8003B7F0 240D0006 */  li    $t5, 6
/* 03C3F4 8003B7F4 240E3000 */  li    $t6, 12288
/* 03C3F8 8003B7F8 AFAE001C */  sw    $t6, 0x1c($sp)
/* 03C3FC 8003B7FC AFAD0018 */  sw    $t5, 0x18($sp)
/* 03C400 8003B800 8C84C4F4 */  lw    $a0, %lo(D_800DC4F4)($a0)
/* 03C404 8003B804 E7B40010 */  swc1  $f20, 0x10($sp)
/* 03C408 8003B808 24050006 */  li    $a1, 6
/* 03C40C 8003B80C 0C00E4F0 */  jal   spawn_player
/* 03C410 8003B810 E7AA0014 */   swc1  $f10, 0x14($sp)
/* 03C414 8003B814 8E060000 */  lw    $a2, ($s0)
/* 03C418 8003B818 8E270000 */  lw    $a3, ($s1)
/* 03C41C 8003B81C 3C014700 */  li    $at, 0x47000000 # 32768.000000
/* 03C420 8003B820 44818000 */  mtc1  $at, $f16
/* 03C424 8003B824 3C04800E */  lui   $a0, %hi(D_800DC4F8) # $a0, 0x800e
/* 03C428 8003B828 240F0007 */  li    $t7, 7
/* 03C42C 8003B82C 24183000 */  li    $t8, 12288
/* 03C430 8003B830 AFB8001C */  sw    $t8, 0x1c($sp)
/* 03C434 8003B834 AFAF0018 */  sw    $t7, 0x18($sp)
/* 03C438 8003B838 8C84C4F8 */  lw    $a0, %lo(D_800DC4F8)($a0)
/* 03C43C 8003B83C E7B40010 */  swc1  $f20, 0x10($sp)
/* 03C440 8003B840 24050007 */  li    $a1, 7
/* 03C444 8003B844 0C00E4F0 */  jal   spawn_player
/* 03C448 8003B848 E7B00014 */   swc1  $f16, 0x14($sp)
/* 03C44C 8003B84C 3C018016 */  lui   $at, %hi(D_80164A28) # $at, 0x8016
/* 03C450 8003B850 0C00E6B9 */  jal   func_80039AE4
/* 03C454 8003B854 AC204A28 */   sw    $zero, %lo(D_80164A28)($at)
/* 03C458 8003B858 8FBF0034 */  lw    $ra, 0x34($sp)
/* 03C45C 8003B85C D7B40020 */  ldc1  $f20, 0x20($sp)
/* 03C460 8003B860 8FB0002C */  lw    $s0, 0x2c($sp)
/* 03C464 8003B864 8FB10030 */  lw    $s1, 0x30($sp)
/* 03C468 8003B868 03E00008 */  jr    $ra
/* 03C46C 8003B86C 27BD0038 */   addiu $sp, $sp, 0x38