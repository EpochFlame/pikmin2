.include "macros.inc"

.section .text, "ax"  # 0x800056C0 - 0x80472F00
.global create__13JKRAramStreamFl
create__13JKRAramStreamFl:
/* 80019F20 00016E60  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80019F24 00016E64  7C 08 02 A6 */	mflr r0
/* 80019F28 00016E68  90 01 00 14 */	stw r0, 0x14(r1)
/* 80019F2C 00016E6C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80019F30 00016E70  7C 7F 1B 78 */	mr r31, r3
/* 80019F34 00016E74  80 0D 87 60 */	lwz r0, sAramStreamObject__13JKRAramStream@sda21(r13)
/* 80019F38 00016E78  28 00 00 00 */	cmplwi r0, 0
/* 80019F3C 00016E7C  40 82 00 3C */	bne lbl_80019F78
/* 80019F40 00016E80  80 8D 88 28 */	lwz r4, sSystemHeap__7JKRHeap@sda21(r13)
/* 80019F44 00016E84  38 60 00 7C */	li r3, 0x7c
/* 80019F48 00016E88  38 A0 00 00 */	li r5, 0
/* 80019F4C 00016E8C  48 00 9F F5 */	bl __nw__FUlP7JKRHeapi
/* 80019F50 00016E90  7C 60 1B 79 */	or. r0, r3, r3
/* 80019F54 00016E94  41 82 00 10 */	beq lbl_80019F64
/* 80019F58 00016E98  7F E4 FB 78 */	mr r4, r31
/* 80019F5C 00016E9C  48 00 00 35 */	bl __ct__13JKRAramStreamFl
/* 80019F60 00016EA0  7C 60 1B 78 */	mr r0, r3
lbl_80019F64:
/* 80019F64 00016EA4  90 0D 87 60 */	stw r0, sAramStreamObject__13JKRAramStream@sda21(r13)
/* 80019F68 00016EA8  38 60 00 00 */	li r3, 0
/* 80019F6C 00016EAC  38 80 00 00 */	li r4, 0
/* 80019F70 00016EB0  38 A0 00 00 */	li r5, 0
/* 80019F74 00016EB4  48 00 04 E9 */	bl setTransBuffer__13JKRAramStreamFPUcUlP7JKRHeap
lbl_80019F78:
/* 80019F78 00016EB8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80019F7C 00016EBC  80 6D 87 60 */	lwz r3, sAramStreamObject__13JKRAramStream@sda21(r13)
/* 80019F80 00016EC0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80019F84 00016EC4  7C 08 03 A6 */	mtlr r0
/* 80019F88 00016EC8  38 21 00 10 */	addi r1, r1, 0x10
/* 80019F8C 00016ECC  4E 80 00 20 */	blr 

.global __ct__13JKRAramStreamFl
__ct__13JKRAramStreamFl:
/* 80019F90 00016ED0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80019F94 00016ED4  7C 08 02 A6 */	mflr r0
/* 80019F98 00016ED8  7C 86 23 78 */	mr r6, r4
/* 80019F9C 00016EDC  38 80 40 00 */	li r4, 0x4000
/* 80019FA0 00016EE0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80019FA4 00016EE4  38 A0 00 10 */	li r5, 0x10
/* 80019FA8 00016EE8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80019FAC 00016EEC  7C 7F 1B 78 */	mr r31, r3
/* 80019FB0 00016EF0  48 00 B6 89 */	bl __ct__9JKRThreadFUlii
/* 80019FB4 00016EF4  3C 60 80 4A */	lis r3, __vt__13JKRAramStream@ha
/* 80019FB8 00016EF8  38 03 FC 68 */	addi r0, r3, __vt__13JKRAramStream@l
/* 80019FBC 00016EFC  90 1F 00 00 */	stw r0, 0(r31)
/* 80019FC0 00016F00  80 7F 00 2C */	lwz r3, 0x2c(r31)
/* 80019FC4 00016F04  48 0D 85 31 */	bl OSResumeThread
/* 80019FC8 00016F08  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80019FCC 00016F0C  7F E3 FB 78 */	mr r3, r31
/* 80019FD0 00016F10  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80019FD4 00016F14  7C 08 03 A6 */	mtlr r0
/* 80019FD8 00016F18  38 21 00 10 */	addi r1, r1, 0x10
/* 80019FDC 00016F1C  4E 80 00 20 */	blr 

