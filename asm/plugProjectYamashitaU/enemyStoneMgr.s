.include "macros.inc"
.section .rodata  # 0x804732E0 - 0x8049E220
.balign 8
lbl_8047BE58:
	.asciz "sekikaobj_large.bmd"
lbl_8047BE6C:
	.asciz "sekikaobj_small.bmd"
	.4byte 0x456E656D
	.4byte 0x7953746F
	.4byte 0x6E653A3A
	.4byte 0x4D67723A
	.4byte 0x3A6C6F61
	.4byte 0x64526573
	.4byte 0x6F757263
	.4byte 0x65000000
	.4byte 0x456E656D
	.4byte 0x7953746F
	.4byte 0x6E653A3A
	.4byte 0x4D67723A
	.4byte 0x3A73746F
	.4byte 0x6E654D6F
	.4byte 0x64656C00
	.4byte 0x2F656E65
	.4byte 0x6D792F63
	.4byte 0x6F6D6D6F
	.4byte 0x6E2F656E
	.4byte 0x656D7943
	.4byte 0x6F6D6D6F
	.4byte 0x6E2E737A
	.4byte 0x73000000
	.4byte 0x456E656D
	.4byte 0x7953746F
	.4byte 0x6E653A3A
	.4byte 0x4D67723A
	.4byte 0x3A447261
	.4byte 0x77496E66
	.4byte 0x6F5F6275
	.4byte 0x66666572
	.4byte 0x00000000

.section .sdata, "wa"  # 0x80514680 - 0x80514D80
.balign 8
"sStoneMdlName__27@unnamed@enemyStoneMgr_cpp@": # local object
	.4byte lbl_8047BE58
	.4byte lbl_8047BE6C

.section .text, "ax"  # 0x800056C0 - 0x80472F00
.global __ct__Q34Game10EnemyStone3MgrFv
__ct__Q34Game10EnemyStone3MgrFv:
/* 80127C00 00124B40  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80127C04 00124B44  7C 08 02 A6 */	mflr r0
/* 80127C08 00124B48  90 01 00 14 */	stw r0, 0x14(r1)
/* 80127C0C 00124B4C  38 00 00 00 */	li r0, 0
/* 80127C10 00124B50  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80127C14 00124B54  7C 7F 1B 78 */	mr r31, r3
/* 80127C18 00124B58  90 03 00 00 */	stw r0, 0(r3)
/* 80127C1C 00124B5C  38 7F 00 08 */	addi r3, r31, 8
/* 80127C20 00124B60  98 1F 00 04 */	stb r0, 4(r31)
/* 80127C24 00124B64  98 1F 00 05 */	stb r0, 5(r31)
/* 80127C28 00124B68  98 1F 00 06 */	stb r0, 6(r31)
/* 80127C2C 00124B6C  98 1F 00 07 */	stb r0, 7(r31)
/* 80127C30 00124B70  48 2E 97 61 */	bl __ct__5CNodeFv
/* 80127C34 00124B74  38 7F 00 20 */	addi r3, r31, 0x20
/* 80127C38 00124B78  48 2E 97 59 */	bl __ct__5CNodeFv
/* 80127C3C 00124B7C  38 00 00 00 */	li r0, 0
/* 80127C40 00124B80  7F E3 FB 78 */	mr r3, r31
/* 80127C44 00124B84  98 1F 00 04 */	stb r0, 4(r31)
/* 80127C48 00124B88  98 1F 00 05 */	stb r0, 5(r31)
/* 80127C4C 00124B8C  98 1F 00 06 */	stb r0, 6(r31)
/* 80127C50 00124B90  98 1F 00 07 */	stb r0, 7(r31)
/* 80127C54 00124B94  90 1F 00 18 */	stw r0, 0x18(r31)
/* 80127C58 00124B98  90 1F 00 14 */	stw r0, 0x14(r31)
/* 80127C5C 00124B9C  90 1F 00 10 */	stw r0, 0x10(r31)
/* 80127C60 00124BA0  90 1F 00 0C */	stw r0, 0xc(r31)
/* 80127C64 00124BA4  90 1F 00 30 */	stw r0, 0x30(r31)
/* 80127C68 00124BA8  90 1F 00 2C */	stw r0, 0x2c(r31)
/* 80127C6C 00124BAC  90 1F 00 28 */	stw r0, 0x28(r31)
/* 80127C70 00124BB0  90 1F 00 24 */	stw r0, 0x24(r31)
/* 80127C74 00124BB4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80127C78 00124BB8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80127C7C 00124BBC  7C 08 03 A6 */	mtlr r0
/* 80127C80 00124BC0  38 21 00 10 */	addi r1, r1, 0x10
/* 80127C84 00124BC4  4E 80 00 20 */	blr 

