	.text
	.file	"mainOpt.bc"
	.globl	main
	.p2align	4, 0x90
	.type	main,@function
main:                                   # @main
.Lfunc_begin0:
	.file	1 "main.c"
	.loc	1 15 0                  # main.c:15:0
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp0:
	.cfi_def_cfa_offset 16
.Ltmp1:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp2:
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	#DEBUG_VALUE: main:argc <- [%RBP+-12]
	#DEBUG_VALUE: main:argv <- [%RBP+-64]
	movl	$0, -8(%rbp)
	movl	%edi, -12(%rbp)
	movq	%rsi, -64(%rbp)
.Ltmp3:
	.loc	1 27 7 prologue_end     # main.c:27:7
	cmpl	$1, -12(%rbp)
	jg	.LBB0_2
# BB#1:
	#DEBUG_VALUE: main:argv <- [%RBP+-64]
	#DEBUG_VALUE: main:argc <- [%RBP+-12]
.Ltmp4:
	.loc	1 28 19                 # main.c:28:19
	movq	$.L.str, -32(%rbp)
	jmp	.LBB0_3
.Ltmp5:
.LBB0_2:
	#DEBUG_VALUE: main:argv <- [%RBP+-64]
	#DEBUG_VALUE: main:argc <- [%RBP+-12]
	.loc	1 30 21                 # main.c:30:21
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	.loc	1 30 19 is_stmt 0       # main.c:30:19
	movq	%rax, -32(%rbp)
.Ltmp6:
.LBB0_3:
	#DEBUG_VALUE: main:argv <- [%RBP+-64]
	#DEBUG_VALUE: main:argc <- [%RBP+-12]
	#DEBUG_VALUE: main:networkFileName <- [%RBP+-24]
	.loc	1 34 7 is_stmt 1        # main.c:34:7
	cmpl	$2, -12(%rbp)
	jg	.LBB0_5
# BB#4:
	#DEBUG_VALUE: main:networkFileName <- [%RBP+-24]
	#DEBUG_VALUE: main:argv <- [%RBP+-64]
	#DEBUG_VALUE: main:argc <- [%RBP+-12]
.Ltmp7:
	.loc	1 35 21                 # main.c:35:21
	movq	$.L.str.1, -24(%rbp)
	jmp	.LBB0_6
.Ltmp8:
.LBB0_5:
	#DEBUG_VALUE: main:networkFileName <- [%RBP+-24]
	#DEBUG_VALUE: main:argv <- [%RBP+-64]
	#DEBUG_VALUE: main:argc <- [%RBP+-12]
	.loc	1 37 23                 # main.c:37:23
	movq	-64(%rbp), %rax
	movq	16(%rax), %rax
	.loc	1 37 21 is_stmt 0       # main.c:37:21
	movq	%rax, -24(%rbp)
.Ltmp9:
.LBB0_6:
	#DEBUG_VALUE: main:networkFileName <- [%RBP+-24]
	#DEBUG_VALUE: main:argv <- [%RBP+-64]
	#DEBUG_VALUE: main:argc <- [%RBP+-12]
	.loc	1 40 40 is_stmt 1       # main.c:40:40
	movq	-24(%rbp), %rdi
	.loc	1 40 19 is_stmt 0       # main.c:40:19
	callq	jpcnn_create_network
	.loc	1 40 17                 # main.c:40:17
	movq	%rax, -48(%rbp)
	.loc	1 41 7 is_stmt 1        # main.c:41:7
	testq	%rax, %rax
	je	.LBB0_7
# BB#9:
	#DEBUG_VALUE: main:networkFileName <- [%RBP+-24]
	#DEBUG_VALUE: main:argv <- [%RBP+-64]
	#DEBUG_VALUE: main:argc <- [%RBP+-12]
	.loc	1 46 53                 # main.c:46:53
	movq	-32(%rbp), %rdi
	.loc	1 46 17 is_stmt 0       # main.c:46:17
	callq	jpcnn_create_image_buffer_from_file
	.loc	1 46 15                 # main.c:46:15
	movq	%rax, -56(%rbp)
	.loc	1 47 7 is_stmt 1        # main.c:47:7
	testq	%rax, %rax
	je	.LBB0_10
