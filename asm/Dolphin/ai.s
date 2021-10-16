.include "macros.inc"
.section .sdata, "wa"  # 0x80514680 - 0x80514D80
.balign 0x8
.global __AIVersion
__AIVersion:
	.4byte AI_VERSION_STRING

.section .text, "ax"  # 0x800056C0 - 0x80472F00
.global AIRegisterDMACallback
AIRegisterDMACallback:
/* 800F6864 000F37A4  7C 08 02 A6 */	mflr r0
/* 800F6868 000F37A8  90 01 00 04 */	stw r0, 4(r1)
/* 800F686C 000F37AC  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 800F6870 000F37B0  93 E1 00 14 */	stw r31, 0x14(r1)
/* 800F6874 000F37B4  93 C1 00 10 */	stw r30, 0x10(r1)
/* 800F6878 000F37B8  7C 7E 1B 78 */	mr r30, r3
/* 800F687C 000F37BC  83 ED 90 3C */	lwz r31, __AID_Callback@sda21(r13)
/* 800F6880 000F37C0  4B FF 83 B9 */	bl OSDisableInterrupts
/* 800F6884 000F37C4  93 CD 90 3C */	stw r30, __AID_Callback@sda21(r13)
/* 800F6888 000F37C8  4B FF 83 D9 */	bl OSRestoreInterrupts
/* 800F688C 000F37CC  7F E3 FB 78 */	mr r3, r31
/* 800F6890 000F37D0  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 800F6894 000F37D4  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 800F6898 000F37D8  83 C1 00 10 */	lwz r30, 0x10(r1)
/* 800F689C 000F37DC  38 21 00 18 */	addi r1, r1, 0x18
/* 800F68A0 000F37E0  7C 08 03 A6 */	mtlr r0
/* 800F68A4 000F37E4  4E 80 00 20 */	blr 

.global AIInitDMA
AIInitDMA:
/* 800F68A8 000F37E8  7C 08 02 A6 */	mflr r0
/* 800F68AC 000F37EC  90 01 00 04 */	stw r0, 4(r1)
/* 800F68B0 000F37F0  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 800F68B4 000F37F4  93 E1 00 14 */	stw r31, 0x14(r1)
/* 800F68B8 000F37F8  3B E4 00 00 */	addi r31, r4, 0
/* 800F68BC 000F37FC  93 C1 00 10 */	stw r30, 0x10(r1)
/* 800F68C0 000F3800  3B C3 00 00 */	addi r30, r3, 0
/* 800F68C4 000F3804  4B FF 83 75 */	bl OSDisableInterrupts
/* 800F68C8 000F3808  3C 80 CC 00 */	lis r4, 0xCC005030@ha
/* 800F68CC 000F380C  A0 04 50 30 */	lhz r0, 0xCC005030@l(r4)
/* 800F68D0 000F3810  38 A4 50 00 */	addi r5, r4, 0x5000
/* 800F68D4 000F3814  38 C4 50 00 */	addi r6, r4, 0x5000
/* 800F68D8 000F3818  38 E4 50 00 */	addi r7, r4, 0x5000
/* 800F68DC 000F381C  54 04 00 2A */	rlwinm r4, r0, 0, 0, 0x15
/* 800F68E0 000F3820  57 C0 84 3E */	srwi r0, r30, 0x10
/* 800F68E4 000F3824  7C 80 03 78 */	or r0, r4, r0
/* 800F68E8 000F3828  B0 05 00 30 */	sth r0, 0x30(r5)
/* 800F68EC 000F382C  57 C0 04 3E */	clrlwi r0, r30, 0x10
/* 800F68F0 000F3830  A0 86 00 32 */	lhz r4, 0x32(r6)
/* 800F68F4 000F3834  54 84 06 DE */	rlwinm r4, r4, 0, 0x1b, 0xf
/* 800F68F8 000F3838  7C 80 03 78 */	or r0, r4, r0
/* 800F68FC 000F383C  B0 06 00 32 */	sth r0, 0x32(r6)
/* 800F6900 000F3840  57 E0 DC 3E */	rlwinm r0, r31, 0x1b, 0x10, 0x1f
/* 800F6904 000F3844  A0 87 00 36 */	lhz r4, 0x36(r7)
/* 800F6908 000F3848  54 84 00 20 */	rlwinm r4, r4, 0, 0, 0x10
/* 800F690C 000F384C  7C 80 03 78 */	or r0, r4, r0
/* 800F6910 000F3850  B0 07 00 36 */	sth r0, 0x36(r7)
/* 800F6914 000F3854  4B FF 83 4D */	bl OSRestoreInterrupts
/* 800F6918 000F3858  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 800F691C 000F385C  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 800F6920 000F3860  83 C1 00 10 */	lwz r30, 0x10(r1)
/* 800F6924 000F3864  38 21 00 18 */	addi r1, r1, 0x18
/* 800F6928 000F3868  7C 08 03 A6 */	mtlr r0
/* 800F692C 000F386C  4E 80 00 20 */	blr 

.global AIStartDMA
AIStartDMA:
/* 800F6930 000F3870  3C 60 CC 00 */	lis r3, 0xCC005000@ha
/* 800F6934 000F3874  38 63 50 00 */	addi r3, r3, 0xCC005000@l
/* 800F6938 000F3878  A0 03 00 36 */	lhz r0, 0x36(r3)
/* 800F693C 000F387C  60 00 80 00 */	ori r0, r0, 0x8000
/* 800F6940 000F3880  B0 03 00 36 */	sth r0, 0x36(r3)
/* 800F6944 000F3884  4E 80 00 20 */	blr 

.global AIStopDMA
AIStopDMA:
/* 800F6948 000F3888  3C 60 CC 00 */	lis r3, 0xCC005000@ha
/* 800F694C 000F388C  38 63 50 00 */	addi r3, r3, 0xCC005000@l
/* 800F6950 000F3890  A0 03 00 36 */	lhz r0, 0x36(r3)
/* 800F6954 000F3894  54 00 04 5E */	rlwinm r0, r0, 0, 0x11, 0xf
/* 800F6958 000F3898  B0 03 00 36 */	sth r0, 0x36(r3)
/* 800F695C 000F389C  4E 80 00 20 */	blr 

.global AISetStreamPlayState
AISetStreamPlayState:
/* 800F6960 000F38A0  7C 08 02 A6 */	mflr r0
/* 800F6964 000F38A4  90 01 00 04 */	stw r0, 4(r1)
/* 800F6968 000F38A8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800F696C 000F38AC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 800F6970 000F38B0  93 C1 00 18 */	stw r30, 0x18(r1)
/* 800F6974 000F38B4  93 A1 00 14 */	stw r29, 0x14(r1)
/* 800F6978 000F38B8  7C 7D 1B 78 */	mr r29, r3
/* 800F697C 000F38BC  48 00 00 BD */	bl AIGetStreamPlayState
/* 800F6980 000F38C0  7C 1D 18 40 */	cmplw r29, r3
/* 800F6984 000F38C4  41 82 00 98 */	beq lbl_800F6A1C
/* 800F6988 000F38C8  48 00 02 89 */	bl AIGetStreamSampleRate
/* 800F698C 000F38CC  28 03 00 00 */	cmplwi r3, 0
/* 800F6990 000F38D0  40 82 00 78 */	bne lbl_800F6A08
/* 800F6994 000F38D4  28 1D 00 01 */	cmplwi r29, 1
/* 800F6998 000F38D8  40 82 00 70 */	bne lbl_800F6A08
/* 800F699C 000F38DC  48 00 02 CD */	bl AIGetStreamVolRight
/* 800F69A0 000F38E0  7C 7E 1B 78 */	mr r30, r3
/* 800F69A4 000F38E4  48 00 02 99 */	bl AIGetStreamVolLeft
/* 800F69A8 000F38E8  3B A3 00 00 */	addi r29, r3, 0
/* 800F69AC 000F38EC  38 60 00 00 */	li r3, 0
/* 800F69B0 000F38F0  48 00 02 9D */	bl AISetStreamVolRight
/* 800F69B4 000F38F4  38 60 00 00 */	li r3, 0
/* 800F69B8 000F38F8  48 00 02 69 */	bl AISetStreamVolLeft
/* 800F69BC 000F38FC  4B FF 82 7D */	bl OSDisableInterrupts
/* 800F69C0 000F3900  7C 7F 1B 78 */	mr r31, r3
/* 800F69C4 000F3904  48 00 05 A1 */	bl __AI_SRC_INIT
/* 800F69C8 000F3908  3C 80 CC 00 */	lis r4, 0xCC006C00@ha
/* 800F69CC 000F390C  80 04 6C 00 */	lwz r0, 0xCC006C00@l(r4)
/* 800F69D0 000F3910  38 7F 00 00 */	addi r3, r31, 0
/* 800F69D4 000F3914  54 00 06 F2 */	rlwinm r0, r0, 0, 0x1b, 0x19
/* 800F69D8 000F3918  60 00 00 20 */	ori r0, r0, 0x20
/* 800F69DC 000F391C  90 04 6C 00 */	stw r0, 0x6c00(r4)
/* 800F69E0 000F3920  80 04 6C 00 */	lwz r0, 0x6c00(r4)
/* 800F69E4 000F3924  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 800F69E8 000F3928  60 00 00 01 */	ori r0, r0, 1
/* 800F69EC 000F392C  90 04 6C 00 */	stw r0, 0x6c00(r4)
/* 800F69F0 000F3930  4B FF 82 71 */	bl OSRestoreInterrupts
/* 800F69F4 000F3934  7F C3 F3 78 */	mr r3, r30
/* 800F69F8 000F3938  48 00 02 29 */	bl AISetStreamVolLeft
/* 800F69FC 000F393C  7F A3 EB 78 */	mr r3, r29
/* 800F6A00 000F3940  48 00 02 4D */	bl AISetStreamVolRight
/* 800F6A04 000F3944  48 00 00 18 */	b lbl_800F6A1C
lbl_800F6A08:
/* 800F6A08 000F3948  3C 60 CC 00 */	lis r3, 0xCC006C00@ha
/* 800F6A0C 000F394C  80 03 6C 00 */	lwz r0, 0xCC006C00@l(r3)
/* 800F6A10 000F3950  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 800F6A14 000F3954  7C 00 EB 78 */	or r0, r0, r29
/* 800F6A18 000F3958  90 03 6C 00 */	stw r0, 0x6c00(r3)
lbl_800F6A1C:
/* 800F6A1C 000F395C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800F6A20 000F3960  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 800F6A24 000F3964  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 800F6A28 000F3968  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 800F6A2C 000F396C  38 21 00 20 */	addi r1, r1, 0x20
/* 800F6A30 000F3970  7C 08 03 A6 */	mtlr r0
/* 800F6A34 000F3974  4E 80 00 20 */	blr 

.global AIGetStreamPlayState
AIGetStreamPlayState:
/* 800F6A38 000F3978  3C 60 CC 00 */	lis r3, 0xCC006C00@ha
/* 800F6A3C 000F397C  80 03 6C 00 */	lwz r0, 0xCC006C00@l(r3)
/* 800F6A40 000F3980  54 03 07 FE */	clrlwi r3, r0, 0x1f
/* 800F6A44 000F3984  4E 80 00 20 */	blr 

.global AISetDSPSampleRate
AISetDSPSampleRate:
/* 800F6A48 000F3988  7C 08 02 A6 */	mflr r0
/* 800F6A4C 000F398C  90 01 00 04 */	stw r0, 4(r1)
/* 800F6A50 000F3990  94 21 FF D8 */	stwu r1, -0x28(r1)
/* 800F6A54 000F3994  BF 41 00 10 */	stmw r26, 0x10(r1)
/* 800F6A58 000F3998  7C 7A 1B 78 */	mr r26, r3
/* 800F6A5C 000F399C  48 00 00 CD */	bl AIGetDSPSampleRate
/* 800F6A60 000F39A0  7C 1A 18 40 */	cmplw r26, r3
/* 800F6A64 000F39A4  41 82 00 B0 */	beq lbl_800F6B14
/* 800F6A68 000F39A8  3F E0 CC 00 */	lis r31, 0xCC006C00@ha
/* 800F6A6C 000F39AC  80 1F 6C 00 */	lwz r0, 0xCC006C00@l(r31)
/* 800F6A70 000F39B0  28 1A 00 00 */	cmplwi r26, 0
/* 800F6A74 000F39B4  54 00 06 B0 */	rlwinm r0, r0, 0, 0x1a, 0x18
/* 800F6A78 000F39B8  90 1F 6C 00 */	stw r0, 0x6c00(r31)
/* 800F6A7C 000F39BC  40 82 00 98 */	bne lbl_800F6B14
/* 800F6A80 000F39C0  48 00 01 BD */	bl AIGetStreamVolLeft
/* 800F6A84 000F39C4  7C 7E 1B 78 */	mr r30, r3
/* 800F6A88 000F39C8  48 00 01 E1 */	bl AIGetStreamVolRight
/* 800F6A8C 000F39CC  80 1F 6C 00 */	lwz r0, 0x6c00(r31)
/* 800F6A90 000F39D0  3B A3 00 00 */	addi r29, r3, 0
/* 800F6A94 000F39D4  54 1B 07 FE */	clrlwi r27, r0, 0x1f
/* 800F6A98 000F39D8  48 00 01 79 */	bl AIGetStreamSampleRate
/* 800F6A9C 000F39DC  3B 83 00 00 */	addi r28, r3, 0
/* 800F6AA0 000F39E0  38 60 00 00 */	li r3, 0
/* 800F6AA4 000F39E4  48 00 01 7D */	bl AISetStreamVolLeft
/* 800F6AA8 000F39E8  38 60 00 00 */	li r3, 0
/* 800F6AAC 000F39EC  48 00 01 A1 */	bl AISetStreamVolRight
/* 800F6AB0 000F39F0  4B FF 81 89 */	bl OSDisableInterrupts
/* 800F6AB4 000F39F4  7C 7A 1B 78 */	mr r26, r3
/* 800F6AB8 000F39F8  48 00 04 AD */	bl __AI_SRC_INIT
/* 800F6ABC 000F39FC  80 9F 6C 00 */	lwz r4, 0x6c00(r31)
/* 800F6AC0 000F3A00  57 80 08 3C */	slwi r0, r28, 1
/* 800F6AC4 000F3A04  38 7A 00 00 */	addi r3, r26, 0
/* 800F6AC8 000F3A08  54 84 06 F2 */	rlwinm r4, r4, 0, 0x1b, 0x19
/* 800F6ACC 000F3A0C  60 84 00 20 */	ori r4, r4, 0x20
/* 800F6AD0 000F3A10  90 9F 6C 00 */	stw r4, 0x6c00(r31)
/* 800F6AD4 000F3A14  80 9F 6C 00 */	lwz r4, 0x6c00(r31)
/* 800F6AD8 000F3A18  54 84 07 FA */	rlwinm r4, r4, 0, 0x1f, 0x1d
/* 800F6ADC 000F3A1C  7C 80 03 78 */	or r0, r4, r0
/* 800F6AE0 000F3A20  90 1F 6C 00 */	stw r0, 0x6c00(r31)
/* 800F6AE4 000F3A24  80 1F 6C 00 */	lwz r0, 0x6c00(r31)
/* 800F6AE8 000F3A28  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 800F6AEC 000F3A2C  7C 00 DB 78 */	or r0, r0, r27
/* 800F6AF0 000F3A30  90 1F 6C 00 */	stw r0, 0x6c00(r31)
/* 800F6AF4 000F3A34  80 1F 6C 00 */	lwz r0, 0x6c00(r31)
/* 800F6AF8 000F3A38  60 00 00 40 */	ori r0, r0, 0x40
/* 800F6AFC 000F3A3C  90 1F 6C 00 */	stw r0, 0x6c00(r31)
/* 800F6B00 000F3A40  4B FF 81 61 */	bl OSRestoreInterrupts
/* 800F6B04 000F3A44  7F C3 F3 78 */	mr r3, r30
/* 800F6B08 000F3A48  48 00 01 19 */	bl AISetStreamVolLeft
/* 800F6B0C 000F3A4C  7F A3 EB 78 */	mr r3, r29
/* 800F6B10 000F3A50  48 00 01 3D */	bl AISetStreamVolRight
lbl_800F6B14:
/* 800F6B14 000F3A54  BB 41 00 10 */	lmw r26, 0x10(r1)
/* 800F6B18 000F3A58  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 800F6B1C 000F3A5C  38 21 00 28 */	addi r1, r1, 0x28
/* 800F6B20 000F3A60  7C 08 03 A6 */	mtlr r0
/* 800F6B24 000F3A64  4E 80 00 20 */	blr 

.global AIGetDSPSampleRate
AIGetDSPSampleRate:
/* 800F6B28 000F3A68  3C 60 CC 00 */	lis r3, 0xCC006C00@ha
/* 800F6B2C 000F3A6C  80 03 6C 00 */	lwz r0, 0xCC006C00@l(r3)
/* 800F6B30 000F3A70  54 00 D7 FE */	rlwinm r0, r0, 0x1a, 0x1f, 0x1f
/* 800F6B34 000F3A74  68 03 00 01 */	xori r3, r0, 1
/* 800F6B38 000F3A78  4E 80 00 20 */	blr 

.global __AI_set_stream_sample_rate
__AI_set_stream_sample_rate:
/* 800F6B3C 000F3A7C  7C 08 02 A6 */	mflr r0
/* 800F6B40 000F3A80  90 01 00 04 */	stw r0, 4(r1)
/* 800F6B44 000F3A84  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 800F6B48 000F3A88  BF 21 00 14 */	stmw r25, 0x14(r1)
/* 800F6B4C 000F3A8C  7C 79 1B 78 */	mr r25, r3
/* 800F6B50 000F3A90  48 00 00 C1 */	bl AIGetStreamSampleRate
/* 800F6B54 000F3A94  7C 19 18 40 */	cmplw r25, r3
/* 800F6B58 000F3A98  41 82 00 A4 */	beq lbl_800F6BFC
/* 800F6B5C 000F3A9C  3F E0 CC 00 */	lis r31, 0xCC006C00@ha
/* 800F6B60 000F3AA0  80 1F 6C 00 */	lwz r0, 0xCC006C00@l(r31)
/* 800F6B64 000F3AA4  54 00 07 FE */	clrlwi r0, r0, 0x1f
/* 800F6B68 000F3AA8  7C 1D 03 78 */	mr r29, r0
/* 800F6B6C 000F3AAC  48 00 00 D1 */	bl AIGetStreamVolLeft
/* 800F6B70 000F3AB0  7C 7C 1B 78 */	mr r28, r3
/* 800F6B74 000F3AB4  48 00 00 F5 */	bl AIGetStreamVolRight
/* 800F6B78 000F3AB8  3B 63 00 00 */	addi r27, r3, 0
/* 800F6B7C 000F3ABC  38 60 00 00 */	li r3, 0
/* 800F6B80 000F3AC0  48 00 00 CD */	bl AISetStreamVolRight
/* 800F6B84 000F3AC4  38 60 00 00 */	li r3, 0
/* 800F6B88 000F3AC8  48 00 00 99 */	bl AISetStreamVolLeft
/* 800F6B8C 000F3ACC  80 7F 6C 00 */	lwz r3, 0x6c00(r31)
/* 800F6B90 000F3AD0  80 1F 6C 00 */	lwz r0, 0x6c00(r31)
/* 800F6B94 000F3AD4  54 7A 06 72 */	rlwinm r26, r3, 0, 0x19, 0x19
/* 800F6B98 000F3AD8  54 00 06 B0 */	rlwinm r0, r0, 0, 0x1a, 0x18
/* 800F6B9C 000F3ADC  90 1F 6C 00 */	stw r0, 0x6c00(r31)
/* 800F6BA0 000F3AE0  4B FF 80 99 */	bl OSDisableInterrupts
/* 800F6BA4 000F3AE4  7C 7E 1B 78 */	mr r30, r3
/* 800F6BA8 000F3AE8  48 00 03 BD */	bl __AI_SRC_INIT
/* 800F6BAC 000F3AEC  80 9F 6C 00 */	lwz r4, 0x6c00(r31)
/* 800F6BB0 000F3AF0  57 20 08 3C */	slwi r0, r25, 1
/* 800F6BB4 000F3AF4  38 7E 00 00 */	addi r3, r30, 0
/* 800F6BB8 000F3AF8  7C 84 D3 78 */	or r4, r4, r26
/* 800F6BBC 000F3AFC  90 9F 6C 00 */	stw r4, 0x6c00(r31)
/* 800F6BC0 000F3B00  80 9F 6C 00 */	lwz r4, 0x6c00(r31)
/* 800F6BC4 000F3B04  54 84 06 F2 */	rlwinm r4, r4, 0, 0x1b, 0x19
/* 800F6BC8 000F3B08  60 84 00 20 */	ori r4, r4, 0x20
/* 800F6BCC 000F3B0C  90 9F 6C 00 */	stw r4, 0x6c00(r31)
/* 800F6BD0 000F3B10  80 9F 6C 00 */	lwz r4, 0x6c00(r31)
/* 800F6BD4 000F3B14  54 84 07 FA */	rlwinm r4, r4, 0, 0x1f, 0x1d
/* 800F6BD8 000F3B18  7C 80 03 78 */	or r0, r4, r0
/* 800F6BDC 000F3B1C  90 1F 6C 00 */	stw r0, 0x6c00(r31)
/* 800F6BE0 000F3B20  4B FF 80 81 */	bl OSRestoreInterrupts
/* 800F6BE4 000F3B24  7F A3 EB 78 */	mr r3, r29
/* 800F6BE8 000F3B28  4B FF FD 79 */	bl AISetStreamPlayState
/* 800F6BEC 000F3B2C  7F 83 E3 78 */	mr r3, r28
/* 800F6BF0 000F3B30  48 00 00 31 */	bl AISetStreamVolLeft
/* 800F6BF4 000F3B34  7F 63 DB 78 */	mr r3, r27
/* 800F6BF8 000F3B38  48 00 00 55 */	bl AISetStreamVolRight
lbl_800F6BFC:
/* 800F6BFC 000F3B3C  BB 21 00 14 */	lmw r25, 0x14(r1)
/* 800F6C00 000F3B40  80 01 00 34 */	lwz r0, 0x34(r1)
/* 800F6C04 000F3B44  38 21 00 30 */	addi r1, r1, 0x30
/* 800F6C08 000F3B48  7C 08 03 A6 */	mtlr r0
/* 800F6C0C 000F3B4C  4E 80 00 20 */	blr 

.global AIGetStreamSampleRate
AIGetStreamSampleRate:
/* 800F6C10 000F3B50  3C 60 CC 00 */	lis r3, 0xCC006C00@ha
/* 800F6C14 000F3B54  80 03 6C 00 */	lwz r0, 0xCC006C00@l(r3)
/* 800F6C18 000F3B58  54 03 FF FE */	rlwinm r3, r0, 0x1f, 0x1f, 0x1f
/* 800F6C1C 000F3B5C  4E 80 00 20 */	blr 

.global AISetStreamVolLeft
AISetStreamVolLeft:
/* 800F6C20 000F3B60  3C 80 CC 00 */	lis r4, 0xCC006C00@ha
/* 800F6C24 000F3B64  38 84 6C 00 */	addi r4, r4, 0xCC006C00@l
/* 800F6C28 000F3B68  80 04 00 04 */	lwz r0, 4(r4)
/* 800F6C2C 000F3B6C  54 00 00 2E */	rlwinm r0, r0, 0, 0, 0x17
/* 800F6C30 000F3B70  50 60 06 3E */	rlwimi r0, r3, 0, 0x18, 0x1f
/* 800F6C34 000F3B74  90 04 00 04 */	stw r0, 4(r4)
/* 800F6C38 000F3B78  4E 80 00 20 */	blr 

.global AIGetStreamVolLeft
AIGetStreamVolLeft:
/* 800F6C3C 000F3B7C  3C 60 CC 00 */	lis r3, 0xCC006C04@ha
/* 800F6C40 000F3B80  80 03 6C 04 */	lwz r0, 0xCC006C04@l(r3)
/* 800F6C44 000F3B84  54 03 06 3E */	clrlwi r3, r0, 0x18
/* 800F6C48 000F3B88  4E 80 00 20 */	blr 

.global AISetStreamVolRight
AISetStreamVolRight:
/* 800F6C4C 000F3B8C  3C 80 CC 00 */	lis r4, 0xCC006C00@ha
/* 800F6C50 000F3B90  38 84 6C 00 */	addi r4, r4, 0xCC006C00@l
/* 800F6C54 000F3B94  80 04 00 04 */	lwz r0, 4(r4)
/* 800F6C58 000F3B98  54 00 06 1E */	rlwinm r0, r0, 0, 0x18, 0xf
/* 800F6C5C 000F3B9C  50 60 44 2E */	rlwimi r0, r3, 8, 0x10, 0x17
/* 800F6C60 000F3BA0  90 04 00 04 */	stw r0, 4(r4)
/* 800F6C64 000F3BA4  4E 80 00 20 */	blr 

.global AIGetStreamVolRight
AIGetStreamVolRight:
/* 800F6C68 000F3BA8  3C 60 CC 00 */	lis r3, 0xCC006C04@ha
/* 800F6C6C 000F3BAC  80 03 6C 04 */	lwz r0, 0xCC006C04@l(r3)
/* 800F6C70 000F3BB0  54 03 C6 3E */	rlwinm r3, r0, 0x18, 0x18, 0x1f
/* 800F6C74 000F3BB4  4E 80 00 20 */	blr 

.global AIInit
AIInit:
/* 800F6C78 000F3BB8  7C 08 02 A6 */	mflr r0
/* 800F6C7C 000F3BBC  90 01 00 04 */	stw r0, 4(r1)
/* 800F6C80 000F3BC0  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 800F6C84 000F3BC4  93 E1 00 14 */	stw r31, 0x14(r1)
/* 800F6C88 000F3BC8  93 C1 00 10 */	stw r30, 0x10(r1)
/* 800F6C8C 000F3BCC  3B C3 00 00 */	addi r30, r3, 0
/* 800F6C90 000F3BD0  80 0D 90 48 */	lwz r0, __AI_init_flag@sda21(r13)
/* 800F6C94 000F3BD4  2C 00 00 01 */	cmpwi r0, 1
/* 800F6C98 000F3BD8  41 82 01 34 */	beq lbl_800F6DCC
/* 800F6C9C 000F3BDC  80 6D 83 A8 */	lwz r3, __AIVersion@sda21(r13)
/* 800F6CA0 000F3BE0  4B FF 4D E9 */	bl OSRegisterVersion
/* 800F6CA4 000F3BE4  3C 60 80 00 */	lis r3, 0x800000F8@ha
/* 800F6CA8 000F3BE8  80 03 00 F8 */	lwz r0, 0x800000F8@l(r3)
/* 800F6CAC 000F3BEC  3C 60 43 1C */	lis r3, 0x431BDE83@ha
/* 800F6CB0 000F3BF0  3C 80 00 01 */	lis r4, 0x0000A428@ha
/* 800F6CB4 000F3BF4  54 00 F0 BE */	srwi r0, r0, 2
/* 800F6CB8 000F3BF8  38 63 DE 83 */	addi r3, r3, 0x431BDE83@l
/* 800F6CBC 000F3BFC  7C 03 00 16 */	mulhwu r0, r3, r0
/* 800F6CC0 000F3C00  54 09 8B FE */	srwi r9, r0, 0xf
/* 800F6CC4 000F3C04  38 A4 A4 28 */	addi r5, r4, 0x0000A428@l
/* 800F6CC8 000F3C08  38 64 A4 10 */	addi r3, r4, -23536
/* 800F6CCC 000F3C0C  38 04 F6 18 */	addi r0, r4, -2536
/* 800F6CD0 000F3C10  3C 80 10 62 */	lis r4, 0x10624DD3@ha
/* 800F6CD4 000F3C14  7C E9 29 D6 */	mullw r7, r9, r5
/* 800F6CD8 000F3C18  39 44 4D D3 */	addi r10, r4, 0x10624DD3@l
/* 800F6CDC 000F3C1C  7C A9 19 D6 */	mullw r5, r9, r3
/* 800F6CE0 000F3C20  7C 89 01 D6 */	mullw r4, r9, r0
/* 800F6CE4 000F3C24  1D 09 7B 24 */	mulli r8, r9, 0x7b24
/* 800F6CE8 000F3C28  1C 69 0B B8 */	mulli r3, r9, 0xbb8
/* 800F6CEC 000F3C2C  7D 0A 40 16 */	mulhwu r8, r10, r8
/* 800F6CF0 000F3C30  7C EA 38 16 */	mulhwu r7, r10, r7
/* 800F6CF4 000F3C34  7C AA 28 16 */	mulhwu r5, r10, r5
/* 800F6CF8 000F3C38  7C 8A 20 16 */	mulhwu r4, r10, r4
/* 800F6CFC 000F3C3C  7C 6A 18 16 */	mulhwu r3, r10, r3
/* 800F6D00 000F3C40  55 08 BA 7E */	srwi r8, r8, 9
/* 800F6D04 000F3C44  54 E7 BA 7E */	srwi r7, r7, 9
/* 800F6D08 000F3C48  91 0D 90 54 */	stw r8, lbl_805156D4@sda21(r13)
/* 800F6D0C 000F3C4C  54 A5 BA 7E */	srwi r5, r5, 9
/* 800F6D10 000F3C50  54 84 BA 7E */	srwi r4, r4, 9
/* 800F6D14 000F3C54  90 ED 90 5C */	stw r7, lbl_805156DC@sda21(r13)
/* 800F6D18 000F3C58  3B E0 00 00 */	li r31, 0
/* 800F6D1C 000F3C5C  54 63 BA 7E */	srwi r3, r3, 9
/* 800F6D20 000F3C60  90 AD 90 64 */	stw r5, lbl_805156E4@sda21(r13)
/* 800F6D24 000F3C64  3C C0 CC 00 */	lis r6, 0xCC006C00@ha
/* 800F6D28 000F3C68  90 6D 90 74 */	stw r3, lbl_805156F4@sda21(r13)
/* 800F6D2C 000F3C6C  38 60 00 01 */	li r3, 1
/* 800F6D30 000F3C70  80 06 6C 00 */	lwz r0, 0xCC006C00@l(r6)
/* 800F6D34 000F3C74  90 8D 90 6C */	stw r4, lbl_805156EC@sda21(r13)
/* 800F6D38 000F3C78  54 00 06 F2 */	rlwinm r0, r0, 0, 0x1b, 0x19
/* 800F6D3C 000F3C7C  60 00 00 20 */	ori r0, r0, 0x20
/* 800F6D40 000F3C80  93 ED 90 50 */	stw r31, bound_32KHz@sda21(r13)
/* 800F6D44 000F3C84  93 ED 90 58 */	stw r31, bound_48KHz@sda21(r13)
/* 800F6D48 000F3C88  93 ED 90 60 */	stw r31, min_wait@sda21(r13)
/* 800F6D4C 000F3C8C  93 ED 90 68 */	stw r31, max_wait@sda21(r13)
/* 800F6D50 000F3C90  93 ED 90 70 */	stw r31, buffer@sda21(r13)
/* 800F6D54 000F3C94  80 A6 6C 04 */	lwz r5, 0x6c04(r6)
/* 800F6D58 000F3C98  90 06 6C 00 */	stw r0, 0x6c00(r6)
/* 800F6D5C 000F3C9C  54 A0 06 1E */	rlwinm r0, r5, 0, 0x18, 0xf
/* 800F6D60 000F3CA0  60 00 00 00 */	nop 
/* 800F6D64 000F3CA4  90 06 6C 04 */	stw r0, 0x6c04(r6)
/* 800F6D68 000F3CA8  80 06 6C 04 */	lwz r0, 0x6c04(r6)
/* 800F6D6C 000F3CAC  54 00 00 2E */	rlwinm r0, r0, 0, 0, 0x17
/* 800F6D70 000F3CB0  60 00 00 00 */	nop 
/* 800F6D74 000F3CB4  90 06 6C 04 */	stw r0, 0x6c04(r6)
/* 800F6D78 000F3CB8  93 E6 6C 0C */	stw r31, 0x6c0c(r6)
/* 800F6D7C 000F3CBC  4B FF FD C1 */	bl __AI_set_stream_sample_rate
/* 800F6D80 000F3CC0  38 60 00 00 */	li r3, 0
/* 800F6D84 000F3CC4  4B FF FC C5 */	bl AISetDSPSampleRate
/* 800F6D88 000F3CC8  3C 60 80 0F */	lis r3, __AIDHandler@ha
/* 800F6D8C 000F3CCC  93 ED 90 38 */	stw r31, __AIS_Callback@sda21(r13)
/* 800F6D90 000F3CD0  38 83 6E 60 */	addi r4, r3, __AIDHandler@l
/* 800F6D94 000F3CD4  93 ED 90 3C */	stw r31, __AID_Callback@sda21(r13)
/* 800F6D98 000F3CD8  38 60 00 05 */	li r3, 5
/* 800F6D9C 000F3CDC  93 CD 90 40 */	stw r30, __CallbackStack@sda21(r13)
/* 800F6DA0 000F3CE0  4B FF 7E E5 */	bl __OSSetInterruptHandler
/* 800F6DA4 000F3CE4  3C 60 04 00 */	lis r3, 0x400
/* 800F6DA8 000F3CE8  4B FF 82 E1 */	bl __OSUnmaskInterrupts
/* 800F6DAC 000F3CEC  3C 60 80 0F */	lis r3, __AISHandler@ha
/* 800F6DB0 000F3CF0  38 83 6D E4 */	addi r4, r3, __AISHandler@l
/* 800F6DB4 000F3CF4  38 60 00 08 */	li r3, 8
/* 800F6DB8 000F3CF8  4B FF 7E CD */	bl __OSSetInterruptHandler
/* 800F6DBC 000F3CFC  3C 60 00 80 */	lis r3, 0x80
/* 800F6DC0 000F3D00  4B FF 82 C9 */	bl __OSUnmaskInterrupts
/* 800F6DC4 000F3D04  38 00 00 01 */	li r0, 1
/* 800F6DC8 000F3D08  90 0D 90 48 */	stw r0, __AI_init_flag@sda21(r13)
lbl_800F6DCC:
/* 800F6DCC 000F3D0C  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 800F6DD0 000F3D10  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 800F6DD4 000F3D14  83 C1 00 10 */	lwz r30, 0x10(r1)
/* 800F6DD8 000F3D18  38 21 00 18 */	addi r1, r1, 0x18
/* 800F6DDC 000F3D1C  7C 08 03 A6 */	mtlr r0
/* 800F6DE0 000F3D20  4E 80 00 20 */	blr 

.global __AISHandler
__AISHandler:
/* 800F6DE4 000F3D24  7C 08 02 A6 */	mflr r0
/* 800F6DE8 000F3D28  90 01 00 04 */	stw r0, 4(r1)
/* 800F6DEC 000F3D2C  94 21 FD 20 */	stwu r1, -0x2e0(r1)
/* 800F6DF0 000F3D30  93 E1 02 DC */	stw r31, 0x2dc(r1)
/* 800F6DF4 000F3D34  3F E0 CC 00 */	lis r31, 0xCC006C00@ha
/* 800F6DF8 000F3D38  80 1F 6C 00 */	lwz r0, 0xCC006C00@l(r31)
/* 800F6DFC 000F3D3C  38 61 00 10 */	addi r3, r1, 0x10
/* 800F6E00 000F3D40  93 C1 02 D8 */	stw r30, 0x2d8(r1)
/* 800F6E04 000F3D44  60 00 00 08 */	ori r0, r0, 8
/* 800F6E08 000F3D48  90 1F 6C 00 */	stw r0, 0x6c00(r31)
/* 800F6E0C 000F3D4C  3B C4 00 00 */	addi r30, r4, 0
/* 800F6E10 000F3D50  4B FF 63 5D */	bl OSClearContext
/* 800F6E14 000F3D54  38 61 00 10 */	addi r3, r1, 0x10
/* 800F6E18 000F3D58  4B FF 61 8D */	bl OSSetCurrentContext
/* 800F6E1C 000F3D5C  81 8D 90 38 */	lwz r12, __AIS_Callback@sda21(r13)
/* 800F6E20 000F3D60  28 0C 00 00 */	cmplwi r12, 0
/* 800F6E24 000F3D64  41 82 00 14 */	beq lbl_800F6E38
/* 800F6E28 000F3D68  38 7F 6C 00 */	addi r3, r31, 0x6c00
/* 800F6E2C 000F3D6C  7D 88 03 A6 */	mtlr r12
/* 800F6E30 000F3D70  80 63 00 08 */	lwz r3, 8(r3)
/* 800F6E34 000F3D74  4E 80 00 21 */	blrl 
lbl_800F6E38:
/* 800F6E38 000F3D78  38 61 00 10 */	addi r3, r1, 0x10
/* 800F6E3C 000F3D7C  4B FF 63 31 */	bl OSClearContext
/* 800F6E40 000F3D80  7F C3 F3 78 */	mr r3, r30
/* 800F6E44 000F3D84  4B FF 61 61 */	bl OSSetCurrentContext
/* 800F6E48 000F3D88  80 01 02 E4 */	lwz r0, 0x2e4(r1)
/* 800F6E4C 000F3D8C  83 E1 02 DC */	lwz r31, 0x2dc(r1)
/* 800F6E50 000F3D90  83 C1 02 D8 */	lwz r30, 0x2d8(r1)
/* 800F6E54 000F3D94  38 21 02 E0 */	addi r1, r1, 0x2e0
/* 800F6E58 000F3D98  7C 08 03 A6 */	mtlr r0
/* 800F6E5C 000F3D9C  4E 80 00 20 */	blr 

.global __AIDHandler
__AIDHandler:
/* 800F6E60 000F3DA0  7C 08 02 A6 */	mflr r0
/* 800F6E64 000F3DA4  3C 60 CC 00 */	lis r3, 0xCC005000@ha
/* 800F6E68 000F3DA8  90 01 00 04 */	stw r0, 4(r1)
/* 800F6E6C 000F3DAC  38 63 50 00 */	addi r3, r3, 0xCC005000@l
/* 800F6E70 000F3DB0  38 00 FF 5F */	li r0, -161
/* 800F6E74 000F3DB4  94 21 FD 20 */	stwu r1, -0x2e0(r1)
/* 800F6E78 000F3DB8  93 E1 02 DC */	stw r31, 0x2dc(r1)
/* 800F6E7C 000F3DBC  3B E4 00 00 */	addi r31, r4, 0
/* 800F6E80 000F3DC0  A0 A3 00 0A */	lhz r5, 0xa(r3)
/* 800F6E84 000F3DC4  7C A0 00 38 */	and r0, r5, r0
/* 800F6E88 000F3DC8  60 00 00 08 */	ori r0, r0, 8
/* 800F6E8C 000F3DCC  B0 03 00 0A */	sth r0, 0xa(r3)
/* 800F6E90 000F3DD0  38 61 00 10 */	addi r3, r1, 0x10
/* 800F6E94 000F3DD4  4B FF 62 D9 */	bl OSClearContext
/* 800F6E98 000F3DD8  38 61 00 10 */	addi r3, r1, 0x10
/* 800F6E9C 000F3DDC  4B FF 61 09 */	bl OSSetCurrentContext
/* 800F6EA0 000F3DE0  80 6D 90 3C */	lwz r3, __AID_Callback@sda21(r13)
/* 800F6EA4 000F3DE4  28 03 00 00 */	cmplwi r3, 0
/* 800F6EA8 000F3DE8  41 82 00 40 */	beq lbl_800F6EE8
/* 800F6EAC 000F3DEC  80 0D 90 4C */	lwz r0, __AID_Active@sda21(r13)
/* 800F6EB0 000F3DF0  2C 00 00 00 */	cmpwi r0, 0
/* 800F6EB4 000F3DF4  40 82 00 34 */	bne lbl_800F6EE8
/* 800F6EB8 000F3DF8  80 0D 90 40 */	lwz r0, __CallbackStack@sda21(r13)
/* 800F6EBC 000F3DFC  38 80 00 01 */	li r4, 1
/* 800F6EC0 000F3E00  90 8D 90 4C */	stw r4, __AID_Active@sda21(r13)
/* 800F6EC4 000F3E04  28 00 00 00 */	cmplwi r0, 0
/* 800F6EC8 000F3E08  41 82 00 0C */	beq lbl_800F6ED4
/* 800F6ECC 000F3E0C  48 00 00 41 */	bl __AICallbackStackSwitch
/* 800F6ED0 000F3E10  48 00 00 10 */	b lbl_800F6EE0
lbl_800F6ED4:
/* 800F6ED4 000F3E14  39 83 00 00 */	addi r12, r3, 0
/* 800F6ED8 000F3E18  7D 88 03 A6 */	mtlr r12
/* 800F6EDC 000F3E1C  4E 80 00 21 */	blrl 
lbl_800F6EE0:
/* 800F6EE0 000F3E20  38 00 00 00 */	li r0, 0
/* 800F6EE4 000F3E24  90 0D 90 4C */	stw r0, __AID_Active@sda21(r13)
lbl_800F6EE8:
/* 800F6EE8 000F3E28  38 61 00 10 */	addi r3, r1, 0x10
/* 800F6EEC 000F3E2C  4B FF 62 81 */	bl OSClearContext
/* 800F6EF0 000F3E30  7F E3 FB 78 */	mr r3, r31
/* 800F6EF4 000F3E34  4B FF 60 B1 */	bl OSSetCurrentContext
/* 800F6EF8 000F3E38  80 01 02 E4 */	lwz r0, 0x2e4(r1)
/* 800F6EFC 000F3E3C  83 E1 02 DC */	lwz r31, 0x2dc(r1)
/* 800F6F00 000F3E40  38 21 02 E0 */	addi r1, r1, 0x2e0
/* 800F6F04 000F3E44  7C 08 03 A6 */	mtlr r0
/* 800F6F08 000F3E48  4E 80 00 20 */	blr 

.global __AICallbackStackSwitch
__AICallbackStackSwitch:
/* 800F6F0C 000F3E4C  7C 08 02 A6 */	mflr r0
/* 800F6F10 000F3E50  90 01 00 04 */	stw r0, 4(r1)
/* 800F6F14 000F3E54  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 800F6F18 000F3E58  93 E1 00 14 */	stw r31, 0x14(r1)
/* 800F6F1C 000F3E5C  7C 7F 1B 78 */	mr r31, r3
/* 800F6F20 000F3E60  3C A0 80 51 */	lis r5, __OldStack@ha
/* 800F6F24 000F3E64  38 A5 56 C4 */	addi r5, r5, __OldStack@l
/* 800F6F28 000F3E68  90 25 00 00 */	stw r1, 0(r5)
/* 800F6F2C 000F3E6C  3C A0 80 51 */	lis r5, __CallbackStack@ha
/* 800F6F30 000F3E70  38 A5 56 C0 */	addi r5, r5, __CallbackStack@l
/* 800F6F34 000F3E74  80 25 00 00 */	lwz r1, 0(r5)
/* 800F6F38 000F3E78  38 21 FF F8 */	addi r1, r1, -8
/* 800F6F3C 000F3E7C  7F E8 03 A6 */	mtlr r31
/* 800F6F40 000F3E80  4E 80 00 21 */	blrl 
/* 800F6F44 000F3E84  3C A0 80 51 */	lis r5, __OldStack@ha
/* 800F6F48 000F3E88  38 A5 56 C4 */	addi r5, r5, __OldStack@l
/* 800F6F4C 000F3E8C  80 25 00 00 */	lwz r1, 0(r5)
/* 800F6F50 000F3E90  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 800F6F54 000F3E94  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 800F6F58 000F3E98  38 21 00 18 */	addi r1, r1, 0x18
/* 800F6F5C 000F3E9C  7C 08 03 A6 */	mtlr r0
/* 800F6F60 000F3EA0  4E 80 00 20 */	blr 

.global __AI_SRC_INIT
__AI_SRC_INIT:
/* 800F6F64 000F3EA4  7C 08 02 A6 */	mflr r0
/* 800F6F68 000F3EA8  90 01 00 04 */	stw r0, 4(r1)
/* 800F6F6C 000F3EAC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 800F6F70 000F3EB0  BF 41 00 18 */	stmw r26, 0x18(r1)
/* 800F6F74 000F3EB4  38 80 00 00 */	li r4, 0
/* 800F6F78 000F3EB8  38 60 00 00 */	li r3, 0
/* 800F6F7C 000F3EBC  38 00 00 00 */	li r0, 0
/* 800F6F80 000F3EC0  3B 80 00 00 */	li r28, 0
/* 800F6F84 000F3EC4  3B A0 00 00 */	li r29, 0
/* 800F6F88 000F3EC8  48 00 00 04 */	b lbl_800F6F8C
lbl_800F6F8C:
/* 800F6F8C 000F3ECC  3F E0 CC 00 */	lis r31, 0xcc00
/* 800F6F90 000F3ED0  48 00 00 04 */	b lbl_800F6F94
lbl_800F6F94:
/* 800F6F94 000F3ED4  48 00 01 64 */	b lbl_800F70F8
lbl_800F6F98:
/* 800F6F98 000F3ED8  80 1F 6C 00 */	lwz r0, 0x6c00(r31)
/* 800F6F9C 000F3EDC  3B DF 6C 00 */	addi r30, r31, 0x6c00
/* 800F6FA0 000F3EE0  3B DE 00 08 */	addi r30, r30, 8
/* 800F6FA4 000F3EE4  54 00 06 F2 */	rlwinm r0, r0, 0, 0x1b, 0x19
/* 800F6FA8 000F3EE8  60 00 00 20 */	ori r0, r0, 0x20
/* 800F6FAC 000F3EEC  90 1F 6C 00 */	stw r0, 0x6c00(r31)
/* 800F6FB0 000F3EF0  80 1F 6C 00 */	lwz r0, 0x6c00(r31)
/* 800F6FB4 000F3EF4  54 00 07 FA */	rlwinm r0, r0, 0, 0x1f, 0x1d
/* 800F6FB8 000F3EF8  90 1F 6C 00 */	stw r0, 0x6c00(r31)
/* 800F6FBC 000F3EFC  80 1F 6C 00 */	lwz r0, 0x6c00(r31)
/* 800F6FC0 000F3F00  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 800F6FC4 000F3F04  60 00 00 01 */	ori r0, r0, 1
/* 800F6FC8 000F3F08  90 1F 6C 00 */	stw r0, 0x6c00(r31)
/* 800F6FCC 000F3F0C  80 7E 00 00 */	lwz r3, 0(r30)
/* 800F6FD0 000F3F10  48 00 00 04 */	b lbl_800F6FD4
lbl_800F6FD4:
/* 800F6FD4 000F3F14  48 00 00 04 */	b lbl_800F6FD8
lbl_800F6FD8:
/* 800F6FD8 000F3F18  80 1E 00 00 */	lwz r0, 0(r30)
/* 800F6FDC 000F3F1C  7C 03 00 40 */	cmplw r3, r0
/* 800F6FE0 000F3F20  41 82 FF F8 */	beq lbl_800F6FD8
/* 800F6FE4 000F3F24  4B FF BB AD */	bl OSGetTime
/* 800F6FE8 000F3F28  80 1F 6C 00 */	lwz r0, 0x6c00(r31)
/* 800F6FEC 000F3F2C  7C 9A 23 78 */	mr r26, r4
/* 800F6FF0 000F3F30  7C 7B 1B 78 */	mr r27, r3
/* 800F6FF4 000F3F34  54 00 07 FA */	rlwinm r0, r0, 0, 0x1f, 0x1d
/* 800F6FF8 000F3F38  60 00 00 02 */	ori r0, r0, 2
/* 800F6FFC 000F3F3C  90 1F 6C 00 */	stw r0, 0x6c00(r31)
/* 800F7000 000F3F40  80 1F 6C 00 */	lwz r0, 0x6c00(r31)
/* 800F7004 000F3F44  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 800F7008 000F3F48  60 00 00 01 */	ori r0, r0, 1
/* 800F700C 000F3F4C  90 1F 6C 00 */	stw r0, 0x6c00(r31)
/* 800F7010 000F3F50  80 7E 00 00 */	lwz r3, 0(r30)
/* 800F7014 000F3F54  48 00 00 04 */	b lbl_800F7018
lbl_800F7018:
/* 800F7018 000F3F58  48 00 00 04 */	b lbl_800F701C
lbl_800F701C:
/* 800F701C 000F3F5C  80 1E 00 00 */	lwz r0, 0(r30)
/* 800F7020 000F3F60  7C 03 00 40 */	cmplw r3, r0
/* 800F7024 000F3F64  41 82 FF F8 */	beq lbl_800F701C
/* 800F7028 000F3F68  4B FF BB 69 */	bl OSGetTime
/* 800F702C 000F3F6C  7D 1A 20 10 */	subfc r8, r26, r4
/* 800F7030 000F3F70  81 8D 90 54 */	lwz r12, lbl_805156D4@sda21(r13)
/* 800F7034 000F3F74  80 BF 6C 00 */	lwz r5, 0x6c00(r31)
/* 800F7038 000F3F78  7C FB 19 10 */	subfe r7, r27, r3
/* 800F703C 000F3F7C  81 4D 90 74 */	lwz r10, lbl_805156F4@sda21(r13)
/* 800F7040 000F3F80  6C E7 80 00 */	xoris r7, r7, 0x8000
/* 800F7044 000F3F84  54 A5 07 FA */	rlwinm r5, r5, 0, 0x1f, 0x1d
/* 800F7048 000F3F88  81 6D 90 50 */	lwz r11, bound_32KHz@sda21(r13)
/* 800F704C 000F3F8C  7C CA 60 10 */	subfc r6, r10, r12
/* 800F7050 000F3F90  81 2D 90 70 */	lwz r9, buffer@sda21(r13)
/* 800F7054 000F3F94  90 BF 6C 00 */	stw r5, 0x6c00(r31)
/* 800F7058 000F3F98  7C 09 59 10 */	subfe r0, r9, r11
/* 800F705C 000F3F9C  6C 05 80 00 */	xoris r5, r0, 0x8000
/* 800F7060 000F3FA0  7C 06 40 10 */	subfc r0, r6, r8
/* 800F7064 000F3FA4  80 1F 6C 00 */	lwz r0, 0x6c00(r31)
/* 800F7068 000F3FA8  7C A5 39 10 */	subfe r5, r5, r7
/* 800F706C 000F3FAC  7C A7 39 10 */	subfe r5, r7, r7
/* 800F7070 000F3FB0  7C A5 00 D0 */	neg r5, r5
/* 800F7074 000F3FB4  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 800F7078 000F3FB8  2C 05 00 00 */	cmpwi r5, 0
/* 800F707C 000F3FBC  90 1F 6C 00 */	stw r0, 0x6c00(r31)
/* 800F7080 000F3FC0  41 82 00 14 */	beq lbl_800F7094
/* 800F7084 000F3FC4  83 AD 90 60 */	lwz r29, min_wait@sda21(r13)
/* 800F7088 000F3FC8  38 00 00 01 */	li r0, 1
/* 800F708C 000F3FCC  83 8D 90 64 */	lwz r28, lbl_805156E4@sda21(r13)
/* 800F7090 000F3FD0  48 00 00 68 */	b lbl_800F70F8
lbl_800F7094:
/* 800F7094 000F3FD4  7C CC 50 14 */	addc r6, r12, r10
/* 800F7098 000F3FD8  7C 0B 49 14 */	adde r0, r11, r9
/* 800F709C 000F3FDC  6C 05 80 00 */	xoris r5, r0, 0x8000
/* 800F70A0 000F3FE0  7C 06 40 10 */	subfc r0, r6, r8
/* 800F70A4 000F3FE4  7C A5 39 10 */	subfe r5, r5, r7
/* 800F70A8 000F3FE8  7C A7 39 10 */	subfe r5, r7, r7
/* 800F70AC 000F3FEC  7C A5 00 D0 */	neg r5, r5
/* 800F70B0 000F3FF0  2C 05 00 00 */	cmpwi r5, 0
/* 800F70B4 000F3FF4  40 82 00 40 */	bne lbl_800F70F4
/* 800F70B8 000F3FF8  80 AD 90 5C */	lwz r5, lbl_805156DC@sda21(r13)
/* 800F70BC 000F3FFC  80 0D 90 58 */	lwz r0, bound_48KHz@sda21(r13)
/* 800F70C0 000F4000  7C CA 28 10 */	subfc r6, r10, r5
/* 800F70C4 000F4004  7C 09 01 10 */	subfe r0, r9, r0
/* 800F70C8 000F4008  6C 05 80 00 */	xoris r5, r0, 0x8000
/* 800F70CC 000F400C  7C 06 40 10 */	subfc r0, r6, r8
/* 800F70D0 000F4010  7C A5 39 10 */	subfe r5, r5, r7
/* 800F70D4 000F4014  7C A7 39 10 */	subfe r5, r7, r7
/* 800F70D8 000F4018  7C A5 00 D0 */	neg r5, r5
/* 800F70DC 000F401C  2C 05 00 00 */	cmpwi r5, 0
/* 800F70E0 000F4020  41 82 00 14 */	beq lbl_800F70F4
/* 800F70E4 000F4024  83 AD 90 68 */	lwz r29, max_wait@sda21(r13)
/* 800F70E8 000F4028  38 00 00 01 */	li r0, 1
/* 800F70EC 000F402C  83 8D 90 6C */	lwz r28, lbl_805156EC@sda21(r13)
/* 800F70F0 000F4030  48 00 00 08 */	b lbl_800F70F8
lbl_800F70F4:
/* 800F70F4 000F4034  38 00 00 00 */	li r0, 0
lbl_800F70F8:
/* 800F70F8 000F4038  28 00 00 00 */	cmplwi r0, 0
/* 800F70FC 000F403C  41 82 FE 9C */	beq lbl_800F6F98
/* 800F7100 000F4040  7F 64 E0 14 */	addc r27, r4, r28
/* 800F7104 000F4044  7F 43 E9 14 */	adde r26, r3, r29
/* 800F7108 000F4048  48 00 00 04 */	b lbl_800F710C
lbl_800F710C:
/* 800F710C 000F404C  48 00 00 04 */	b lbl_800F7110
lbl_800F7110:
/* 800F7110 000F4050  4B FF BA 81 */	bl OSGetTime
/* 800F7114 000F4054  6C 65 80 00 */	xoris r5, r3, 0x8000
/* 800F7118 000F4058  6F 43 80 00 */	xoris r3, r26, 0x8000
/* 800F711C 000F405C  7C 1B 20 10 */	subfc r0, r27, r4
/* 800F7120 000F4060  7C 63 29 10 */	subfe r3, r3, r5
/* 800F7124 000F4064  7C 65 29 10 */	subfe r3, r5, r5
/* 800F7128 000F4068  7C 63 00 D0 */	neg r3, r3
/* 800F712C 000F406C  2C 03 00 00 */	cmpwi r3, 0
/* 800F7130 000F4070  40 82 FF E0 */	bne lbl_800F7110
/* 800F7134 000F4074  BB 41 00 18 */	lmw r26, 0x18(r1)
/* 800F7138 000F4078  80 01 00 34 */	lwz r0, 0x34(r1)
/* 800F713C 000F407C  38 21 00 30 */	addi r1, r1, 0x30
/* 800F7140 000F4080  7C 08 03 A6 */	mtlr r0
/* 800F7144 000F4084  4E 80 00 20 */	blr 