.global loadResource__Q34Game10EnemyStone3MgrFv
loadResource__Q34Game10EnemyStone3MgrFv:
/* 80127C88 00124BC8  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 80127C8C 00124BCC  7C 08 02 A6 */	mflr r0
/* 80127C90 00124BD0  3C 80 80 48 */	lis r4, lbl_8047BE58@ha
/* 80127C94 00124BD4  38 A0 00 00 */	li r5, 0
/* 80127C98 00124BD8  90 01 00 64 */	stw r0, 0x64(r1)
/* 80127C9C 00124BDC  BF 21 00 44 */	stmw r25, 0x44(r1)
/* 80127CA0 00124BE0  7C 7F 1B 78 */	mr r31, r3
/* 80127CA4 00124BE4  3B A4 BE 58 */	addi r29, r4, lbl_8047BE58@l
/* 80127CA8 00124BE8  38 9D 00 28 */	addi r4, r29, 0x28
/* 80127CAC 00124BEC  80 6D 9A EC */	lwz r3, sys@sda21(r13)
/* 80127CB0 00124BF0  48 2F B6 AD */	bl heapStatusStart__6SystemFPcP7JKRHeap
/* 80127CB4 00124BF4  80 6D 9A EC */	lwz r3, sys@sda21(r13)
/* 80127CB8 00124BF8  38 9D 00 48 */	addi r4, r29, 0x48
/* 80127CBC 00124BFC  38 A0 00 00 */	li r5, 0
/* 80127CC0 00124C00  48 2F B6 9D */	bl heapStatusStart__6SystemFPcP7JKRHeap
/* 80127CC4 00124C04  38 60 00 08 */	li r3, 8
/* 80127CC8 00124C08  4B EF C2 E5 */	bl __nwa__FUl
/* 80127CCC 00124C0C  90 7F 00 00 */	stw r3, 0(r31)
/* 80127CD0 00124C10  38 61 00 08 */	addi r3, r1, 8
/* 80127CD4 00124C14  38 9D 00 64 */	addi r4, r29, 0x64
/* 80127CD8 00124C18  48 32 49 45 */	bl __ct__Q212LoadResource11ArgAramOnlyFPCc
/* 80127CDC 00124C1C  80 6D 9C 28 */	lwz r3, gLoadResourceMgr@sda21(r13)
/* 80127CE0 00124C20  38 81 00 08 */	addi r4, r1, 8
/* 80127CE4 00124C24  48 32 4A 31 */	bl mountArchive__Q212LoadResource3MgrFRQ212LoadResource3Arg
/* 80127CE8 00124C28  3C 80 80 48 */	lis r4, j3dDefaultMtx@ha
/* 80127CEC 00124C2C  83 83 00 34 */	lwz r28, 0x34(r3)
/* 80127CF0 00124C30  3B C4 88 6C */	addi r30, r4, j3dDefaultMtx@l
/* 80127CF4 00124C34  3B 20 00 00 */	li r25, 0
/* 80127CF8 00124C38  3B 6D 83 D8 */	addi r27, r13, "sStoneMdlName__27@unnamed@enemyStoneMgr_cpp@"@sda21
/* 80127CFC 00124C3C  3B 40 00 00 */	li r26, 0
lbl_80127D00:
/* 80127D00 00124C40  7F 83 E3 78 */	mr r3, r28
/* 80127D04 00124C44  80 9B 00 00 */	lwz r4, 0(r27)
/* 80127D08 00124C48  81 9C 00 00 */	lwz r12, 0(r28)
/* 80127D0C 00124C4C  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80127D10 00124C50  7D 89 03 A6 */	mtctr r12
/* 80127D14 00124C54  4E 80 04 21 */	bctrl 
/* 80127D18 00124C58  3C 80 00 24 */	lis r4, 0x24
/* 80127D1C 00124C5C  4B F4 7B 79 */	bl load__22J3DModelLoaderDataBaseFPCvUl
/* 80127D20 00124C60  80 BF 00 00 */	lwz r5, 0(r31)
/* 80127D24 00124C64  3C 80 00 04 */	lis r4, 4
/* 80127D28 00124C68  7C 65 D1 2E */	stwx r3, r5, r26
/* 80127D2C 00124C6C  80 7F 00 00 */	lwz r3, 0(r31)
/* 80127D30 00124C70  7C 63 D0 2E */	lwzx r3, r3, r26
/* 80127D34 00124C74  4B F5 BB A5 */	bl newSharedDisplayList__12J3DModelDataFUl
/* 80127D38 00124C78  80 7F 00 00 */	lwz r3, 0(r31)
/* 80127D3C 00124C7C  7F C5 F3 78 */	mr r5, r30
/* 80127D40 00124C80  38 80 00 00 */	li r4, 0
/* 80127D44 00124C84  7C 63 D0 2E */	lwzx r3, r3, r26
/* 80127D48 00124C88  4B F5 BD 69 */	bl simpleCalcMaterial__12J3DModelDataFUsPA4_f
/* 80127D4C 00124C8C  80 7F 00 00 */	lwz r3, 0(r31)
/* 80127D50 00124C90  7C 63 D0 2E */	lwzx r3, r3, r26
/* 80127D54 00124C94  4B F5 BC DD */	bl makeSharedDL__12J3DModelDataFv
/* 80127D58 00124C98  3B 39 00 01 */	addi r25, r25, 1
/* 80127D5C 00124C9C  3B 5A 00 04 */	addi r26, r26, 4
/* 80127D60 00124CA0  2C 19 00 02 */	cmpwi r25, 2
/* 80127D64 00124CA4  3B 7B 00 04 */	addi r27, r27, 4
/* 80127D68 00124CA8  41 80 FF 98 */	blt lbl_80127D00
/* 80127D6C 00124CAC  80 6D 9A EC */	lwz r3, sys@sda21(r13)
/* 80127D70 00124CB0  38 9D 00 48 */	addi r4, r29, 0x48
/* 80127D74 00124CB4  48 2F B5 F1 */	bl heapStatusEnd__6SystemFPc
/* 80127D78 00124CB8  80 6D 9A EC */	lwz r3, sys@sda21(r13)
/* 80127D7C 00124CBC  38 9D 00 84 */	addi r4, r29, 0x84
/* 80127D80 00124CC0  38 A0 00 00 */	li r5, 0
/* 80127D84 00124CC4  48 2F B5 D9 */	bl heapStatusStart__6SystemFPcP7JKRHeap
/* 80127D88 00124CC8  38 60 48 10 */	li r3, 0x4810
/* 80127D8C 00124CCC  4B EF C2 21 */	bl __nwa__FUl
/* 80127D90 00124CD0  3C 80 80 12 */	lis r4, __defctor__Q34Game10EnemyStone8DrawInfoFv@ha
/* 80127D94 00124CD4  3C A0 80 10 */	lis r5, __dt__Q34Game10EnemyStone8DrawInfoFv@ha
/* 80127D98 00124CD8  38 84 7D FC */	addi r4, r4, __defctor__Q34Game10EnemyStone8DrawInfoFv@l
/* 80127D9C 00124CDC  38 C0 00 48 */	li r6, 0x48
/* 80127DA0 00124CE0  38 A5 77 04 */	addi r5, r5, __dt__Q34Game10EnemyStone8DrawInfoFv@l
/* 80127DA4 00124CE4  38 E0 01 00 */	li r7, 0x100
/* 80127DA8 00124CE8  4B F9 9C 49 */	bl __construct_new_array
/* 80127DAC 00124CEC  3B 20 00 00 */	li r25, 0
/* 80127DB0 00124CF0  7C 7A 1B 78 */	mr r26, r3
lbl_80127DB4:
/* 80127DB4 00124CF4  7F 44 D3 78 */	mr r4, r26
/* 80127DB8 00124CF8  38 7F 00 08 */	addi r3, r31, 8
/* 80127DBC 00124CFC  48 2E 96 4D */	bl add__5CNodeFP5CNode
/* 80127DC0 00124D00  3B 39 00 01 */	addi r25, r25, 1
/* 80127DC4 00124D04  3B 5A 00 48 */	addi r26, r26, 0x48
/* 80127DC8 00124D08  28 19 01 00 */	cmplwi r25, 0x100
/* 80127DCC 00124D0C  41 80 FF E8 */	blt lbl_80127DB4
/* 80127DD0 00124D10  80 6D 9A EC */	lwz r3, sys@sda21(r13)
/* 80127DD4 00124D14  38 9D 00 84 */	addi r4, r29, 0x84
/* 80127DD8 00124D18  48 2F B5 8D */	bl heapStatusEnd__6SystemFPc
/* 80127DDC 00124D1C  80 6D 9A EC */	lwz r3, sys@sda21(r13)
/* 80127DE0 00124D20  38 9D 00 28 */	addi r4, r29, 0x28
/* 80127DE4 00124D24  48 2F B5 81 */	bl heapStatusEnd__6SystemFPc
/* 80127DE8 00124D28  BB 21 00 44 */	lmw r25, 0x44(r1)
/* 80127DEC 00124D2C  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80127DF0 00124D30  7C 08 03 A6 */	mtlr r0
/* 80127DF4 00124D34  38 21 00 60 */	addi r1, r1, 0x60
/* 80127DF8 00124D38  4E 80 00 20 */	blr 

.global __defctor__Q34Game10EnemyStone8DrawInfoFv
__defctor__Q34Game10EnemyStone8DrawInfoFv:
/* 80127DFC 00124D3C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80127E00 00124D40  7C 08 02 A6 */	mflr r0
/* 80127E04 00124D44  38 80 00 01 */	li r4, 1
/* 80127E08 00124D48  90 01 00 14 */	stw r0, 0x14(r1)
/* 80127E0C 00124D4C  48 00 16 75 */	bl __ct__Q34Game10EnemyStone8DrawInfoFb
/* 80127E10 00124D50  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80127E14 00124D54  7C 08 03 A6 */	mtlr r0
/* 80127E18 00124D58  38 21 00 10 */	addi r1, r1, 0x10
/* 80127E1C 00124D5C  4E 80 00 20 */	blr 

.global regist__Q34Game10EnemyStone3MgrFPQ34Game10EnemyStone3Obj
regist__Q34Game10EnemyStone3MgrFPQ34Game10EnemyStone3Obj:
/* 80127E20 00124D60  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80127E24 00124D64  7C 08 02 A6 */	mflr r0
/* 80127E28 00124D68  90 01 00 34 */	stw r0, 0x34(r1)
/* 80127E2C 00124D6C  BF 21 00 14 */	stmw r25, 0x14(r1)
/* 80127E30 00124D70  7C 9F 23 78 */	mr r31, r4
/* 80127E34 00124D74  7C 7E 1B 78 */	mr r30, r3
/* 80127E38 00124D78  3B 40 00 01 */	li r26, 1
/* 80127E3C 00124D7C  88 04 00 50 */	lbz r0, 0x50(r4)
/* 80127E40 00124D80  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80127E44 00124D84  40 82 00 BC */	bne lbl_80127F00
/* 80127E48 00124D88  38 7E 00 08 */	addi r3, r30, 8
/* 80127E4C 00124D8C  80 9F 00 18 */	lwz r4, 0x18(r31)
/* 80127E50 00124D90  81 9E 00 08 */	lwz r12, 8(r30)
/* 80127E54 00124D94  8B A4 00 00 */	lbz r29, 0(r4)
/* 80127E58 00124D98  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 80127E5C 00124D9C  7D 89 03 A6 */	mtctr r12
/* 80127E60 00124DA0  4E 80 04 21 */	bctrl 
/* 80127E64 00124DA4  7C 1D 18 00 */	cmpw r29, r3
/* 80127E68 00124DA8  41 81 00 94 */	bgt lbl_80127EFC
/* 80127E6C 00124DAC  88 1F 00 50 */	lbz r0, 0x50(r31)
/* 80127E70 00124DB0  3B 20 00 00 */	li r25, 0
/* 80127E74 00124DB4  3B 60 00 00 */	li r27, 0
/* 80127E78 00124DB8  60 00 00 01 */	ori r0, r0, 1
/* 80127E7C 00124DBC  98 1F 00 50 */	stb r0, 0x50(r31)
/* 80127E80 00124DC0  48 00 00 5C */	b lbl_80127EDC
lbl_80127E84:
/* 80127E84 00124DC4  83 BE 00 18 */	lwz r29, 0x18(r30)
/* 80127E88 00124DC8  80 03 00 04 */	lwz r0, 4(r3)
/* 80127E8C 00124DCC  28 1D 00 00 */	cmplwi r29, 0
/* 80127E90 00124DD0  7F 80 DA 14 */	add r28, r0, r27
/* 80127E94 00124DD4  41 82 00 0C */	beq lbl_80127EA0
/* 80127E98 00124DD8  7F A3 EB 78 */	mr r3, r29
/* 80127E9C 00124DDC  48 2E 97 35 */	bl del__5CNodeFv
lbl_80127EA0:
/* 80127EA0 00124DE0  80 7F 00 4C */	lwz r3, 0x4c(r31)
/* 80127EA4 00124DE4  80 9C 00 00 */	lwz r4, 0(r28)
/* 80127EA8 00124DE8  80 63 01 74 */	lwz r3, 0x174(r3)
/* 80127EAC 00124DEC  48 31 71 39 */	bl getJoint__Q28SysShape5ModelFPc
/* 80127EB0 00124DF0  48 30 19 F1 */	bl getWorldMatrix__Q28SysShape5JointFv
/* 80127EB4 00124DF4  90 7D 00 44 */	stw r3, 0x44(r29)
/* 80127EB8 00124DF8  7F A4 EB 78 */	mr r4, r29
/* 80127EBC 00124DFC  93 9D 00 40 */	stw r28, 0x40(r29)
/* 80127EC0 00124E00  80 1C 00 04 */	lwz r0, 4(r28)
/* 80127EC4 00124E04  1C 60 00 18 */	mulli r3, r0, 0x18
/* 80127EC8 00124E08  38 63 00 1C */	addi r3, r3, 0x1c
/* 80127ECC 00124E0C  7C 7F 1A 14 */	add r3, r31, r3
/* 80127ED0 00124E10  48 2E 95 39 */	bl add__5CNodeFP5CNode
/* 80127ED4 00124E14  3B 7B 00 38 */	addi r27, r27, 0x38
/* 80127ED8 00124E18  3B 39 00 01 */	addi r25, r25, 1
lbl_80127EDC:
/* 80127EDC 00124E1C  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 80127EE0 00124E20  88 03 00 00 */	lbz r0, 0(r3)
/* 80127EE4 00124E24  7C 19 00 00 */	cmpw r25, r0
/* 80127EE8 00124E28  41 80 FF 9C */	blt lbl_80127E84
/* 80127EEC 00124E2C  7F E4 FB 78 */	mr r4, r31
/* 80127EF0 00124E30  38 7E 00 20 */	addi r3, r30, 0x20
/* 80127EF4 00124E34  48 2E 95 15 */	bl add__5CNodeFP5CNode
/* 80127EF8 00124E38  48 00 00 08 */	b lbl_80127F00
lbl_80127EFC:
/* 80127EFC 00124E3C  3B 40 00 00 */	li r26, 0
lbl_80127F00:
/* 80127F00 00124E40  7F 43 D3 78 */	mr r3, r26
/* 80127F04 00124E44  BB 21 00 14 */	lmw r25, 0x14(r1)
/* 80127F08 00124E48  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80127F0C 00124E4C  7C 08 03 A6 */	mtlr r0
/* 80127F10 00124E50  38 21 00 30 */	addi r1, r1, 0x30
/* 80127F14 00124E54  4E 80 00 20 */	blr 

.global release__Q34Game10EnemyStone3MgrFPQ34Game10EnemyStone3Obj
release__Q34Game10EnemyStone3MgrFPQ34Game10EnemyStone3Obj:
/* 80127F18 00124E58  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80127F1C 00124E5C  7C 08 02 A6 */	mflr r0
/* 80127F20 00124E60  90 01 00 24 */	stw r0, 0x24(r1)
/* 80127F24 00124E64  BF 41 00 08 */	stmw r26, 8(r1)
/* 80127F28 00124E68  7C 7A 1B 78 */	mr r26, r3
/* 80127F2C 00124E6C  7C 9B 23 78 */	mr r27, r4
/* 80127F30 00124E70  88 64 00 50 */	lbz r3, 0x50(r4)
/* 80127F34 00124E74  54 60 07 FF */	clrlwi. r0, r3, 0x1f
/* 80127F38 00124E78  41 82 00 58 */	beq lbl_80127F90
/* 80127F3C 00124E7C  54 60 06 3C */	rlwinm r0, r3, 0, 0x18, 0x1e
/* 80127F40 00124E80  7F 7F DB 78 */	mr r31, r27
/* 80127F44 00124E84  98 1B 00 50 */	stb r0, 0x50(r27)
/* 80127F48 00124E88  3B C0 00 00 */	li r30, 0
lbl_80127F4C:
/* 80127F4C 00124E8C  83 BF 00 2C */	lwz r29, 0x2c(r31)
/* 80127F50 00124E90  48 00 00 20 */	b lbl_80127F70
lbl_80127F54:
/* 80127F54 00124E94  83 9D 00 04 */	lwz r28, 4(r29)
/* 80127F58 00124E98  7F A3 EB 78 */	mr r3, r29
/* 80127F5C 00124E9C  48 00 15 E1 */	bl reset__Q34Game10EnemyStone8DrawInfoFv
/* 80127F60 00124EA0  7F A4 EB 78 */	mr r4, r29
/* 80127F64 00124EA4  38 7A 00 08 */	addi r3, r26, 8
/* 80127F68 00124EA8  48 2E 94 A1 */	bl add__5CNodeFP5CNode
/* 80127F6C 00124EAC  7F 9D E3 78 */	mr r29, r28
lbl_80127F70:
/* 80127F70 00124EB0  28 1D 00 00 */	cmplwi r29, 0
/* 80127F74 00124EB4  40 82 FF E0 */	bne lbl_80127F54
/* 80127F78 00124EB8  3B DE 00 01 */	addi r30, r30, 1
/* 80127F7C 00124EBC  3B FF 00 18 */	addi r31, r31, 0x18
/* 80127F80 00124EC0  2C 1E 00 02 */	cmpwi r30, 2
/* 80127F84 00124EC4  41 80 FF C8 */	blt lbl_80127F4C
/* 80127F88 00124EC8  7F 63 DB 78 */	mr r3, r27
/* 80127F8C 00124ECC  48 2E 96 45 */	bl del__5CNodeFv
lbl_80127F90:
/* 80127F90 00124ED0  BB 41 00 08 */	lmw r26, 8(r1)
/* 80127F94 00124ED4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80127F98 00124ED8  7C 08 03 A6 */	mtlr r0
/* 80127F9C 00124EDC  38 21 00 20 */	addi r1, r1, 0x20
/* 80127FA0 00124EE0  4E 80 00 20 */	blr 

.global draw__Q34Game10EnemyStone3MgrFP8Viewport
draw__Q34Game10EnemyStone3MgrFP8Viewport:
/* 80127FA4 00124EE4  94 21 FF 10 */	stwu r1, -0xf0(r1)
/* 80127FA8 00124EE8  7C 08 02 A6 */	mflr r0
/* 80127FAC 00124EEC  3C A0 80 51 */	lis r5, j3dSys@ha
/* 80127FB0 00124EF0  90 01 00 F4 */	stw r0, 0xf4(r1)
/* 80127FB4 00124EF4  BE E1 00 CC */	stmw r23, 0xcc(r1)
/* 80127FB8 00124EF8  3B C0 00 00 */	li r30, 0
/* 80127FBC 00124EFC  7C 79 1B 78 */	mr r25, r3
/* 80127FC0 00124F00  7C 9A 23 78 */	mr r26, r4
/* 80127FC4 00124F04  7F DD F3 78 */	mr r29, r30
/* 80127FC8 00124F08  3B E5 F2 30 */	addi r31, r5, j3dSys@l
/* 80127FCC 00124F0C  3B 80 00 00 */	li r28, 0
lbl_80127FD0:
/* 80127FD0 00124F10  83 79 00 30 */	lwz r27, 0x30(r25)
/* 80127FD4 00124F14  28 1B 00 00 */	cmplwi r27, 0
/* 80127FD8 00124F18  41 82 01 08 */	beq lbl_801280E0
/* 80127FDC 00124F1C  48 00 00 FC */	b lbl_801280D8
lbl_80127FE0:
/* 80127FE0 00124F20  80 7B 00 4C */	lwz r3, 0x4c(r27)
/* 80127FE4 00124F24  88 03 00 D8 */	lbz r0, 0xd8(r3)
/* 80127FE8 00124F28  54 00 07 7B */	rlwinm. r0, r0, 0, 0x1d, 0x1d
/* 80127FEC 00124F2C  41 82 00 E8 */	beq lbl_801280D4
/* 80127FF0 00124F30  38 1E 00 2C */	addi r0, r30, 0x2c
/* 80127FF4 00124F34  7F 1B 00 2E */	lwzx r24, r27, r0
/* 80127FF8 00124F38  48 00 00 D4 */	b lbl_801280CC
lbl_80127FFC:
/* 80127FFC 00124F3C  80 79 00 00 */	lwz r3, 0(r25)
/* 80128000 00124F40  38 00 00 00 */	li r0, 0
/* 80128004 00124F44  7C BD 18 2E */	lwzx r5, r29, r3
/* 80128008 00124F48  80 85 00 28 */	lwz r4, 0x28(r5)
/* 8012800C 00124F4C  80 65 00 A0 */	lwz r3, 0xa0(r5)
/* 80128010 00124F50  80 84 00 00 */	lwz r4, 0(r4)
/* 80128014 00124F54  82 E4 00 58 */	lwz r23, 0x58(r4)
/* 80128018 00124F58  90 7F 01 0C */	stw r3, 0x10c(r31)
/* 8012801C 00124F5C  80 65 00 A4 */	lwz r3, 0xa4(r5)
/* 80128020 00124F60  90 7F 01 10 */	stw r3, 0x110(r31)
/* 80128024 00124F64  80 65 00 AC */	lwz r3, 0xac(r5)
/* 80128028 00124F68  90 7F 01 14 */	stw r3, 0x114(r31)
/* 8012802C 00124F6C  90 0D 89 70 */	stw r0, sOldVcdVatCmd__8J3DShape@sda21(r13)
/* 80128030 00124F70  48 00 00 90 */	b lbl_801280C0
lbl_80128034:
/* 80128034 00124F74  7E E3 BB 78 */	mr r3, r23
/* 80128038 00124F78  81 97 00 00 */	lwz r12, 0(r23)
/* 8012803C 00124F7C  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80128040 00124F80  7D 89 03 A6 */	mtctr r12
/* 80128044 00124F84  4E 80 04 21 */	bctrl 
/* 80128048 00124F88  80 77 00 08 */	lwz r3, 8(r23)
/* 8012804C 00124F8C  4B F3 8D F5 */	bl loadPreDrawSetting__8J3DShapeCFv
/* 80128050 00124F90  7F 03 C3 78 */	mr r3, r24
/* 80128054 00124F94  38 81 00 98 */	addi r4, r1, 0x98
/* 80128058 00124F98  38 A0 00 01 */	li r5, 1
/* 8012805C 00124F9C  48 00 15 BD */	bl makeMatrix__Q34Game10EnemyStone8DrawInfoFP7Matrixfb
/* 80128060 00124FA0  7F 43 D3 78 */	mr r3, r26
/* 80128064 00124FA4  38 80 00 01 */	li r4, 1
/* 80128068 00124FA8  48 2F D0 F5 */	bl getMatrix__8ViewportFb
/* 8012806C 00124FAC  38 81 00 98 */	addi r4, r1, 0x98
/* 80128070 00124FB0  38 A1 00 68 */	addi r5, r1, 0x68
/* 80128074 00124FB4  4B FC 22 8D */	bl PSMTXConcat
/* 80128078 00124FB8  38 61 00 68 */	addi r3, r1, 0x68
/* 8012807C 00124FBC  38 81 00 38 */	addi r4, r1, 0x38
/* 80128080 00124FC0  4B FC 23 9D */	bl PSMTXInverse
/* 80128084 00124FC4  38 61 00 38 */	addi r3, r1, 0x38
/* 80128088 00124FC8  38 81 00 08 */	addi r4, r1, 8
/* 8012808C 00124FCC  4B FC 23 41 */	bl PSMTXTranspose
/* 80128090 00124FD0  38 61 00 68 */	addi r3, r1, 0x68
/* 80128094 00124FD4  38 80 00 00 */	li r4, 0
/* 80128098 00124FD8  4B FC 14 E1 */	bl GXLoadPosMtxImm
/* 8012809C 00124FDC  38 61 00 08 */	addi r3, r1, 8
/* 801280A0 00124FE0  38 80 00 00 */	li r4, 0
/* 801280A4 00124FE4  4B FC 15 25 */	bl GXLoadNrmMtxImm
/* 801280A8 00124FE8  80 77 00 08 */	lwz r3, 8(r23)
/* 801280AC 00124FEC  81 83 00 00 */	lwz r12, 0(r3)
/* 801280B0 00124FF0  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 801280B4 00124FF4  7D 89 03 A6 */	mtctr r12
/* 801280B8 00124FF8  4E 80 04 21 */	bctrl 
/* 801280BC 00124FFC  82 F7 00 04 */	lwz r23, 4(r23)
lbl_801280C0:
/* 801280C0 00125000  28 17 00 00 */	cmplwi r23, 0
/* 801280C4 00125004  40 82 FF 70 */	bne lbl_80128034
/* 801280C8 00125008  83 18 00 04 */	lwz r24, 4(r24)
lbl_801280CC:
/* 801280CC 0012500C  28 18 00 00 */	cmplwi r24, 0
/* 801280D0 00125010  40 82 FF 2C */	bne lbl_80127FFC
lbl_801280D4:
/* 801280D4 00125014  83 7B 00 04 */	lwz r27, 4(r27)
lbl_801280D8:
/* 801280D8 00125018  28 1B 00 00 */	cmplwi r27, 0
/* 801280DC 0012501C  40 82 FF 04 */	bne lbl_80127FE0
lbl_801280E0:
/* 801280E0 00125020  3B 9C 00 01 */	addi r28, r28, 1
/* 801280E4 00125024  3B BD 00 04 */	addi r29, r29, 4
/* 801280E8 00125028  2C 1C 00 02 */	cmpwi r28, 2
/* 801280EC 0012502C  3B DE 00 18 */	addi r30, r30, 0x18
/* 801280F0 00125030  41 80 FE E0 */	blt lbl_80127FD0
/* 801280F4 00125034  BA E1 00 CC */	lmw r23, 0xcc(r1)
/* 801280F8 00125038  80 01 00 F4 */	lwz r0, 0xf4(r1)
/* 801280FC 0012503C  7C 08 03 A6 */	mtlr r0
/* 80128100 00125040  38 21 00 F0 */	addi r1, r1, 0xf0
/* 80128104 00125044  4E 80 00 20 */	blr 