.global __dt__13JKRAramStreamFv
__dt__13JKRAramStreamFv:
/* 80019FE0 00016F20  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80019FE4 00016F24  7C 08 02 A6 */	mflr r0
/* 80019FE8 00016F28  90 01 00 14 */	stw r0, 0x14(r1)
/* 80019FEC 00016F2C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80019FF0 00016F30  7C 9F 23 78 */	mr r31, r4
/* 80019FF4 00016F34  93 C1 00 08 */	stw r30, 8(r1)
/* 80019FF8 00016F38  7C 7E 1B 79 */	or. r30, r3, r3
/* 80019FFC 00016F3C  41 82 00 28 */	beq lbl_8001A024
/* 8001A000 00016F40  3C A0 80 4A */	lis r5, __vt__13JKRAramStream@ha
/* 8001A004 00016F44  38 80 00 00 */	li r4, 0
/* 8001A008 00016F48  38 05 FC 68 */	addi r0, r5, __vt__13JKRAramStream@l
/* 8001A00C 00016F4C  90 1E 00 00 */	stw r0, 0(r30)
/* 8001A010 00016F50  48 00 B8 29 */	bl __dt__9JKRThreadFv
/* 8001A014 00016F54  7F E0 07 35 */	extsh. r0, r31
/* 8001A018 00016F58  40 81 00 0C */	ble lbl_8001A024
/* 8001A01C 00016F5C  7F C3 F3 78 */	mr r3, r30
/* 8001A020 00016F60  48 00 A0 95 */	bl __dl__FPv
lbl_8001A024:
/* 8001A024 00016F64  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8001A028 00016F68  7F C3 F3 78 */	mr r3, r30
/* 8001A02C 00016F6C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8001A030 00016F70  83 C1 00 08 */	lwz r30, 8(r1)
/* 8001A034 00016F74  7C 08 03 A6 */	mtlr r0
/* 8001A038 00016F78  38 21 00 10 */	addi r1, r1, 0x10
/* 8001A03C 00016F7C  4E 80 00 20 */	blr 

.global run__13JKRAramStreamFv
run__13JKRAramStreamFv:
/* 8001A040 00016F80  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8001A044 00016F84  7C 08 02 A6 */	mflr r0
/* 8001A048 00016F88  3C 60 80 4A */	lis r3, sMessageQueue__13JKRAramStream@ha
/* 8001A04C 00016F8C  3C 80 80 4A */	lis r4, sMessageBuffer__13JKRAramStream@ha
/* 8001A050 00016F90  90 01 00 24 */	stw r0, 0x24(r1)
/* 8001A054 00016F94  38 63 FC 48 */	addi r3, r3, sMessageQueue__13JKRAramStream@l
/* 8001A058 00016F98  38 A0 00 04 */	li r5, 4
/* 8001A05C 00016F9C  38 84 FC 38 */	addi r4, r4, sMessageBuffer__13JKRAramStream@l
/* 8001A060 00016FA0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8001A064 00016FA4  48 0D 54 59 */	bl OSInitMessageQueue
/* 8001A068 00016FA8  3C 60 80 4A */	lis r3, sMessageQueue__13JKRAramStream@ha
/* 8001A06C 00016FAC  3B E3 FC 48 */	addi r31, r3, sMessageQueue__13JKRAramStream@l
lbl_8001A070:
/* 8001A070 00016FB0  7F E3 FB 78 */	mr r3, r31
/* 8001A074 00016FB4  38 81 00 08 */	addi r4, r1, 8
/* 8001A078 00016FB8  38 A0 00 01 */	li r5, 1
/* 8001A07C 00016FBC  48 0D 55 69 */	bl OSReceiveMessage
/* 8001A080 00016FC0  80 61 00 08 */	lwz r3, 8(r1)
/* 8001A084 00016FC4  80 03 00 00 */	lwz r0, 0(r3)
/* 8001A088 00016FC8  2C 00 00 02 */	cmpwi r0, 2
/* 8001A08C 00016FCC  41 82 00 1C */	beq lbl_8001A0A8
/* 8001A090 00016FD0  40 80 FF E0 */	bge lbl_8001A070
/* 8001A094 00016FD4  2C 00 00 01 */	cmpwi r0, 1
/* 8001A098 00016FD8  40 80 00 08 */	bge lbl_8001A0A0
/* 8001A09C 00016FDC  4B FF FF D4 */	b lbl_8001A070
lbl_8001A0A0:
/* 8001A0A0 00016FE0  48 00 00 11 */	bl readFromAram__13JKRAramStreamFv
/* 8001A0A4 00016FE4  4B FF FF CC */	b lbl_8001A070
lbl_8001A0A8:
/* 8001A0A8 00016FE8  48 00 00 11 */	bl writeToAram__13JKRAramStreamFP20JKRAramStreamCommand
/* 8001A0AC 00016FEC  4B FF FF C4 */	b lbl_8001A070

.global readFromAram__13JKRAramStreamFv
readFromAram__13JKRAramStreamFv:
/* 8001A0B0 00016FF0  38 60 00 01 */	li r3, 1
/* 8001A0B4 00016FF4  4E 80 00 20 */	blr 

.global writeToAram__13JKRAramStreamFP20JKRAramStreamCommand
writeToAram__13JKRAramStreamFP20JKRAramStreamCommand:
/* 8001A0B8 00016FF8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8001A0BC 00016FFC  7C 08 02 A6 */	mflr r0
/* 8001A0C0 00017000  90 01 00 34 */	stw r0, 0x34(r1)
/* 8001A0C4 00017004  BF 01 00 10 */	stmw r24, 0x10(r1)
/* 8001A0C8 00017008  7C 78 1B 78 */	mr r24, r3
/* 8001A0CC 0001700C  3B 80 00 00 */	li r28, 0
/* 8001A0D0 00017010  83 43 00 1C */	lwz r26, 0x1c(r3)
/* 8001A0D4 00017014  83 C3 00 08 */	lwz r30, 8(r3)
/* 8001A0D8 00017018  28 1A 00 00 */	cmplwi r26, 0
/* 8001A0DC 0001701C  83 A3 00 14 */	lwz r29, 0x14(r3)
/* 8001A0E0 00017020  83 63 00 04 */	lwz r27, 4(r3)
/* 8001A0E4 00017024  80 03 00 20 */	lwz r0, 0x20(r3)
/* 8001A0E8 00017028  83 23 00 24 */	lwz r25, 0x24(r3)
/* 8001A0EC 0001702C  41 82 00 28 */	beq lbl_8001A114
/* 8001A0F0 00017030  28 00 00 00 */	cmplwi r0, 0
/* 8001A0F4 00017034  3C 60 00 01 */	lis r3, 0x00008000@ha
/* 8001A0F8 00017038  3B E3 80 00 */	addi r31, r3, 0x00008000@l
/* 8001A0FC 0001703C  41 82 00 08 */	beq lbl_8001A104
/* 8001A100 00017040  7C 1F 03 78 */	mr r31, r0
lbl_8001A104:
/* 8001A104 00017044  93 F8 00 20 */	stw r31, 0x20(r24)
/* 8001A108 00017048  38 00 00 00 */	li r0, 0
/* 8001A10C 0001704C  98 18 00 28 */	stb r0, 0x28(r24)
/* 8001A110 00017050  48 00 00 60 */	b lbl_8001A170
lbl_8001A114:
/* 8001A114 00017054  28 00 00 00 */	cmplwi r0, 0
/* 8001A118 00017058  3C 60 00 01 */	lis r3, 0x00008000@ha
/* 8001A11C 0001705C  3B E3 80 00 */	addi r31, r3, 0x00008000@l
/* 8001A120 00017060  41 82 00 08 */	beq lbl_8001A128
/* 8001A124 00017064  7C 1F 03 78 */	mr r31, r0
lbl_8001A128:
/* 8001A128 00017068  28 19 00 00 */	cmplwi r25, 0
/* 8001A12C 0001706C  41 82 00 20 */	beq lbl_8001A14C
/* 8001A130 00017070  7F E3 FB 78 */	mr r3, r31
/* 8001A134 00017074  7F 25 CB 78 */	mr r5, r25
/* 8001A138 00017078  38 80 FF E0 */	li r4, -32
/* 8001A13C 0001707C  48 00 94 A5 */	bl alloc__7JKRHeapFUliP7JKRHeap
/* 8001A140 00017080  7C 7A 1B 78 */	mr r26, r3
/* 8001A144 00017084  93 58 00 1C */	stw r26, 0x1c(r24)
/* 8001A148 00017088  48 00 00 1C */	b lbl_8001A164
lbl_8001A14C:
/* 8001A14C 0001708C  80 6D 88 28 */	lwz r3, sSystemHeap__7JKRHeap@sda21(r13)
/* 8001A150 00017090  7F E4 FB 78 */	mr r4, r31
/* 8001A154 00017094  38 A0 FF E0 */	li r5, -32
/* 8001A158 00017098  48 00 94 E9 */	bl alloc__7JKRHeapFUli
/* 8001A15C 0001709C  7C 7A 1B 78 */	mr r26, r3
/* 8001A160 000170A0  93 58 00 1C */	stw r26, 0x1c(r24)
lbl_8001A164:
/* 8001A164 000170A4  93 F8 00 20 */	stw r31, 0x20(r24)
/* 8001A168 000170A8  38 00 00 01 */	li r0, 1
/* 8001A16C 000170AC  98 18 00 28 */	stb r0, 0x28(r24)
lbl_8001A170:
/* 8001A170 000170B0  28 1A 00 00 */	cmplwi r26, 0
/* 8001A174 000170B4  40 82 00 58 */	bne lbl_8001A1CC
/* 8001A178 000170B8  28 19 00 00 */	cmplwi r25, 0
/* 8001A17C 000170BC  40 82 00 1C */	bne lbl_8001A198
/* 8001A180 000170C0  80 6D 88 2C */	lwz r3, sCurrentHeap__7JKRHeap@sda21(r13)
/* 8001A184 000170C4  81 83 00 00 */	lwz r12, 0(r3)
/* 8001A188 000170C8  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8001A18C 000170CC  7D 89 03 A6 */	mtctr r12
/* 8001A190 000170D0  4E 80 04 21 */	bctrl 
/* 8001A194 000170D4  48 00 00 18 */	b lbl_8001A1AC
lbl_8001A198:
/* 8001A198 000170D8  7F 23 CB 78 */	mr r3, r25
/* 8001A19C 000170DC  81 99 00 00 */	lwz r12, 0(r25)
/* 8001A1A0 000170E0  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8001A1A4 000170E4  7D 89 03 A6 */	mtctr r12
/* 8001A1A8 000170E8  4E 80 04 21 */	bctrl 
lbl_8001A1AC:
/* 8001A1AC 000170EC  3C 60 80 47 */	lis r3, lbl_80473598@ha
/* 8001A1B0 000170F0  3C A0 80 47 */	lis r5, lbl_804735AC@ha
/* 8001A1B4 000170F4  38 C5 35 AC */	addi r6, r5, lbl_804735AC@l
/* 8001A1B8 000170F8  38 80 00 AC */	li r4, 0xac
/* 8001A1BC 000170FC  38 63 35 98 */	addi r3, r3, lbl_80473598@l
/* 8001A1C0 00017100  38 A2 81 80 */	addi r5, r2, lbl_805164E0@sda21
/* 8001A1C4 00017104  4C C6 31 82 */	crclr 6
/* 8001A1C8 00017108  48 01 04 79 */	bl panic_f__12JUTExceptionFPCciPCce
lbl_8001A1CC:
/* 8001A1CC 0001710C  28 1A 00 00 */	cmplwi r26, 0
/* 8001A1D0 00017110  41 82 00 AC */	beq lbl_8001A27C
/* 8001A1D4 00017114  80 78 00 10 */	lwz r3, 0x10(r24)
/* 8001A1D8 00017118  7F A4 EB 78 */	mr r4, r29
/* 8001A1DC 0001711C  38 A0 00 00 */	li r5, 0
/* 8001A1E0 00017120  48 00 C5 29 */	bl seek__20JSURandomInputStreamFl17JSUStreamSeekFrom
/* 8001A1E4 00017124  48 00 00 70 */	b lbl_8001A254
lbl_8001A1E8:
/* 8001A1E8 00017128  7C 1E F8 40 */	cmplw r30, r31
/* 8001A1EC 0001712C  7F D9 F3 78 */	mr r25, r30
/* 8001A1F0 00017130  40 81 00 08 */	ble lbl_8001A1F8
/* 8001A1F4 00017134  7F F9 FB 78 */	mr r25, r31
lbl_8001A1F8:
/* 8001A1F8 00017138  80 78 00 10 */	lwz r3, 0x10(r24)
/* 8001A1FC 0001713C  7F 44 D3 78 */	mr r4, r26
/* 8001A200 00017140  7F 25 CB 78 */	mr r5, r25
/* 8001A204 00017144  48 00 C1 D1 */	bl read__14JSUInputStreamFPvl
/* 8001A208 00017148  2C 03 00 00 */	cmpwi r3, 0
/* 8001A20C 0001714C  40 82 00 0C */	bne lbl_8001A218
/* 8001A210 00017150  3B 80 00 00 */	li r28, 0
/* 8001A214 00017154  48 00 00 48 */	b lbl_8001A25C
lbl_8001A218:
/* 8001A218 00017158  7F 44 D3 78 */	mr r4, r26
/* 8001A21C 0001715C  7F 65 DB 78 */	mr r5, r27
/* 8001A220 00017160  7F 26 CB 78 */	mr r6, r25
/* 8001A224 00017164  38 60 00 00 */	li r3, 0
/* 8001A228 00017168  38 E0 00 00 */	li r7, 0
/* 8001A22C 0001716C  4B FF F8 CD */	bl orderSync__12JKRAramPieceFiUlUlUlP12JKRAramBlock
/* 8001A230 00017170  80 78 00 18 */	lwz r3, 0x18(r24)
/* 8001A234 00017174  7F D9 F0 50 */	subf r30, r25, r30
/* 8001A238 00017178  7F 9C CA 14 */	add r28, r28, r25
/* 8001A23C 0001717C  7F 7B CA 14 */	add r27, r27, r25
/* 8001A240 00017180  28 03 00 00 */	cmplwi r3, 0
/* 8001A244 00017184  41 82 00 10 */	beq lbl_8001A254
/* 8001A248 00017188  80 03 00 00 */	lwz r0, 0(r3)
/* 8001A24C 0001718C  7C 00 CA 14 */	add r0, r0, r25
/* 8001A250 00017190  90 03 00 00 */	stw r0, 0(r3)
lbl_8001A254:
/* 8001A254 00017194  28 1E 00 00 */	cmplwi r30, 0
/* 8001A258 00017198  40 82 FF 90 */	bne lbl_8001A1E8
lbl_8001A25C:
/* 8001A25C 0001719C  88 18 00 28 */	lbz r0, 0x28(r24)
/* 8001A260 000171A0  28 00 00 00 */	cmplwi r0, 0
/* 8001A264 000171A4  41 82 00 18 */	beq lbl_8001A27C
/* 8001A268 000171A8  7F 43 D3 78 */	mr r3, r26
/* 8001A26C 000171AC  38 80 00 00 */	li r4, 0
/* 8001A270 000171B0  48 00 93 FD */	bl free__7JKRHeapFPvP7JKRHeap
/* 8001A274 000171B4  38 00 00 00 */	li r0, 0
/* 8001A278 000171B8  98 18 00 28 */	stb r0, 0x28(r24)
lbl_8001A27C:
/* 8001A27C 000171BC  7F 84 E3 78 */	mr r4, r28
/* 8001A280 000171C0  38 78 00 30 */	addi r3, r24, 0x30
/* 8001A284 000171C4  38 A0 00 00 */	li r5, 0
/* 8001A288 000171C8  48 0D 52 95 */	bl OSSendMessage
/* 8001A28C 000171CC  7F 83 E3 78 */	mr r3, r28
/* 8001A290 000171D0  BB 01 00 10 */	lmw r24, 0x10(r1)
/* 8001A294 000171D4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8001A298 000171D8  7C 08 03 A6 */	mtlr r0
/* 8001A29C 000171DC  38 21 00 30 */	addi r1, r1, 0x30
/* 8001A2A0 000171E0  4E 80 00 20 */	blr 

.global getAvailable__20JSURandomInputStreamCFv
getAvailable__20JSURandomInputStreamCFv:
/* 8001A2A4 000171E4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8001A2A8 000171E8  7C 08 02 A6 */	mflr r0
/* 8001A2AC 000171EC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8001A2B0 000171F0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8001A2B4 000171F4  93 C1 00 08 */	stw r30, 8(r1)
/* 8001A2B8 000171F8  7C 7E 1B 78 */	mr r30, r3
/* 8001A2BC 000171FC  81 83 00 00 */	lwz r12, 0(r3)
/* 8001A2C0 00017200  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 8001A2C4 00017204  7D 89 03 A6 */	mtctr r12
/* 8001A2C8 00017208  4E 80 04 21 */	bctrl 
/* 8001A2CC 0001720C  7C 7F 1B 78 */	mr r31, r3
/* 8001A2D0 00017210  7F C3 F3 78 */	mr r3, r30
/* 8001A2D4 00017214  81 9E 00 00 */	lwz r12, 0(r30)
/* 8001A2D8 00017218  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8001A2DC 0001721C  7D 89 03 A6 */	mtctr r12
/* 8001A2E0 00017220  4E 80 04 21 */	bctrl 
/* 8001A2E4 00017224  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8001A2E8 00017228  7C 63 F8 50 */	subf r3, r3, r31
/* 8001A2EC 0001722C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8001A2F0 00017230  83 C1 00 08 */	lwz r30, 8(r1)
/* 8001A2F4 00017234  7C 08 03 A6 */	mtlr r0
/* 8001A2F8 00017238  38 21 00 10 */	addi r1, r1, 0x10
/* 8001A2FC 0001723C  4E 80 00 20 */	blr 

.global write_StreamToAram_Async__13JKRAramStreamFP18JSUFileInputStreamUlUlUlPUl
write_StreamToAram_Async__13JKRAramStreamFP18JSUFileInputStreamUlUlUlPUl:
/* 8001A300 00017240  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8001A304 00017244  7C 08 02 A6 */	mflr r0
/* 8001A308 00017248  90 01 00 24 */	stw r0, 0x24(r1)
/* 8001A30C 0001724C  BF 41 00 08 */	stmw r26, 8(r1)
/* 8001A310 00017250  7C 9B 23 78 */	mr r27, r4
/* 8001A314 00017254  7C 7A 1B 78 */	mr r26, r3
/* 8001A318 00017258  7C BC 2B 78 */	mr r28, r5
/* 8001A31C 0001725C  7C DD 33 78 */	mr r29, r6
/* 8001A320 00017260  7C FE 3B 78 */	mr r30, r7
/* 8001A324 00017264  38 60 00 5C */	li r3, 0x5c
/* 8001A328 00017268  38 A0 FF FC */	li r5, -4
/* 8001A32C 0001726C  80 8D 88 28 */	lwz r4, sSystemHeap__7JKRHeap@sda21(r13)
/* 8001A330 00017270  48 00 9C 11 */	bl __nw__FUlP7JKRHeapi
/* 8001A334 00017274  7C 7F 1B 79 */	or. r31, r3, r3
/* 8001A338 00017278  41 82 00 0C */	beq lbl_8001A344
/* 8001A33C 0001727C  48 00 01 75 */	bl __ct__20JKRAramStreamCommandFv
/* 8001A340 00017280  7C 7F 1B 78 */	mr r31, r3
lbl_8001A344:
/* 8001A344 00017284  38 00 00 02 */	li r0, 2
/* 8001A348 00017288  38 60 00 00 */	li r3, 0
/* 8001A34C 0001728C  90 1F 00 00 */	stw r0, 0(r31)
/* 8001A350 00017290  28 1E 00 00 */	cmplwi r30, 0
/* 8001A354 00017294  93 7F 00 04 */	stw r27, 4(r31)
/* 8001A358 00017298  93 9F 00 08 */	stw r28, 8(r31)
/* 8001A35C 0001729C  93 5F 00 10 */	stw r26, 0x10(r31)
/* 8001A360 000172A0  90 7F 00 2C */	stw r3, 0x2c(r31)
/* 8001A364 000172A4  93 BF 00 14 */	stw r29, 0x14(r31)
/* 8001A368 000172A8  80 0D 87 64 */	lwz r0, transBuffer__13JKRAramStream@sda21(r13)
/* 8001A36C 000172AC  90 1F 00 1C */	stw r0, 0x1c(r31)
/* 8001A370 000172B0  80 0D 87 6C */	lwz r0, transHeap__13JKRAramStream@sda21(r13)
/* 8001A374 000172B4  90 1F 00 24 */	stw r0, 0x24(r31)
/* 8001A378 000172B8  80 0D 87 68 */	lwz r0, transSize__13JKRAramStream@sda21(r13)
/* 8001A37C 000172BC  90 1F 00 20 */	stw r0, 0x20(r31)
/* 8001A380 000172C0  93 DF 00 18 */	stw r30, 0x18(r31)
/* 8001A384 000172C4  41 82 00 08 */	beq lbl_8001A38C
/* 8001A388 000172C8  90 7E 00 00 */	stw r3, 0(r30)
lbl_8001A38C:
/* 8001A38C 000172CC  38 7F 00 30 */	addi r3, r31, 0x30
/* 8001A390 000172D0  38 9F 00 50 */	addi r4, r31, 0x50
/* 8001A394 000172D4  38 A0 00 01 */	li r5, 1
/* 8001A398 000172D8  48 0D 51 25 */	bl OSInitMessageQueue
/* 8001A39C 000172DC  3C 60 80 4A */	lis r3, sMessageQueue__13JKRAramStream@ha
/* 8001A3A0 000172E0  7F E4 FB 78 */	mr r4, r31
/* 8001A3A4 000172E4  38 63 FC 48 */	addi r3, r3, sMessageQueue__13JKRAramStream@l
/* 8001A3A8 000172E8  38 A0 00 01 */	li r5, 1
/* 8001A3AC 000172EC  48 0D 51 71 */	bl OSSendMessage
/* 8001A3B0 000172F0  7F E3 FB 78 */	mr r3, r31
/* 8001A3B4 000172F4  BB 41 00 08 */	lmw r26, 8(r1)
/* 8001A3B8 000172F8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8001A3BC 000172FC  7C 08 03 A6 */	mtlr r0
/* 8001A3C0 00017300  38 21 00 20 */	addi r1, r1, 0x20
/* 8001A3C4 00017304  4E 80 00 20 */	blr 

.global sync__13JKRAramStreamFP20JKRAramStreamCommandi
sync__13JKRAramStreamFP20JKRAramStreamCommandi:
/* 8001A3C8 00017308  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8001A3CC 0001730C  7C 08 02 A6 */	mflr r0
/* 8001A3D0 00017310  2C 04 00 00 */	cmpwi r4, 0
/* 8001A3D4 00017314  90 01 00 24 */	stw r0, 0x24(r1)
/* 8001A3D8 00017318  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8001A3DC 0001731C  7C 7F 1B 78 */	mr r31, r3
/* 8001A3E0 00017320  40 82 00 30 */	bne lbl_8001A410
/* 8001A3E4 00017324  38 7F 00 30 */	addi r3, r31, 0x30
/* 8001A3E8 00017328  38 81 00 08 */	addi r4, r1, 8
/* 8001A3EC 0001732C  38 A0 00 01 */	li r5, 1
/* 8001A3F0 00017330  48 0D 51 F5 */	bl OSReceiveMessage
/* 8001A3F4 00017334  80 01 00 08 */	lwz r0, 8(r1)
/* 8001A3F8 00017338  28 00 00 00 */	cmplwi r0, 0
/* 8001A3FC 0001733C  40 82 00 0C */	bne lbl_8001A408
/* 8001A400 00017340  38 60 00 00 */	li r3, 0
/* 8001A404 00017344  48 00 00 44 */	b lbl_8001A448
lbl_8001A408:
/* 8001A408 00017348  7F E3 FB 78 */	mr r3, r31
/* 8001A40C 0001734C  48 00 00 3C */	b lbl_8001A448
lbl_8001A410:
/* 8001A410 00017350  38 7F 00 30 */	addi r3, r31, 0x30
/* 8001A414 00017354  38 81 00 08 */	addi r4, r1, 8
/* 8001A418 00017358  38 A0 00 00 */	li r5, 0
/* 8001A41C 0001735C  48 0D 51 C9 */	bl OSReceiveMessage
/* 8001A420 00017360  2C 03 00 00 */	cmpwi r3, 0
/* 8001A424 00017364  40 82 00 0C */	bne lbl_8001A430
/* 8001A428 00017368  38 60 00 00 */	li r3, 0
/* 8001A42C 0001736C  48 00 00 1C */	b lbl_8001A448
lbl_8001A430:
/* 8001A430 00017370  80 01 00 08 */	lwz r0, 8(r1)
/* 8001A434 00017374  28 00 00 00 */	cmplwi r0, 0
/* 8001A438 00017378  40 82 00 0C */	bne lbl_8001A444
/* 8001A43C 0001737C  38 60 00 00 */	li r3, 0
/* 8001A440 00017380  48 00 00 08 */	b lbl_8001A448
lbl_8001A444:
/* 8001A444 00017384  7F E3 FB 78 */	mr r3, r31
lbl_8001A448:
/* 8001A448 00017388  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8001A44C 0001738C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8001A450 00017390  7C 08 03 A6 */	mtlr r0
/* 8001A454 00017394  38 21 00 20 */	addi r1, r1, 0x20
/* 8001A458 00017398  4E 80 00 20 */	blr 

.global setTransBuffer__13JKRAramStreamFPUcUlP7JKRHeap
setTransBuffer__13JKRAramStreamFPUcUlP7JKRHeap:
/* 8001A45C 0001739C  3C C0 00 01 */	lis r6, 0x00008000@ha
/* 8001A460 000173A0  38 E0 00 00 */	li r7, 0
/* 8001A464 000173A4  38 06 80 00 */	addi r0, r6, 0x00008000@l
/* 8001A468 000173A8  28 03 00 00 */	cmplwi r3, 0
/* 8001A46C 000173AC  90 ED 87 64 */	stw r7, transBuffer__13JKRAramStream@sda21(r13)
/* 8001A470 000173B0  90 0D 87 68 */	stw r0, transSize__13JKRAramStream@sda21(r13)
/* 8001A474 000173B4  90 ED 87 6C */	stw r7, transHeap__13JKRAramStream@sda21(r13)
/* 8001A478 000173B8  41 82 00 10 */	beq lbl_8001A488
/* 8001A47C 000173BC  38 03 00 1F */	addi r0, r3, 0x1f
/* 8001A480 000173C0  54 00 00 34 */	rlwinm r0, r0, 0, 0, 0x1a
/* 8001A484 000173C4  90 0D 87 64 */	stw r0, transBuffer__13JKRAramStream@sda21(r13)
lbl_8001A488:
/* 8001A488 000173C8  28 04 00 00 */	cmplwi r4, 0
/* 8001A48C 000173CC  41 82 00 0C */	beq lbl_8001A498
/* 8001A490 000173D0  54 80 00 34 */	rlwinm r0, r4, 0, 0, 0x1a
/* 8001A494 000173D4  90 0D 87 68 */	stw r0, transSize__13JKRAramStream@sda21(r13)
lbl_8001A498:
/* 8001A498 000173D8  28 05 00 00 */	cmplwi r5, 0
/* 8001A49C 000173DC  4D 82 00 20 */	beqlr 
/* 8001A4A0 000173E0  28 03 00 00 */	cmplwi r3, 0
/* 8001A4A4 000173E4  4C 82 00 20 */	bnelr 
/* 8001A4A8 000173E8  90 AD 87 6C */	stw r5, transHeap__13JKRAramStream@sda21(r13)
/* 8001A4AC 000173EC  4E 80 00 20 */	blr 

.global __ct__20JKRAramStreamCommandFv
__ct__20JKRAramStreamCommandFv:
/* 8001A4B0 000173F0  38 00 00 00 */	li r0, 0
/* 8001A4B4 000173F4  98 03 00 28 */	stb r0, 0x28(r3)
/* 8001A4B8 000173F8  4E 80 00 20 */	blr 