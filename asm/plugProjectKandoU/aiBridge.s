.include "macros.inc"
.section .rodata  # 0x804732E0 - 0x8049E220
.balign 8
lbl_804820A8:
	.asciz "actBridge"
.balign 4
lbl_804820B4:
	.asciz "ActBridgeArg"
.balign 4
lbl_804820C4:
	.asciz "aiBridge.cpp"
.balign 4
lbl_804820D4:
	.asciz "P2Assert"
.balign 4
lbl_804820E0:
	.asciz "ActionArg"
.balign 4
lbl_804820EC:
	.asciz "StickAttackActionArg"
.balign 4
lbl_80482104:
	.asciz "GotoPosActionArg"
.balign 4
lbl_80482118:
	.asciz "FollowVectorFieldActionArg"

.section .data, "wa"  # 0x8049E220 - 0x804EFC20
.balign 8
.global __vt__Q26PikiAI9ActBridge
__vt__Q26PikiAI9ActBridge:
	.4byte 0
	.4byte 0
	.4byte init__Q26PikiAI9ActBridgeFPQ26PikiAI9ActionArg
	.4byte exec__Q26PikiAI9ActBridgeFv
	.4byte cleanup__Q26PikiAI9ActBridgeFv
	.4byte emotion_success__Q26PikiAI6ActionFv
	.4byte emotion_fail__Q26PikiAI6ActionFv
	.4byte applicable__Q26PikiAI6ActionFv
	.4byte getNextAIType__Q26PikiAI6ActionFv
	.4byte bounceCallback__Q26PikiAI9ActBridgeFPQ24Game4PikiPQ23Sys8Triangle
	.4byte collisionCallback__Q26PikiAI9ActBridgeFPQ24Game4PikiRQ24Game9CollEvent
	.4byte platCallback__Q26PikiAI9ActBridgeFPQ24Game4PikiRQ24Game9PlatEvent
	.4byte doDirectDraw__Q26PikiAI6ActionFR8Graphics
	.4byte "wallCallback__Q26PikiAI6ActionFR10Vector3<f>"
	.4byte getInfo__Q26PikiAI6ActionFPc
	.4byte onKeyEvent__Q26PikiAI9ActBridgeFRCQ28SysShape8KeyEvent
	.4byte 0
	.4byte 0
	.4byte "@52@4@onKeyEvent__Q26PikiAI9ActBridgeFRCQ28SysShape8KeyEvent"

.section .sdata2, "a"     # 0x80516360 - 0x80520E40
.balign 8
lbl_80519F58:
	.asciz "Bridge"
.balign 4
lbl_80519F60:
	.float 0.5

.section .text, "ax"  # 0x800056C0 - 0x80472F00
.global __ct__Q26PikiAI9ActBridgeFPQ24Game4Piki
__ct__Q26PikiAI9ActBridgeFPQ24Game4Piki:
/* 80212288 0020F1C8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8021228C 0020F1CC  7C 08 02 A6 */	mflr r0
/* 80212290 0020F1D0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80212294 0020F1D4  7C 80 07 35 */	extsh. r0, r4
/* 80212298 0020F1D8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8021229C 0020F1DC  7C BF 2B 78 */	mr r31, r5
/* 802122A0 0020F1E0  93 C1 00 08 */	stw r30, 8(r1)
/* 802122A4 0020F1E4  7C 7E 1B 78 */	mr r30, r3
/* 802122A8 0020F1E8  41 82 00 18 */	beq lbl_802122C0
/* 802122AC 0020F1EC  38 1E 00 34 */	addi r0, r30, 0x34
/* 802122B0 0020F1F0  3C 60 80 4B */	lis r3, __vt__Q28SysShape14MotionListener@ha
/* 802122B4 0020F1F4  90 1E 00 0C */	stw r0, 0xc(r30)
/* 802122B8 0020F1F8  38 03 A6 6C */	addi r0, r3, __vt__Q28SysShape14MotionListener@l
/* 802122BC 0020F1FC  90 1E 00 34 */	stw r0, 0x34(r30)
lbl_802122C0:
/* 802122C0 0020F200  7F C3 F3 78 */	mr r3, r30
/* 802122C4 0020F204  7F E4 FB 78 */	mr r4, r31
/* 802122C8 0020F208  4B F8 47 51 */	bl __ct__Q26PikiAI6ActionFPQ24Game4Piki
/* 802122CC 0020F20C  3C 60 80 4C */	lis r3, __vt__Q26PikiAI9ActBridge@ha
/* 802122D0 0020F210  38 9E 00 34 */	addi r4, r30, 0x34
/* 802122D4 0020F214  38 63 04 38 */	addi r3, r3, __vt__Q26PikiAI9ActBridge@l
/* 802122D8 0020F218  38 00 00 00 */	li r0, 0
/* 802122DC 0020F21C  90 7E 00 00 */	stw r3, 0(r30)
/* 802122E0 0020F220  38 C3 00 40 */	addi r6, r3, 0x40
/* 802122E4 0020F224  38 60 00 2C */	li r3, 0x2c
/* 802122E8 0020F228  80 BE 00 0C */	lwz r5, 0xc(r30)
/* 802122EC 0020F22C  90 C5 00 00 */	stw r6, 0(r5)
/* 802122F0 0020F230  80 BE 00 0C */	lwz r5, 0xc(r30)
/* 802122F4 0020F234  7C 85 20 50 */	subf r4, r5, r4
/* 802122F8 0020F238  90 85 00 04 */	stw r4, 4(r5)
/* 802122FC 0020F23C  98 1E 00 30 */	stb r0, 0x30(r30)
/* 80212300 0020F240  4B E1 1B A5 */	bl __nw__FUl
/* 80212304 0020F244  7C 60 1B 79 */	or. r0, r3, r3
/* 80212308 0020F248  41 82 00 14 */	beq lbl_8021231C
/* 8021230C 0020F24C  7F E5 FB 78 */	mr r5, r31
/* 80212310 0020F250  38 80 00 01 */	li r4, 1
/* 80212314 0020F254  4B F8 99 A5 */	bl __ct__Q26PikiAI14ActStickAttackFPQ24Game4Piki
/* 80212318 0020F258  7C 60 1B 78 */	mr r0, r3
lbl_8021231C:
/* 8021231C 0020F25C  90 1E 00 18 */	stw r0, 0x18(r30)
/* 80212320 0020F260  38 60 00 1C */	li r3, 0x1c
/* 80212324 0020F264  4B E1 1B 81 */	bl __nw__FUl
/* 80212328 0020F268  7C 60 1B 79 */	or. r0, r3, r3
/* 8021232C 0020F26C  41 82 00 10 */	beq lbl_8021233C
/* 80212330 0020F270  7F E4 FB 78 */	mr r4, r31
/* 80212334 0020F274  4B F8 4F A9 */	bl __ct__Q26PikiAI10ActGotoPosFPQ24Game4Piki
/* 80212338 0020F278  7C 60 1B 78 */	mr r0, r3
lbl_8021233C:
/* 8021233C 0020F27C  90 1E 00 1C */	stw r0, 0x1c(r30)
/* 80212340 0020F280  38 60 00 10 */	li r3, 0x10
/* 80212344 0020F284  4B E1 1B 61 */	bl __nw__FUl
/* 80212348 0020F288  7C 60 1B 79 */	or. r0, r3, r3
/* 8021234C 0020F28C  41 82 00 10 */	beq lbl_8021235C
/* 80212350 0020F290  7F E4 FB 78 */	mr r4, r31
/* 80212354 0020F294  4B F8 A8 C1 */	bl __ct__Q26PikiAI20ActFollowVectorFieldFPQ24Game4Piki
/* 80212358 0020F298  7C 60 1B 78 */	mr r0, r3
lbl_8021235C:
/* 8021235C 0020F29C  90 1E 00 20 */	stw r0, 0x20(r30)
/* 80212360 0020F2A0  38 02 BB F8 */	addi r0, r2, lbl_80519F58@sda21
/* 80212364 0020F2A4  7F C3 F3 78 */	mr r3, r30
/* 80212368 0020F2A8  90 1E 00 08 */	stw r0, 8(r30)
/* 8021236C 0020F2AC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80212370 0020F2B0  83 C1 00 08 */	lwz r30, 8(r1)
/* 80212374 0020F2B4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80212378 0020F2B8  7C 08 03 A6 */	mtlr r0
/* 8021237C 0020F2BC  38 21 00 10 */	addi r1, r1, 0x10
/* 80212380 0020F2C0  4E 80 00 20 */	blr 

.global init__Q26PikiAI9ActBridgeFPQ26PikiAI9ActionArg
init__Q26PikiAI9ActBridgeFPQ26PikiAI9ActionArg:
/* 80212384 0020F2C4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80212388 0020F2C8  7C 08 02 A6 */	mflr r0
/* 8021238C 0020F2CC  90 01 00 24 */	stw r0, 0x24(r1)
/* 80212390 0020F2D0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80212394 0020F2D4  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80212398 0020F2D8  3B C0 00 00 */	li r30, 0
/* 8021239C 0020F2DC  93 A1 00 14 */	stw r29, 0x14(r1)
/* 802123A0 0020F2E0  7C 9D 23 79 */	or. r29, r4, r4
/* 802123A4 0020F2E4  3C 80 80 48 */	lis r4, lbl_804820A8@ha
/* 802123A8 0020F2E8  93 81 00 10 */	stw r28, 0x10(r1)
/* 802123AC 0020F2EC  7C 7C 1B 78 */	mr r28, r3
/* 802123B0 0020F2F0  3B E4 20 A8 */	addi r31, r4, lbl_804820A8@l
/* 802123B4 0020F2F4  41 82 00 34 */	beq lbl_802123E8
/* 802123B8 0020F2F8  7F A3 EB 78 */	mr r3, r29
/* 802123BC 0020F2FC  81 9D 00 00 */	lwz r12, 0(r29)
/* 802123C0 0020F300  81 8C 00 08 */	lwz r12, 8(r12)
/* 802123C4 0020F304  7D 89 03 A6 */	mtctr r12
/* 802123C8 0020F308  4E 80 04 21 */	bctrl 
/* 802123CC 0020F30C  7C 64 1B 78 */	mr r4, r3
/* 802123D0 0020F310  38 7F 00 0C */	addi r3, r31, 0xc
/* 802123D4 0020F314  4B EB 82 ED */	bl strcmp
/* 802123D8 0020F318  7C 60 00 34 */	cntlzw r0, r3
/* 802123DC 0020F31C  54 00 DE 3F */	rlwinm. r0, r0, 0x1b, 0x18, 0x1f
/* 802123E0 0020F320  41 82 00 08 */	beq lbl_802123E8
/* 802123E4 0020F324  3B C0 00 01 */	li r30, 1
lbl_802123E8:
/* 802123E8 0020F328  57 C0 06 3F */	clrlwi. r0, r30, 0x18
/* 802123EC 0020F32C  40 82 00 18 */	bne lbl_80212404
/* 802123F0 0020F330  38 7F 00 1C */	addi r3, r31, 0x1c
/* 802123F4 0020F334  38 BF 00 2C */	addi r5, r31, 0x2c
/* 802123F8 0020F338  38 80 00 3E */	li r4, 0x3e
/* 802123FC 0020F33C  4C C6 31 82 */	crclr 6
/* 80212400 0020F340  4B E1 82 41 */	bl panic_f__12JUTExceptionFPCciPCce
lbl_80212404:
/* 80212404 0020F344  3C 60 80 51 */	lis r3, workPikis__Q24Game8GameStat@ha
/* 80212408 0020F348  80 9C 00 04 */	lwz r4, 4(r28)
/* 8021240C 0020F34C  38 63 25 0C */	addi r3, r3, workPikis__Q24Game8GameStat@l
/* 80212410 0020F350  4B FB EF 59 */	bl inc__Q34Game8GameStat15PikiNaviCounterFPQ24Game4Piki
/* 80212414 0020F354  80 9D 00 04 */	lwz r4, 4(r29)
/* 80212418 0020F358  38 00 00 00 */	li r0, 0
/* 8021241C 0020F35C  7F 83 E3 78 */	mr r3, r28
/* 80212420 0020F360  90 9C 00 10 */	stw r4, 0x10(r28)
/* 80212424 0020F364  98 1C 00 30 */	stb r0, 0x30(r28)
/* 80212428 0020F368  48 00 00 25 */	bl initFollow__Q26PikiAI9ActBridgeFv
/* 8021242C 0020F36C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80212430 0020F370  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80212434 0020F374  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80212438 0020F378  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8021243C 0020F37C  83 81 00 10 */	lwz r28, 0x10(r1)
/* 80212440 0020F380  7C 08 03 A6 */	mtlr r0
/* 80212444 0020F384  38 21 00 20 */	addi r1, r1, 0x20
/* 80212448 0020F388  4E 80 00 20 */	blr 

.global initFollow__Q26PikiAI9ActBridgeFv
initFollow__Q26PikiAI9ActBridgeFv:
/* 8021244C 0020F38C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80212450 0020F390  7C 08 02 A6 */	mflr r0
/* 80212454 0020F394  90 01 00 24 */	stw r0, 0x24(r1)
/* 80212458 0020F398  38 81 00 08 */	addi r4, r1, 8
/* 8021245C 0020F39C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80212460 0020F3A0  7C 7F 1B 78 */	mr r31, r3
/* 80212464 0020F3A4  3C 60 80 4B */	lis r3, __vt__Q26PikiAI9ActionArg@ha
/* 80212468 0020F3A8  80 BF 00 10 */	lwz r5, 0x10(r31)
/* 8021246C 0020F3AC  38 03 05 30 */	addi r0, r3, __vt__Q26PikiAI9ActionArg@l
/* 80212470 0020F3B0  3C 60 80 4B */	lis r3, __vt__Q26PikiAI26FollowVectorFieldActionArg@ha
/* 80212474 0020F3B4  90 01 00 08 */	stw r0, 8(r1)
/* 80212478 0020F3B8  38 03 79 08 */	addi r0, r3, __vt__Q26PikiAI26FollowVectorFieldActionArg@l
/* 8021247C 0020F3BC  90 01 00 08 */	stw r0, 8(r1)
/* 80212480 0020F3C0  90 A1 00 0C */	stw r5, 0xc(r1)
/* 80212484 0020F3C4  80 7F 00 20 */	lwz r3, 0x20(r31)
/* 80212488 0020F3C8  81 83 00 00 */	lwz r12, 0(r3)
/* 8021248C 0020F3CC  81 8C 00 08 */	lwz r12, 8(r12)
/* 80212490 0020F3D0  7D 89 03 A6 */	mtctr r12
/* 80212494 0020F3D4  4E 80 04 21 */	bctrl 
/* 80212498 0020F3D8  38 00 00 01 */	li r0, 1
/* 8021249C 0020F3DC  B0 1F 00 14 */	sth r0, 0x14(r31)
/* 802124A0 0020F3E0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802124A4 0020F3E4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802124A8 0020F3E8  7C 08 03 A6 */	mtlr r0
/* 802124AC 0020F3EC  38 21 00 20 */	addi r1, r1, 0x20
/* 802124B0 0020F3F0  4E 80 00 20 */	blr 

.global exec__Q26PikiAI9ActBridgeFv
exec__Q26PikiAI9ActBridgeFv:
/* 802124B4 0020F3F4  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 802124B8 0020F3F8  7C 08 02 A6 */	mflr r0
/* 802124BC 0020F3FC  90 01 00 54 */	stw r0, 0x54(r1)
/* 802124C0 0020F400  93 E1 00 4C */	stw r31, 0x4c(r1)
/* 802124C4 0020F404  7C 7F 1B 78 */	mr r31, r3
/* 802124C8 0020F408  80 63 00 10 */	lwz r3, 0x10(r3)
/* 802124CC 0020F40C  81 83 00 00 */	lwz r12, 0(r3)
/* 802124D0 0020F410  81 8C 00 A8 */	lwz r12, 0xa8(r12)
/* 802124D4 0020F414  7D 89 03 A6 */	mtctr r12
/* 802124D8 0020F418  4E 80 04 21 */	bctrl 
/* 802124DC 0020F41C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 802124E0 0020F420  40 82 00 14 */	bne lbl_802124F4
/* 802124E4 0020F424  38 00 00 00 */	li r0, 0
/* 802124E8 0020F428  38 60 00 00 */	li r3, 0
/* 802124EC 0020F42C  98 1F 00 30 */	stb r0, 0x30(r31)
/* 802124F0 0020F430  48 00 02 CC */	b lbl_802127BC
lbl_802124F4:
/* 802124F4 0020F434  80 7F 00 04 */	lwz r3, 4(r31)
/* 802124F8 0020F438  81 83 00 00 */	lwz r12, 0(r3)
/* 802124FC 0020F43C  81 8C 00 8C */	lwz r12, 0x8c(r12)
/* 80212500 0020F440  7D 89 03 A6 */	mtctr r12
/* 80212504 0020F444  4E 80 04 21 */	bctrl 
/* 80212508 0020F448  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8021250C 0020F44C  41 82 00 0C */	b lbl_80212518
#/* 80212510 0020F450  38 60 00 02 */	li r3, 2
#/* 80212514 0020F454  48 00 02 A8 */	b lbl_802127BC
lbl_80212518:
/* 80212518 0020F458  A0 1F 00 14 */	lhz r0, 0x14(r31)
/* 8021251C 0020F45C  2C 00 00 01 */	cmpwi r0, 1
/* 80212520 0020F460  41 82 01 10 */	beq lbl_80212630
/* 80212524 0020F464  40 80 00 10 */	bge lbl_80212534
/* 80212528 0020F468  2C 00 00 00 */	cmpwi r0, 0
/* 8021252C 0020F46C  40 80 01 C4 */	bge lbl_802126F0
/* 80212530 0020F470  48 00 02 80 */	b lbl_802127B0
lbl_80212534:
/* 80212534 0020F474  2C 00 00 03 */	cmpwi r0, 3
/* 80212538 0020F478  40 80 02 78 */	bge lbl_802127B0
/* 8021253C 0020F47C  80 7F 00 20 */	lwz r3, 0x20(r31)
/* 80212540 0020F480  81 83 00 00 */	lwz r12, 0(r3)
/* 80212544 0020F484  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 80212548 0020F488  7D 89 03 A6 */	mtctr r12
/* 8021254C 0020F48C  4E 80 04 21 */	bctrl 
/* 80212550 0020F490  7C 03 00 D0 */	neg r0, r3
/* 80212554 0020F494  7C 00 1B 78 */	or r0, r0, r3
/* 80212558 0020F498  54 00 0F FF */	rlwinm. r0, r0, 1, 0x1f, 0x1f
/* 8021255C 0020F49C  40 82 00 0C */	bne lbl_80212568
/* 80212560 0020F4A0  38 60 00 00 */	li r3, 0
/* 80212564 0020F4A4  48 00 02 58 */	b lbl_802127BC
lbl_80212568:
/* 80212568 0020F4A8  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 8021256C 0020F4AC  81 83 00 00 */	lwz r12, 0(r3)
/* 80212570 0020F4B0  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 80212574 0020F4B4  7D 89 03 A6 */	mtctr r12
/* 80212578 0020F4B8  4E 80 04 21 */	bctrl 
/* 8021257C 0020F4BC  2C 03 00 00 */	cmpwi r3, 0
/* 80212580 0020F4C0  41 82 00 0C */	beq lbl_8021258C
/* 80212584 0020F4C4  2C 03 00 02 */	cmpwi r3, 2
/* 80212588 0020F4C8  40 82 00 9C */	bne lbl_80212624
lbl_8021258C:
/* 8021258C 0020F4CC  80 7F 00 04 */	lwz r3, 4(r31)
/* 80212590 0020F4D0  4B F3 6F 5D */	bl getAttackDamage__Q24Game4PikiFv
/* 80212594 0020F4D4  80 BF 00 10 */	lwz r5, 0x10(r31)
/* 80212598 0020F4D8  3C 60 80 4B */	lis r3, __vt__Q26PikiAI9ActionArg@ha
/* 8021259C 0020F4DC  38 03 05 30 */	addi r0, r3, __vt__Q26PikiAI9ActionArg@l
/* 802125A0 0020F4E0  3C 60 80 4B */	lis r3, __vt__Q26PikiAI20StickAttackActionArg@ha
/* 802125A4 0020F4E4  90 01 00 30 */	stw r0, 0x30(r1)
/* 802125A8 0020F4E8  38 83 4E A4 */	addi r4, r3, __vt__Q26PikiAI20StickAttackActionArg@l
/* 802125AC 0020F4EC  38 00 00 04 */	li r0, 4
/* 802125B0 0020F4F0  38 60 FF FF */	li r3, -1
/* 802125B4 0020F4F4  90 81 00 30 */	stw r4, 0x30(r1)
/* 802125B8 0020F4F8  38 80 00 00 */	li r4, 0
/* 802125BC 0020F4FC  D0 21 00 34 */	stfs f1, 0x34(r1)
/* 802125C0 0020F500  90 A1 00 38 */	stw r5, 0x38(r1)
/* 802125C4 0020F504  90 61 00 3C */	stw r3, 0x3c(r1)
/* 802125C8 0020F508  98 01 00 40 */	stb r0, 0x40(r1)
/* 802125CC 0020F50C  88 1F 00 30 */	lbz r0, 0x30(r31)
/* 802125D0 0020F510  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 802125D4 0020F514  41 82 00 1C */	beq lbl_802125F0
/* 802125D8 0020F518  80 7F 00 04 */	lwz r3, 4(r31)
/* 802125DC 0020F51C  C0 02 BC 00 */	lfs f0, lbl_80519F60@sda21(r2)
/* 802125E0 0020F520  C0 23 00 D0 */	lfs f1, 0xd0(r3)
/* 802125E4 0020F524  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 802125E8 0020F528  40 81 00 08 */	ble lbl_802125F0
/* 802125EC 0020F52C  38 80 00 01 */	li r4, 1
lbl_802125F0:
/* 802125F0 0020F530  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 802125F4 0020F534  41 82 00 0C */	beq lbl_80212600
/* 802125F8 0020F538  38 00 00 19 */	li r0, 0x19
/* 802125FC 0020F53C  90 01 00 3C */	stw r0, 0x3c(r1)
lbl_80212600:
/* 80212600 0020F540  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 80212604 0020F544  38 81 00 30 */	addi r4, r1, 0x30
/* 80212608 0020F548  81 83 00 00 */	lwz r12, 0(r3)
/* 8021260C 0020F54C  81 8C 00 08 */	lwz r12, 8(r12)
/* 80212610 0020F550  7D 89 03 A6 */	mtctr r12
/* 80212614 0020F554  4E 80 04 21 */	bctrl 
/* 80212618 0020F558  38 00 00 02 */	li r0, 2
/* 8021261C 0020F55C  B0 1F 00 14 */	sth r0, 0x14(r31)
/* 80212620 0020F560  48 00 01 90 */	b lbl_802127B0
lbl_80212624:
/* 80212624 0020F564  38 00 00 00 */	li r0, 0
/* 80212628 0020F568  98 1F 00 30 */	stb r0, 0x30(r31)
/* 8021262C 0020F56C  48 00 01 90 */	b lbl_802127BC
lbl_80212630:
/* 80212630 0020F570  80 7F 00 20 */	lwz r3, 0x20(r31)
/* 80212634 0020F574  81 83 00 00 */	lwz r12, 0(r3)
/* 80212638 0020F578  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 8021263C 0020F57C  7D 89 03 A6 */	mtctr r12
/* 80212640 0020F580  4E 80 04 21 */	bctrl 
/* 80212644 0020F584  2C 03 00 00 */	cmpwi r3, 0
/* 80212648 0020F588  40 82 00 9C */	bne lbl_802126E4
/* 8021264C 0020F58C  80 7F 00 04 */	lwz r3, 4(r31)
/* 80212650 0020F590  4B F3 6E 9D */	bl getAttackDamage__Q24Game4PikiFv
/* 80212654 0020F594  80 BF 00 10 */	lwz r5, 0x10(r31)
/* 80212658 0020F598  3C 60 80 4B */	lis r3, __vt__Q26PikiAI9ActionArg@ha
/* 8021265C 0020F59C  38 03 05 30 */	addi r0, r3, __vt__Q26PikiAI9ActionArg@l
/* 80212660 0020F5A0  3C 60 80 4B */	lis r3, __vt__Q26PikiAI20StickAttackActionArg@ha
/* 80212664 0020F5A4  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80212668 0020F5A8  38 83 4E A4 */	addi r4, r3, __vt__Q26PikiAI20StickAttackActionArg@l
/* 8021266C 0020F5AC  38 00 00 04 */	li r0, 4
/* 80212670 0020F5B0  38 60 FF FF */	li r3, -1
/* 80212674 0020F5B4  90 81 00 1C */	stw r4, 0x1c(r1)
/* 80212678 0020F5B8  38 80 00 00 */	li r4, 0
/* 8021267C 0020F5BC  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 80212680 0020F5C0  90 A1 00 24 */	stw r5, 0x24(r1)
/* 80212684 0020F5C4  90 61 00 28 */	stw r3, 0x28(r1)
/* 80212688 0020F5C8  98 01 00 2C */	stb r0, 0x2c(r1)
/* 8021268C 0020F5CC  88 1F 00 30 */	lbz r0, 0x30(r31)
/* 80212690 0020F5D0  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80212694 0020F5D4  41 82 00 1C */	beq lbl_802126B0
/* 80212698 0020F5D8  80 7F 00 04 */	lwz r3, 4(r31)
/* 8021269C 0020F5DC  C0 02 BC 00 */	lfs f0, lbl_80519F60@sda21(r2)
/* 802126A0 0020F5E0  C0 23 00 D0 */	lfs f1, 0xd0(r3)
/* 802126A4 0020F5E4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 802126A8 0020F5E8  40 81 00 08 */	ble lbl_802126B0
/* 802126AC 0020F5EC  38 80 00 01 */	li r4, 1
lbl_802126B0:
/* 802126B0 0020F5F0  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 802126B4 0020F5F4  41 82 00 0C */	beq lbl_802126C0
/* 802126B8 0020F5F8  38 00 00 19 */	li r0, 0x19
/* 802126BC 0020F5FC  90 01 00 28 */	stw r0, 0x28(r1)
lbl_802126C0:
/* 802126C0 0020F600  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 802126C4 0020F604  38 81 00 1C */	addi r4, r1, 0x1c
/* 802126C8 0020F608  81 83 00 00 */	lwz r12, 0(r3)
/* 802126CC 0020F60C  81 8C 00 08 */	lwz r12, 8(r12)
/* 802126D0 0020F610  7D 89 03 A6 */	mtctr r12
/* 802126D4 0020F614  4E 80 04 21 */	bctrl 
/* 802126D8 0020F618  38 00 00 02 */	li r0, 2
/* 802126DC 0020F61C  B0 1F 00 14 */	sth r0, 0x14(r31)
/* 802126E0 0020F620  48 00 00 D0 */	b lbl_802127B0
lbl_802126E4:
/* 802126E4 0020F624  38 00 00 00 */	li r0, 0
/* 802126E8 0020F628  98 1F 00 30 */	stb r0, 0x30(r31)
/* 802126EC 0020F62C  48 00 00 D0 */	b lbl_802127BC
lbl_802126F0:
/* 802126F0 0020F630  80 7F 00 1C */	lwz r3, 0x1c(r31)
/* 802126F4 0020F634  81 83 00 00 */	lwz r12, 0(r3)
/* 802126F8 0020F638  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 802126FC 0020F63C  7D 89 03 A6 */	mtctr r12
/* 80212700 0020F640  4E 80 04 21 */	bctrl 
/* 80212704 0020F644  2C 03 00 00 */	cmpwi r3, 0
/* 80212708 0020F648  40 82 00 9C */	bne lbl_802127A4
/* 8021270C 0020F64C  80 7F 00 04 */	lwz r3, 4(r31)
/* 80212710 0020F650  4B F3 6D DD */	bl getAttackDamage__Q24Game4PikiFv
/* 80212714 0020F654  80 BF 00 10 */	lwz r5, 0x10(r31)
/* 80212718 0020F658  3C 60 80 4B */	lis r3, __vt__Q26PikiAI9ActionArg@ha
/* 8021271C 0020F65C  38 03 05 30 */	addi r0, r3, __vt__Q26PikiAI9ActionArg@l
/* 80212720 0020F660  3C 60 80 4B */	lis r3, __vt__Q26PikiAI20StickAttackActionArg@ha
/* 80212724 0020F664  90 01 00 08 */	stw r0, 8(r1)
/* 80212728 0020F668  38 83 4E A4 */	addi r4, r3, __vt__Q26PikiAI20StickAttackActionArg@l
/* 8021272C 0020F66C  38 00 00 04 */	li r0, 4
/* 80212730 0020F670  38 60 FF FF */	li r3, -1
/* 80212734 0020F674  90 81 00 08 */	stw r4, 8(r1)
/* 80212738 0020F678  38 80 00 00 */	li r4, 0
/* 8021273C 0020F67C  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80212740 0020F680  90 A1 00 10 */	stw r5, 0x10(r1)
/* 80212744 0020F684  90 61 00 14 */	stw r3, 0x14(r1)
/* 80212748 0020F688  98 01 00 18 */	stb r0, 0x18(r1)
/* 8021274C 0020F68C  88 1F 00 30 */	lbz r0, 0x30(r31)
/* 80212750 0020F690  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80212754 0020F694  41 82 00 1C */	beq lbl_80212770
/* 80212758 0020F698  80 7F 00 04 */	lwz r3, 4(r31)
/* 8021275C 0020F69C  C0 02 BC 00 */	lfs f0, lbl_80519F60@sda21(r2)
/* 80212760 0020F6A0  C0 23 00 D0 */	lfs f1, 0xd0(r3)
/* 80212764 0020F6A4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80212768 0020F6A8  40 81 00 08 */	ble lbl_80212770
/* 8021276C 0020F6AC  38 80 00 01 */	li r4, 1
lbl_80212770:
/* 80212770 0020F6B0  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 80212774 0020F6B4  41 82 00 0C */	beq lbl_80212780
/* 80212778 0020F6B8  38 00 00 19 */	li r0, 0x19
/* 8021277C 0020F6BC  90 01 00 14 */	stw r0, 0x14(r1)
lbl_80212780:
/* 80212780 0020F6C0  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 80212784 0020F6C4  38 81 00 08 */	addi r4, r1, 8
/* 80212788 0020F6C8  81 83 00 00 */	lwz r12, 0(r3)
/* 8021278C 0020F6CC  81 8C 00 08 */	lwz r12, 8(r12)
/* 80212790 0020F6D0  7D 89 03 A6 */	mtctr r12
/* 80212794 0020F6D4  4E 80 04 21 */	bctrl 
/* 80212798 0020F6D8  38 00 00 02 */	li r0, 2
/* 8021279C 0020F6DC  B0 1F 00 14 */	sth r0, 0x14(r31)
/* 802127A0 0020F6E0  48 00 00 10 */	b lbl_802127B0
lbl_802127A4:
/* 802127A4 0020F6E4  38 00 00 00 */	li r0, 0
/* 802127A8 0020F6E8  98 1F 00 30 */	stb r0, 0x30(r31)
/* 802127AC 0020F6EC  48 00 00 10 */	b lbl_802127BC
lbl_802127B0:
/* 802127B0 0020F6F0  38 00 00 00 */	li r0, 0
/* 802127B4 0020F6F4  38 60 00 01 */	li r3, 1
/* 802127B8 0020F6F8  98 1F 00 30 */	stb r0, 0x30(r31)
lbl_802127BC:
/* 802127BC 0020F6FC  80 01 00 54 */	lwz r0, 0x54(r1)
/* 802127C0 0020F700  83 E1 00 4C */	lwz r31, 0x4c(r1)
/* 802127C4 0020F704  7C 08 03 A6 */	mtlr r0
/* 802127C8 0020F708  38 21 00 50 */	addi r1, r1, 0x50
/* 802127CC 0020F70C  4E 80 00 20 */	blr 

.global cleanup__Q26PikiAI9ActBridgeFv
cleanup__Q26PikiAI9ActBridgeFv:
/* 802127D0 0020F710  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802127D4 0020F714  7C 08 02 A6 */	mflr r0
/* 802127D8 0020F718  90 01 00 14 */	stw r0, 0x14(r1)
/* 802127DC 0020F71C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802127E0 0020F720  7C 7F 1B 78 */	mr r31, r3
/* 802127E4 0020F724  3C 60 80 51 */	lis r3, workPikis__Q24Game8GameStat@ha
/* 802127E8 0020F728  80 9F 00 04 */	lwz r4, 4(r31)
/* 802127EC 0020F72C  38 63 25 0C */	addi r3, r3, workPikis__Q24Game8GameStat@l
/* 802127F0 0020F730  4B FB EC 25 */	bl dec__Q34Game8GameStat15PikiNaviCounterFPQ24Game4Piki
/* 802127F4 0020F734  A0 1F 00 14 */	lhz r0, 0x14(r31)
/* 802127F8 0020F738  2C 00 00 02 */	cmpwi r0, 2
/* 802127FC 0020F73C  41 82 00 08 */	beq lbl_80212804
/* 80212800 0020F740  48 00 00 18 */	b lbl_80212818
lbl_80212804:
/* 80212804 0020F744  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 80212808 0020F748  81 83 00 00 */	lwz r12, 0(r3)
/* 8021280C 0020F74C  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 80212810 0020F750  7D 89 03 A6 */	mtctr r12
/* 80212814 0020F754  4E 80 04 21 */	bctrl 
lbl_80212818:
/* 80212818 0020F758  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8021281C 0020F75C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80212820 0020F760  7C 08 03 A6 */	mtlr r0
/* 80212824 0020F764  38 21 00 10 */	addi r1, r1, 0x10
/* 80212828 0020F768  4E 80 00 20 */	blr 

.global platCallback__Q26PikiAI9ActBridgeFPQ24Game4PikiRQ24Game9PlatEvent
platCallback__Q26PikiAI9ActBridgeFPQ24Game4PikiRQ24Game9PlatEvent:
/* 8021282C 0020F76C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80212830 0020F770  7C 08 02 A6 */	mflr r0
/* 80212834 0020F774  90 01 00 34 */	stw r0, 0x34(r1)
/* 80212838 0020F778  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8021283C 0020F77C  7C 7F 1B 78 */	mr r31, r3
/* 80212840 0020F780  80 65 00 10 */	lwz r3, 0x10(r5)
/* 80212844 0020F784  80 1F 00 10 */	lwz r0, 0x10(r31)
/* 80212848 0020F788  80 85 00 00 */	lwz r4, 0(r5)
/* 8021284C 0020F78C  7C 03 00 40 */	cmplw r3, r0
/* 80212850 0020F790  40 82 00 38 */	bne lbl_80212888
/* 80212854 0020F794  80 64 01 00 */	lwz r3, 0x100(r4)
/* 80212858 0020F798  3C 03 9D 8E */	subis r0, r3, 0x6272
/* 8021285C 0020F79C  28 00 62 6B */	cmplwi r0, 0x626b
/* 80212860 0020F7A0  40 82 00 14 */	bne lbl_80212874
/* 80212864 0020F7A4  88 1F 00 30 */	lbz r0, 0x30(r31)
/* 80212868 0020F7A8  60 00 00 01 */	ori r0, r0, 1
/* 8021286C 0020F7AC  98 1F 00 30 */	stb r0, 0x30(r31)
/* 80212870 0020F7B0  48 00 00 18 */	b lbl_80212888
lbl_80212874:
/* 80212874 0020F7B4  28 00 5F 5F */	cmplwi r0, 0x5f5f
/* 80212878 0020F7B8  40 82 00 10 */	bne lbl_80212888
/* 8021287C 0020F7BC  88 1F 00 30 */	lbz r0, 0x30(r31)
/* 80212880 0020F7C0  60 00 00 02 */	ori r0, r0, 2
/* 80212884 0020F7C4  98 1F 00 30 */	stb r0, 0x30(r31)
lbl_80212888:
/* 80212888 0020F7C8  A0 1F 00 14 */	lhz r0, 0x14(r31)
/* 8021288C 0020F7CC  28 00 00 01 */	cmplwi r0, 1
/* 80212890 0020F7D0  40 82 00 98 */	bne lbl_80212928
/* 80212894 0020F7D4  80 7F 00 04 */	lwz r3, 4(r31)
/* 80212898 0020F7D8  4B F3 6C 55 */	bl getAttackDamage__Q24Game4PikiFv
/* 8021289C 0020F7DC  80 BF 00 10 */	lwz r5, 0x10(r31)
/* 802128A0 0020F7E0  3C 60 80 4B */	lis r3, __vt__Q26PikiAI9ActionArg@ha
/* 802128A4 0020F7E4  38 03 05 30 */	addi r0, r3, __vt__Q26PikiAI9ActionArg@l
/* 802128A8 0020F7E8  3C 60 80 4B */	lis r3, __vt__Q26PikiAI20StickAttackActionArg@ha
/* 802128AC 0020F7EC  90 01 00 08 */	stw r0, 8(r1)
/* 802128B0 0020F7F0  38 83 4E A4 */	addi r4, r3, __vt__Q26PikiAI20StickAttackActionArg@l
/* 802128B4 0020F7F4  38 00 00 04 */	li r0, 4
/* 802128B8 0020F7F8  38 60 FF FF */	li r3, -1
/* 802128BC 0020F7FC  90 81 00 08 */	stw r4, 8(r1)
/* 802128C0 0020F800  38 80 00 00 */	li r4, 0
/* 802128C4 0020F804  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 802128C8 0020F808  90 A1 00 10 */	stw r5, 0x10(r1)
/* 802128CC 0020F80C  90 61 00 14 */	stw r3, 0x14(r1)
/* 802128D0 0020F810  98 01 00 18 */	stb r0, 0x18(r1)
/* 802128D4 0020F814  88 1F 00 30 */	lbz r0, 0x30(r31)
/* 802128D8 0020F818  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 802128DC 0020F81C  41 82 00 1C */	beq lbl_802128F8
/* 802128E0 0020F820  80 7F 00 04 */	lwz r3, 4(r31)
/* 802128E4 0020F824  C0 02 BC 00 */	lfs f0, lbl_80519F60@sda21(r2)
/* 802128E8 0020F828  C0 23 00 D0 */	lfs f1, 0xd0(r3)
/* 802128EC 0020F82C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 802128F0 0020F830  40 81 00 08 */	ble lbl_802128F8
/* 802128F4 0020F834  38 80 00 01 */	li r4, 1
lbl_802128F8:
/* 802128F8 0020F838  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 802128FC 0020F83C  41 82 00 0C */	beq lbl_80212908
/* 80212900 0020F840  38 00 00 19 */	li r0, 0x19
/* 80212904 0020F844  90 01 00 14 */	stw r0, 0x14(r1)
lbl_80212908:
/* 80212908 0020F848  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 8021290C 0020F84C  38 81 00 08 */	addi r4, r1, 8
/* 80212910 0020F850  81 83 00 00 */	lwz r12, 0(r3)
/* 80212914 0020F854  81 8C 00 08 */	lwz r12, 8(r12)
/* 80212918 0020F858  7D 89 03 A6 */	mtctr r12
/* 8021291C 0020F85C  4E 80 04 21 */	bctrl 
/* 80212920 0020F860  38 00 00 02 */	li r0, 2
/* 80212924 0020F864  B0 1F 00 14 */	sth r0, 0x14(r31)
lbl_80212928:
/* 80212928 0020F868  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8021292C 0020F86C  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80212930 0020F870  7C 08 03 A6 */	mtlr r0
/* 80212934 0020F874  38 21 00 30 */	addi r1, r1, 0x30
/* 80212938 0020F878  4E 80 00 20 */	blr 

