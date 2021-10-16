.include "macros.inc"
.section .sdata, "wa"  # 0x80514680 - 0x80514D80
.balign 0x8
.global __OSFpscrEnableBits
__OSFpscrEnableBits:
	.4byte 0x000000F8
.global lbl_805149EC
lbl_805149EC:
	.asciz "\n"
	.skip 2

.section .text, "ax"  # 0x800056C0 - 0x80472F00
.global OSReport
OSReport:
/* 800ED6EC 000EA62C  7C 08 02 A6 */	mflr r0
/* 800ED6F0 000EA630  90 01 00 04 */	stw r0, 4(r1)
/* 800ED6F4 000EA634  94 21 FF 88 */	stwu r1, -0x78(r1)
/* 800ED6F8 000EA638  40 86 00 24 */	bne cr1, lbl_800ED71C
/* 800ED6FC 000EA63C  D8 21 00 28 */	stfd f1, 0x28(r1)
/* 800ED700 000EA640  D8 41 00 30 */	stfd f2, 0x30(r1)
/* 800ED704 000EA644  D8 61 00 38 */	stfd f3, 0x38(r1)
/* 800ED708 000EA648  D8 81 00 40 */	stfd f4, 0x40(r1)
/* 800ED70C 000EA64C  D8 A1 00 48 */	stfd f5, 0x48(r1)
/* 800ED710 000EA650  D8 C1 00 50 */	stfd f6, 0x50(r1)
/* 800ED714 000EA654  D8 E1 00 58 */	stfd f7, 0x58(r1)
/* 800ED718 000EA658  D9 01 00 60 */	stfd f8, 0x60(r1)
lbl_800ED71C:
/* 800ED71C 000EA65C  90 61 00 08 */	stw r3, 8(r1)
/* 800ED720 000EA660  3C 00 01 00 */	lis r0, 0x100
/* 800ED724 000EA664  90 81 00 0C */	stw r4, 0xc(r1)
/* 800ED728 000EA668  38 81 00 6C */	addi r4, r1, 0x6c
/* 800ED72C 000EA66C  90 A1 00 10 */	stw r5, 0x10(r1)
/* 800ED730 000EA670  90 C1 00 14 */	stw r6, 0x14(r1)
/* 800ED734 000EA674  90 E1 00 18 */	stw r7, 0x18(r1)
/* 800ED738 000EA678  91 01 00 1C */	stw r8, 0x1c(r1)
/* 800ED73C 000EA67C  91 21 00 20 */	stw r9, 0x20(r1)
/* 800ED740 000EA680  91 41 00 24 */	stw r10, 0x24(r1)
/* 800ED744 000EA684  90 01 00 6C */	stw r0, 0x6c(r1)
/* 800ED748 000EA688  38 01 00 80 */	addi r0, r1, 0x80
/* 800ED74C 000EA68C  90 01 00 70 */	stw r0, 0x70(r1)
/* 800ED750 000EA690  38 01 00 08 */	addi r0, r1, 8
/* 800ED754 000EA694  90 01 00 74 */	stw r0, 0x74(r1)
/* 800ED758 000EA698  4B FD 9F 81 */	bl vprintf
/* 800ED75C 000EA69C  80 01 00 7C */	lwz r0, 0x7c(r1)
/* 800ED760 000EA6A0  38 21 00 78 */	addi r1, r1, 0x78
/* 800ED764 000EA6A4  7C 08 03 A6 */	mtlr r0
/* 800ED768 000EA6A8  4E 80 00 20 */	blr 

.global OSPanic
OSPanic:
/* 800ED76C 000EA6AC  7C 08 02 A6 */	mflr r0
/* 800ED770 000EA6B0  90 01 00 04 */	stw r0, 4(r1)
/* 800ED774 000EA6B4  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 800ED778 000EA6B8  93 E1 00 8C */	stw r31, 0x8c(r1)
/* 800ED77C 000EA6BC  93 C1 00 88 */	stw r30, 0x88(r1)
/* 800ED780 000EA6C0  93 A1 00 84 */	stw r29, 0x84(r1)
/* 800ED784 000EA6C4  93 81 00 80 */	stw r28, 0x80(r1)
/* 800ED788 000EA6C8  40 86 00 24 */	bne cr1, lbl_800ED7AC
/* 800ED78C 000EA6CC  D8 21 00 28 */	stfd f1, 0x28(r1)
/* 800ED790 000EA6D0  D8 41 00 30 */	stfd f2, 0x30(r1)
/* 800ED794 000EA6D4  D8 61 00 38 */	stfd f3, 0x38(r1)
/* 800ED798 000EA6D8  D8 81 00 40 */	stfd f4, 0x40(r1)
/* 800ED79C 000EA6DC  D8 A1 00 48 */	stfd f5, 0x48(r1)
/* 800ED7A0 000EA6E0  D8 C1 00 50 */	stfd f6, 0x50(r1)
/* 800ED7A4 000EA6E4  D8 E1 00 58 */	stfd f7, 0x58(r1)
/* 800ED7A8 000EA6E8  D9 01 00 60 */	stfd f8, 0x60(r1)
lbl_800ED7AC:
/* 800ED7AC 000EA6EC  90 61 00 08 */	stw r3, 8(r1)
/* 800ED7B0 000EA6F0  3B 83 00 00 */	addi r28, r3, 0
/* 800ED7B4 000EA6F4  3B C4 00 00 */	addi r30, r4, 0
/* 800ED7B8 000EA6F8  90 81 00 0C */	stw r4, 0xc(r1)
/* 800ED7BC 000EA6FC  3B A5 00 00 */	addi r29, r5, 0
/* 800ED7C0 000EA700  90 A1 00 10 */	stw r5, 0x10(r1)
/* 800ED7C4 000EA704  90 C1 00 14 */	stw r6, 0x14(r1)
/* 800ED7C8 000EA708  3C C0 80 4B */	lis r6, lbl_804A8F90@ha
/* 800ED7CC 000EA70C  3B E6 8F 90 */	addi r31, r6, lbl_804A8F90@l
/* 800ED7D0 000EA710  90 E1 00 18 */	stw r7, 0x18(r1)
/* 800ED7D4 000EA714  91 01 00 1C */	stw r8, 0x1c(r1)
/* 800ED7D8 000EA718  91 21 00 20 */	stw r9, 0x20(r1)
/* 800ED7DC 000EA71C  91 41 00 24 */	stw r10, 0x24(r1)
/* 800ED7E0 000EA720  48 00 14 59 */	bl OSDisableInterrupts
/* 800ED7E4 000EA724  3C 00 03 00 */	lis r0, 0x300
/* 800ED7E8 000EA728  90 01 00 74 */	stw r0, 0x74(r1)
/* 800ED7EC 000EA72C  38 01 00 98 */	addi r0, r1, 0x98
/* 800ED7F0 000EA730  38 81 00 74 */	addi r4, r1, 0x74
/* 800ED7F4 000EA734  90 01 00 78 */	stw r0, 0x78(r1)
/* 800ED7F8 000EA738  38 01 00 08 */	addi r0, r1, 8
/* 800ED7FC 000EA73C  38 7D 00 00 */	addi r3, r29, 0
/* 800ED800 000EA740  90 01 00 7C */	stw r0, 0x7c(r1)
/* 800ED804 000EA744  4B FD 9E D5 */	bl vprintf
/* 800ED808 000EA748  38 7F 00 00 */	addi r3, r31, 0
/* 800ED80C 000EA74C  4C C6 31 82 */	crclr 6
/* 800ED810 000EA750  38 9C 00 00 */	addi r4, r28, 0
/* 800ED814 000EA754  38 BE 00 00 */	addi r5, r30, 0
/* 800ED818 000EA758  4B FF FE D5 */	bl OSReport
/* 800ED81C 000EA75C  38 7F 00 18 */	addi r3, r31, 0x18
/* 800ED820 000EA760  4C C6 31 82 */	crclr 6
/* 800ED824 000EA764  4B FF FE C9 */	bl OSReport
/* 800ED828 000EA768  3B C0 00 00 */	li r30, 0
/* 800ED82C 000EA76C  4B FF F9 39 */	bl OSGetStackPointer
/* 800ED830 000EA770  7C 7D 1B 78 */	mr r29, r3
/* 800ED834 000EA774  48 00 00 20 */	b lbl_800ED854
lbl_800ED838:
/* 800ED838 000EA778  80 BD 00 00 */	lwz r5, 0(r29)
/* 800ED83C 000EA77C  7F A4 EB 78 */	mr r4, r29
/* 800ED840 000EA780  80 DD 00 04 */	lwz r6, 4(r29)
/* 800ED844 000EA784  38 7F 00 40 */	addi r3, r31, 0x40
/* 800ED848 000EA788  4C C6 31 82 */	crclr 6
/* 800ED84C 000EA78C  4B FF FE A1 */	bl OSReport
/* 800ED850 000EA790  83 BD 00 00 */	lwz r29, 0(r29)
lbl_800ED854:
/* 800ED854 000EA794  28 1D 00 00 */	cmplwi r29, 0
/* 800ED858 000EA798  41 82 00 1C */	beq lbl_800ED874
/* 800ED85C 000EA79C  3C 1D 00 01 */	addis r0, r29, 1
/* 800ED860 000EA7A0  28 00 FF FF */	cmplwi r0, 0xffff
/* 800ED864 000EA7A4  41 82 00 10 */	beq lbl_800ED874
/* 800ED868 000EA7A8  28 1E 00 10 */	cmplwi r30, 0x10
/* 800ED86C 000EA7AC  3B DE 00 01 */	addi r30, r30, 1
/* 800ED870 000EA7B0  41 80 FF C8 */	blt lbl_800ED838
lbl_800ED874:
/* 800ED874 000EA7B4  4B FE 6D 25 */	bl PPCHalt
/* 800ED878 000EA7B8  80 01 00 94 */	lwz r0, 0x94(r1)
/* 800ED87C 000EA7BC  83 E1 00 8C */	lwz r31, 0x8c(r1)
/* 800ED880 000EA7C0  83 C1 00 88 */	lwz r30, 0x88(r1)
/* 800ED884 000EA7C4  83 A1 00 84 */	lwz r29, 0x84(r1)
/* 800ED888 000EA7C8  83 81 00 80 */	lwz r28, 0x80(r1)
/* 800ED88C 000EA7CC  38 21 00 90 */	addi r1, r1, 0x90
/* 800ED890 000EA7D0  7C 08 03 A6 */	mtlr r0
/* 800ED894 000EA7D4  4E 80 00 20 */	blr 

.global OSSetErrorHandler
OSSetErrorHandler:
/* 800ED898 000EA7D8  7C 08 02 A6 */	mflr r0
/* 800ED89C 000EA7DC  90 01 00 04 */	stw r0, 4(r1)
/* 800ED8A0 000EA7E0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 800ED8A4 000EA7E4  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 800ED8A8 000EA7E8  93 C1 00 28 */	stw r30, 0x28(r1)
/* 800ED8AC 000EA7EC  93 A1 00 24 */	stw r29, 0x24(r1)
/* 800ED8B0 000EA7F0  3B A3 00 00 */	addi r29, r3, 0
/* 800ED8B4 000EA7F4  93 81 00 20 */	stw r28, 0x20(r1)
/* 800ED8B8 000EA7F8  3B 84 00 00 */	addi r28, r4, 0
/* 800ED8BC 000EA7FC  48 00 13 7D */	bl OSDisableInterrupts
/* 800ED8C0 000EA800  3C 80 80 4F */	lis r4, __OSErrorTable@ha
/* 800ED8C4 000EA804  57 A5 13 BA */	rlwinm r5, r29, 2, 0xe, 0x1d
/* 800ED8C8 000EA808  38 04 66 70 */	addi r0, r4, __OSErrorTable@l
/* 800ED8CC 000EA80C  57 A6 04 3E */	clrlwi r6, r29, 0x10
/* 800ED8D0 000EA810  7C 80 2A 14 */	add r4, r0, r5
/* 800ED8D4 000EA814  83 C4 00 00 */	lwz r30, 0(r4)
/* 800ED8D8 000EA818  28 06 00 10 */	cmplwi r6, 0x10
/* 800ED8DC 000EA81C  7C 7D 1B 78 */	mr r29, r3
/* 800ED8E0 000EA820  93 84 00 00 */	stw r28, 0(r4)
/* 800ED8E4 000EA824  40 82 01 A0 */	bne lbl_800EDA84
/* 800ED8E8 000EA828  4B FE 6C 71 */	bl PPCMfmsr
/* 800ED8EC 000EA82C  3B E3 00 00 */	addi r31, r3, 0
/* 800ED8F0 000EA830  63 E3 20 00 */	ori r3, r31, 0x2000
/* 800ED8F4 000EA834  4B FE 6C 6D */	bl PPCMtmsr
/* 800ED8F8 000EA838  4B FE 6C E5 */	bl PPCMffpscr
/* 800ED8FC 000EA83C  28 1C 00 00 */	cmplwi r28, 0
/* 800ED900 000EA840  41 82 01 18 */	beq lbl_800EDA18
/* 800ED904 000EA844  3C A0 80 00 */	lis r5, 0x800000DC@ha
/* 800ED908 000EA848  3C 80 60 06 */	lis r4, 0x6005F8FF@ha
/* 800ED90C 000EA84C  80 C5 00 DC */	lwz r6, 0x800000DC@l(r5)
/* 800ED910 000EA850  38 84 F8 FF */	addi r4, r4, 0x6005F8FF@l
/* 800ED914 000EA854  48 00 00 E8 */	b lbl_800ED9FC
lbl_800ED918:
/* 800ED918 000EA858  80 06 01 9C */	lwz r0, 0x19c(r6)
/* 800ED91C 000EA85C  60 00 09 00 */	ori r0, r0, 0x900
/* 800ED920 000EA860  90 06 01 9C */	stw r0, 0x19c(r6)
/* 800ED924 000EA864  A0 A6 01 A2 */	lhz r5, 0x1a2(r6)
/* 800ED928 000EA868  54 A0 07 FF */	clrlwi. r0, r5, 0x1f
/* 800ED92C 000EA86C  40 82 00 AC */	bne lbl_800ED9D8
/* 800ED930 000EA870  60 A5 00 01 */	ori r5, r5, 1
/* 800ED934 000EA874  38 00 00 04 */	li r0, 4
/* 800ED938 000EA878  B0 A6 01 A2 */	sth r5, 0x1a2(r6)
/* 800ED93C 000EA87C  7C 09 03 A6 */	mtctr r0
/* 800ED940 000EA880  38 A6 00 00 */	addi r5, r6, 0
lbl_800ED944:
/* 800ED944 000EA884  38 00 FF FF */	li r0, -1
/* 800ED948 000EA888  90 05 00 94 */	stw r0, 0x94(r5)
/* 800ED94C 000EA88C  90 05 00 90 */	stw r0, 0x90(r5)
/* 800ED950 000EA890  90 05 01 CC */	stw r0, 0x1cc(r5)
/* 800ED954 000EA894  90 05 01 C8 */	stw r0, 0x1c8(r5)
/* 800ED958 000EA898  90 05 00 9C */	stw r0, 0x9c(r5)
/* 800ED95C 000EA89C  90 05 00 98 */	stw r0, 0x98(r5)
/* 800ED960 000EA8A0  90 05 01 D4 */	stw r0, 0x1d4(r5)
/* 800ED964 000EA8A4  90 05 01 D0 */	stw r0, 0x1d0(r5)
/* 800ED968 000EA8A8  90 05 00 A4 */	stw r0, 0xa4(r5)
/* 800ED96C 000EA8AC  90 05 00 A0 */	stw r0, 0xa0(r5)
/* 800ED970 000EA8B0  90 05 01 DC */	stw r0, 0x1dc(r5)
/* 800ED974 000EA8B4  90 05 01 D8 */	stw r0, 0x1d8(r5)
/* 800ED978 000EA8B8  90 05 00 AC */	stw r0, 0xac(r5)
/* 800ED97C 000EA8BC  90 05 00 A8 */	stw r0, 0xa8(r5)
/* 800ED980 000EA8C0  90 05 01 E4 */	stw r0, 0x1e4(r5)
/* 800ED984 000EA8C4  90 05 01 E0 */	stw r0, 0x1e0(r5)
/* 800ED988 000EA8C8  90 05 00 B4 */	stw r0, 0xb4(r5)
/* 800ED98C 000EA8CC  90 05 00 B0 */	stw r0, 0xb0(r5)
/* 800ED990 000EA8D0  90 05 01 EC */	stw r0, 0x1ec(r5)
/* 800ED994 000EA8D4  90 05 01 E8 */	stw r0, 0x1e8(r5)
/* 800ED998 000EA8D8  90 05 00 BC */	stw r0, 0xbc(r5)
/* 800ED99C 000EA8DC  90 05 00 B8 */	stw r0, 0xb8(r5)
/* 800ED9A0 000EA8E0  90 05 01 F4 */	stw r0, 0x1f4(r5)
/* 800ED9A4 000EA8E4  90 05 01 F0 */	stw r0, 0x1f0(r5)
/* 800ED9A8 000EA8E8  90 05 00 C4 */	stw r0, 0xc4(r5)
/* 800ED9AC 000EA8EC  90 05 00 C0 */	stw r0, 0xc0(r5)
/* 800ED9B0 000EA8F0  90 05 01 FC */	stw r0, 0x1fc(r5)
/* 800ED9B4 000EA8F4  90 05 01 F8 */	stw r0, 0x1f8(r5)
/* 800ED9B8 000EA8F8  90 05 00 CC */	stw r0, 0xcc(r5)
/* 800ED9BC 000EA8FC  90 05 00 C8 */	stw r0, 0xc8(r5)
/* 800ED9C0 000EA900  90 05 02 04 */	stw r0, 0x204(r5)
/* 800ED9C4 000EA904  90 05 02 00 */	stw r0, 0x200(r5)
/* 800ED9C8 000EA908  38 A5 00 40 */	addi r5, r5, 0x40
/* 800ED9CC 000EA90C  42 00 FF 78 */	bdnz lbl_800ED944
/* 800ED9D0 000EA910  38 00 00 04 */	li r0, 4
/* 800ED9D4 000EA914  90 06 01 94 */	stw r0, 0x194(r6)
lbl_800ED9D8:
/* 800ED9D8 000EA918  80 0D 83 68 */	lwz r0, __OSFpscrEnableBits@sda21(r13)
/* 800ED9DC 000EA91C  80 A6 01 94 */	lwz r5, 0x194(r6)
/* 800ED9E0 000EA920  54 00 06 38 */	rlwinm r0, r0, 0, 0x18, 0x1c
/* 800ED9E4 000EA924  7C A0 03 78 */	or r0, r5, r0
/* 800ED9E8 000EA928  90 06 01 94 */	stw r0, 0x194(r6)
/* 800ED9EC 000EA92C  80 06 01 94 */	lwz r0, 0x194(r6)
/* 800ED9F0 000EA930  7C 00 20 38 */	and r0, r0, r4
/* 800ED9F4 000EA934  90 06 01 94 */	stw r0, 0x194(r6)
/* 800ED9F8 000EA938  80 C6 02 FC */	lwz r6, 0x2fc(r6)
lbl_800ED9FC:
/* 800ED9FC 000EA93C  28 06 00 00 */	cmplwi r6, 0
/* 800EDA00 000EA940  40 82 FF 18 */	bne lbl_800ED918
/* 800EDA04 000EA944  80 0D 83 68 */	lwz r0, __OSFpscrEnableBits@sda21(r13)
/* 800EDA08 000EA948  63 FF 09 00 */	ori r31, r31, 0x900
/* 800EDA0C 000EA94C  54 00 06 38 */	rlwinm r0, r0, 0, 0x18, 0x1c
/* 800EDA10 000EA950  7C 63 03 78 */	or r3, r3, r0
/* 800EDA14 000EA954  48 00 00 58 */	b lbl_800EDA6C
lbl_800EDA18:
/* 800EDA18 000EA958  3C A0 80 00 */	lis r5, 0x800000DC@ha
/* 800EDA1C 000EA95C  3C 80 60 06 */	lis r4, 0x6005F8FF@ha
/* 800EDA20 000EA960  80 C5 00 DC */	lwz r6, 0x800000DC@l(r5)
/* 800EDA24 000EA964  38 84 F8 FF */	addi r4, r4, 0x6005F8FF@l
/* 800EDA28 000EA968  38 A0 F6 FF */	li r5, -2305
/* 800EDA2C 000EA96C  48 00 00 2C */	b lbl_800EDA58
lbl_800EDA30:
/* 800EDA30 000EA970  80 06 01 9C */	lwz r0, 0x19c(r6)
/* 800EDA34 000EA974  7C 00 28 38 */	and r0, r0, r5
/* 800EDA38 000EA978  90 06 01 9C */	stw r0, 0x19c(r6)
/* 800EDA3C 000EA97C  80 06 01 94 */	lwz r0, 0x194(r6)
/* 800EDA40 000EA980  54 00 07 6E */	rlwinm r0, r0, 0, 0x1d, 0x17
/* 800EDA44 000EA984  90 06 01 94 */	stw r0, 0x194(r6)
/* 800EDA48 000EA988  80 06 01 94 */	lwz r0, 0x194(r6)
/* 800EDA4C 000EA98C  7C 00 20 38 */	and r0, r0, r4
/* 800EDA50 000EA990  90 06 01 94 */	stw r0, 0x194(r6)
/* 800EDA54 000EA994  80 C6 02 FC */	lwz r6, 0x2fc(r6)
lbl_800EDA58:
/* 800EDA58 000EA998  28 06 00 00 */	cmplwi r6, 0
/* 800EDA5C 000EA99C  40 82 FF D4 */	bne lbl_800EDA30
/* 800EDA60 000EA9A0  38 00 F6 FF */	li r0, -2305
/* 800EDA64 000EA9A4  54 63 07 6E */	rlwinm r3, r3, 0, 0x1d, 0x17
/* 800EDA68 000EA9A8  7F FF 00 38 */	and r31, r31, r0
lbl_800EDA6C:
/* 800EDA6C 000EA9AC  3C 80 60 06 */	lis r4, 0x6005F8FF@ha
/* 800EDA70 000EA9B0  38 04 F8 FF */	addi r0, r4, 0x6005F8FF@l
/* 800EDA74 000EA9B4  7C 63 00 38 */	and r3, r3, r0
/* 800EDA78 000EA9B8  4B FE 6B 85 */	bl PPCMtfpscr
/* 800EDA7C 000EA9BC  7F E3 FB 78 */	mr r3, r31
/* 800EDA80 000EA9C0  4B FE 6A E1 */	bl PPCMtmsr
lbl_800EDA84:
/* 800EDA84 000EA9C4  7F A3 EB 78 */	mr r3, r29
/* 800EDA88 000EA9C8  48 00 11 D9 */	bl OSRestoreInterrupts
/* 800EDA8C 000EA9CC  7F C3 F3 78 */	mr r3, r30
/* 800EDA90 000EA9D0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 800EDA94 000EA9D4  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 800EDA98 000EA9D8  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 800EDA9C 000EA9DC  83 A1 00 24 */	lwz r29, 0x24(r1)
/* 800EDAA0 000EA9E0  83 81 00 20 */	lwz r28, 0x20(r1)
/* 800EDAA4 000EA9E4  38 21 00 30 */	addi r1, r1, 0x30
/* 800EDAA8 000EA9E8  7C 08 03 A6 */	mtlr r0
/* 800EDAAC 000EA9EC  4E 80 00 20 */	blr 

.global __OSUnhandledException
__OSUnhandledException:
/* 800EDAB0 000EA9F0  7C 08 02 A6 */	mflr r0
/* 800EDAB4 000EA9F4  3D 00 80 4F */	lis r8, __OSErrorTable@ha
/* 800EDAB8 000EA9F8  90 01 00 04 */	stw r0, 4(r1)
/* 800EDABC 000EA9FC  3C E0 80 4B */	lis r7, lbl_804A8F90@ha
/* 800EDAC0 000EAA00  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 800EDAC4 000EAA04  BE C1 00 18 */	stmw r22, 0x18(r1)
/* 800EDAC8 000EAA08  3B 03 00 00 */	addi r24, r3, 0
/* 800EDACC 000EAA0C  3B 24 00 00 */	addi r25, r4, 0
/* 800EDAD0 000EAA10  3B 45 00 00 */	addi r26, r5, 0
/* 800EDAD4 000EAA14  3B 66 00 00 */	addi r27, r6, 0
/* 800EDAD8 000EAA18  3B C8 66 70 */	addi r30, r8, __OSErrorTable@l
/* 800EDADC 000EAA1C  3B E7 8F 90 */	addi r31, r7, lbl_804A8F90@l
/* 800EDAE0 000EAA20  48 00 50 B1 */	bl OSGetTime
/* 800EDAE4 000EAA24  80 B9 01 9C */	lwz r5, 0x19c(r25)
/* 800EDAE8 000EAA28  3B 84 00 00 */	addi r28, r4, 0
/* 800EDAEC 000EAA2C  3B A3 00 00 */	addi r29, r3, 0
/* 800EDAF0 000EAA30  54 A0 07 BD */	rlwinm. r0, r5, 0, 0x1e, 0x1e
/* 800EDAF4 000EAA34  40 82 00 18 */	bne lbl_800EDB0C
/* 800EDAF8 000EAA38  38 7F 00 5C */	addi r3, r31, 0x5c
/* 800EDAFC 000EAA3C  4C C6 31 82 */	crclr 6
/* 800EDB00 000EAA40  57 04 06 3E */	clrlwi r4, r24, 0x18
/* 800EDB04 000EAA44  4B FF FB E9 */	bl OSReport
/* 800EDB08 000EAA48  48 00 01 54 */	b lbl_800EDC5C
lbl_800EDB0C:
/* 800EDB0C 000EAA4C  57 00 06 3E */	clrlwi r0, r24, 0x18
/* 800EDB10 000EAA50  28 00 00 06 */	cmplwi r0, 6
/* 800EDB14 000EAA54  40 82 00 D8 */	bne lbl_800EDBEC
/* 800EDB18 000EAA58  54 A0 02 D7 */	rlwinm. r0, r5, 0, 0xb, 0xb
/* 800EDB1C 000EAA5C  41 82 00 D0 */	beq lbl_800EDBEC
/* 800EDB20 000EAA60  80 1E 00 40 */	lwz r0, 0x40(r30)
/* 800EDB24 000EAA64  28 00 00 00 */	cmplwi r0, 0
/* 800EDB28 000EAA68  41 82 00 C4 */	beq lbl_800EDBEC
/* 800EDB2C 000EAA6C  3B 00 00 10 */	li r24, 0x10
/* 800EDB30 000EAA70  4B FE 6A 29 */	bl PPCMfmsr
/* 800EDB34 000EAA74  3A E3 00 00 */	addi r23, r3, 0
/* 800EDB38 000EAA78  62 E3 20 00 */	ori r3, r23, 0x2000
/* 800EDB3C 000EAA7C  4B FE 6A 25 */	bl PPCMtmsr
/* 800EDB40 000EAA80  3C 60 80 00 */	lis r3, 0x800000D8@ha
/* 800EDB44 000EAA84  80 63 00 D8 */	lwz r3, 0x800000D8@l(r3)
/* 800EDB48 000EAA88  28 03 00 00 */	cmplwi r3, 0
/* 800EDB4C 000EAA8C  41 82 00 08 */	beq lbl_800EDB54
/* 800EDB50 000EAA90  4B FF F4 4D */	bl OSSaveFPUContext
lbl_800EDB54:
/* 800EDB54 000EAA94  4B FE 6A 89 */	bl PPCMffpscr
/* 800EDB58 000EAA98  3C 80 60 06 */	lis r4, 0x6005F8FF@ha
/* 800EDB5C 000EAA9C  3A C4 F8 FF */	addi r22, r4, 0x6005F8FF@l
/* 800EDB60 000EAAA0  7C 63 B0 38 */	and r3, r3, r22
/* 800EDB64 000EAAA4  4B FE 6A 99 */	bl PPCMtfpscr
/* 800EDB68 000EAAA8  7E E3 BB 78 */	mr r3, r23
/* 800EDB6C 000EAAAC  4B FE 69 F5 */	bl PPCMtmsr
/* 800EDB70 000EAAB0  3E E0 80 00 */	lis r23, 0x800000D8@ha
/* 800EDB74 000EAAB4  80 17 00 D8 */	lwz r0, 0x800000D8@l(r23)
/* 800EDB78 000EAAB8  7C 00 C8 40 */	cmplw r0, r25
/* 800EDB7C 000EAABC  40 82 00 54 */	bne lbl_800EDBD0
/* 800EDB80 000EAAC0  48 00 3E 85 */	bl OSDisableScheduler
/* 800EDB84 000EAAC4  81 9E 00 40 */	lwz r12, 0x40(r30)
/* 800EDB88 000EAAC8  38 99 00 00 */	addi r4, r25, 0
/* 800EDB8C 000EAACC  38 BA 00 00 */	addi r5, r26, 0
/* 800EDB90 000EAAD0  4C C6 31 82 */	crclr 6
/* 800EDB94 000EAAD4  7D 88 03 A6 */	mtlr r12
/* 800EDB98 000EAAD8  38 DB 00 00 */	addi r6, r27, 0
/* 800EDB9C 000EAADC  38 60 00 10 */	li r3, 0x10
/* 800EDBA0 000EAAE0  4E 80 00 21 */	blrl 
/* 800EDBA4 000EAAE4  80 79 01 9C */	lwz r3, 0x19c(r25)
/* 800EDBA8 000EAAE8  38 00 00 00 */	li r0, 0
/* 800EDBAC 000EAAEC  54 63 04 E2 */	rlwinm r3, r3, 0, 0x13, 0x11
/* 800EDBB0 000EAAF0  90 79 01 9C */	stw r3, 0x19c(r25)
/* 800EDBB4 000EAAF4  90 17 00 D8 */	stw r0, 0xd8(r23)
/* 800EDBB8 000EAAF8  80 19 01 94 */	lwz r0, 0x194(r25)
/* 800EDBBC 000EAAFC  7C 00 B0 38 */	and r0, r0, r22
/* 800EDBC0 000EAB00  90 19 01 94 */	stw r0, 0x194(r25)
/* 800EDBC4 000EAB04  48 00 3E 81 */	bl OSEnableScheduler
/* 800EDBC8 000EAB08  48 00 43 99 */	bl __OSReschedule
/* 800EDBCC 000EAB0C  48 00 00 18 */	b lbl_800EDBE4
lbl_800EDBD0:
/* 800EDBD0 000EAB10  80 79 01 9C */	lwz r3, 0x19c(r25)
/* 800EDBD4 000EAB14  38 00 00 00 */	li r0, 0
/* 800EDBD8 000EAB18  54 63 04 E2 */	rlwinm r3, r3, 0, 0x13, 0x11
/* 800EDBDC 000EAB1C  90 79 01 9C */	stw r3, 0x19c(r25)
/* 800EDBE0 000EAB20  90 17 00 D8 */	stw r0, 0xd8(r23)
lbl_800EDBE4:
/* 800EDBE4 000EAB24  7F 23 CB 78 */	mr r3, r25
/* 800EDBE8 000EAB28  4B FF F4 A5 */	bl OSLoadContext
lbl_800EDBEC:
/* 800EDBEC 000EAB2C  57 17 06 3E */	clrlwi r23, r24, 0x18
/* 800EDBF0 000EAB30  57 00 15 BA */	rlwinm r0, r24, 2, 0x16, 0x1d
/* 800EDBF4 000EAB34  7E DE 02 14 */	add r22, r30, r0
/* 800EDBF8 000EAB38  80 16 00 00 */	lwz r0, 0(r22)
/* 800EDBFC 000EAB3C  28 00 00 00 */	cmplwi r0, 0
/* 800EDC00 000EAB40  41 82 00 38 */	beq lbl_800EDC38
/* 800EDC04 000EAB44  48 00 3E 01 */	bl OSDisableScheduler
/* 800EDC08 000EAB48  81 96 00 00 */	lwz r12, 0(r22)
/* 800EDC0C 000EAB4C  38 77 00 00 */	addi r3, r23, 0
/* 800EDC10 000EAB50  38 99 00 00 */	addi r4, r25, 0
/* 800EDC14 000EAB54  4C C6 31 82 */	crclr 6
/* 800EDC18 000EAB58  7D 88 03 A6 */	mtlr r12
/* 800EDC1C 000EAB5C  38 BA 00 00 */	addi r5, r26, 0
/* 800EDC20 000EAB60  38 DB 00 00 */	addi r6, r27, 0
/* 800EDC24 000EAB64  4E 80 00 21 */	blrl 
/* 800EDC28 000EAB68  48 00 3E 1D */	bl OSEnableScheduler
/* 800EDC2C 000EAB6C  48 00 43 35 */	bl __OSReschedule
/* 800EDC30 000EAB70  7F 23 CB 78 */	mr r3, r25
/* 800EDC34 000EAB74  4B FF F4 59 */	bl OSLoadContext
lbl_800EDC38:
/* 800EDC38 000EAB78  57 00 06 3E */	clrlwi r0, r24, 0x18
/* 800EDC3C 000EAB7C  28 00 00 08 */	cmplwi r0, 8
/* 800EDC40 000EAB80  40 82 00 0C */	bne lbl_800EDC4C
/* 800EDC44 000EAB84  7F 23 CB 78 */	mr r3, r25
/* 800EDC48 000EAB88  4B FF F4 45 */	bl OSLoadContext
lbl_800EDC4C:
/* 800EDC4C 000EAB8C  38 7F 00 7C */	addi r3, r31, 0x7c
/* 800EDC50 000EAB90  4C C6 31 82 */	crclr 6
/* 800EDC54 000EAB94  57 04 06 3E */	clrlwi r4, r24, 0x18
/* 800EDC58 000EAB98  4B FF FA 95 */	bl OSReport
lbl_800EDC5C:
/* 800EDC5C 000EAB9C  38 6D 83 6C */	addi r3, r13, lbl_805149EC@sda21
/* 800EDC60 000EABA0  4C C6 31 82 */	crclr 6
/* 800EDC64 000EABA4  4B FF FA 89 */	bl OSReport
/* 800EDC68 000EABA8  7F 23 CB 78 */	mr r3, r25
/* 800EDC6C 000EABAC  4B FF F5 E1 */	bl OSDumpContext
/* 800EDC70 000EABB0  38 9A 00 00 */	addi r4, r26, 0
/* 800EDC74 000EABB4  4C C6 31 82 */	crclr 6
/* 800EDC78 000EABB8  38 BB 00 00 */	addi r5, r27, 0
/* 800EDC7C 000EABBC  38 7F 00 94 */	addi r3, r31, 0x94
/* 800EDC80 000EABC0  4B FF FA 6D */	bl OSReport
/* 800EDC84 000EABC4  38 DC 00 00 */	addi r6, r28, 0
/* 800EDC88 000EABC8  4C C6 31 82 */	crclr 6
/* 800EDC8C 000EABCC  38 BD 00 00 */	addi r5, r29, 0
/* 800EDC90 000EABD0  38 7F 00 C8 */	addi r3, r31, 0xc8
/* 800EDC94 000EABD4  4B FF FA 59 */	bl OSReport
/* 800EDC98 000EABD8  57 00 06 3E */	clrlwi r0, r24, 0x18
/* 800EDC9C 000EABDC  28 00 00 0F */	cmplwi r0, 0xf
/* 800EDCA0 000EABE0  41 81 00 C4 */	bgt lbl_800EDD64
/* 800EDCA4 000EABE4  3C 60 80 4B */	lis r3, lbl_804A926C@ha
/* 800EDCA8 000EABE8  38 63 92 6C */	addi r3, r3, lbl_804A926C@l
/* 800EDCAC 000EABEC  54 00 10 3A */	slwi r0, r0, 2
/* 800EDCB0 000EABF0  7C 03 00 2E */	lwzx r0, r3, r0
/* 800EDCB4 000EABF4  7C 09 03 A6 */	mtctr r0
/* 800EDCB8 000EABF8  4E 80 04 20 */	bctr 
.global lbl_800EDCBC
lbl_800EDCBC:
/* 800EDCBC 000EABFC  80 99 01 98 */	lwz r4, 0x198(r25)
/* 800EDCC0 000EAC00  38 BB 00 00 */	addi r5, r27, 0
/* 800EDCC4 000EAC04  38 7F 00 D8 */	addi r3, r31, 0xd8
/* 800EDCC8 000EAC08  4C C6 31 82 */	crclr 6
/* 800EDCCC 000EAC0C  4B FF FA 21 */	bl OSReport
/* 800EDCD0 000EAC10  48 00 00 94 */	b lbl_800EDD64
.global lbl_800EDCD4
lbl_800EDCD4:
/* 800EDCD4 000EAC14  80 99 01 98 */	lwz r4, 0x198(r25)
/* 800EDCD8 000EAC18  38 7F 01 38 */	addi r3, r31, 0x138
/* 800EDCDC 000EAC1C  4C C6 31 82 */	crclr 6
/* 800EDCE0 000EAC20  4B FF FA 0D */	bl OSReport
/* 800EDCE4 000EAC24  48 00 00 80 */	b lbl_800EDD64
.global lbl_800EDCE8
lbl_800EDCE8:
/* 800EDCE8 000EAC28  80 99 01 98 */	lwz r4, 0x198(r25)
/* 800EDCEC 000EAC2C  38 BB 00 00 */	addi r5, r27, 0
/* 800EDCF0 000EAC30  38 7F 01 84 */	addi r3, r31, 0x184
/* 800EDCF4 000EAC34  4C C6 31 82 */	crclr 6
/* 800EDCF8 000EAC38  4B FF F9 F5 */	bl OSReport
/* 800EDCFC 000EAC3C  48 00 00 68 */	b lbl_800EDD64
.global lbl_800EDD00
lbl_800EDD00:
/* 800EDD00 000EAC40  80 99 01 98 */	lwz r4, 0x198(r25)
/* 800EDD04 000EAC44  38 BB 00 00 */	addi r5, r27, 0
/* 800EDD08 000EAC48  38 7F 01 E8 */	addi r3, r31, 0x1e8
/* 800EDD0C 000EAC4C  4C C6 31 82 */	crclr 6
/* 800EDD10 000EAC50  4B FF F9 DD */	bl OSReport
/* 800EDD14 000EAC54  48 00 00 50 */	b lbl_800EDD64
.global lbl_800EDD18
lbl_800EDD18:
/* 800EDD18 000EAC58  38 6D 83 6C */	addi r3, r13, lbl_805149EC@sda21
/* 800EDD1C 000EAC5C  4C C6 31 82 */	crclr 6
/* 800EDD20 000EAC60  4B FF F9 CD */	bl OSReport
/* 800EDD24 000EAC64  3F 20 CC 00 */	lis r25, 0xCC005000@ha
/* 800EDD28 000EAC68  4C C6 31 82 */	crclr 6
/* 800EDD2C 000EAC6C  3B 19 50 00 */	addi r24, r25, 0xCC005000@l
/* 800EDD30 000EAC70  A0 99 50 30 */	lhz r4, 0x5030(r25)
/* 800EDD34 000EAC74  38 7F 02 48 */	addi r3, r31, 0x248
/* 800EDD38 000EAC78  A0 B9 50 32 */	lhz r5, 0x5032(r25)
/* 800EDD3C 000EAC7C  4B FF F9 B1 */	bl OSReport
/* 800EDD40 000EAC80  A0 98 00 20 */	lhz r4, 0x20(r24)
/* 800EDD44 000EAC84  38 7F 02 68 */	addi r3, r31, 0x268
/* 800EDD48 000EAC88  A0 B8 00 22 */	lhz r5, 0x22(r24)
/* 800EDD4C 000EAC8C  4C C6 31 82 */	crclr 6
/* 800EDD50 000EAC90  4B FF F9 9D */	bl OSReport
/* 800EDD54 000EAC94  80 99 60 14 */	lwz r4, 0x6014(r25)
/* 800EDD58 000EAC98  4C C6 31 82 */	crclr 6
/* 800EDD5C 000EAC9C  38 7F 02 88 */	addi r3, r31, 0x288
/* 800EDD60 000EACA0  4B FF F9 8D */	bl OSReport
.global lbl_800EDD64
lbl_800EDD64:
/* 800EDD64 000EACA4  A8 8D 8F 88 */	lha r4, __OSLastInterrupt@sda21(r13)
/* 800EDD68 000EACA8  38 7F 02 A4 */	addi r3, r31, 0x2a4
/* 800EDD6C 000EACAC  4C C6 31 82 */	crclr 6
/* 800EDD70 000EACB0  80 AD 8F 84 */	lwz r5, __OSLastInterruptSrr0@sda21(r13)
/* 800EDD74 000EACB4  80 ED 8F 90 */	lwz r7, __OSLastInterruptTime@sda21(r13)
/* 800EDD78 000EACB8  81 0D 8F 94 */	lwz r8, lbl_80515614@sda21(r13)
/* 800EDD7C 000EACBC  4B FF F9 71 */	bl OSReport
/* 800EDD80 000EACC0  4B FE 68 19 */	bl PPCHalt
/* 800EDD84 000EACC4  BA C1 00 18 */	lmw r22, 0x18(r1)
/* 800EDD88 000EACC8  80 01 00 44 */	lwz r0, 0x44(r1)
/* 800EDD8C 000EACCC  38 21 00 40 */	addi r1, r1, 0x40
/* 800EDD90 000EACD0  7C 08 03 A6 */	mtlr r0
/* 800EDD94 000EACD4  4E 80 00 20 */	blr 
