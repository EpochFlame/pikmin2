.include "macros.inc"

.section .text, "ax"  # 0x800056C0 - 0x80472F00
.global init__Q27JAInter7HeapMgrFUcUlUcUl
init__Q27JAInter7HeapMgrFUcUlUcUl:
/* 800B0340 000AD280  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 800B0344 000AD284  7C 08 02 A6 */	mflr r0
/* 800B0348 000AD288  90 01 00 34 */	stw r0, 0x34(r1)
/* 800B034C 000AD28C  BF 01 00 10 */	stmw r24, 0x10(r1)
/* 800B0350 000AD290  54 BC 06 3E */	clrlwi r28, r5, 0x18
/* 800B0354 000AD294  7C 9F 23 78 */	mr r31, r4
/* 800B0358 000AD298  7C B9 2B 78 */	mr r25, r5
/* 800B035C 000AD29C  1C FC 00 14 */	mulli r7, r28, 0x14
/* 800B0360 000AD2A0  7C 7E 1B 78 */	mr r30, r3
/* 800B0364 000AD2A4  7C D8 33 78 */	mr r24, r6
/* 800B0368 000AD2A8  38 A0 00 20 */	li r5, 0x20
/* 800B036C 000AD2AC  38 67 00 10 */	addi r3, r7, 0x10
/* 800B0370 000AD2B0  80 8D 8B 6C */	lwz r4, msCurrentHeap__8JAIBasic@sda21(r13)
/* 800B0374 000AD2B4  4B F7 3C D5 */	bl __nwa__FUlP7JKRHeapi
/* 800B0378 000AD2B8  3C 80 80 0B */	lis r4, __ct__Q27JAInter9HeapBlockFv@ha
/* 800B037C 000AD2BC  7F 87 E3 78 */	mr r7, r28
/* 800B0380 000AD2C0  38 84 09 2C */	addi r4, r4, __ct__Q27JAInter9HeapBlockFv@l
/* 800B0384 000AD2C4  38 A0 00 00 */	li r5, 0
/* 800B0388 000AD2C8  38 C0 00 14 */	li r6, 0x14
/* 800B038C 000AD2CC  48 01 16 65 */	bl __construct_new_array
/* 800B0390 000AD2D0  3B 60 00 00 */	li r27, 0
/* 800B0394 000AD2D4  90 6D 8B F8 */	stw r3, sAutoHeap__Q27JAInter7HeapMgr@sda21(r13)
/* 800B0398 000AD2D8  7F 1A C3 78 */	mr r26, r24
/* 800B039C 000AD2DC  57 39 06 3E */	clrlwi r25, r25, 0x18
/* 800B03A0 000AD2E0  7F 7C DB 78 */	mr r28, r27
/* 800B03A4 000AD2E4  3B 00 00 00 */	li r24, 0
/* 800B03A8 000AD2E8  3B A0 FF FF */	li r29, -1
/* 800B03AC 000AD2EC  48 00 00 54 */	b lbl_800B0400
lbl_800B03B0:
/* 800B03B0 000AD2F0  80 6D 8B F8 */	lwz r3, sAutoHeap__Q27JAInter7HeapMgr@sda21(r13)
/* 800B03B4 000AD2F4  38 DB 00 0C */	addi r6, r27, 0xc
/* 800B03B8 000AD2F8  38 9B 00 08 */	addi r4, r27, 8
/* 800B03BC 000AD2FC  38 1B 00 10 */	addi r0, r27, 0x10
/* 800B03C0 000AD300  7F 83 D9 AE */	stbx r28, r3, r27
/* 800B03C4 000AD304  7F 43 D3 78 */	mr r3, r26
/* 800B03C8 000AD308  38 A0 00 20 */	li r5, 0x20
/* 800B03CC 000AD30C  80 ED 8B F8 */	lwz r7, sAutoHeap__Q27JAInter7HeapMgr@sda21(r13)
/* 800B03D0 000AD310  7F 87 31 2E */	stwx r28, r7, r6
/* 800B03D4 000AD314  80 CD 8B F8 */	lwz r6, sAutoHeap__Q27JAInter7HeapMgr@sda21(r13)
/* 800B03D8 000AD318  7F A6 21 2E */	stwx r29, r6, r4
/* 800B03DC 000AD31C  80 8D 8B F8 */	lwz r4, sAutoHeap__Q27JAInter7HeapMgr@sda21(r13)
/* 800B03E0 000AD320  7F A4 01 2E */	stwx r29, r4, r0
/* 800B03E4 000AD324  80 8D 8B 6C */	lwz r4, msCurrentHeap__8JAIBasic@sda21(r13)
/* 800B03E8 000AD328  4B F7 3C 61 */	bl __nwa__FUlP7JKRHeapi
/* 800B03EC 000AD32C  80 8D 8B F8 */	lwz r4, sAutoHeap__Q27JAInter7HeapMgr@sda21(r13)
/* 800B03F0 000AD330  38 1B 00 04 */	addi r0, r27, 4
/* 800B03F4 000AD334  3B 7B 00 14 */	addi r27, r27, 0x14
/* 800B03F8 000AD338  3B 18 00 01 */	addi r24, r24, 1
/* 800B03FC 000AD33C  7C 64 01 2E */	stwx r3, r4, r0
lbl_800B0400:
/* 800B0400 000AD340  7C 18 C8 40 */	cmplw r24, r25
/* 800B0404 000AD344  41 80 FF AC */	blt lbl_800B03B0
/* 800B0408 000AD348  57 DC 06 3E */	clrlwi r28, r30, 0x18
/* 800B040C 000AD34C  80 8D 8B 6C */	lwz r4, msCurrentHeap__8JAIBasic@sda21(r13)
/* 800B0410 000AD350  1C 7C 00 14 */	mulli r3, r28, 0x14
/* 800B0414 000AD354  38 A0 00 20 */	li r5, 0x20
/* 800B0418 000AD358  38 63 00 10 */	addi r3, r3, 0x10
/* 800B041C 000AD35C  4B F7 3C 2D */	bl __nwa__FUlP7JKRHeapi
/* 800B0420 000AD360  3C 80 80 0B */	lis r4, __ct__Q27JAInter9HeapBlockFv@ha
/* 800B0424 000AD364  7F 87 E3 78 */	mr r7, r28
/* 800B0428 000AD368  38 84 09 2C */	addi r4, r4, __ct__Q27JAInter9HeapBlockFv@l
/* 800B042C 000AD36C  38 A0 00 00 */	li r5, 0
/* 800B0430 000AD370  38 C0 00 14 */	li r6, 0x14
/* 800B0434 000AD374  48 01 15 BD */	bl __construct_new_array
/* 800B0438 000AD378  90 6D 8B FC */	stw r3, sStayHeap__Q27JAInter7HeapMgr@sda21(r13)
/* 800B043C 000AD37C  7F E3 FB 78 */	mr r3, r31
/* 800B0440 000AD380  80 8D 8B 6C */	lwz r4, msCurrentHeap__8JAIBasic@sda21(r13)
/* 800B0444 000AD384  38 A0 00 20 */	li r5, 0x20
/* 800B0448 000AD388  4B F7 3C 01 */	bl __nwa__FUlP7JKRHeapi
/* 800B044C 000AD38C  7F 8A E3 78 */	mr r10, r28
/* 800B0450 000AD390  80 8D 8B FC */	lwz r4, sStayHeap__Q27JAInter7HeapMgr@sda21(r13)
/* 800B0454 000AD394  28 0A 00 00 */	cmplwi r10, 0
/* 800B0458 000AD398  39 20 00 00 */	li r9, 0
/* 800B045C 000AD39C  90 64 00 04 */	stw r3, 4(r4)
/* 800B0460 000AD3A0  7D 28 4B 78 */	mr r8, r9
/* 800B0464 000AD3A4  7D 27 4B 78 */	mr r7, r9
/* 800B0468 000AD3A8  38 A0 FF FF */	li r5, -1
/* 800B046C 000AD3AC  40 81 01 14 */	ble lbl_800B0580
/* 800B0470 000AD3B0  55 40 F0 BF */	rlwinm. r0, r10, 0x1e, 2, 0x1f
/* 800B0474 000AD3B4  7C 09 03 A6 */	mtctr r0
/* 800B0478 000AD3B8  41 82 00 D0 */	beq lbl_800B0548
lbl_800B047C:
/* 800B047C 000AD3BC  80 6D 8B FC */	lwz r3, sStayHeap__Q27JAInter7HeapMgr@sda21(r13)
/* 800B0480 000AD3C0  38 C9 00 0C */	addi r6, r9, 0xc
/* 800B0484 000AD3C4  38 89 00 08 */	addi r4, r9, 8
/* 800B0488 000AD3C8  38 09 00 10 */	addi r0, r9, 0x10
/* 800B048C 000AD3CC  7D 03 49 AE */	stbx r8, r3, r9
/* 800B0490 000AD3D0  80 6D 8B FC */	lwz r3, sStayHeap__Q27JAInter7HeapMgr@sda21(r13)
/* 800B0494 000AD3D4  7C E3 31 2E */	stwx r7, r3, r6
/* 800B0498 000AD3D8  38 C9 00 20 */	addi r6, r9, 0x20
/* 800B049C 000AD3DC  80 6D 8B FC */	lwz r3, sStayHeap__Q27JAInter7HeapMgr@sda21(r13)
/* 800B04A0 000AD3E0  7C A3 21 2E */	stwx r5, r3, r4
/* 800B04A4 000AD3E4  38 89 00 1C */	addi r4, r9, 0x1c
/* 800B04A8 000AD3E8  80 6D 8B FC */	lwz r3, sStayHeap__Q27JAInter7HeapMgr@sda21(r13)
/* 800B04AC 000AD3EC  7C A3 01 2E */	stwx r5, r3, r0
/* 800B04B0 000AD3F0  38 09 00 24 */	addi r0, r9, 0x24
/* 800B04B4 000AD3F4  39 29 00 14 */	addi r9, r9, 0x14
/* 800B04B8 000AD3F8  80 6D 8B FC */	lwz r3, sStayHeap__Q27JAInter7HeapMgr@sda21(r13)
/* 800B04BC 000AD3FC  7D 03 49 AE */	stbx r8, r3, r9
/* 800B04C0 000AD400  80 6D 8B FC */	lwz r3, sStayHeap__Q27JAInter7HeapMgr@sda21(r13)
/* 800B04C4 000AD404  7C E3 31 2E */	stwx r7, r3, r6
/* 800B04C8 000AD408  38 C9 00 20 */	addi r6, r9, 0x20
/* 800B04CC 000AD40C  80 6D 8B FC */	lwz r3, sStayHeap__Q27JAInter7HeapMgr@sda21(r13)
/* 800B04D0 000AD410  7C A3 21 2E */	stwx r5, r3, r4
/* 800B04D4 000AD414  38 89 00 1C */	addi r4, r9, 0x1c
/* 800B04D8 000AD418  80 6D 8B FC */	lwz r3, sStayHeap__Q27JAInter7HeapMgr@sda21(r13)
/* 800B04DC 000AD41C  7C A3 01 2E */	stwx r5, r3, r0
/* 800B04E0 000AD420  38 09 00 24 */	addi r0, r9, 0x24
/* 800B04E4 000AD424  39 29 00 14 */	addi r9, r9, 0x14
/* 800B04E8 000AD428  80 6D 8B FC */	lwz r3, sStayHeap__Q27JAInter7HeapMgr@sda21(r13)
/* 800B04EC 000AD42C  7D 03 49 AE */	stbx r8, r3, r9
/* 800B04F0 000AD430  80 6D 8B FC */	lwz r3, sStayHeap__Q27JAInter7HeapMgr@sda21(r13)
/* 800B04F4 000AD434  7C E3 31 2E */	stwx r7, r3, r6
/* 800B04F8 000AD438  38 C9 00 20 */	addi r6, r9, 0x20
/* 800B04FC 000AD43C  80 6D 8B FC */	lwz r3, sStayHeap__Q27JAInter7HeapMgr@sda21(r13)
/* 800B0500 000AD440  7C A3 21 2E */	stwx r5, r3, r4
/* 800B0504 000AD444  38 89 00 1C */	addi r4, r9, 0x1c
/* 800B0508 000AD448  80 6D 8B FC */	lwz r3, sStayHeap__Q27JAInter7HeapMgr@sda21(r13)
/* 800B050C 000AD44C  7C A3 01 2E */	stwx r5, r3, r0
/* 800B0510 000AD450  38 09 00 24 */	addi r0, r9, 0x24
/* 800B0514 000AD454  39 29 00 14 */	addi r9, r9, 0x14
/* 800B0518 000AD458  80 6D 8B FC */	lwz r3, sStayHeap__Q27JAInter7HeapMgr@sda21(r13)
/* 800B051C 000AD45C  7D 03 49 AE */	stbx r8, r3, r9
/* 800B0520 000AD460  39 29 00 14 */	addi r9, r9, 0x14
/* 800B0524 000AD464  80 6D 8B FC */	lwz r3, sStayHeap__Q27JAInter7HeapMgr@sda21(r13)
/* 800B0528 000AD468  7C E3 31 2E */	stwx r7, r3, r6
/* 800B052C 000AD46C  80 6D 8B FC */	lwz r3, sStayHeap__Q27JAInter7HeapMgr@sda21(r13)
/* 800B0530 000AD470  7C A3 21 2E */	stwx r5, r3, r4
/* 800B0534 000AD474  80 6D 8B FC */	lwz r3, sStayHeap__Q27JAInter7HeapMgr@sda21(r13)
/* 800B0538 000AD478  7C A3 01 2E */	stwx r5, r3, r0
/* 800B053C 000AD47C  42 00 FF 40 */	bdnz lbl_800B047C
/* 800B0540 000AD480  71 4A 00 03 */	andi. r10, r10, 3
/* 800B0544 000AD484  41 82 00 3C */	beq lbl_800B0580
lbl_800B0548:
/* 800B0548 000AD488  7D 49 03 A6 */	mtctr r10
lbl_800B054C:
/* 800B054C 000AD48C  80 6D 8B FC */	lwz r3, sStayHeap__Q27JAInter7HeapMgr@sda21(r13)
/* 800B0550 000AD490  38 C9 00 0C */	addi r6, r9, 0xc
/* 800B0554 000AD494  38 89 00 08 */	addi r4, r9, 8
/* 800B0558 000AD498  38 09 00 10 */	addi r0, r9, 0x10
/* 800B055C 000AD49C  7D 03 49 AE */	stbx r8, r3, r9
/* 800B0560 000AD4A0  39 29 00 14 */	addi r9, r9, 0x14
/* 800B0564 000AD4A4  80 6D 8B FC */	lwz r3, sStayHeap__Q27JAInter7HeapMgr@sda21(r13)
/* 800B0568 000AD4A8  7C E3 31 2E */	stwx r7, r3, r6
/* 800B056C 000AD4AC  80 6D 8B FC */	lwz r3, sStayHeap__Q27JAInter7HeapMgr@sda21(r13)
/* 800B0570 000AD4B0  7C A3 21 2E */	stwx r5, r3, r4
/* 800B0574 000AD4B4  80 6D 8B FC */	lwz r3, sStayHeap__Q27JAInter7HeapMgr@sda21(r13)
/* 800B0578 000AD4B8  7C A3 01 2E */	stwx r5, r3, r0
/* 800B057C 000AD4BC  42 00 FF D0 */	bdnz lbl_800B054C
lbl_800B0580:
/* 800B0580 000AD4C0  BB 01 00 10 */	lmw r24, 0x10(r1)
/* 800B0584 000AD4C4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 800B0588 000AD4C8  7C 08 03 A6 */	mtlr r0
/* 800B058C 000AD4CC  38 21 00 30 */	addi r1, r1, 0x30
/* 800B0590 000AD4D0  4E 80 00 20 */	blr 

.global getAutoHeapPointer__Q27JAInter7HeapMgrFv
getAutoHeapPointer__Q27JAInter7HeapMgrFv:
/* 800B0594 000AD4D4  80 6D 8B F8 */	lwz r3, sAutoHeap__Q27JAInter7HeapMgr@sda21(r13)
/* 800B0598 000AD4D8  4E 80 00 20 */	blr 

.global checkOnMemory__Q27JAInter7HeapMgrFUlPUc
checkOnMemory__Q27JAInter7HeapMgrFUlPUc:
/* 800B059C 000AD4DC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800B05A0 000AD4E0  7C 08 02 A6 */	mflr r0
/* 800B05A4 000AD4E4  90 01 00 24 */	stw r0, 0x24(r1)
/* 800B05A8 000AD4E8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 800B05AC 000AD4EC  3B E0 00 00 */	li r31, 0
/* 800B05B0 000AD4F0  93 C1 00 18 */	stw r30, 0x18(r1)
/* 800B05B4 000AD4F4  7C 9E 23 78 */	mr r30, r4
/* 800B05B8 000AD4F8  93 A1 00 14 */	stw r29, 0x14(r1)
/* 800B05BC 000AD4FC  7C 7D 1B 78 */	mr r29, r3
/* 800B05C0 000AD500  48 00 00 54 */	b lbl_800B0614
lbl_800B05C4:
/* 800B05C4 000AD504  57 E0 06 3E */	clrlwi r0, r31, 0x18
/* 800B05C8 000AD508  80 6D 8B F8 */	lwz r3, sAutoHeap__Q27JAInter7HeapMgr@sda21(r13)
/* 800B05CC 000AD50C  1C 80 00 14 */	mulli r4, r0, 0x14
/* 800B05D0 000AD510  7C 63 22 14 */	add r3, r3, r4
/* 800B05D4 000AD514  80 03 00 08 */	lwz r0, 8(r3)
/* 800B05D8 000AD518  7C 1D 00 40 */	cmplw r29, r0
/* 800B05DC 000AD51C  40 82 00 34 */	bne lbl_800B0610
/* 800B05E0 000AD520  88 03 00 00 */	lbz r0, 0(r3)
/* 800B05E4 000AD524  28 00 00 01 */	cmplwi r0, 1
/* 800B05E8 000AD528  40 82 00 0C */	bne lbl_800B05F4
/* 800B05EC 000AD52C  38 60 FF FF */	li r3, -1
/* 800B05F0 000AD530  48 00 00 90 */	b lbl_800B0680
lbl_800B05F4:
/* 800B05F4 000AD534  28 1E 00 00 */	cmplwi r30, 0
/* 800B05F8 000AD538  41 82 00 08 */	beq lbl_800B0600
/* 800B05FC 000AD53C  9B FE 00 00 */	stb r31, 0(r30)
lbl_800B0600:
/* 800B0600 000AD540  80 6D 8B F8 */	lwz r3, sAutoHeap__Q27JAInter7HeapMgr@sda21(r13)
/* 800B0604 000AD544  38 04 00 04 */	addi r0, r4, 4
/* 800B0608 000AD548  7C 63 00 2E */	lwzx r3, r3, r0
/* 800B060C 000AD54C  48 00 00 74 */	b lbl_800B0680
lbl_800B0610:
/* 800B0610 000AD550  3B FF 00 01 */	addi r31, r31, 1
lbl_800B0614:
/* 800B0614 000AD554  4B FF D4 A9 */	bl getParamAutoHeapMax__18JAIGlobalParameterFv
/* 800B0618 000AD558  57 E0 06 3E */	clrlwi r0, r31, 0x18
/* 800B061C 000AD55C  7C 00 18 40 */	cmplw r0, r3
/* 800B0620 000AD560  41 80 FF A4 */	blt lbl_800B05C4
/* 800B0624 000AD564  80 6D 8B FC */	lwz r3, sStayHeap__Q27JAInter7HeapMgr@sda21(r13)
/* 800B0628 000AD568  38 C0 00 00 */	li r6, 0
/* 800B062C 000AD56C  80 8D 8C 04 */	lwz r4, sStayHeapCount__Q27JAInter7HeapMgr@sda21(r13)
/* 800B0630 000AD570  48 00 00 40 */	b lbl_800B0670
lbl_800B0634:
/* 800B0634 000AD574  54 C0 06 3E */	clrlwi r0, r6, 0x18
/* 800B0638 000AD578  1C A0 00 14 */	mulli r5, r0, 0x14
/* 800B063C 000AD57C  38 05 00 08 */	addi r0, r5, 8
/* 800B0640 000AD580  7C 03 00 2E */	lwzx r0, r3, r0
/* 800B0644 000AD584  7C 1D 00 40 */	cmplw r29, r0
/* 800B0648 000AD588  40 82 00 24 */	bne lbl_800B066C
/* 800B064C 000AD58C  28 1E 00 00 */	cmplwi r30, 0
/* 800B0650 000AD590  41 82 00 0C */	beq lbl_800B065C
/* 800B0654 000AD594  38 00 00 FF */	li r0, 0xff
/* 800B0658 000AD598  98 1E 00 00 */	stb r0, 0(r30)
lbl_800B065C:
/* 800B065C 000AD59C  80 6D 8B FC */	lwz r3, sStayHeap__Q27JAInter7HeapMgr@sda21(r13)
/* 800B0660 000AD5A0  38 05 00 04 */	addi r0, r5, 4
/* 800B0664 000AD5A4  7C 63 00 2E */	lwzx r3, r3, r0
/* 800B0668 000AD5A8  48 00 00 18 */	b lbl_800B0680
lbl_800B066C:
/* 800B066C 000AD5AC  38 C6 00 01 */	addi r6, r6, 1
lbl_800B0670:
/* 800B0670 000AD5B0  54 C0 06 3E */	clrlwi r0, r6, 0x18
/* 800B0674 000AD5B4  7C 00 20 40 */	cmplw r0, r4
/* 800B0678 000AD5B8  41 80 FF BC */	blt lbl_800B0634
/* 800B067C 000AD5BC  38 60 00 00 */	li r3, 0
lbl_800B0680:
/* 800B0680 000AD5C0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800B0684 000AD5C4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 800B0688 000AD5C8  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 800B068C 000AD5CC  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 800B0690 000AD5D0  7C 08 03 A6 */	mtlr r0
/* 800B0694 000AD5D4  38 21 00 20 */	addi r1, r1, 0x20
/* 800B0698 000AD5D8  4E 80 00 20 */	blr 

.global releaseAutoHeapPointer__Q27JAInter7HeapMgrFUc
releaseAutoHeapPointer__Q27JAInter7HeapMgrFUc:
/* 800B069C 000AD5DC  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 800B06A0 000AD5E0  28 00 00 FF */	cmplwi r0, 0xff
/* 800B06A4 000AD5E4  4D 82 00 20 */	beqlr 
/* 800B06A8 000AD5E8  1C 60 00 14 */	mulli r3, r0, 0x14
/* 800B06AC 000AD5EC  80 8D 8B F8 */	lwz r4, sAutoHeap__Q27JAInter7HeapMgr@sda21(r13)
/* 800B06B0 000AD5F0  38 A0 FF FF */	li r5, -1
/* 800B06B4 000AD5F4  38 03 00 10 */	addi r0, r3, 0x10
/* 800B06B8 000AD5F8  7C A4 01 2E */	stwx r5, r4, r0
/* 800B06BC 000AD5FC  4E 80 00 20 */	blr 

.global checkUsefulAutoHeapPosition__Q27JAInter7HeapMgrFv
checkUsefulAutoHeapPosition__Q27JAInter7HeapMgrFv:
/* 800B06C0 000AD600  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800B06C4 000AD604  7C 08 02 A6 */	mflr r0
/* 800B06C8 000AD608  90 01 00 24 */	stw r0, 0x24(r1)
/* 800B06CC 000AD60C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 800B06D0 000AD610  3B E0 00 00 */	li r31, 0
/* 800B06D4 000AD614  93 C1 00 18 */	stw r30, 0x18(r1)
/* 800B06D8 000AD618  3B C0 00 00 */	li r30, 0
/* 800B06DC 000AD61C  93 A1 00 14 */	stw r29, 0x14(r1)
/* 800B06E0 000AD620  3B A0 FF FF */	li r29, -1
/* 800B06E4 000AD624  93 81 00 10 */	stw r28, 0x10(r1)
/* 800B06E8 000AD628  3B 80 00 00 */	li r28, 0
/* 800B06EC 000AD62C  48 00 00 24 */	b lbl_800B0710
lbl_800B06F0:
/* 800B06F0 000AD630  80 6D 8B F8 */	lwz r3, sAutoHeap__Q27JAInter7HeapMgr@sda21(r13)
/* 800B06F4 000AD634  38 1F 00 08 */	addi r0, r31, 8
/* 800B06F8 000AD638  7C 63 00 2E */	lwzx r3, r3, r0
/* 800B06FC 000AD63C  3C 03 00 01 */	addis r0, r3, 1
/* 800B0700 000AD640  28 00 FF FF */	cmplwi r0, 0xffff
/* 800B0704 000AD644  41 82 00 18 */	beq lbl_800B071C
/* 800B0708 000AD648  3B FF 00 14 */	addi r31, r31, 0x14
/* 800B070C 000AD64C  3B DE 00 01 */	addi r30, r30, 1
lbl_800B0710:
/* 800B0710 000AD650  4B FF D3 AD */	bl getParamAutoHeapMax__18JAIGlobalParameterFv
/* 800B0714 000AD654  7C 1E 18 40 */	cmplw r30, r3
/* 800B0718 000AD658  41 80 FF D8 */	blt lbl_800B06F0
lbl_800B071C:
/* 800B071C 000AD65C  4B FF D3 A1 */	bl getParamAutoHeapMax__18JAIGlobalParameterFv
/* 800B0720 000AD660  7C 1E 18 40 */	cmplw r30, r3
/* 800B0724 000AD664  40 82 00 60 */	bne lbl_800B0784
/* 800B0728 000AD668  3B C0 00 00 */	li r30, 0
/* 800B072C 000AD66C  3B E0 00 00 */	li r31, 0
/* 800B0730 000AD670  48 00 00 38 */	b lbl_800B0768
lbl_800B0734:
/* 800B0734 000AD674  80 0D 8B F8 */	lwz r0, sAutoHeap__Q27JAInter7HeapMgr@sda21(r13)
/* 800B0738 000AD678  7C 60 FA 14 */	add r3, r0, r31
/* 800B073C 000AD67C  80 83 00 0C */	lwz r4, 0xc(r3)
/* 800B0740 000AD680  7C 1D 20 40 */	cmplw r29, r4
/* 800B0744 000AD684  40 81 00 1C */	ble lbl_800B0760
/* 800B0748 000AD688  80 63 00 10 */	lwz r3, 0x10(r3)
/* 800B074C 000AD68C  3C 03 00 01 */	addis r0, r3, 1
/* 800B0750 000AD690  28 00 FF FF */	cmplwi r0, 0xffff
/* 800B0754 000AD694  40 82 00 0C */	bne lbl_800B0760
/* 800B0758 000AD698  7F DC F3 78 */	mr r28, r30
/* 800B075C 000AD69C  7C 9D 23 78 */	mr r29, r4
lbl_800B0760:
/* 800B0760 000AD6A0  3B FF 00 14 */	addi r31, r31, 0x14
/* 800B0764 000AD6A4  3B DE 00 01 */	addi r30, r30, 1
lbl_800B0768:
/* 800B0768 000AD6A8  4B FF D3 55 */	bl getParamAutoHeapMax__18JAIGlobalParameterFv
/* 800B076C 000AD6AC  7C 1E 18 40 */	cmplw r30, r3
/* 800B0770 000AD6B0  41 80 FF C4 */	blt lbl_800B0734
/* 800B0774 000AD6B4  3C 1D 00 01 */	addis r0, r29, 1
/* 800B0778 000AD6B8  28 00 FF FF */	cmplwi r0, 0xffff
/* 800B077C 000AD6BC  41 82 00 08 */	beq lbl_800B0784
/* 800B0780 000AD6C0  7F 9E E3 78 */	mr r30, r28
lbl_800B0784:
/* 800B0784 000AD6C4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800B0788 000AD6C8  57 C3 06 3E */	clrlwi r3, r30, 0x18
/* 800B078C 000AD6CC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 800B0790 000AD6D0  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 800B0794 000AD6D4  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 800B0798 000AD6D8  83 81 00 10 */	lwz r28, 0x10(r1)
/* 800B079C 000AD6DC  7C 08 03 A6 */	mtlr r0
/* 800B07A0 000AD6E0  38 21 00 20 */	addi r1, r1, 0x20
/* 800B07A4 000AD6E4  4E 80 00 20 */	blr 

.global getFreeAutoHeapPointer__Q27JAInter7HeapMgrFUcUl
getFreeAutoHeapPointer__Q27JAInter7HeapMgrFUcUl:
/* 800B07A8 000AD6E8  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 800B07AC 000AD6EC  80 6D 8B F8 */	lwz r3, sAutoHeap__Q27JAInter7HeapMgr@sda21(r13)
/* 800B07B0 000AD6F0  1C A0 00 14 */	mulli r5, r0, 0x14
/* 800B07B4 000AD6F4  38 05 00 08 */	addi r0, r5, 8
/* 800B07B8 000AD6F8  7C 83 01 2E */	stwx r4, r3, r0
/* 800B07BC 000AD6FC  38 05 00 0C */	addi r0, r5, 0xc
/* 800B07C0 000AD700  80 6D 8B F8 */	lwz r3, sAutoHeap__Q27JAInter7HeapMgr@sda21(r13)
/* 800B07C4 000AD704  80 8D 8C 00 */	lwz r4, sAutoHeapCount__Q27JAInter7HeapMgr@sda21(r13)
/* 800B07C8 000AD708  7C A3 2A 14 */	add r5, r3, r5
/* 800B07CC 000AD70C  80 65 00 04 */	lwz r3, 4(r5)
/* 800B07D0 000AD710  90 85 00 10 */	stw r4, 0x10(r5)
/* 800B07D4 000AD714  80 AD 8C 00 */	lwz r5, sAutoHeapCount__Q27JAInter7HeapMgr@sda21(r13)
/* 800B07D8 000AD718  80 8D 8B F8 */	lwz r4, sAutoHeap__Q27JAInter7HeapMgr@sda21(r13)
/* 800B07DC 000AD71C  7C A4 01 2E */	stwx r5, r4, r0
/* 800B07E0 000AD720  80 8D 8C 00 */	lwz r4, sAutoHeapCount__Q27JAInter7HeapMgr@sda21(r13)
/* 800B07E4 000AD724  38 04 00 01 */	addi r0, r4, 1
/* 800B07E8 000AD728  90 0D 8C 00 */	stw r0, sAutoHeapCount__Q27JAInter7HeapMgr@sda21(r13)
/* 800B07EC 000AD72C  4E 80 00 20 */	blr 

.global checkUsefulStayHeapPosition__Q27JAInter7HeapMgrFv
checkUsefulStayHeapPosition__Q27JAInter7HeapMgrFv:
/* 800B07F0 000AD730  80 0D 8C 04 */	lwz r0, sStayHeapCount__Q27JAInter7HeapMgr@sda21(r13)
/* 800B07F4 000AD734  54 03 06 3E */	clrlwi r3, r0, 0x18
/* 800B07F8 000AD738  4E 80 00 20 */	blr 

.global getFreeStayHeapPointer__Q27JAInter7HeapMgrFUlUl
getFreeStayHeapPointer__Q27JAInter7HeapMgrFUlUl:
/* 800B07FC 000AD73C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800B0800 000AD740  7C 08 02 A6 */	mflr r0
/* 800B0804 000AD744  90 01 00 24 */	stw r0, 0x24(r1)
/* 800B0808 000AD748  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 800B080C 000AD74C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 800B0810 000AD750  93 A1 00 14 */	stw r29, 0x14(r1)
/* 800B0814 000AD754  7C 9D 23 78 */	mr r29, r4
/* 800B0818 000AD758  93 81 00 10 */	stw r28, 0x10(r1)
/* 800B081C 000AD75C  7C 7C 1B 78 */	mr r28, r3
/* 800B0820 000AD760  4B FF D2 A5 */	bl getParamStayHeapMax__18JAIGlobalParameterFv
/* 800B0824 000AD764  80 0D 8C 04 */	lwz r0, sStayHeapCount__Q27JAInter7HeapMgr@sda21(r13)
/* 800B0828 000AD768  7C 00 18 40 */	cmplw r0, r3
/* 800B082C 000AD76C  41 80 00 0C */	blt lbl_800B0838
/* 800B0830 000AD770  38 60 00 00 */	li r3, 0
/* 800B0834 000AD774  48 00 00 B0 */	b lbl_800B08E4
lbl_800B0838:
/* 800B0838 000AD778  1C 60 00 14 */	mulli r3, r0, 0x14
/* 800B083C 000AD77C  80 8D 8B FC */	lwz r4, sStayHeap__Q27JAInter7HeapMgr@sda21(r13)
/* 800B0840 000AD780  83 E4 00 04 */	lwz r31, 4(r4)
/* 800B0844 000AD784  38 03 00 04 */	addi r0, r3, 4
/* 800B0848 000AD788  7F C4 00 2E */	lwzx r30, r4, r0
/* 800B084C 000AD78C  4B FF D2 C9 */	bl getParamStayHeapSize__18JAIGlobalParameterFv
/* 800B0850 000AD790  7C 7F 1A 14 */	add r3, r31, r3
/* 800B0854 000AD794  7C 1C F2 14 */	add r0, r28, r30
/* 800B0858 000AD798  7C 00 18 40 */	cmplw r0, r3
/* 800B085C 000AD79C  40 80 00 80 */	bge lbl_800B08DC
/* 800B0860 000AD7A0  4B FF D2 65 */	bl getParamStayHeapMax__18JAIGlobalParameterFv
/* 800B0864 000AD7A4  80 0D 8C 04 */	lwz r0, sStayHeapCount__Q27JAInter7HeapMgr@sda21(r13)
/* 800B0868 000AD7A8  7C 00 18 40 */	cmplw r0, r3
/* 800B086C 000AD7AC  40 80 00 70 */	bge lbl_800B08DC
/* 800B0870 000AD7B0  1C 60 00 14 */	mulli r3, r0, 0x14
/* 800B0874 000AD7B4  80 8D 8B FC */	lwz r4, sStayHeap__Q27JAInter7HeapMgr@sda21(r13)
/* 800B0878 000AD7B8  57 80 06 FF */	clrlwi. r0, r28, 0x1b
/* 800B087C 000AD7BC  57 85 00 34 */	rlwinm r5, r28, 0, 0, 0x1a
/* 800B0880 000AD7C0  7C 64 1A 14 */	add r3, r4, r3
/* 800B0884 000AD7C4  83 C3 00 04 */	lwz r30, 4(r3)
/* 800B0888 000AD7C8  93 A3 00 08 */	stw r29, 8(r3)
/* 800B088C 000AD7CC  80 0D 8C 04 */	lwz r0, sStayHeapCount__Q27JAInter7HeapMgr@sda21(r13)
/* 800B0890 000AD7D0  80 8D 8B FC */	lwz r4, sStayHeap__Q27JAInter7HeapMgr@sda21(r13)
/* 800B0894 000AD7D4  1C 60 00 14 */	mulli r3, r0, 0x14
/* 800B0898 000AD7D8  38 03 00 04 */	addi r0, r3, 4
/* 800B089C 000AD7DC  7C 04 00 2E */	lwzx r0, r4, r0
/* 800B08A0 000AD7E0  7F E5 02 14 */	add r31, r5, r0
/* 800B08A4 000AD7E4  41 82 00 08 */	beq lbl_800B08AC
/* 800B08A8 000AD7E8  3B FF 00 20 */	addi r31, r31, 0x20
lbl_800B08AC:
/* 800B08AC 000AD7EC  80 6D 8C 04 */	lwz r3, sStayHeapCount__Q27JAInter7HeapMgr@sda21(r13)
/* 800B08B0 000AD7F0  38 03 00 01 */	addi r0, r3, 1
/* 800B08B4 000AD7F4  90 0D 8C 04 */	stw r0, sStayHeapCount__Q27JAInter7HeapMgr@sda21(r13)
/* 800B08B8 000AD7F8  4B FF D2 0D */	bl getParamStayHeapMax__18JAIGlobalParameterFv
/* 800B08BC 000AD7FC  80 0D 8C 04 */	lwz r0, sStayHeapCount__Q27JAInter7HeapMgr@sda21(r13)
/* 800B08C0 000AD800  7C 00 18 40 */	cmplw r0, r3
/* 800B08C4 000AD804  40 80 00 1C */	bge lbl_800B08E0
/* 800B08C8 000AD808  1C 60 00 14 */	mulli r3, r0, 0x14
/* 800B08CC 000AD80C  80 8D 8B FC */	lwz r4, sStayHeap__Q27JAInter7HeapMgr@sda21(r13)
/* 800B08D0 000AD810  38 03 00 04 */	addi r0, r3, 4
/* 800B08D4 000AD814  7F E4 01 2E */	stwx r31, r4, r0
/* 800B08D8 000AD818  48 00 00 08 */	b lbl_800B08E0
lbl_800B08DC:
/* 800B08DC 000AD81C  3B C0 00 00 */	li r30, 0
lbl_800B08E0:
/* 800B08E0 000AD820  7F C3 F3 78 */	mr r3, r30
lbl_800B08E4:
/* 800B08E4 000AD824  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800B08E8 000AD828  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 800B08EC 000AD82C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 800B08F0 000AD830  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 800B08F4 000AD834  83 81 00 10 */	lwz r28, 0x10(r1)
/* 800B08F8 000AD838  7C 08 03 A6 */	mtlr r0
/* 800B08FC 000AD83C  38 21 00 20 */	addi r1, r1, 0x20
/* 800B0900 000AD840  4E 80 00 20 */	blr 

.global setAutoHeapLoadedFlag__Q27JAInter7HeapMgrFUcUc
setAutoHeapLoadedFlag__Q27JAInter7HeapMgrFUcUc:
/* 800B0904 000AD844  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 800B0908 000AD848  80 6D 8B F8 */	lwz r3, sAutoHeap__Q27JAInter7HeapMgr@sda21(r13)
/* 800B090C 000AD84C  1C 00 00 14 */	mulli r0, r0, 0x14
/* 800B0910 000AD850  7C 83 01 AE */	stbx r4, r3, r0
/* 800B0914 000AD854  4E 80 00 20 */	blr 

.global setStayHeapLoadedFlag__Q27JAInter7HeapMgrFUcUc
setStayHeapLoadedFlag__Q27JAInter7HeapMgrFUcUc:
/* 800B0918 000AD858  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 800B091C 000AD85C  80 6D 8B FC */	lwz r3, sStayHeap__Q27JAInter7HeapMgr@sda21(r13)
/* 800B0920 000AD860  1C 00 00 14 */	mulli r0, r0, 0x14
/* 800B0924 000AD864  7C 83 01 AE */	stbx r4, r3, r0
/* 800B0928 000AD868  4E 80 00 20 */	blr 

.global __ct__Q27JAInter9HeapBlockFv
__ct__Q27JAInter9HeapBlockFv:
/* 800B092C 000AD86C  38 80 00 00 */	li r4, 0
/* 800B0930 000AD870  38 00 FF FF */	li r0, -1
/* 800B0934 000AD874  90 83 00 0C */	stw r4, 0xc(r3)
/* 800B0938 000AD878  90 03 00 08 */	stw r0, 8(r3)
/* 800B093C 000AD87C  90 03 00 10 */	stw r0, 0x10(r3)
/* 800B0940 000AD880  4E 80 00 20 */	blr 