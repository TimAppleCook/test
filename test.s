	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 14, 0	sdk_version 14, 4
	.file	1 "/Users/louis/Developer/operation system  principal&&experiment" "test.c"
	.globl	_main                           ; -- Begin function main
	.p2align	2
_main:                                  ; @main
Lfunc_begin0:
	.loc	1 10 0                          ; test.c:10:0
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	wzr, [x29, #-4]
	adrp	x0, l_.str@PAGE
	add	x0, x0, l_.str@PAGEOFF
Ltmp0:
	.loc	1 13 3 prologue_end             ; test.c:13:3
	bl	_printf
	.loc	1 14 3                          ; test.c:14:3
	mov	x9, sp
	sub	x8, x29, #5
	str	x8, [x9]
	adrp	x0, l_.str.1@PAGE
	add	x0, x0, l_.str.1@PAGEOFF
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	bl	_scanf
	adrp	x0, l_.str.2@PAGE
	add	x0, x0, l_.str.2@PAGEOFF
	.loc	1 15 3                          ; test.c:15:3
	bl	_printf
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	.loc	1 16 3                          ; test.c:16:3
	mov	x9, sp
	sub	x8, x29, #6
	str	x8, [x9]
	bl	_scanf
	adrp	x0, l_.str.3@PAGE
	add	x0, x0, l_.str.3@PAGEOFF
	.loc	1 20 3                          ; test.c:20:3
	bl	_printf
	.loc	1 21 3                          ; test.c:21:3
	mov	x9, sp
	sub	x8, x29, #7
	str	x8, [x9]
	adrp	x0, l_.str.4@PAGE
	add	x0, x0, l_.str.4@PAGEOFF
	bl	_scanf
	.loc	1 25 11                         ; test.c:25:11
	ldursb	w8, [x29, #-7]
	.loc	1 25 3 is_stmt 0                ; test.c:25:3
	subs	w8, w8, #65
                                        ; kill: def $x8 killed $w8
	str	x8, [sp, #16]                   ; 8-byte Folded Spill
	subs	x8, x8, #3
	cset	w8, hi
	tbnz	w8, #0, LBB0_9
; %bb.1:
	.loc	1 0 3                           ; test.c:0:3
	ldr	x11, [sp, #16]                  ; 8-byte Folded Reload
	.loc	1 25 3                          ; test.c:25:3
	adrp	x10, lJTI0_0@PAGE
	add	x10, x10, lJTI0_0@PAGEOFF
Ltmp1:
	adr	x8, Ltmp1
	ldrsw	x9, [x10, x11, lsl #2]
	add	x8, x8, x9
	br	x8
LBB0_2:
Ltmp2:
	.loc	1 27 16 is_stmt 1               ; test.c:27:16
	ldurb	w8, [x29, #-5]
	.loc	1 27 20 is_stmt 0               ; test.c:27:20
	ldurb	w9, [x29, #-6]
	.loc	1 27 18                         ; test.c:27:18
	add	w8, w8, w9
	.loc	1 27 14                         ; test.c:27:14
	sturb	w8, [x29, #-8]
	.loc	1 28 27 is_stmt 1               ; test.c:28:27
	ldurb	w10, [x29, #-8]
	.loc	1 28 7 is_stmt 0                ; test.c:28:7
	mov	x9, sp
                                        ; implicit-def: $x8
	mov	x8, x10
	str	x8, [x9]
	adrp	x0, l_.str.5@PAGE
	add	x0, x0, l_.str.5@PAGEOFF
	bl	_printf
	.loc	1 29 7 is_stmt 1                ; test.c:29:7
	b	LBB0_10
LBB0_3:
	.loc	1 31 20                         ; test.c:31:20
	ldurb	w8, [x29, #-5]
	.loc	1 31 24 is_stmt 0               ; test.c:31:24
	ldurb	w9, [x29, #-6]
	.loc	1 31 22                         ; test.c:31:22
	subs	w0, w8, w9
	.loc	1 31 16                         ; test.c:31:16
	bl	_abs
	.loc	1 31 14                         ; test.c:31:14
	sturb	w0, [x29, #-8]
	.loc	1 32 34 is_stmt 1               ; test.c:32:34
	ldurb	w10, [x29, #-8]
	.loc	1 32 7 is_stmt 0                ; test.c:32:7
	mov	x9, sp
                                        ; implicit-def: $x8
	mov	x8, x10
	str	x8, [x9]
	adrp	x0, l_.str.6@PAGE
	add	x0, x0, l_.str.6@PAGEOFF
	bl	_printf
	.loc	1 33 7 is_stmt 1                ; test.c:33:7
	b	LBB0_10
LBB0_4:
	.loc	1 35 16                         ; test.c:35:16
	ldurb	w8, [x29, #-5]
	.loc	1 35 20 is_stmt 0               ; test.c:35:20
	ldurb	w9, [x29, #-6]
	.loc	1 35 18                         ; test.c:35:18
	mul	w8, w8, w9
	.loc	1 35 14                         ; test.c:35:14
	sturb	w8, [x29, #-8]
	.loc	1 36 31 is_stmt 1               ; test.c:36:31
	ldurb	w10, [x29, #-8]
	.loc	1 36 7 is_stmt 0                ; test.c:36:7
	mov	x9, sp
                                        ; implicit-def: $x8
	mov	x8, x10
	str	x8, [x9]
	adrp	x0, l_.str.7@PAGE
	add	x0, x0, l_.str.7@PAGEOFF
	bl	_printf
	.loc	1 37 7 is_stmt 1                ; test.c:37:7
	b	LBB0_10
LBB0_5:
Ltmp3:
	.loc	1 39 11                         ; test.c:39:11
	ldurb	w8, [x29, #-6]
	.loc	1 39 13 is_stmt 0               ; test.c:39:13
	subs	w8, w8, #0
	cset	w8, ne
Ltmp4:
	.loc	1 39 11                         ; test.c:39:11
	tbnz	w8, #0, LBB0_7
	b	LBB0_6
LBB0_6:
	.loc	1 0 11                          ; test.c:0:11
	adrp	x0, l_.str.8@PAGE
	add	x0, x0, l_.str.8@PAGEOFF
Ltmp5:
	.loc	1 40 9 is_stmt 1                ; test.c:40:9
	bl	_printf
	.loc	1 41 7                          ; test.c:41:7
	b	LBB0_8
Ltmp6:
LBB0_7:
	.loc	1 42 18                         ; test.c:42:18
	ldurb	w8, [x29, #-5]
	.loc	1 42 22 is_stmt 0               ; test.c:42:22
	ldurb	w9, [x29, #-6]
	.loc	1 42 20                         ; test.c:42:20
	sdiv	w8, w8, w9
	.loc	1 42 16                         ; test.c:42:16
	sturb	w8, [x29, #-8]
	.loc	1 43 34 is_stmt 1               ; test.c:43:34
	ldurb	w10, [x29, #-8]
	.loc	1 43 9 is_stmt 0                ; test.c:43:9
	mov	x9, sp
                                        ; implicit-def: $x8
	mov	x8, x10
	str	x8, [x9]
	adrp	x0, l_.str.9@PAGE
	add	x0, x0, l_.str.9@PAGEOFF
	bl	_printf
	b	LBB0_8
Ltmp7:
LBB0_8:
	.loc	1 45 7 is_stmt 1                ; test.c:45:7
	b	LBB0_10
LBB0_9:
	.loc	1 0 7 is_stmt 0                 ; test.c:0:7
	adrp	x0, l_.str.10@PAGE
	add	x0, x0, l_.str.10@PAGEOFF
	.loc	1 47 7 is_stmt 1                ; test.c:47:7
	bl	_printf
	.loc	1 48 3                          ; test.c:48:3
	b	LBB0_10
Ltmp8:
LBB0_10:
	.loc	1 0 3 is_stmt 0                 ; test.c:0:3
	mov	w0, #0
	.loc	1 50 3 is_stmt 1                ; test.c:50:3
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
Ltmp9:
Lfunc_end0:
	.cfi_endproc
	.p2align	2
lJTI0_0:
	.long	LBB0_2-Ltmp1
	.long	LBB0_3-Ltmp1
	.long	LBB0_4-Ltmp1
	.long	LBB0_5-Ltmp1
                                        ; -- End function
	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"Enter first hexadecimal number (0-9F): "

l_.str.1:                               ; @.str.1
	.asciz	"%x"

l_.str.2:                               ; @.str.2
	.asciz	"Enter second hexadecimal number (0-9F): "

l_.str.3:                               ; @.str.3
	.asciz	"Enter operation (A, B, C, or D): "

l_.str.4:                               ; @.str.4
	.asciz	" %c"

l_.str.5:                               ; @.str.5
	.asciz	"Sum: %x\n"

l_.str.6:                               ; @.str.6
	.asciz	"Difference: %x\n"

l_.str.7:                               ; @.str.7
	.asciz	"Product: %x\n"

l_.str.8:                               ; @.str.8
	.asciz	"Division by zero error\n"

l_.str.9:                               ; @.str.9
	.asciz	"Quotient: %x\n"

l_.str.10:                              ; @.str.10
	.asciz	"Invalid input\n"

	.section	__DWARF,__debug_abbrev,regular,debug
Lsection_abbrev:
	.byte	1                               ; Abbreviation Code
	.byte	17                              ; DW_TAG_compile_unit
	.byte	1                               ; DW_CHILDREN_yes
	.byte	37                              ; DW_AT_producer
	.byte	14                              ; DW_FORM_strp
	.byte	19                              ; DW_AT_language
	.byte	5                               ; DW_FORM_data2
	.byte	3                               ; DW_AT_name
	.byte	14                              ; DW_FORM_strp
	.ascii	"\202|"                         ; DW_AT_LLVM_sysroot
	.byte	14                              ; DW_FORM_strp
	.ascii	"\357\177"                      ; DW_AT_APPLE_sdk
	.byte	14                              ; DW_FORM_strp
	.byte	16                              ; DW_AT_stmt_list
	.byte	23                              ; DW_FORM_sec_offset
	.byte	27                              ; DW_AT_comp_dir
	.byte	14                              ; DW_FORM_strp
	.byte	17                              ; DW_AT_low_pc
	.byte	1                               ; DW_FORM_addr
	.byte	18                              ; DW_AT_high_pc
	.byte	6                               ; DW_FORM_data4
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	2                               ; Abbreviation Code
	.byte	52                              ; DW_TAG_variable
	.byte	0                               ; DW_CHILDREN_no
	.byte	73                              ; DW_AT_type
	.byte	19                              ; DW_FORM_ref4
	.byte	58                              ; DW_AT_decl_file
	.byte	11                              ; DW_FORM_data1
	.byte	59                              ; DW_AT_decl_line
	.byte	11                              ; DW_FORM_data1
	.byte	2                               ; DW_AT_location
	.byte	24                              ; DW_FORM_exprloc
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	3                               ; Abbreviation Code
	.byte	1                               ; DW_TAG_array_type
	.byte	1                               ; DW_CHILDREN_yes
	.byte	73                              ; DW_AT_type
	.byte	19                              ; DW_FORM_ref4
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	4                               ; Abbreviation Code
	.byte	33                              ; DW_TAG_subrange_type
	.byte	0                               ; DW_CHILDREN_no
	.byte	73                              ; DW_AT_type
	.byte	19                              ; DW_FORM_ref4
	.byte	55                              ; DW_AT_count
	.byte	11                              ; DW_FORM_data1
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	5                               ; Abbreviation Code
	.byte	36                              ; DW_TAG_base_type
	.byte	0                               ; DW_CHILDREN_no
	.byte	3                               ; DW_AT_name
	.byte	14                              ; DW_FORM_strp
	.byte	62                              ; DW_AT_encoding
	.byte	11                              ; DW_FORM_data1
	.byte	11                              ; DW_AT_byte_size
	.byte	11                              ; DW_FORM_data1
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	6                               ; Abbreviation Code
	.byte	36                              ; DW_TAG_base_type
	.byte	0                               ; DW_CHILDREN_no
	.byte	3                               ; DW_AT_name
	.byte	14                              ; DW_FORM_strp
	.byte	11                              ; DW_AT_byte_size
	.byte	11                              ; DW_FORM_data1
	.byte	62                              ; DW_AT_encoding
	.byte	11                              ; DW_FORM_data1
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	7                               ; Abbreviation Code
	.byte	46                              ; DW_TAG_subprogram
	.byte	1                               ; DW_CHILDREN_yes
	.byte	17                              ; DW_AT_low_pc
	.byte	1                               ; DW_FORM_addr
	.byte	18                              ; DW_AT_high_pc
	.byte	6                               ; DW_FORM_data4
	.byte	64                              ; DW_AT_frame_base
	.byte	24                              ; DW_FORM_exprloc
	.byte	3                               ; DW_AT_name
	.byte	14                              ; DW_FORM_strp
	.byte	58                              ; DW_AT_decl_file
	.byte	11                              ; DW_FORM_data1
	.byte	59                              ; DW_AT_decl_line
	.byte	11                              ; DW_FORM_data1
	.byte	73                              ; DW_AT_type
	.byte	19                              ; DW_FORM_ref4
	.byte	63                              ; DW_AT_external
	.byte	25                              ; DW_FORM_flag_present
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	8                               ; Abbreviation Code
	.byte	52                              ; DW_TAG_variable
	.byte	0                               ; DW_CHILDREN_no
	.byte	2                               ; DW_AT_location
	.byte	24                              ; DW_FORM_exprloc
	.byte	3                               ; DW_AT_name
	.byte	14                              ; DW_FORM_strp
	.byte	58                              ; DW_AT_decl_file
	.byte	11                              ; DW_FORM_data1
	.byte	59                              ; DW_AT_decl_line
	.byte	11                              ; DW_FORM_data1
	.byte	73                              ; DW_AT_type
	.byte	19                              ; DW_FORM_ref4
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	0                               ; EOM(3)
	.section	__DWARF,__debug_info,regular,debug
Lsection_info:
Lcu_begin0:
.set Lset0, Ldebug_info_end0-Ldebug_info_start0 ; Length of Unit
	.long	Lset0
Ldebug_info_start0:
	.short	4                               ; DWARF version number
.set Lset1, Lsection_abbrev-Lsection_abbrev ; Offset Into Abbrev. Section
	.long	Lset1
	.byte	8                               ; Address Size (in bytes)
	.byte	1                               ; Abbrev [1] 0xb:0x1d5 DW_TAG_compile_unit
	.long	0                               ; DW_AT_producer
	.short	12                              ; DW_AT_language
	.long	46                              ; DW_AT_name
	.long	53                              ; DW_AT_LLVM_sysroot
	.long	105                             ; DW_AT_APPLE_sdk
.set Lset2, Lline_table_start0-Lsection_line ; DW_AT_stmt_list
	.long	Lset2
	.long	116                             ; DW_AT_comp_dir
	.quad	Lfunc_begin0                    ; DW_AT_low_pc
.set Lset3, Lfunc_end0-Lfunc_begin0     ; DW_AT_high_pc
	.long	Lset3
	.byte	2                               ; Abbrev [2] 0x32:0x11 DW_TAG_variable
	.long	67                              ; DW_AT_type
	.byte	1                               ; DW_AT_decl_file
	.byte	13                              ; DW_AT_decl_line
	.byte	9                               ; DW_AT_location
	.byte	3
	.quad	l_.str
	.byte	3                               ; Abbrev [3] 0x43:0xc DW_TAG_array_type
	.long	79                              ; DW_AT_type
	.byte	4                               ; Abbrev [4] 0x48:0x6 DW_TAG_subrange_type
	.long	86                              ; DW_AT_type
	.byte	40                              ; DW_AT_count
	.byte	0                               ; End Of Children Mark
	.byte	5                               ; Abbrev [5] 0x4f:0x7 DW_TAG_base_type
	.long	179                             ; DW_AT_name
	.byte	6                               ; DW_AT_encoding
	.byte	1                               ; DW_AT_byte_size
	.byte	6                               ; Abbrev [6] 0x56:0x7 DW_TAG_base_type
	.long	184                             ; DW_AT_name
	.byte	8                               ; DW_AT_byte_size
	.byte	7                               ; DW_AT_encoding
	.byte	2                               ; Abbrev [2] 0x5d:0x11 DW_TAG_variable
	.long	110                             ; DW_AT_type
	.byte	1                               ; DW_AT_decl_file
	.byte	14                              ; DW_AT_decl_line
	.byte	9                               ; DW_AT_location
	.byte	3
	.quad	l_.str.1
	.byte	3                               ; Abbrev [3] 0x6e:0xc DW_TAG_array_type
	.long	79                              ; DW_AT_type
	.byte	4                               ; Abbrev [4] 0x73:0x6 DW_TAG_subrange_type
	.long	86                              ; DW_AT_type
	.byte	3                               ; DW_AT_count
	.byte	0                               ; End Of Children Mark
	.byte	2                               ; Abbrev [2] 0x7a:0x11 DW_TAG_variable
	.long	139                             ; DW_AT_type
	.byte	1                               ; DW_AT_decl_file
	.byte	15                              ; DW_AT_decl_line
	.byte	9                               ; DW_AT_location
	.byte	3
	.quad	l_.str.2
	.byte	3                               ; Abbrev [3] 0x8b:0xc DW_TAG_array_type
	.long	79                              ; DW_AT_type
	.byte	4                               ; Abbrev [4] 0x90:0x6 DW_TAG_subrange_type
	.long	86                              ; DW_AT_type
	.byte	41                              ; DW_AT_count
	.byte	0                               ; End Of Children Mark
	.byte	2                               ; Abbrev [2] 0x97:0x11 DW_TAG_variable
	.long	168                             ; DW_AT_type
	.byte	1                               ; DW_AT_decl_file
	.byte	20                              ; DW_AT_decl_line
	.byte	9                               ; DW_AT_location
	.byte	3
	.quad	l_.str.3
	.byte	3                               ; Abbrev [3] 0xa8:0xc DW_TAG_array_type
	.long	79                              ; DW_AT_type
	.byte	4                               ; Abbrev [4] 0xad:0x6 DW_TAG_subrange_type
	.long	86                              ; DW_AT_type
	.byte	34                              ; DW_AT_count
	.byte	0                               ; End Of Children Mark
	.byte	2                               ; Abbrev [2] 0xb4:0x11 DW_TAG_variable
	.long	197                             ; DW_AT_type
	.byte	1                               ; DW_AT_decl_file
	.byte	21                              ; DW_AT_decl_line
	.byte	9                               ; DW_AT_location
	.byte	3
	.quad	l_.str.4
	.byte	3                               ; Abbrev [3] 0xc5:0xc DW_TAG_array_type
	.long	79                              ; DW_AT_type
	.byte	4                               ; Abbrev [4] 0xca:0x6 DW_TAG_subrange_type
	.long	86                              ; DW_AT_type
	.byte	4                               ; DW_AT_count
	.byte	0                               ; End Of Children Mark
	.byte	2                               ; Abbrev [2] 0xd1:0x11 DW_TAG_variable
	.long	226                             ; DW_AT_type
	.byte	1                               ; DW_AT_decl_file
	.byte	28                              ; DW_AT_decl_line
	.byte	9                               ; DW_AT_location
	.byte	3
	.quad	l_.str.5
	.byte	3                               ; Abbrev [3] 0xe2:0xc DW_TAG_array_type
	.long	79                              ; DW_AT_type
	.byte	4                               ; Abbrev [4] 0xe7:0x6 DW_TAG_subrange_type
	.long	86                              ; DW_AT_type
	.byte	9                               ; DW_AT_count
	.byte	0                               ; End Of Children Mark
	.byte	2                               ; Abbrev [2] 0xee:0x11 DW_TAG_variable
	.long	255                             ; DW_AT_type
	.byte	1                               ; DW_AT_decl_file
	.byte	32                              ; DW_AT_decl_line
	.byte	9                               ; DW_AT_location
	.byte	3
	.quad	l_.str.6
	.byte	3                               ; Abbrev [3] 0xff:0xc DW_TAG_array_type
	.long	79                              ; DW_AT_type
	.byte	4                               ; Abbrev [4] 0x104:0x6 DW_TAG_subrange_type
	.long	86                              ; DW_AT_type
	.byte	16                              ; DW_AT_count
	.byte	0                               ; End Of Children Mark
	.byte	2                               ; Abbrev [2] 0x10b:0x11 DW_TAG_variable
	.long	284                             ; DW_AT_type
	.byte	1                               ; DW_AT_decl_file
	.byte	36                              ; DW_AT_decl_line
	.byte	9                               ; DW_AT_location
	.byte	3
	.quad	l_.str.7
	.byte	3                               ; Abbrev [3] 0x11c:0xc DW_TAG_array_type
	.long	79                              ; DW_AT_type
	.byte	4                               ; Abbrev [4] 0x121:0x6 DW_TAG_subrange_type
	.long	86                              ; DW_AT_type
	.byte	13                              ; DW_AT_count
	.byte	0                               ; End Of Children Mark
	.byte	2                               ; Abbrev [2] 0x128:0x11 DW_TAG_variable
	.long	313                             ; DW_AT_type
	.byte	1                               ; DW_AT_decl_file
	.byte	40                              ; DW_AT_decl_line
	.byte	9                               ; DW_AT_location
	.byte	3
	.quad	l_.str.8
	.byte	3                               ; Abbrev [3] 0x139:0xc DW_TAG_array_type
	.long	79                              ; DW_AT_type
	.byte	4                               ; Abbrev [4] 0x13e:0x6 DW_TAG_subrange_type
	.long	86                              ; DW_AT_type
	.byte	24                              ; DW_AT_count
	.byte	0                               ; End Of Children Mark
	.byte	2                               ; Abbrev [2] 0x145:0x11 DW_TAG_variable
	.long	342                             ; DW_AT_type
	.byte	1                               ; DW_AT_decl_file
	.byte	43                              ; DW_AT_decl_line
	.byte	9                               ; DW_AT_location
	.byte	3
	.quad	l_.str.9
	.byte	3                               ; Abbrev [3] 0x156:0xc DW_TAG_array_type
	.long	79                              ; DW_AT_type
	.byte	4                               ; Abbrev [4] 0x15b:0x6 DW_TAG_subrange_type
	.long	86                              ; DW_AT_type
	.byte	14                              ; DW_AT_count
	.byte	0                               ; End Of Children Mark
	.byte	2                               ; Abbrev [2] 0x162:0x11 DW_TAG_variable
	.long	371                             ; DW_AT_type
	.byte	1                               ; DW_AT_decl_file
	.byte	47                              ; DW_AT_decl_line
	.byte	9                               ; DW_AT_location
	.byte	3
	.quad	l_.str.10
	.byte	3                               ; Abbrev [3] 0x173:0xc DW_TAG_array_type
	.long	79                              ; DW_AT_type
	.byte	4                               ; Abbrev [4] 0x178:0x6 DW_TAG_subrange_type
	.long	86                              ; DW_AT_type
	.byte	15                              ; DW_AT_count
	.byte	0                               ; End Of Children Mark
	.byte	7                               ; Abbrev [7] 0x17f:0x52 DW_TAG_subprogram
	.quad	Lfunc_begin0                    ; DW_AT_low_pc
.set Lset4, Lfunc_end0-Lfunc_begin0     ; DW_AT_high_pc
	.long	Lset4
	.byte	1                               ; DW_AT_frame_base
	.byte	109
	.long	205                             ; DW_AT_name
	.byte	1                               ; DW_AT_decl_file
	.byte	10                              ; DW_AT_decl_line
	.long	465                             ; DW_AT_type
                                        ; DW_AT_external
	.byte	8                               ; Abbrev [8] 0x198:0xe DW_TAG_variable
	.byte	2                               ; DW_AT_location
	.byte	145
	.byte	123
	.long	214                             ; DW_AT_name
	.byte	1                               ; DW_AT_decl_file
	.byte	12                              ; DW_AT_decl_line
	.long	472                             ; DW_AT_type
	.byte	8                               ; Abbrev [8] 0x1a6:0xe DW_TAG_variable
	.byte	2                               ; DW_AT_location
	.byte	145
	.byte	122
	.long	230                             ; DW_AT_name
	.byte	1                               ; DW_AT_decl_file
	.byte	12                              ; DW_AT_decl_line
	.long	472                             ; DW_AT_type
	.byte	8                               ; Abbrev [8] 0x1b4:0xe DW_TAG_variable
	.byte	2                               ; DW_AT_location
	.byte	145
	.byte	121
	.long	232                             ; DW_AT_name
	.byte	1                               ; DW_AT_decl_file
	.byte	19                              ; DW_AT_decl_line
	.long	79                              ; DW_AT_type
	.byte	8                               ; Abbrev [8] 0x1c2:0xe DW_TAG_variable
	.byte	2                               ; DW_AT_location
	.byte	145
	.byte	120
	.long	239                             ; DW_AT_name
	.byte	1                               ; DW_AT_decl_file
	.byte	24                              ; DW_AT_decl_line
	.long	472                             ; DW_AT_type
	.byte	0                               ; End Of Children Mark
	.byte	5                               ; Abbrev [5] 0x1d1:0x7 DW_TAG_base_type
	.long	210                             ; DW_AT_name
	.byte	5                               ; DW_AT_encoding
	.byte	4                               ; DW_AT_byte_size
	.byte	5                               ; Abbrev [5] 0x1d8:0x7 DW_TAG_base_type
	.long	216                             ; DW_AT_name
	.byte	8                               ; DW_AT_encoding
	.byte	1                               ; DW_AT_byte_size
	.byte	0                               ; End Of Children Mark
Ldebug_info_end0:
	.section	__DWARF,__debug_str,regular,debug
Linfo_string:
	.asciz	"Apple clang version 15.0.0 (clang-1500.3.9.4)" ; string offset=0
	.asciz	"test.c"                        ; string offset=46
	.asciz	"/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk" ; string offset=53
	.asciz	"MacOSX.sdk"                    ; string offset=105
	.asciz	"/Users/louis/Developer/operation system  principal&&experiment" ; string offset=116
	.asciz	"char"                          ; string offset=179
	.asciz	"__ARRAY_SIZE_TYPE__"           ; string offset=184
	.byte	0                               ; string offset=204
	.asciz	"main"                          ; string offset=205
	.asciz	"int"                           ; string offset=210
	.asciz	"x"                             ; string offset=214
	.asciz	"unsigned char"                 ; string offset=216
	.asciz	"y"                             ; string offset=230
	.asciz	"choice"                        ; string offset=232
	.asciz	"result"                        ; string offset=239
	.section	__DWARF,__apple_names,regular,debug
Lnames_begin:
	.long	1212240712                      ; Header Magic
	.short	1                               ; Header Version
	.short	0                               ; Header Hash Function
	.long	2                               ; Header Bucket Count
	.long	2                               ; Header Hash Count
	.long	12                              ; Header Data Length
	.long	0                               ; HeaderData Die Offset Base
	.long	1                               ; HeaderData Atom Count
	.short	1                               ; DW_ATOM_die_offset
	.short	6                               ; DW_FORM_data4
	.long	0                               ; Bucket 0
	.long	1                               ; Bucket 1
	.long	2090499946                      ; Hash in Bucket 0
	.long	5381                            ; Hash in Bucket 1
.set Lset5, LNames0-Lnames_begin        ; Offset in Bucket 0
	.long	Lset5
.set Lset6, LNames1-Lnames_begin        ; Offset in Bucket 1
	.long	Lset6
LNames0:
	.long	205                             ; main
	.long	1                               ; Num DIEs
	.long	383
	.long	0
LNames1:
	.long	204                             ; 
	.long	11                              ; Num DIEs
	.long	50
	.long	93
	.long	122
	.long	151
	.long	180
	.long	209
	.long	238
	.long	267
	.long	296
	.long	325
	.long	354
	.long	0
	.section	__DWARF,__apple_objc,regular,debug
Lobjc_begin:
	.long	1212240712                      ; Header Magic
	.short	1                               ; Header Version
	.short	0                               ; Header Hash Function
	.long	1                               ; Header Bucket Count
	.long	0                               ; Header Hash Count
	.long	12                              ; Header Data Length
	.long	0                               ; HeaderData Die Offset Base
	.long	1                               ; HeaderData Atom Count
	.short	1                               ; DW_ATOM_die_offset
	.short	6                               ; DW_FORM_data4
	.long	-1                              ; Bucket 0
	.section	__DWARF,__apple_namespac,regular,debug
Lnamespac_begin:
	.long	1212240712                      ; Header Magic
	.short	1                               ; Header Version
	.short	0                               ; Header Hash Function
	.long	1                               ; Header Bucket Count
	.long	0                               ; Header Hash Count
	.long	12                              ; Header Data Length
	.long	0                               ; HeaderData Die Offset Base
	.long	1                               ; HeaderData Atom Count
	.short	1                               ; DW_ATOM_die_offset
	.short	6                               ; DW_FORM_data4
	.long	-1                              ; Bucket 0
	.section	__DWARF,__apple_types,regular,debug
Ltypes_begin:
	.long	1212240712                      ; Header Magic
	.short	1                               ; Header Version
	.short	0                               ; Header Hash Function
	.long	4                               ; Header Bucket Count
	.long	4                               ; Header Hash Count
	.long	20                              ; Header Data Length
	.long	0                               ; HeaderData Die Offset Base
	.long	3                               ; HeaderData Atom Count
	.short	1                               ; DW_ATOM_die_offset
	.short	6                               ; DW_FORM_data4
	.short	3                               ; DW_ATOM_die_tag
	.short	5                               ; DW_FORM_data2
	.short	4                               ; DW_ATOM_type_flags
	.short	11                              ; DW_FORM_data1
	.long	0                               ; Bucket 0
	.long	-1                              ; Bucket 1
	.long	-1                              ; Bucket 2
	.long	2                               ; Bucket 3
	.long	193495088                       ; Hash in Bucket 0
	.long	-104093792                      ; Hash in Bucket 0
	.long	2090147939                      ; Hash in Bucket 3
	.long	-594775205                      ; Hash in Bucket 3
.set Lset7, Ltypes0-Ltypes_begin        ; Offset in Bucket 0
	.long	Lset7
.set Lset8, Ltypes3-Ltypes_begin        ; Offset in Bucket 0
	.long	Lset8
.set Lset9, Ltypes1-Ltypes_begin        ; Offset in Bucket 3
	.long	Lset9
.set Lset10, Ltypes2-Ltypes_begin       ; Offset in Bucket 3
	.long	Lset10
Ltypes0:
	.long	210                             ; int
	.long	1                               ; Num DIEs
	.long	465
	.short	36
	.byte	0
	.long	0
Ltypes3:
	.long	216                             ; unsigned char
	.long	1                               ; Num DIEs
	.long	472
	.short	36
	.byte	0
	.long	0
Ltypes1:
	.long	179                             ; char
	.long	1                               ; Num DIEs
	.long	79
	.short	36
	.byte	0
	.long	0
Ltypes2:
	.long	184                             ; __ARRAY_SIZE_TYPE__
	.long	1                               ; Num DIEs
	.long	86
	.short	36
	.byte	0
	.long	0
.subsections_via_symbols
	.section	__DWARF,__debug_line,regular,debug
Lsection_line:
Lline_table_start0:
