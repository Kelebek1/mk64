glabel func_802818BC
/* 124EFC 802818BC 3C0E8019 */  lui   $t6, %hi(D_8018EDF3) # $t6, 0x8019
/* 124F00 802818C0 81CEEDF3 */  lb    $t6, %lo(D_8018EDF3)($t6)
/* 124F04 802818C4 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 124F08 802818C8 24010002 */  li    $at, 2
/* 124F0C 802818CC 11C1000A */  beq   $t6, $at, .L802818F8
/* 124F10 802818D0 AFBF0014 */   sw    $ra, 0x14($sp)
/* 124F14 802818D4 0C0A0620 */  jal   func_80281880
/* 124F18 802818D8 00002025 */   move  $a0, $zero
/* 124F1C 802818DC 3C038028 */  lui   $v1, %hi(D_802874D8) # $v1, 0x8028
/* 124F20 802818E0 246374D8 */  addiu $v1, %lo(D_802874D8) # addiu $v1, $v1, 0x74d8
/* 124F24 802818E4 A062001D */  sb    $v0, 0x1d($v1)
/* 124F28 802818E8 3C0F800F */  lui   $t7, %hi(D_800E86A8) # $t7, 0x800f
/* 124F2C 802818EC 81EF86A8 */  lb    $t7, %lo(D_800E86A8)($t7)
/* 124F30 802818F0 10000019 */  b     .L80281958
/* 124F34 802818F4 A06F001E */   sb    $t7, 0x1e($v1)
.L802818F8:
/* 124F38 802818F8 0C0A0620 */  jal   func_80281880
/* 124F3C 802818FC 00002025 */   move  $a0, $zero
/* 124F40 80281900 AFA2001C */  sw    $v0, 0x1c($sp)
/* 124F44 80281904 AFA20024 */  sw    $v0, 0x24($sp)
/* 124F48 80281908 0C0A0620 */  jal   func_80281880
/* 124F4C 8028190C 24040001 */   li    $a0, 1
/* 124F50 80281910 8FB8001C */  lw    $t8, 0x1c($sp)
/* 124F54 80281914 0302082A */  slt   $at, $t8, $v0
/* 124F58 80281918 10200008 */  beqz  $at, .L8028193C
/* 124F5C 8028191C 3C19800F */   lui   $t9, %hi(D_800E86A8) # $t9, 0x800f
/* 124F60 80281920 833986A8 */  lb    $t9, %lo(D_800E86A8)($t9)
/* 124F64 80281924 8FA80024 */  lw    $t0, 0x24($sp)
/* 124F68 80281928 3C038028 */  lui   $v1, %hi(D_802874D8) # $v1, 0x8028
/* 124F6C 8028192C 246374D8 */  addiu $v1, %lo(D_802874D8) # addiu $v1, $v1, 0x74d8
/* 124F70 80281930 A079001E */  sb    $t9, 0x1e($v1)
/* 124F74 80281934 10000008 */  b     .L80281958
/* 124F78 80281938 A068001D */   sb    $t0, 0x1d($v1)
.L8028193C:
/* 124F7C 8028193C 3C09800F */  lui   $t1, %hi(D_800E86A9) # $t1, 0x800f
/* 124F80 80281940 812986A9 */  lb    $t1, %lo(D_800E86A9)($t1)
/* 124F84 80281944 3C038028 */  lui   $v1, %hi(D_802874D8) # $v1, 0x8028
/* 124F88 80281948 246374D8 */  addiu $v1, %lo(D_802874D8) # addiu $v1, $v1, 0x74d8
/* 124F8C 8028194C 3C018028 */  lui   $at, %hi(D_802874F5) # $at, 0x8028
/* 124F90 80281950 A069001E */  sb    $t1, 0x1e($v1)
/* 124F94 80281954 A02274F5 */  sb    $v0, %lo(D_802874F5)($at)
.L80281958:
/* 124F98 80281958 8FBF0014 */  lw    $ra, 0x14($sp)
/* 124F9C 8028195C 27BD0028 */  addiu $sp, $sp, 0x28
/* 124FA0 80281960 03E00008 */  jr    $ra
/* 124FA4 80281964 00000000 */   nop   