.global collisionCallback__Q26PikiAI9ActBridgeFPQ24Game4PikiRQ24Game9CollEvent
collisionCallback__Q26PikiAI9ActBridgeFPQ24Game4PikiRQ24Game9CollEvent:
/* 8021293C 0020F87C  4E 80 00 20 */	blr 

.global bounceCallback__Q26PikiAI9ActBridgeFPQ24Game4PikiPQ23Sys8Triangle
bounceCallback__Q26PikiAI9ActBridgeFPQ24Game4PikiPQ23Sys8Triangle:
/* 80212940 0020F880  4E 80 00 20 */	blr 

.global onKeyEvent__Q26PikiAI9ActBridgeFRCQ28SysShape8KeyEvent
onKeyEvent__Q26PikiAI9ActBridgeFRCQ28SysShape8KeyEvent:
/* 80212944 0020F884  4E 80 00 20 */	blr 

"@52@4@onKeyEvent__Q26PikiAI9ActBridgeFRCQ28SysShape8KeyEvent":
/* 80212948 0020F888  39 60 00 04 */	li r11, 4
/* 8021294C 0020F88C  7D 63 58 2E */	lwzx r11, r3, r11
/* 80212950 0020F890  7C 63 5A 14 */	add r3, r3, r11
/* 80212954 0020F894  38 63 FF CC */	addi r3, r3, -52
/* 80212958 0020F898  4B FF FF EC */	b onKeyEvent__Q26PikiAI9ActBridgeFRCQ28SysShape8KeyEvent
