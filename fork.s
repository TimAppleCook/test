	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 14, 0	sdk_version 14, 4
	.file	1 "/Users/louis/Developer/operation system  principal&&experiment" "fork.swift"
	.globl	_main
	.p2align	2
_main:
Lfunc_begin0:
	.loc	1 0 0
	.cfi_startproc
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	adrp	x8, _$s4fork4wordSSvp@PAGE
	str	x8, [sp]
	adrp	x8, _$s4fork4wordSSvp@PAGE
	add	x8, x8, _$s4fork4wordSSvp@PAGEOFF
	str	x8, [sp, #8]
	adrp	x8, _$s4fork5countSivp@PAGE
Ltmp0:
	.loc	1 11 11 prologue_end
	str	xzr, [x8, _$s4fork5countSivp@PAGEOFF]
	adrp	x0, l_.str.1.a@PAGE
	add	x0, x0, l_.str.1.a@PAGEOFF
	mov	w8, #1
	mov	x1, x8
	mov	w8, #1
Ltmp1:
	.loc	1 12 10
	and	w2, w8, #0x1
	bl	_$sSS21_builtinStringLiteral17utf8CodeUnitCount7isASCIISSBp_BwBi1_tcfC
	ldr	x9, [sp]
	ldr	x8, [sp, #8]
	str	x0, [x9, _$s4fork4wordSSvp@PAGEOFF]
	str	x1, [x8, #8]
Ltmp2:
	.loc	1 13 22
	bl	_$ss11CommandLineO4argcs5Int32VvgZ
	adrp	x8, _$s4fork4times5Int32Vvp@PAGE
	str	w0, [x8, _$s4fork4times5Int32Vvp@PAGEOFF]
	mov	w0, #0
	ldp	x29, x30, [sp, #16]
	add	sp, sp, #32
	ret
Ltmp3:
Lfunc_end0:
	.cfi_endproc

	.private_extern	_$s4fork3pidSivp
	.globl	_$s4fork3pidSivp
.zerofill __DATA,__common,_$s4fork3pidSivp,8,3
	.private_extern	_$s4fork5countSivp
	.globl	_$s4fork5countSivp
.zerofill __DATA,__common,_$s4fork5countSivp,8,3
	.private_extern	_$s4fork4wordSSvp
	.globl	_$s4fork4wordSSvp
.zerofill __DATA,__common,_$s4fork4wordSSvp,16,3
	.private_extern	_$s4fork4times5Int32Vvp
	.globl	_$s4fork4times5Int32Vvp
.zerofill __DATA,__common,_$s4fork4times5Int32Vvp,4,2
	.section	__TEXT,__cstring,cstring_literals
l_.str.1.a:
	.asciz	"a"

	.section	__TEXT,__swift5_entry,regular,no_dead_strip
	.p2align	2, 0x0
l_entry_point:
	.long	_main-l_entry_point
	.long	0

	.private_extern	___swift_reflection_version
	.section	__TEXT,__const
	.globl	___swift_reflection_version
	.weak_definition	___swift_reflection_version
	.p2align	1, 0x0
___swift_reflection_version:
	.short	3

	.no_dead_strip	_main
	.no_dead_strip	l_entry_point
	.no_dead_strip	___swift_reflection_version
	.linker_option "-lswiftSwiftOnoneSupport"
	.linker_option "-lswiftCore"
	.linker_option "-lswift_Concurrency"
	.linker_option "-lswift_StringProcessing"
	.linker_option "-lobjc"
	.section	__DATA,__objc_imageinfo,regular,no_dead_strip
L_OBJC_IMAGE_INFO:
	.long	0
	.long	84543296

	.section	__DWARF,__debug_abbrev,regular,debug
Lsection_abbrev:
	.byte	1
	.byte	17
	.byte	1
	.byte	37
	.byte	14
	.byte	19
	.byte	5
	.byte	3
	.byte	14
	.ascii	"\202|"
	.byte	14
	.ascii	"\357\177"
	.byte	14
	.byte	16
	.byte	23
	.byte	27
	.byte	14
	.ascii	"\345\177"
	.byte	11
	.byte	17
	.byte	1
	.byte	18
	.byte	6
	.byte	0
	.byte	0
	.byte	2
	.byte	30
	.byte	1
	.byte	3
	.byte	14
	.byte	0
	.byte	0
	.byte	3
	.byte	52
	.byte	0
	.byte	3
	.byte	14
	.byte	73
	.byte	19
	.byte	63
	.byte	25
	.byte	58
	.byte	11
	.byte	59
	.byte	11
	.byte	2
	.byte	24
	.byte	110
	.byte	14
	.byte	0
	.byte	0
	.byte	4
	.byte	46
	.byte	0
	.byte	17
	.byte	1
	.byte	18
	.byte	6
	.byte	64
	.byte	24
	.byte	110
	.byte	14
	.byte	3
	.byte	14
	.byte	58
	.byte	11
	.byte	59
	.byte	11
	.byte	73
	.byte	19
	.byte	63
	.byte	25
	.byte	0
	.byte	0
	.byte	5
	.byte	30
	.byte	1
	.byte	3
	.byte	14
	.ascii	"\200|"
	.byte	14
	.byte	0
	.byte	0
	.byte	6
	.byte	19
	.byte	0
	.byte	3
	.byte	14
	.byte	110
	.byte	14
	.byte	11
	.byte	11
	.ascii	"\346\177"
	.byte	11
	.byte	0
	.byte	0
	.byte	7
	.byte	58
	.byte	0
	.byte	24
	.byte	19
	.byte	0
	.byte	0
	.byte	8
	.byte	30
	.byte	0
	.byte	3
	.byte	14
	.ascii	"\200|"
	.byte	14
	.byte	0
	.byte	0
	.byte	9
	.byte	17
	.byte	0
	.byte	37
	.byte	14
	.byte	19
	.byte	5
	.byte	3
	.byte	14
	.byte	16
	.byte	23
	.byte	27
	.byte	14
	.ascii	"\341\177"
	.byte	25
	.ascii	"\261B"
	.byte	7
	.ascii	"\260B"
	.byte	14
	.byte	0
	.byte	0
	.byte	0
	.section	__DWARF,__debug_info,regular,debug
Lsection_info:
Lcu_begin0:
.set Lset0, Ldebug_info_end0-Ldebug_info_start0
	.long	Lset0
Ldebug_info_start0:
	.short	4
.set Lset1, Lsection_abbrev-Lsection_abbrev
	.long	Lset1
	.byte	8
	.byte	1
	.long	0
	.short	30
	.long	64
	.long	75
	.long	127
.set Lset2, Lline_table_start0-Lsection_line
	.long	Lset2
	.long	138
	.byte	5
	.quad	Lfunc_begin0
.set Lset3, Lfunc_end0-Lfunc_begin0
	.long	Lset3
	.byte	2
	.long	201
	.byte	3
	.long	206
	.long	195

	.byte	1
	.byte	10
	.byte	9
	.byte	3
	.quad	_$s4fork3pidSivp
	.long	344
	.byte	3
	.long	360
	.long	195

	.byte	1
	.byte	11
	.byte	9
	.byte	3
	.quad	_$s4fork5countSivp
	.long	366
	.byte	3
	.long	384
	.long	206

	.byte	1
	.byte	12
	.byte	9
	.byte	3
	.quad	_$s4fork4wordSSvp
	.long	402
	.byte	3
	.long	419
	.long	217

	.byte	1
	.byte	13
	.byte	9
	.byte	3
	.quad	_$s4fork4times5Int32Vvp
	.long	442
	.byte	4
	.quad	Lfunc_begin0
.set Lset4, Lfunc_end0-Lfunc_begin0
	.long	Lset4
	.byte	1
	.byte	109
	.long	994
	.long	994
	.byte	1
	.byte	1
	.long	217

	.byte	0
	.byte	5
	.long	210
	.long	216
	.byte	6
	.long	334
	.long	338
	.byte	8
	.byte	30
	.byte	6
	.long	389
	.long	396
	.byte	16
	.byte	30
	.byte	6
	.long	424
	.long	430
	.byte	4
	.byte	30
	.byte	0
	.byte	7
	.long	51
	.byte	7
	.long	186
	.byte	8
	.long	465
	.long	483
	.byte	7
	.long	239
	.byte	8
	.long	613
	.long	636
	.byte	7
	.long	253
	.byte	8
	.long	708
	.long	721
	.byte	7
	.long	267
	.byte	8
	.long	846
	.long	864
	.byte	7
	.long	281
	.byte	0
Ldebug_info_end0:
Lcu_begin1:
.set Lset5, Ldebug_info_end1-Ldebug_info_start1
	.long	Lset5
Ldebug_info_start1:
	.short	4
.set Lset6, Lsection_abbrev-Lsection_abbrev
	.long	Lset6
	.byte	8
	.byte	9
	.long	0
	.short	16
	.long	613
.set Lset7, Lline_table_start0-Lsection_line
	.long	Lset7
	.long	636

	.quad	-2505451322559037842
	.long	999
Ldebug_info_end1:
	.section	__DWARF,__debug_str,regular,debug
Linfo_string:
	.asciz	"Apple Swift version 5.10 (swiftlang-5.10.0.13 clang-1500.3.9.4)"
	.asciz	"fork.swift"
	.asciz	"/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk"
	.asciz	"MacOSX.sdk"
	.asciz	"/Users/louis/Developer/operation system  principal&&experiment"
	.asciz	"fork"
	.asciz	"pid"
	.asciz	"Swift"
	.asciz	"/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/lib/swift/Swift.swiftmodule/arm64e-apple-macos.swiftinterface"
	.asciz	"Int"
	.asciz	"$sSiD"
	.asciz	"$s4fork3pidSivp"
	.asciz	"count"
	.asciz	"$s4fork5countSivp"
	.asciz	"word"
	.asciz	"String"
	.asciz	"$sSSD"
	.asciz	"$s4fork4wordSSvp"
	.asciz	"time"
	.asciz	"Int32"
	.asciz	"$ss5Int32VD"
	.asciz	"$s4fork4times5Int32Vvp"
	.asciz	"_StringProcessing"
	.asciz	"/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/lib/swift/_StringProcessing.swiftmodule/arm64e-apple-macos.swiftinterface"
	.asciz	"_SwiftConcurrencyShims"
	.asciz	"/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/lib/swift/shims"
	.asciz	"_Concurrency"
	.asciz	"/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/lib/swift/_Concurrency.swiftmodule/arm64e-apple-macos.swiftinterface"
	.asciz	"SwiftOnoneSupport"
	.asciz	"/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/lib/swift/SwiftOnoneSupport.swiftmodule/arm64e-apple-macos.swiftinterface"
	.asciz	"main"
	.asciz	"/var/folders/lc/tjt147k94s5578zn6vh8bmz40000gn/C/clang/ModuleCache/2TI59031F5M4V/_SwiftConcurrencyShims-1N5WPHGFLWMJ4.pcm"
	.section	__DWARF,__apple_names,regular,debug
Lnames_begin:
	.long	1212240712
	.short	1
	.short	0
	.long	9
	.long	9
	.long	12
	.long	0
	.long	1
	.short	1
	.short	6
	.long	-1
	.long	0
	.long	-1
	.long	-1
	.long	2
	.long	-1
	.long	4
	.long	6
	.long	8
	.long	193502530
	.long	-1307878914
	.long	255678574
	.long	2090760340
	.long	2090874849
	.long	-671046028
	.long	2090499946
	.long	-69758727
	.long	-564161054
.set Lset8, LNames1-Lnames_begin
	.long	Lset8
.set Lset9, LNames4-Lnames_begin
	.long	Lset9
.set Lset10, LNames2-Lnames_begin
	.long	Lset10
.set Lset11, LNames6-Lnames_begin
	.long	Lset11
.set Lset12, LNames7-Lnames_begin
	.long	Lset12
.set Lset13, LNames8-Lnames_begin
	.long	Lset13
.set Lset14, LNames5-Lnames_begin
	.long	Lset14
.set Lset15, LNames3-Lnames_begin
	.long	Lset15
.set Lset16, LNames0-Lnames_begin
	.long	Lset16
LNames1:
	.long	206
	.long	1
	.long	56
	.long	0
LNames4:
	.long	402
	.long	1
	.long	106
	.long	0
LNames2:
	.long	360
	.long	1
	.long	81
	.long	0
LNames6:
	.long	419
	.long	1
	.long	131
	.long	0
LNames7:
	.long	384
	.long	1
	.long	106
	.long	0
LNames8:
	.long	344
	.long	1
	.long	56
	.long	0
LNames5:
	.long	994
	.long	1
	.long	156
	.long	0
LNames3:
	.long	442
	.long	1
	.long	131
	.long	0
LNames0:
	.long	366
	.long	1
	.long	81
	.long	0
	.section	__DWARF,__apple_objc,regular,debug
Lobjc_begin:
	.long	1212240712
	.short	1
	.short	0
	.long	1
	.long	0
	.long	12
	.long	0
	.long	1
	.short	1
	.short	6
	.long	-1
	.section	__DWARF,__apple_namespac,regular,debug
Lnamespac_begin:
	.long	1212240712
	.short	1
	.short	0
	.long	1
	.long	0
	.long	12
	.long	0
	.long	1
	.short	1
	.short	6
	.long	-1
	.section	__DWARF,__apple_types,regular,debug
Ltypes_begin:
	.long	1212240712
	.short	1
	.short	0
	.long	3
	.long	3
	.long	20
	.long	0
	.long	3
	.short	1
	.short	6
	.short	3
	.short	5
	.short	4
	.short	11
	.long	0
	.long	1
	.long	2
	.long	-772891684
	.long	224805589
	.long	193460240
.set Lset17, Ltypes1-Ltypes_begin
	.long	Lset17
.set Lset18, Ltypes2-Ltypes_begin
	.long	Lset18
.set Lset19, Ltypes0-Ltypes_begin
	.long	Lset19
Ltypes1:
	.long	389
	.long	1
	.long	206
	.short	19
	.byte	0
	.long	0
Ltypes2:
	.long	424
	.long	1
	.long	217
	.short	19
	.byte	0
	.long	0
Ltypes0:
	.long	334
	.long	1
	.long	195
	.short	19
	.byte	0
	.long	0
.subsections_via_symbols
	.section	__DWARF,__debug_line,regular,debug
Lsection_line:
Lline_table_start0:
