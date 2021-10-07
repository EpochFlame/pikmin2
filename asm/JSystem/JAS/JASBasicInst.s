.include "macros.inc"

.section .text, "ax"  # 0x800056C0 - 0x80472F00
.global __ct__12JASBasicInstFv
__ct__12JASBasicInstFv:
/* 80099888 000967C8  3C A0 80 4A */	lis r5, __vt__7JASInst@ha
/* 8009988C 000967CC  3C 80 80 4A */	lis r4, __vt__12JASBasicInst@ha
/* 80099890 000967D0  38 05 37 90 */	addi r0, r5, __vt__7JASInst@l
/* 80099894 000967D4  C0 02 89 48 */	lfs f0, lbl_80516CA8@sda21(r2)
/* 80099898 000967D8  90 03 00 00 */	stw r0, 0(r3)
/* 8009989C 000967DC  38 84 37 78 */	addi r4, r4, __vt__12JASBasicInst@l
/* 800998A0 000967E0  38 00 00 00 */	li r0, 0
/* 800998A4 000967E4  90 83 00 00 */	stw r4, 0(r3)
/* 800998A8 000967E8  D0 03 00 04 */	stfs f0, 4(r3)
/* 800998AC 000967EC  D0 03 00 08 */	stfs f0, 8(r3)
/* 800998B0 000967F0  90 03 00 0C */	stw r0, 0xc(r3)
/* 800998B4 000967F4  90 03 00 10 */	stw r0, 0x10(r3)
/* 800998B8 000967F8  90 03 00 14 */	stw r0, 0x14(r3)
/* 800998BC 000967FC  90 03 00 18 */	stw r0, 0x18(r3)
/* 800998C0 00096800  90 03 00 1C */	stw r0, 0x1c(r3)
/* 800998C4 00096804  90 03 00 20 */	stw r0, 0x20(r3)
/* 800998C8 00096808  4E 80 00 20 */	blr 

.global __dt__7JASInstFv
__dt__7JASInstFv:
/* 800998CC 0009680C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800998D0 00096810  7C 08 02 A6 */	mflr r0
/* 800998D4 00096814  90 01 00 14 */	stw r0, 0x14(r1)
/* 800998D8 00096818  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800998DC 0009681C  7C 7F 1B 79 */	or. r31, r3, r3
/* 800998E0 00096820  41 82 00 1C */	beq lbl_800998FC
/* 800998E4 00096824  3C A0 80 4A */	lis r5, __vt__7JASInst@ha
/* 800998E8 00096828  7C 80 07 35 */	extsh. r0, r4
/* 800998EC 0009682C  38 05 37 90 */	addi r0, r5, __vt__7JASInst@l
/* 800998F0 00096830  90 1F 00 00 */	stw r0, 0(r31)
/* 800998F4 00096834  40 81 00 08 */	ble lbl_800998FC
/* 800998F8 00096838  4B F8 A7 BD */	bl __dl__FPv
lbl_800998FC:
/* 800998FC 0009683C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80099900 00096840  7F E3 FB 78 */	mr r3, r31
/* 80099904 00096844  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80099908 00096848  7C 08 03 A6 */	mtlr r0
/* 8009990C 0009684C  38 21 00 10 */	addi r1, r1, 0x10
/* 80099910 00096850  4E 80 00 20 */	blr 