# BB#11:
	#DEBUG_VALUE: main:networkFileName <- [%RBP+-24]
	#DEBUG_VALUE: main:argv <- [%RBP+-64]
	#DEBUG_VALUE: main:argc <- [%RBP+-12]
	.loc	1 52 24                 # main.c:52:24
	movq	-48(%rbp), %rdi
	.loc	1 52 39 is_stmt 0       # main.c:52:39
	movq	-56(%rbp), %rsi
	leaq	-92(%rbp), %rax
	leaq	-80(%rbp), %r10
	leaq	-88(%rbp), %r8
	leaq	-40(%rbp), %r9
	.loc	1 52 3                  # main.c:52:3
	movl	$0, %edx
	movl	$0, %ecx
	pushq	%rax
	pushq	%r10
	callq	jpcnn_classify_image
	addq	$16, %rsp
	.loc	1 53 30 is_stmt 1       # main.c:53:30
	movq	-56(%rbp), %rdi
	.loc	1 53 3 is_stmt 0        # main.c:53:3
	callq	jpcnn_destroy_image_buffer
.Ltmp10:
	.loc	1 55 14 is_stmt 1       # main.c:55:14
	movl	$0, -4(%rbp)
	jmp	.LBB0_12
	.p2align	4, 0x90
.LBB0_13:                               #   in Loop: Header=BB0_12 Depth=1
.Ltmp11:
	#DEBUG_VALUE: predictionValue <- [%RBP+-36]
	#DEBUG_VALUE: label <- [%RBP+-72]
	.loc	1 57 19                 # main.c:57:19
	movslq	-4(%rbp), %rax
	movq	-80(%rbp), %rcx
	movq	(%rcx,%rax,8), %rax
	.loc	1 57 11 is_stmt 0       # main.c:57:11
	movq	%rax, -72(%rbp)
	.loc	1 58 23 is_stmt 1       # main.c:58:23
	movslq	-4(%rbp), %rax
	movq	-88(%rbp), %rcx
	movss	(%rcx,%rax,4), %xmm0    # xmm0 = mem[0],zero,zero,zero
	.loc	1 58 21 is_stmt 0       # main.c:58:21
	movss	%xmm0, -36(%rbp)
	.loc	1 59 13 is_stmt 1       # main.c:59:13
	movq	stdout(%rip), %rdi
	.loc	1 59 37 is_stmt 0       # main.c:59:37
	movl	-4(%rbp), %edx
	.loc	1 59 44                 # main.c:59:44
	movss	-36(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	.loc	1 59 61                 # main.c:59:61
	movq	-72(%rbp), %rcx
	.loc	1 59 5                  # main.c:59:5
	movl	$.L.str.4, %esi
	movb	$1, %al
	callq	fprintf
.Ltmp12:
	.loc	1 55 52 is_stmt 1 discriminator 2 # main.c:55:52
	incl	-4(%rbp)
.LBB0_12:                               # =>This Inner Loop Header: Depth=1
	.loc	1 55 19 is_stmt 0 discriminator 1 # main.c:55:19
	movl	-4(%rbp), %eax
	.loc	1 55 3 discriminator 1  # main.c:55:3
	cmpl	-40(%rbp), %eax
	jl	.LBB0_13
.Ltmp13:
# BB#14:
	.loc	1 64 25 is_stmt 1       # main.c:64:25
	movq	-48(%rbp), %rdi
	.loc	1 64 3 is_stmt 0        # main.c:64:3
	callq	jpcnn_destroy_network
	.loc	1 66 3 is_stmt 1        # main.c:66:3
	movl	$0, -8(%rbp)
	jmp	.LBB0_15
.LBB0_7:
	#DEBUG_VALUE: main:networkFileName <- [%RBP+-24]
	#DEBUG_VALUE: main:argv <- [%RBP+-64]
	#DEBUG_VALUE: main:argc <- [%RBP+-12]
.Ltmp14:
	.loc	1 42 13                 # main.c:42:13
	movq	stderr(%rip), %rdi
	.loc	1 42 73 is_stmt 0       # main.c:42:73
	movq	-24(%rbp), %rdx
	.loc	1 42 5                  # main.c:42:5
	movl	$.L.str.2, %esi
	jmp	.LBB0_8
.Ltmp15:
.LBB0_10:
	#DEBUG_VALUE: main:networkFileName <- [%RBP+-24]
	#DEBUG_VALUE: main:argv <- [%RBP+-64]
	#DEBUG_VALUE: main:argc <- [%RBP+-12]
	.loc	1 48 13 is_stmt 1       # main.c:48:13
	movq	stderr(%rip), %rdi
	.loc	1 48 71 is_stmt 0       # main.c:48:71
	movq	-32(%rbp), %rdx
	.loc	1 48 5                  # main.c:48:5
	movl	$.L.str.3, %esi
.Ltmp16:
.LBB0_8:
	#DEBUG_VALUE: main:networkFileName <- [%RBP+-24]
	#DEBUG_VALUE: main:argv <- [%RBP+-64]
	#DEBUG_VALUE: main:argc <- [%RBP+-12]
	.loc	1 42 5 is_stmt 1        # main.c:42:5
	xorl	%eax, %eax
	callq	fprintf
	.loc	1 43 5                  # main.c:43:5
	movl	$1, -8(%rbp)
.Ltmp17:
.LBB0_15:
	.loc	1 67 1                  # main.c:67:1
	movl	-8(%rbp), %eax
	addq	$96, %rsp
	popq	%rbp
	retq
.Ltmp18:
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"nachos.jpg"
	.size	.L.str, 11

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"jetpac.ntwk"
	.size	.L.str.1, 12

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"DeepBeliefSDK: Couldn't load network file '%s'\n"
	.size	.L.str.2, 48

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"DeepBeliefSDK: Couldn't load image file '%s'\n"
	.size	.L.str.3, 46

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"%d\t%f\t%s\n"
	.size	.L.str.4, 10

	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"clang version 3.9.1 (tags/RELEASE_391/final)" # string offset=0
.Linfo_string1:
	.asciz	"main.c"                # string offset=45
.Linfo_string2:
	.asciz	"/mnt/c/Users/alvin/Documents/UT Austin/Senior 2.0/Code Generation and Optimization/EE382V_CGO/programs/final/DeepBeliefSDK/examples/SimpleLinux" # string offset=52
.Linfo_string3:
	.asciz	"main"                  # string offset=196
.Linfo_string4:
	.asciz	"int"                   # string offset=201
.Linfo_string5:
	.asciz	"argc"                  # string offset=205
.Linfo_string6:
	.asciz	"argv"                  # string offset=210
.Linfo_string7:
	.asciz	"char"                  # string offset=215
.Linfo_string8:
	.asciz	"imageFileName"         # string offset=220
.Linfo_string9:
	.asciz	"imageHandle"           # string offset=234
.Linfo_string10:
	.asciz	"networkHandle"         # string offset=246
.Linfo_string11:
	.asciz	"predictions"           # string offset=260
.Linfo_string12:
	.asciz	"float"                 # string offset=272
.Linfo_string13:
	.asciz	"predictionsLength"     # string offset=278
.Linfo_string14:
	.asciz	"predictionsLabels"     # string offset=296
.Linfo_string15:
	.asciz	"predictionsLabelsLength" # string offset=314
.Linfo_string16:
	.asciz	"index"                 # string offset=338
.Linfo_string17:
	.asciz	"networkFileName"       # string offset=344
.Linfo_string18:
	.asciz	"predictionValue"       # string offset=360
.Linfo_string19:
	.asciz	"label"                 # string offset=376
	.section	.debug_loc,"",@progbits
	.section	.debug_abbrev,"",@progbits
.Lsection_abbrev:
	.byte	1                       # Abbreviation Code
	.byte	17                      # DW_TAG_compile_unit
	.byte	1                       # DW_CHILDREN_yes
	.byte	37                      # DW_AT_producer
	.byte	14                      # DW_FORM_strp
	.byte	19                      # DW_AT_language
	.byte	5                       # DW_FORM_data2
	.byte	3                       # DW_AT_name
	.byte	14                      # DW_FORM_strp
	.byte	16                      # DW_AT_stmt_list
	.byte	23                      # DW_FORM_sec_offset
	.byte	27                      # DW_AT_comp_dir
	.byte	14                      # DW_FORM_strp
	.byte	17                      # DW_AT_low_pc
	.byte	1                       # DW_FORM_addr
	.byte	18                      # DW_AT_high_pc
	.byte	6                       # DW_FORM_data4
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	2                       # Abbreviation Code
	.byte	15                      # DW_TAG_pointer_type
	.byte	0                       # DW_CHILDREN_no
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	3                       # Abbreviation Code
	.byte	46                      # DW_TAG_subprogram
	.byte	1                       # DW_CHILDREN_yes
	.byte	17                      # DW_AT_low_pc
	.byte	1                       # DW_FORM_addr
	.byte	18                      # DW_AT_high_pc
	.byte	6                       # DW_FORM_data4
	.byte	64                      # DW_AT_frame_base
	.byte	24                      # DW_FORM_exprloc
	.byte	3                       # DW_AT_name
	.byte	14                      # DW_FORM_strp
	.byte	58                      # DW_AT_decl_file
	.byte	11                      # DW_FORM_data1
	.byte	59                      # DW_AT_decl_line
	.byte	11                      # DW_FORM_data1
	.byte	39                      # DW_AT_prototyped
	.byte	25                      # DW_FORM_flag_present
	.byte	73                      # DW_AT_type
	.byte	19                      # DW_FORM_ref4
	.byte	63                      # DW_AT_external
	.byte	25                      # DW_FORM_flag_present
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	4                       # Abbreviation Code
	.byte	5                       # DW_TAG_formal_parameter
	.byte	0                       # DW_CHILDREN_no
	.byte	2                       # DW_AT_location
	.byte	24                      # DW_FORM_exprloc
	.byte	3                       # DW_AT_name
	.byte	14                      # DW_FORM_strp
	.byte	58                      # DW_AT_decl_file
	.byte	11                      # DW_FORM_data1
	.byte	59                      # DW_AT_decl_line
	.byte	11                      # DW_FORM_data1
	.byte	73                      # DW_AT_type
	.byte	19                      # DW_FORM_ref4
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	5                       # Abbreviation Code
	.byte	52                      # DW_TAG_variable
	.byte	0                       # DW_CHILDREN_no
	.byte	2                       # DW_AT_location
	.byte	24                      # DW_FORM_exprloc
	.byte	3                       # DW_AT_name
	.byte	14                      # DW_FORM_strp
	.byte	58                      # DW_AT_decl_file
	.byte	11                      # DW_FORM_data1
	.byte	59                      # DW_AT_decl_line
	.byte	11                      # DW_FORM_data1
	.byte	73                      # DW_AT_type
	.byte	19                      # DW_FORM_ref4
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	6                       # Abbreviation Code
	.byte	11                      # DW_TAG_lexical_block
	.byte	1                       # DW_CHILDREN_yes
	.byte	17                      # DW_AT_low_pc
	.byte	1                       # DW_FORM_addr
	.byte	18                      # DW_AT_high_pc
	.byte	6                       # DW_FORM_data4
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	7                       # Abbreviation Code
	.byte	36                      # DW_TAG_base_type
	.byte	0                       # DW_CHILDREN_no
	.byte	3                       # DW_AT_name
	.byte	14                      # DW_FORM_strp
	.byte	62                      # DW_AT_encoding
	.byte	11                      # DW_FORM_data1
	.byte	11                      # DW_AT_byte_size
	.byte	11                      # DW_FORM_data1
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	8                       # Abbreviation Code
	.byte	15                      # DW_TAG_pointer_type
	.byte	0                       # DW_CHILDREN_no
	.byte	73                      # DW_AT_type
	.byte	19                      # DW_FORM_ref4
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	9                       # Abbreviation Code
	.byte	38                      # DW_TAG_const_type
	.byte	0                       # DW_CHILDREN_no
	.byte	73                      # DW_AT_type
	.byte	19                      # DW_FORM_ref4
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	0                       # EOM(3)
	.section	.debug_info,"",@progbits
.Lsection_info:
.Lcu_begin0:
	.long	317                     # Length of Unit
	.short	4                       # DWARF version number
	.long	.Lsection_abbrev        # Offset Into Abbrev. Section
	.byte	8                       # Address Size (in bytes)
	.byte	1                       # Abbrev [1] 0xb:0x136 DW_TAG_compile_unit
	.long	.Linfo_string0          # DW_AT_producer
	.short	12                      # DW_AT_language
	.long	.Linfo_string1          # DW_AT_name
	.long	.Lline_table_start0     # DW_AT_stmt_list
	.long	.Linfo_string2          # DW_AT_comp_dir
	.quad	.Lfunc_begin0           # DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0 # DW_AT_high_pc
	.byte	2                       # Abbrev [2] 0x2a:0x1 DW_TAG_pointer_type
	.byte	3                       # Abbrev [3] 0x2b:0xe2 DW_TAG_subprogram
	.quad	.Lfunc_begin0           # DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0 # DW_AT_high_pc
	.byte	1                       # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string3          # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	15                      # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	269                     # DW_AT_type
                                        # DW_AT_external
	.byte	4                       # Abbrev [4] 0x44:0xe DW_TAG_formal_parameter
	.byte	2                       # DW_AT_location
	.byte	145
	.byte	116
	.long	.Linfo_string5          # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	15                      # DW_AT_decl_line
	.long	269                     # DW_AT_type
	.byte	4                       # Abbrev [4] 0x52:0xe DW_TAG_formal_parameter
	.byte	2                       # DW_AT_location
	.byte	145
	.byte	64
	.long	.Linfo_string6          # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	15                      # DW_AT_decl_line
	.long	276                     # DW_AT_type
	.byte	5                       # Abbrev [5] 0x60:0xe DW_TAG_variable
	.byte	2                       # DW_AT_location
	.byte	145
	.byte	96
	.long	.Linfo_string8          # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	17                      # DW_AT_decl_line
	.long	281                     # DW_AT_type
	.byte	5                       # Abbrev [5] 0x6e:0xe DW_TAG_variable
	.byte	2                       # DW_AT_location
	.byte	145
	.byte	72
	.long	.Linfo_string9          # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	18                      # DW_AT_decl_line
	.long	42                      # DW_AT_type
	.byte	5                       # Abbrev [5] 0x7c:0xe DW_TAG_variable
	.byte	2                       # DW_AT_location
	.byte	145
	.byte	80
	.long	.Linfo_string10         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	19                      # DW_AT_decl_line
	.long	42                      # DW_AT_type
	.byte	5                       # Abbrev [5] 0x8a:0xf DW_TAG_variable
	.byte	3                       # DW_AT_location
	.byte	145
	.ascii	"\250\177"
	.long	.Linfo_string11         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	21                      # DW_AT_decl_line
	.long	298                     # DW_AT_type
	.byte	5                       # Abbrev [5] 0x99:0xe DW_TAG_variable
	.byte	2                       # DW_AT_location
	.byte	145
	.byte	88
	.long	.Linfo_string13         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	22                      # DW_AT_decl_line
	.long	269                     # DW_AT_type
	.byte	5                       # Abbrev [5] 0xa7:0xf DW_TAG_variable
	.byte	3                       # DW_AT_location
	.byte	145
	.ascii	"\260\177"
	.long	.Linfo_string14         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	23                      # DW_AT_decl_line
	.long	310                     # DW_AT_type
	.byte	5                       # Abbrev [5] 0xb6:0xf DW_TAG_variable
	.byte	3                       # DW_AT_location
	.byte	145
	.ascii	"\244\177"
	.long	.Linfo_string15         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	24                      # DW_AT_decl_line
	.long	269                     # DW_AT_type
	.byte	5                       # Abbrev [5] 0xc5:0xe DW_TAG_variable
	.byte	2                       # DW_AT_location
	.byte	145
	.byte	124
	.long	.Linfo_string16         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	25                      # DW_AT_decl_line
	.long	269                     # DW_AT_type
	.byte	5                       # Abbrev [5] 0xd3:0xe DW_TAG_variable
	.byte	2                       # DW_AT_location
	.byte	145
	.byte	104
	.long	.Linfo_string17         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	33                      # DW_AT_decl_line
	.long	281                     # DW_AT_type
	.byte	6                       # Abbrev [6] 0xe1:0x2b DW_TAG_lexical_block
	.quad	.Ltmp11                 # DW_AT_low_pc
	.long	.Ltmp12-.Ltmp11         # DW_AT_high_pc
	.byte	5                       # Abbrev [5] 0xee:0xe DW_TAG_variable
	.byte	2                       # DW_AT_location
	.byte	145
	.byte	92
	.long	.Linfo_string18         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	56                      # DW_AT_decl_line
	.long	303                     # DW_AT_type
	.byte	5                       # Abbrev [5] 0xfc:0xf DW_TAG_variable
	.byte	3                       # DW_AT_location
	.byte	145
	.ascii	"\270\177"
	.long	.Linfo_string19         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	57                      # DW_AT_decl_line
	.long	315                     # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	0                       # End Of Children Mark
	.byte	7                       # Abbrev [7] 0x10d:0x7 DW_TAG_base_type
	.long	.Linfo_string4          # DW_AT_name
	.byte	5                       # DW_AT_encoding
	.byte	4                       # DW_AT_byte_size
	.byte	8                       # Abbrev [8] 0x114:0x5 DW_TAG_pointer_type
	.long	281                     # DW_AT_type
	.byte	8                       # Abbrev [8] 0x119:0x5 DW_TAG_pointer_type
	.long	286                     # DW_AT_type
	.byte	9                       # Abbrev [9] 0x11e:0x5 DW_TAG_const_type
	.long	291                     # DW_AT_type
	.byte	7                       # Abbrev [7] 0x123:0x7 DW_TAG_base_type
	.long	.Linfo_string7          # DW_AT_name
	.byte	6                       # DW_AT_encoding
	.byte	1                       # DW_AT_byte_size
	.byte	8                       # Abbrev [8] 0x12a:0x5 DW_TAG_pointer_type
	.long	303                     # DW_AT_type
	.byte	7                       # Abbrev [7] 0x12f:0x7 DW_TAG_base_type
	.long	.Linfo_string12         # DW_AT_name
	.byte	4                       # DW_AT_encoding
	.byte	4                       # DW_AT_byte_size
	.byte	8                       # Abbrev [8] 0x136:0x5 DW_TAG_pointer_type
	.long	315                     # DW_AT_type
	.byte	8                       # Abbrev [8] 0x13b:0x5 DW_TAG_pointer_type
	.long	291                     # DW_AT_type
	.byte	0                       # End Of Children Mark
	.section	.debug_ranges,"",@progbits
.Ldebug_range:
	.section	.debug_macinfo,"",@progbits
.Ldebug_macinfo:
.Lcu_macro_begin0:
	.byte	0                       # End Of Macro List Mark
	.section	.debug_pubnames,"",@progbits
	.long	.LpubNames_end0-.LpubNames_begin0 # Length of Public Names Info
.LpubNames_begin0:
	.short	2                       # DWARF Version
	.long	.Lcu_begin0             # Offset of Compilation Unit Info
	.long	321                     # Compilation Unit Length
	.long	43                      # DIE offset
	.asciz	"main"                  # External Name
	.long	0                       # End Mark
.LpubNames_end0:
	.section	.debug_pubtypes,"",@progbits
	.long	.LpubTypes_end0-.LpubTypes_begin0 # Length of Public Types Info
.LpubTypes_begin0:
	.short	2                       # DWARF Version
	.long	.Lcu_begin0             # Offset of Compilation Unit Info
	.long	321                     # Compilation Unit Length
	.long	303                     # DIE offset
	.asciz	"float"                 # External Name
	.long	269                     # DIE offset
	.asciz	"int"                   # External Name
	.long	291                     # DIE offset
	.asciz	"char"                  # External Name
	.long	0                       # End Mark
.LpubTypes_end0:

	.ident	"clang version 3.9.1 (tags/RELEASE_391/final)"
	.section	".note.GNU-stack","",@progbits
	.section	.debug_line,"",@progbits
.Lline_table_start0:
