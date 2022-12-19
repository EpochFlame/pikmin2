.include "macros.inc"
.section .bss  # 0x804EFC20 - 0x8051467C
.global WaitingQueue
WaitingQueue:
	.skip 0x20

.section .text, "ax"  # 0x800056C0 - 0x80472F00
.global __DVDClearWaitingQueue
__DVDClearWaitingQueue:
/* 800DF45C 000DC39C  3C 60 80 4F */	lis r3, WaitingQueue@ha
/* 800DF460 000DC3A0  38 63 5E 98 */	addi r3, r3, WaitingQueue@l
/* 800DF464 000DC3A4  90 63 00 00 */	stw r3, 0(r3)
/* 800DF468 000DC3A8  38 A3 00 08 */	addi r5, r3, 8
/* 800DF46C 000DC3AC  38 83 00 10 */	addi r4, r3, 0x10
/* 800DF470 000DC3B0  90 63 00 04 */	stw r3, 4(r3)
/* 800DF474 000DC3B4  38 63 00 18 */	addi r3, r3, 0x18
/* 800DF478 000DC3B8  90 A5 00 00 */	stw r5, 0(r5)
/* 800DF47C 000DC3BC  90 A5 00 04 */	stw r5, 4(r5)
/* 800DF480 000DC3C0  90 84 00 00 */	stw r4, 0(r4)
/* 800DF484 000DC3C4  90 84 00 04 */	stw r4, 4(r4)
/* 800DF488 000DC3C8  90 63 00 00 */	stw r3, 0(r3)
/* 800DF48C 000DC3CC  90 63 00 04 */	stw r3, 4(r3)
/* 800DF490 000DC3D0  4E 80 00 20 */	blr 

.global __DVDPushWaitingQueue
__DVDPushWaitingQueue:
/* 800DF494 000DC3D4  7C 08 02 A6 */	mflr r0
/* 800DF498 000DC3D8  90 01 00 04 */	stw r0, 4(r1)
/* 800DF49C 000DC3DC  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 800DF4A0 000DC3E0  93 E1 00 14 */	stw r31, 0x14(r1)
/* 800DF4A4 000DC3E4  3B E4 00 00 */	addi r31, r4, 0
/* 800DF4A8 000DC3E8  93 C1 00 10 */	stw r30, 0x10(r1)
/* 800DF4AC 000DC3EC  3B C3 00 00 */	addi r30, r3, 0
/* 800DF4B0 000DC3F0  48 00 F7 89 */	bl OSDisableInterrupts
/* 800DF4B4 000DC3F4  3C 80 80 4F */	lis r4, WaitingQueue@ha
/* 800DF4B8 000DC3F8  57 C5 18 38 */	slwi r5, r30, 3
/* 800DF4BC 000DC3FC  38 04 5E 98 */	addi r0, r4, WaitingQueue@l
/* 800DF4C0 000DC400  7C A0 2A 14 */	add r5, r0, r5
/* 800DF4C4 000DC404  80 85 00 04 */	lwz r4, 4(r5)
/* 800DF4C8 000DC408  93 E4 00 00 */	stw r31, 0(r4)
/* 800DF4CC 000DC40C  80 05 00 04 */	lwz r0, 4(r5)
/* 800DF4D0 000DC410  90 1F 00 04 */	stw r0, 4(r31)
/* 800DF4D4 000DC414  90 BF 00 00 */	stw r5, 0(r31)
/* 800DF4D8 000DC418  93 E5 00 04 */	stw r31, 4(r5)
/* 800DF4DC 000DC41C  48 00 F7 85 */	bl OSRestoreInterrupts
/* 800DF4E0 000DC420  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 800DF4E4 000DC424  38 60 00 01 */	li r3, 1
/* 800DF4E8 000DC428  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 800DF4EC 000DC42C  83 C1 00 10 */	lwz r30, 0x10(r1)
/* 800DF4F0 000DC430  38 21 00 18 */	addi r1, r1, 0x18
/* 800DF4F4 000DC434  7C 08 03 A6 */	mtlr r0
/* 800DF4F8 000DC438  4E 80 00 20 */	blr 

.global __DVDPopWaitingQueue
__DVDPopWaitingQueue:
/* 800DF4FC 000DC43C  7C 08 02 A6 */	mflr r0
/* 800DF500 000DC440  90 01 00 04 */	stw r0, 4(r1)
/* 800DF504 000DC444  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800DF508 000DC448  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800DF50C 000DC44C  48 00 F7 2D */	bl OSDisableInterrupts
/* 800DF510 000DC450  38 00 00 04 */	li r0, 4
/* 800DF514 000DC454  3C 80 80 4F */	lis r4, WaitingQueue@ha
/* 800DF518 000DC458  7C 09 03 A6 */	mtctr r0
/* 800DF51C 000DC45C  38 84 5E 98 */	addi r4, r4, WaitingQueue@l
/* 800DF520 000DC460  3B E0 00 00 */	li r31, 0
lbl_800DF524:
/* 800DF524 000DC464  80 04 00 00 */	lwz r0, 0(r4)
/* 800DF528 000DC468  7C 00 20 40 */	cmplw r0, r4
/* 800DF52C 000DC46C  41 82 00 48 */	beq lbl_800DF574
/* 800DF530 000DC470  48 00 F7 31 */	bl OSRestoreInterrupts
/* 800DF534 000DC474  48 00 F7 05 */	bl OSDisableInterrupts
/* 800DF538 000DC478  3C 80 80 4F */	lis r4, WaitingQueue@ha
/* 800DF53C 000DC47C  57 E5 18 38 */	slwi r5, r31, 3
/* 800DF540 000DC480  38 04 5E 98 */	addi r0, r4, WaitingQueue@l
/* 800DF544 000DC484  7C A0 2A 14 */	add r5, r0, r5
/* 800DF548 000DC488  83 E5 00 00 */	lwz r31, 0(r5)
/* 800DF54C 000DC48C  80 1F 00 00 */	lwz r0, 0(r31)
/* 800DF550 000DC490  90 05 00 00 */	stw r0, 0(r5)
/* 800DF554 000DC494  80 9F 00 00 */	lwz r4, 0(r31)
/* 800DF558 000DC498  90 A4 00 04 */	stw r5, 4(r4)
/* 800DF55C 000DC49C  48 00 F7 05 */	bl OSRestoreInterrupts
/* 800DF560 000DC4A0  38 00 00 00 */	li r0, 0
/* 800DF564 000DC4A4  90 1F 00 00 */	stw r0, 0(r31)
/* 800DF568 000DC4A8  7F E3 FB 78 */	mr r3, r31
/* 800DF56C 000DC4AC  90 1F 00 04 */	stw r0, 4(r31)
/* 800DF570 000DC4B0  48 00 00 18 */	b lbl_800DF588
lbl_800DF574:
/* 800DF574 000DC4B4  38 84 00 08 */	addi r4, r4, 8
/* 800DF578 000DC4B8  3B FF 00 01 */	addi r31, r31, 1
/* 800DF57C 000DC4BC  42 00 FF A8 */	bdnz lbl_800DF524
/* 800DF580 000DC4C0  48 00 F6 E1 */	bl OSRestoreInterrupts
/* 800DF584 000DC4C4  38 60 00 00 */	li r3, 0
lbl_800DF588:
/* 800DF588 000DC4C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800DF58C 000DC4CC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800DF590 000DC4D0  38 21 00 10 */	addi r1, r1, 0x10
/* 800DF594 000DC4D4  7C 08 03 A6 */	mtlr r0
/* 800DF598 000DC4D8  4E 80 00 20 */	blr 

.global __DVDCheckWaitingQueue
__DVDCheckWaitingQueue:
/* 800DF59C 000DC4DC  7C 08 02 A6 */	mflr r0
/* 800DF5A0 000DC4E0  90 01 00 04 */	stw r0, 4(r1)
/* 800DF5A4 000DC4E4  94 21 FF F8 */	stwu r1, -8(r1)
/* 800DF5A8 000DC4E8  48 00 F6 91 */	bl OSDisableInterrupts
/* 800DF5AC 000DC4EC  38 00 00 04 */	li r0, 4
/* 800DF5B0 000DC4F0  3C 80 80 4F */	lis r4, WaitingQueue@ha
/* 800DF5B4 000DC4F4  7C 09 03 A6 */	mtctr r0
/* 800DF5B8 000DC4F8  38 84 5E 98 */	addi r4, r4, WaitingQueue@l
lbl_800DF5BC:
/* 800DF5BC 000DC4FC  80 04 00 00 */	lwz r0, 0(r4)
/* 800DF5C0 000DC500  7C 00 20 40 */	cmplw r0, r4
/* 800DF5C4 000DC504  41 82 00 10 */	beq lbl_800DF5D4
/* 800DF5C8 000DC508  48 00 F6 99 */	bl OSRestoreInterrupts
/* 800DF5CC 000DC50C  38 60 00 01 */	li r3, 1
/* 800DF5D0 000DC510  48 00 00 14 */	b lbl_800DF5E4
lbl_800DF5D4:
/* 800DF5D4 000DC514  38 84 00 08 */	addi r4, r4, 8
/* 800DF5D8 000DC518  42 00 FF E4 */	bdnz lbl_800DF5BC
/* 800DF5DC 000DC51C  48 00 F6 85 */	bl OSRestoreInterrupts
/* 800DF5E0 000DC520  38 60 00 00 */	li r3, 0
lbl_800DF5E4:
/* 800DF5E4 000DC524  80 01 00 0C */	lwz r0, 0xc(r1)
/* 800DF5E8 000DC528  38 21 00 08 */	addi r1, r1, 8
/* 800DF5EC 000DC52C  7C 08 03 A6 */	mtlr r0
/* 800DF5F0 000DC530  4E 80 00 20 */	blr 

.global __DVDDequeueWaitingQueue
__DVDDequeueWaitingQueue:
/* 800DF5F4 000DC534  7C 08 02 A6 */	mflr r0
/* 800DF5F8 000DC538  90 01 00 04 */	stw r0, 4(r1)
/* 800DF5FC 000DC53C  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 800DF600 000DC540  93 E1 00 14 */	stw r31, 0x14(r1)
/* 800DF604 000DC544  7C 7F 1B 78 */	mr r31, r3
/* 800DF608 000DC548  48 00 F6 31 */	bl OSDisableInterrupts
/* 800DF60C 000DC54C  80 9F 00 04 */	lwz r4, 4(r31)
/* 800DF610 000DC550  80 BF 00 00 */	lwz r5, 0(r31)
/* 800DF614 000DC554  28 04 00 00 */	cmplwi r4, 0
/* 800DF618 000DC558  41 82 00 0C */	beq lbl_800DF624
/* 800DF61C 000DC55C  28 05 00 00 */	cmplwi r5, 0
/* 800DF620 000DC560  40 82 00 10 */	bne lbl_800DF630
lbl_800DF624:
/* 800DF624 000DC564  48 00 F6 3D */	bl OSRestoreInterrupts
/* 800DF628 000DC568  38 60 00 00 */	li r3, 0
/* 800DF62C 000DC56C  48 00 00 14 */	b lbl_800DF640
lbl_800DF630:
/* 800DF630 000DC570  90 A4 00 00 */	stw r5, 0(r4)
/* 800DF634 000DC574  90 85 00 04 */	stw r4, 4(r5)
/* 800DF638 000DC578  48 00 F6 29 */	bl OSRestoreInterrupts
/* 800DF63C 000DC57C  38 60 00 01 */	li r3, 1
lbl_800DF640:
/* 800DF640 000DC580  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 800DF644 000DC584  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 800DF648 000DC588  38 21 00 18 */	addi r1, r1, 0x18
/* 800DF64C 000DC58C  7C 08 03 A6 */	mtlr r0
/* 800DF650 000DC590  4E 80 00 20 */	blr 