.global __dt__12JASBasicInstFv
__dt__12JASBasicInstFv:
/* 80099914 00096854  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80099918 00096858  7C 08 02 A6 */	mflr r0
/* 8009991C 0009685C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80099920 00096860  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80099924 00096864  7C 9F 23 78 */	mr r31, r4
/* 80099928 00096868  93 C1 00 08 */	stw r30, 8(r1)
/* 8009992C 0009686C  7C 7E 1B 79 */	or. r30, r3, r3
/* 80099930 00096870  41 82 00 54 */	beq lbl_80099984
/* 80099934 00096874  3C 80 80 4A */	lis r4, __vt__12JASBasicInst@ha
/* 80099938 00096878  3C 60 80 0A */	lis r3, __dt__Q212JASBasicInst7TKeymapFv@ha
/* 8009993C 0009687C  38 04 37 78 */	addi r0, r4, __vt__12JASBasicInst@l
/* 80099940 00096880  90 1E 00 00 */	stw r0, 0(r30)
/* 80099944 00096884  38 83 9D 60 */	addi r4, r3, __dt__Q212JASBasicInst7TKeymapFv@l
/* 80099948 00096888  80 7E 00 20 */	lwz r3, 0x20(r30)
/* 8009994C 0009688C  48 02 7D FD */	bl __destroy_new_array
/* 80099950 00096890  80 7E 00 0C */	lwz r3, 0xc(r30)
/* 80099954 00096894  4B F8 A7 85 */	bl __dla__FPv
/* 80099958 00096898  80 7E 00 14 */	lwz r3, 0x14(r30)
/* 8009995C 0009689C  4B F8 A7 7D */	bl __dla__FPv
/* 80099960 000968A0  28 1E 00 00 */	cmplwi r30, 0
/* 80099964 000968A4  41 82 00 10 */	beq lbl_80099974
/* 80099968 000968A8  3C 60 80 4A */	lis r3, __vt__7JASInst@ha
/* 8009996C 000968AC  38 03 37 90 */	addi r0, r3, __vt__7JASInst@l
/* 80099970 000968B0  90 1E 00 00 */	stw r0, 0(r30)
lbl_80099974:
/* 80099974 000968B4  7F E0 07 35 */	extsh. r0, r31
/* 80099978 000968B8  40 81 00 0C */	ble lbl_80099984
/* 8009997C 000968BC  7F C3 F3 78 */	mr r3, r30
/* 80099980 000968C0  4B F8 A7 35 */	bl __dl__FPv
lbl_80099984:
/* 80099984 000968C4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80099988 000968C8  7F C3 F3 78 */	mr r3, r30
/* 8009998C 000968CC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80099990 000968D0  83 C1 00 08 */	lwz r30, 8(r1)
/* 80099994 000968D4  7C 08 03 A6 */	mtlr r0
/* 80099998 000968D8  38 21 00 10 */	addi r1, r1, 0x10
/* 8009999C 000968DC  4E 80 00 20 */	blr 

.global getParam__12JASBasicInstCFiiP12JASInstParam
getParam__12JASBasicInstCFiiP12JASInstParam:
/* 800999A0 000968E0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 800999A4 000968E4  7C 08 02 A6 */	mflr r0
/* 800999A8 000968E8  90 01 00 34 */	stw r0, 0x34(r1)
/* 800999AC 000968EC  38 00 00 00 */	li r0, 0
/* 800999B0 000968F0  BF 01 00 10 */	stmw r24, 0x10(r1)
/* 800999B4 000968F4  7C 78 1B 78 */	mr r24, r3
/* 800999B8 000968F8  83 83 00 0C */	lwz r28, 0xc(r3)
/* 800999BC 000968FC  7C DF 33 78 */	mr r31, r6
/* 800999C0 00096900  80 63 00 14 */	lwz r3, 0x14(r3)
/* 800999C4 00096904  7C 99 23 78 */	mr r25, r4
/* 800999C8 00096908  C0 38 00 04 */	lfs f1, 4(r24)
/* 800999CC 0009690C  7C BE 2B 78 */	mr r30, r5
/* 800999D0 00096910  C0 18 00 08 */	lfs f0, 8(r24)
/* 800999D4 00096914  3B 60 00 00 */	li r27, 0
/* 800999D8 00096918  83 B8 00 10 */	lwz r29, 0x10(r24)
/* 800999DC 0009691C  98 06 00 00 */	stb r0, 0(r6)
/* 800999E0 00096920  98 06 00 24 */	stb r0, 0x24(r6)
/* 800999E4 00096924  80 18 00 18 */	lwz r0, 0x18(r24)
/* 800999E8 00096928  90 66 00 08 */	stw r3, 8(r6)
/* 800999EC 0009692C  90 06 00 0C */	stw r0, 0xc(r6)
/* 800999F0 00096930  D0 26 00 10 */	stfs f1, 0x10(r6)
/* 800999F4 00096934  D0 06 00 14 */	stfs f0, 0x14(r6)
/* 800999F8 00096938  48 00 00 BC */	b lbl_80099AB4
lbl_800999FC:
/* 800999FC 0009693C  83 5C 00 00 */	lwz r26, 0(r28)
/* 80099A00 00096940  28 1A 00 00 */	cmplwi r26, 0
/* 80099A04 00096944  41 82 00 A8 */	beq lbl_80099AAC
/* 80099A08 00096948  7F 43 D3 78 */	mr r3, r26
/* 80099A0C 0009694C  7F 24 CB 78 */	mr r4, r25
/* 80099A10 00096950  81 9A 00 00 */	lwz r12, 0(r26)
/* 80099A14 00096954  7F C5 F3 78 */	mr r5, r30
/* 80099A18 00096958  81 8C 00 08 */	lwz r12, 8(r12)
/* 80099A1C 0009695C  7D 89 03 A6 */	mtctr r12
/* 80099A20 00096960  4E 80 04 21 */	bctrl 
/* 80099A24 00096964  88 1A 00 04 */	lbz r0, 4(r26)
/* 80099A28 00096968  2C 00 00 02 */	cmpwi r0, 2
/* 80099A2C 0009696C  41 82 00 48 */	beq lbl_80099A74
/* 80099A30 00096970  40 80 00 14 */	bge lbl_80099A44
/* 80099A34 00096974  2C 00 00 00 */	cmpwi r0, 0
/* 80099A38 00096978  41 82 00 1C */	beq lbl_80099A54
/* 80099A3C 0009697C  40 80 00 28 */	bge lbl_80099A64
/* 80099A40 00096980  48 00 00 6C */	b lbl_80099AAC
lbl_80099A44:
/* 80099A44 00096984  2C 00 00 04 */	cmpwi r0, 4
/* 80099A48 00096988  41 82 00 58 */	beq lbl_80099AA0
/* 80099A4C 0009698C  40 80 00 60 */	bge lbl_80099AAC
/* 80099A50 00096990  48 00 00 40 */	b lbl_80099A90
lbl_80099A54:
/* 80099A54 00096994  C0 1F 00 10 */	lfs f0, 0x10(r31)
/* 80099A58 00096998  EC 00 00 72 */	fmuls f0, f0, f1
/* 80099A5C 0009699C  D0 1F 00 10 */	stfs f0, 0x10(r31)
/* 80099A60 000969A0  48 00 00 4C */	b lbl_80099AAC
lbl_80099A64:
/* 80099A64 000969A4  C0 1F 00 14 */	lfs f0, 0x14(r31)
/* 80099A68 000969A8  EC 00 00 72 */	fmuls f0, f0, f1
/* 80099A6C 000969AC  D0 1F 00 14 */	stfs f0, 0x14(r31)
/* 80099A70 000969B0  48 00 00 3C */	b lbl_80099AAC
lbl_80099A74:
/* 80099A74 000969B4  C8 02 89 50 */	lfd f0, lbl_80516CB0@sda21(r2)
/* 80099A78 000969B8  C0 5F 00 18 */	lfs f2, 0x18(r31)
/* 80099A7C 000969BC  FC 01 00 28 */	fsub f0, f1, f0
/* 80099A80 000969C0  FC 02 00 2A */	fadd f0, f2, f0
/* 80099A84 000969C4  FC 00 00 18 */	frsp f0, f0
/* 80099A88 000969C8  D0 1F 00 18 */	stfs f0, 0x18(r31)
/* 80099A8C 000969CC  48 00 00 20 */	b lbl_80099AAC
lbl_80099A90:
/* 80099A90 000969D0  C0 1F 00 1C */	lfs f0, 0x1c(r31)
/* 80099A94 000969D4  EC 00 08 2A */	fadds f0, f0, f1
/* 80099A98 000969D8  D0 1F 00 1C */	stfs f0, 0x1c(r31)
/* 80099A9C 000969DC  48 00 00 10 */	b lbl_80099AAC
lbl_80099AA0:
/* 80099AA0 000969E0  C0 1F 00 20 */	lfs f0, 0x20(r31)
/* 80099AA4 000969E4  EC 00 08 2A */	fadds f0, f0, f1
/* 80099AA8 000969E8  D0 1F 00 20 */	stfs f0, 0x20(r31)
lbl_80099AAC:
/* 80099AAC 000969EC  3B 9C 00 04 */	addi r28, r28, 4
/* 80099AB0 000969F0  3B 7B 00 01 */	addi r27, r27, 1
lbl_80099AB4:
/* 80099AB4 000969F4  7C 1B E8 40 */	cmplw r27, r29
/* 80099AB8 000969F8  41 80 FF 44 */	blt lbl_800999FC
/* 80099ABC 000969FC  80 98 00 20 */	lwz r4, 0x20(r24)
/* 80099AC0 00096A00  3B 40 00 00 */	li r26, 0
/* 80099AC4 00096A04  80 18 00 1C */	lwz r0, 0x1c(r24)
/* 80099AC8 00096A08  38 A0 00 00 */	li r5, 0
/* 80099ACC 00096A0C  7C 83 23 78 */	mr r3, r4
/* 80099AD0 00096A10  7C 09 03 A6 */	mtctr r0
/* 80099AD4 00096A14  28 00 00 00 */	cmplwi r0, 0
/* 80099AD8 00096A18  40 81 00 28 */	ble lbl_80099B00
lbl_80099ADC:
/* 80099ADC 00096A1C  80 03 00 00 */	lwz r0, 0(r3)
/* 80099AE0 00096A20  7C 19 00 00 */	cmpw r25, r0
/* 80099AE4 00096A24  41 81 00 10 */	bgt lbl_80099AF4
/* 80099AE8 00096A28  1C 05 00 0C */	mulli r0, r5, 0xc
/* 80099AEC 00096A2C  7F 44 02 14 */	add r26, r4, r0
/* 80099AF0 00096A30  48 00 00 10 */	b lbl_80099B00
lbl_80099AF4:
/* 80099AF4 00096A34  38 63 00 0C */	addi r3, r3, 0xc
/* 80099AF8 00096A38  38 A5 00 01 */	addi r5, r5, 1
/* 80099AFC 00096A3C  42 00 FF E0 */	bdnz lbl_80099ADC
lbl_80099B00:
/* 80099B00 00096A40  28 1A 00 00 */	cmplwi r26, 0
/* 80099B04 00096A44  40 82 00 0C */	bne lbl_80099B10
/* 80099B08 00096A48  38 60 00 00 */	li r3, 0
/* 80099B0C 00096A4C  48 00 00 68 */	b lbl_80099B74
lbl_80099B10:
/* 80099B10 00096A50  3B 60 00 00 */	li r27, 0
/* 80099B14 00096A54  48 00 00 50 */	b lbl_80099B64
lbl_80099B18:
/* 80099B18 00096A58  7F 43 D3 78 */	mr r3, r26
/* 80099B1C 00096A5C  7F 64 DB 78 */	mr r4, r27
/* 80099B20 00096A60  48 00 03 11 */	bl getVeloRegion__Q212JASBasicInst7TKeymapCFi
/* 80099B24 00096A64  80 03 00 00 */	lwz r0, 0(r3)
/* 80099B28 00096A68  7C 1E 00 00 */	cmpw r30, r0
/* 80099B2C 00096A6C  41 81 00 34 */	bgt lbl_80099B60
/* 80099B30 00096A70  C0 3F 00 10 */	lfs f1, 0x10(r31)
/* 80099B34 00096A74  C0 03 00 08 */	lfs f0, 8(r3)
/* 80099B38 00096A78  EC 01 00 32 */	fmuls f0, f1, f0
/* 80099B3C 00096A7C  D0 1F 00 10 */	stfs f0, 0x10(r31)
/* 80099B40 00096A80  C0 3F 00 14 */	lfs f1, 0x14(r31)
/* 80099B44 00096A84  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 80099B48 00096A88  EC 01 00 32 */	fmuls f0, f1, f0
/* 80099B4C 00096A8C  D0 1F 00 14 */	stfs f0, 0x14(r31)
/* 80099B50 00096A90  80 03 00 04 */	lwz r0, 4(r3)
/* 80099B54 00096A94  38 60 00 01 */	li r3, 1
/* 80099B58 00096A98  90 1F 00 04 */	stw r0, 4(r31)
/* 80099B5C 00096A9C  48 00 00 18 */	b lbl_80099B74
lbl_80099B60:
/* 80099B60 00096AA0  3B 7B 00 01 */	addi r27, r27, 1
lbl_80099B64:
/* 80099B64 00096AA4  80 1A 00 04 */	lwz r0, 4(r26)
/* 80099B68 00096AA8  7C 1B 00 40 */	cmplw r27, r0
/* 80099B6C 00096AAC  41 80 FF AC */	blt lbl_80099B18
/* 80099B70 00096AB0  38 60 00 00 */	li r3, 0
lbl_80099B74:
/* 80099B74 00096AB4  BB 01 00 10 */	lmw r24, 0x10(r1)
/* 80099B78 00096AB8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80099B7C 00096ABC  7C 08 03 A6 */	mtlr r0
/* 80099B80 00096AC0  38 21 00 30 */	addi r1, r1, 0x30
/* 80099B84 00096AC4  4E 80 00 20 */	blr 

.global getKeymapIndex__12JASBasicInstCFi
getKeymapIndex__12JASBasicInstCFi:
/* 80099B88 00096AC8  7C 83 23 78 */	mr r3, r4
/* 80099B8C 00096ACC  4E 80 00 20 */	blr 

.global setKeyRegionCount__12JASBasicInstFUl
setKeyRegionCount__12JASBasicInstFUl:
/* 80099B90 00096AD0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80099B94 00096AD4  7C 08 02 A6 */	mflr r0
/* 80099B98 00096AD8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80099B9C 00096ADC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80099BA0 00096AE0  7C 9F 23 78 */	mr r31, r4
/* 80099BA4 00096AE4  93 C1 00 08 */	stw r30, 8(r1)
/* 80099BA8 00096AE8  7C 7E 1B 78 */	mr r30, r3
/* 80099BAC 00096AEC  3C 60 80 0A */	lis r3, __dt__Q212JASBasicInst7TKeymapFv@ha
/* 80099BB0 00096AF0  38 03 9D 60 */	addi r0, r3, __dt__Q212JASBasicInst7TKeymapFv@l
/* 80099BB4 00096AF4  80 7E 00 20 */	lwz r3, 0x20(r30)
/* 80099BB8 00096AF8  7C 04 03 78 */	mr r4, r0
/* 80099BBC 00096AFC  48 02 7B 8D */	bl __destroy_new_array
/* 80099BC0 00096B00  48 00 27 3D */	bl getCurrentHeap__7JASBankFv
/* 80099BC4 00096B04  1C DF 00 0C */	mulli r6, r31, 0xc
/* 80099BC8 00096B08  7C 64 1B 78 */	mr r4, r3
/* 80099BCC 00096B0C  38 A0 00 00 */	li r5, 0
/* 80099BD0 00096B10  38 66 00 10 */	addi r3, r6, 0x10
/* 80099BD4 00096B14  4B F8 A4 75 */	bl __nwa__FUlP7JKRHeapi
/* 80099BD8 00096B18  3C 80 80 0A */	lis r4, __ct__Q212JASBasicInst7TKeymapFv@ha
/* 80099BDC 00096B1C  3C A0 80 0A */	lis r5, __dt__Q212JASBasicInst7TKeymapFv@ha
/* 80099BE0 00096B20  38 84 9C 14 */	addi r4, r4, __ct__Q212JASBasicInst7TKeymapFv@l
/* 80099BE4 00096B24  7F E7 FB 78 */	mr r7, r31
/* 80099BE8 00096B28  38 A5 9D 60 */	addi r5, r5, __dt__Q212JASBasicInst7TKeymapFv@l
/* 80099BEC 00096B2C  38 C0 00 0C */	li r6, 0xc
/* 80099BF0 00096B30  48 02 7E 01 */	bl __construct_new_array
/* 80099BF4 00096B34  90 7E 00 20 */	stw r3, 0x20(r30)
/* 80099BF8 00096B38  93 FE 00 1C */	stw r31, 0x1c(r30)
/* 80099BFC 00096B3C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80099C00 00096B40  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80099C04 00096B44  83 C1 00 08 */	lwz r30, 8(r1)
/* 80099C08 00096B48  7C 08 03 A6 */	mtlr r0
/* 80099C0C 00096B4C  38 21 00 10 */	addi r1, r1, 0x10
/* 80099C10 00096B50  4E 80 00 20 */	blr 

.global __ct__Q212JASBasicInst7TKeymapFv
__ct__Q212JASBasicInst7TKeymapFv:
/* 80099C14 00096B54  38 80 FF FF */	li r4, -1
/* 80099C18 00096B58  38 00 00 00 */	li r0, 0
/* 80099C1C 00096B5C  90 83 00 00 */	stw r4, 0(r3)
/* 80099C20 00096B60  90 03 00 04 */	stw r0, 4(r3)
/* 80099C24 00096B64  90 03 00 08 */	stw r0, 8(r3)
/* 80099C28 00096B68  4E 80 00 20 */	blr 

.global setEffectCount__12JASBasicInstFUl
setEffectCount__12JASBasicInstFUl:
/* 80099C2C 00096B6C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80099C30 00096B70  7C 08 02 A6 */	mflr r0
/* 80099C34 00096B74  90 01 00 14 */	stw r0, 0x14(r1)
/* 80099C38 00096B78  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80099C3C 00096B7C  7C 9F 23 78 */	mr r31, r4
/* 80099C40 00096B80  93 C1 00 08 */	stw r30, 8(r1)
/* 80099C44 00096B84  7C 7E 1B 78 */	mr r30, r3
/* 80099C48 00096B88  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80099C4C 00096B8C  4B F8 A4 8D */	bl __dla__FPv
/* 80099C50 00096B90  28 1F 00 00 */	cmplwi r31, 0
/* 80099C54 00096B94  93 FE 00 10 */	stw r31, 0x10(r30)
/* 80099C58 00096B98  40 82 00 10 */	bne lbl_80099C68
/* 80099C5C 00096B9C  38 00 00 00 */	li r0, 0
/* 80099C60 00096BA0  90 1E 00 0C */	stw r0, 0xc(r30)
/* 80099C64 00096BA4  48 00 00 28 */	b lbl_80099C8C
lbl_80099C68:
/* 80099C68 00096BA8  48 00 26 95 */	bl getCurrentHeap__7JASBankFv
/* 80099C6C 00096BAC  7C 64 1B 78 */	mr r4, r3
/* 80099C70 00096BB0  57 E3 10 3A */	slwi r3, r31, 2
/* 80099C74 00096BB4  38 A0 00 00 */	li r5, 0
/* 80099C78 00096BB8  4B F8 A3 D1 */	bl __nwa__FUlP7JKRHeapi
/* 80099C7C 00096BBC  90 7E 00 0C */	stw r3, 0xc(r30)
/* 80099C80 00096BC0  57 E4 10 3A */	slwi r4, r31, 2
/* 80099C84 00096BC4  80 7E 00 0C */	lwz r3, 0xc(r30)
/* 80099C88 00096BC8  48 00 C5 DD */	bl bzero__7JASCalcFPvUl
lbl_80099C8C:
/* 80099C8C 00096BCC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80099C90 00096BD0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80099C94 00096BD4  83 C1 00 08 */	lwz r30, 8(r1)
/* 80099C98 00096BD8  7C 08 03 A6 */	mtlr r0
/* 80099C9C 00096BDC  38 21 00 10 */	addi r1, r1, 0x10
/* 80099CA0 00096BE0  4E 80 00 20 */	blr 

.global setEffect__12JASBasicInstFiP13JASInstEffect
setEffect__12JASBasicInstFiP13JASInstEffect:
/* 80099CA4 00096BE4  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80099CA8 00096BE8  54 80 10 3A */	slwi r0, r4, 2
/* 80099CAC 00096BEC  7C A3 01 2E */	stwx r5, r3, r0
/* 80099CB0 00096BF0  4E 80 00 20 */	blr 

.global setOscCount__12JASBasicInstFUl
setOscCount__12JASBasicInstFUl:
/* 80099CB4 00096BF4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80099CB8 00096BF8  7C 08 02 A6 */	mflr r0
/* 80099CBC 00096BFC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80099CC0 00096C00  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80099CC4 00096C04  7C 9F 23 78 */	mr r31, r4
/* 80099CC8 00096C08  93 C1 00 08 */	stw r30, 8(r1)
/* 80099CCC 00096C0C  7C 7E 1B 78 */	mr r30, r3
/* 80099CD0 00096C10  80 63 00 14 */	lwz r3, 0x14(r3)
/* 80099CD4 00096C14  4B F8 A4 05 */	bl __dla__FPv
/* 80099CD8 00096C18  28 1F 00 00 */	cmplwi r31, 0
/* 80099CDC 00096C1C  93 FE 00 18 */	stw r31, 0x18(r30)
/* 80099CE0 00096C20  40 82 00 10 */	bne lbl_80099CF0
/* 80099CE4 00096C24  38 00 00 00 */	li r0, 0
/* 80099CE8 00096C28  90 1E 00 14 */	stw r0, 0x14(r30)
/* 80099CEC 00096C2C  48 00 00 28 */	b lbl_80099D14
lbl_80099CF0:
/* 80099CF0 00096C30  48 00 26 0D */	bl getCurrentHeap__7JASBankFv
/* 80099CF4 00096C34  7C 64 1B 78 */	mr r4, r3
/* 80099CF8 00096C38  57 E3 10 3A */	slwi r3, r31, 2
/* 80099CFC 00096C3C  38 A0 00 00 */	li r5, 0
/* 80099D00 00096C40  4B F8 A3 49 */	bl __nwa__FUlP7JKRHeapi
/* 80099D04 00096C44  90 7E 00 14 */	stw r3, 0x14(r30)
/* 80099D08 00096C48  57 E4 10 3A */	slwi r4, r31, 2
/* 80099D0C 00096C4C  80 7E 00 14 */	lwz r3, 0x14(r30)
/* 80099D10 00096C50  48 00 C5 55 */	bl bzero__7JASCalcFPvUl
lbl_80099D14:
/* 80099D14 00096C54  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80099D18 00096C58  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80099D1C 00096C5C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80099D20 00096C60  7C 08 03 A6 */	mtlr r0
/* 80099D24 00096C64  38 21 00 10 */	addi r1, r1, 0x10
/* 80099D28 00096C68  4E 80 00 20 */	blr 

.global setOsc__12JASBasicInstFiPQ213JASOscillator4Data
setOsc__12JASBasicInstFiPQ213JASOscillator4Data:
/* 80099D2C 00096C6C  80 63 00 14 */	lwz r3, 0x14(r3)
/* 80099D30 00096C70  54 80 10 3A */	slwi r0, r4, 2
/* 80099D34 00096C74  7C A3 01 2E */	stwx r5, r3, r0
/* 80099D38 00096C78  4E 80 00 20 */	blr 

.global getKeyRegion__12JASBasicInstFi
getKeyRegion__12JASBasicInstFi:
/* 80099D3C 00096C7C  80 03 00 1C */	lwz r0, 0x1c(r3)
/* 80099D40 00096C80  7C 04 00 40 */	cmplw r4, r0
/* 80099D44 00096C84  41 80 00 0C */	blt lbl_80099D50
/* 80099D48 00096C88  38 60 00 00 */	li r3, 0
/* 80099D4C 00096C8C  4E 80 00 20 */	blr 
lbl_80099D50:
/* 80099D50 00096C90  1C 04 00 0C */	mulli r0, r4, 0xc
/* 80099D54 00096C94  80 63 00 20 */	lwz r3, 0x20(r3)
/* 80099D58 00096C98  7C 63 02 14 */	add r3, r3, r0
/* 80099D5C 00096C9C  4E 80 00 20 */	blr 

.global __dt__Q212JASBasicInst7TKeymapFv
__dt__Q212JASBasicInst7TKeymapFv:
/* 80099D60 00096CA0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80099D64 00096CA4  7C 08 02 A6 */	mflr r0
/* 80099D68 00096CA8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80099D6C 00096CAC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80099D70 00096CB0  7C 9F 23 78 */	mr r31, r4
/* 80099D74 00096CB4  93 C1 00 08 */	stw r30, 8(r1)
/* 80099D78 00096CB8  7C 7E 1B 79 */	or. r30, r3, r3
/* 80099D7C 00096CBC  41 82 00 1C */	beq lbl_80099D98
/* 80099D80 00096CC0  80 7E 00 08 */	lwz r3, 8(r30)
/* 80099D84 00096CC4  4B F8 A3 55 */	bl __dla__FPv
/* 80099D88 00096CC8  7F E0 07 35 */	extsh. r0, r31
/* 80099D8C 00096CCC  40 81 00 0C */	ble lbl_80099D98
/* 80099D90 00096CD0  7F C3 F3 78 */	mr r3, r30
/* 80099D94 00096CD4  4B F8 A3 21 */	bl __dl__FPv
lbl_80099D98:
/* 80099D98 00096CD8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80099D9C 00096CDC  7F C3 F3 78 */	mr r3, r30
/* 80099DA0 00096CE0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80099DA4 00096CE4  83 C1 00 08 */	lwz r30, 8(r1)
/* 80099DA8 00096CE8  7C 08 03 A6 */	mtlr r0
/* 80099DAC 00096CEC  38 21 00 10 */	addi r1, r1, 0x10
/* 80099DB0 00096CF0  4E 80 00 20 */	blr 

.global setVeloRegionCount__Q212JASBasicInst7TKeymapFUl
setVeloRegionCount__Q212JASBasicInst7TKeymapFUl:
/* 80099DB4 00096CF4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80099DB8 00096CF8  7C 08 02 A6 */	mflr r0
/* 80099DBC 00096CFC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80099DC0 00096D00  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80099DC4 00096D04  7C 9F 23 78 */	mr r31, r4
/* 80099DC8 00096D08  93 C1 00 08 */	stw r30, 8(r1)
/* 80099DCC 00096D0C  7C 7E 1B 78 */	mr r30, r3
/* 80099DD0 00096D10  80 63 00 08 */	lwz r3, 8(r3)
/* 80099DD4 00096D14  4B F8 A3 05 */	bl __dla__FPv
/* 80099DD8 00096D18  48 00 25 25 */	bl getCurrentHeap__7JASBankFv
/* 80099DDC 00096D1C  7C 64 1B 78 */	mr r4, r3
/* 80099DE0 00096D20  57 E3 20 36 */	slwi r3, r31, 4
/* 80099DE4 00096D24  38 A0 00 00 */	li r5, 0
/* 80099DE8 00096D28  4B F8 A2 61 */	bl __nwa__FUlP7JKRHeapi
/* 80099DEC 00096D2C  90 7E 00 08 */	stw r3, 8(r30)
/* 80099DF0 00096D30  93 FE 00 04 */	stw r31, 4(r30)
/* 80099DF4 00096D34  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80099DF8 00096D38  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80099DFC 00096D3C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80099E00 00096D40  7C 08 03 A6 */	mtlr r0
/* 80099E04 00096D44  38 21 00 10 */	addi r1, r1, 0x10
/* 80099E08 00096D48  4E 80 00 20 */	blr 

.global getVeloRegion__Q212JASBasicInst7TKeymapFi
getVeloRegion__Q212JASBasicInst7TKeymapFi:
/* 80099E0C 00096D4C  80 03 00 04 */	lwz r0, 4(r3)
/* 80099E10 00096D50  7C 04 00 40 */	cmplw r4, r0
/* 80099E14 00096D54  41 80 00 0C */	blt lbl_80099E20
/* 80099E18 00096D58  38 60 00 00 */	li r3, 0
/* 80099E1C 00096D5C  4E 80 00 20 */	blr 
lbl_80099E20:
/* 80099E20 00096D60  80 63 00 08 */	lwz r3, 8(r3)
/* 80099E24 00096D64  54 80 20 36 */	slwi r0, r4, 4
/* 80099E28 00096D68  7C 63 02 14 */	add r3, r3, r0
/* 80099E2C 00096D6C  4E 80 00 20 */	blr 

.global getVeloRegion__Q212JASBasicInst7TKeymapCFi
getVeloRegion__Q212JASBasicInst7TKeymapCFi:
/* 80099E30 00096D70  80 03 00 04 */	lwz r0, 4(r3)
/* 80099E34 00096D74  7C 04 00 40 */	cmplw r4, r0
/* 80099E38 00096D78  41 80 00 0C */	blt lbl_80099E44
/* 80099E3C 00096D7C  38 60 00 00 */	li r3, 0
/* 80099E40 00096D80  4E 80 00 20 */	blr 
lbl_80099E44:
/* 80099E44 00096D84  80 63 00 08 */	lwz r3, 8(r3)
/* 80099E48 00096D88  54 80 20 36 */	slwi r0, r4, 4
/* 80099E4C 00096D8C  7C 63 02 14 */	add r3, r3, r0
/* 80099E50 00096D90  4E 80 00 20 */	blr 

.global getType__12JASBasicInstCFv
getType__12JASBasicInstCFv:
/* 80099E54 00096D94  3C 60 42 53 */	lis r3, 0x42534943@ha
/* 80099E58 00096D98  38 63 49 43 */	addi r3, r3, 0x42534943@l
/* 80099E5C 00096D9C  4E 80 00 20 */	blr 