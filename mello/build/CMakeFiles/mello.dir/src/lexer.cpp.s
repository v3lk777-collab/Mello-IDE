	.file	"lexer.cpp"
	.text
	.section	.text$_ZNSt11char_traitsIcE2ltERKcS2_,"x"
	.linkonce discard
	.globl	_ZNSt11char_traitsIcE2ltERKcS2_
	.def	_ZNSt11char_traitsIcE2ltERKcS2_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt11char_traitsIcE2ltERKcS2_
_ZNSt11char_traitsIcE2ltERKcS2_:
.LFB172:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	16(%rbp), %rax
	movzbl	(%rax), %eax
	movl	%eax, %edx
	movq	24(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	%al, %dl
	setb	%al
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt11char_traitsIcE7compareEPKcS2_y,"x"
	.linkonce discard
	.globl	_ZNSt11char_traitsIcE7compareEPKcS2_y
	.def	_ZNSt11char_traitsIcE7compareEPKcS2_y;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt11char_traitsIcE7compareEPKcS2_y
_ZNSt11char_traitsIcE7compareEPKcS2_y:
.LFB173:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	%r8, 32(%rbp)
	cmpq	$0, 32(%rbp)
	jne	.L4
	movl	$0, %eax
	jmp	.L5
.L4:
	movl	$0, %eax
	testb	%al, %al
	je	.L7
	movq	$0, -8(%rbp)
	jmp	.L8
.L11:
	movq	24(%rbp), %rdx
	movq	-8(%rbp), %rax
	addq	%rax, %rdx
	movq	16(%rbp), %rcx
	movq	-8(%rbp), %rax
	addq	%rcx, %rax
	movq	%rax, %rcx
	call	_ZNSt11char_traitsIcE2ltERKcS2_
	testb	%al, %al
	je	.L9
	movl	$-1, %eax
	jmp	.L5
.L9:
	movq	16(%rbp), %rdx
	movq	-8(%rbp), %rax
	addq	%rax, %rdx
	movq	24(%rbp), %rcx
	movq	-8(%rbp), %rax
	addq	%rcx, %rax
	movq	%rax, %rcx
	call	_ZNSt11char_traitsIcE2ltERKcS2_
	testb	%al, %al
	je	.L10
	movl	$1, %eax
	jmp	.L5
.L10:
	addq	$1, -8(%rbp)
.L8:
	movq	-8(%rbp), %rax
	cmpq	32(%rbp), %rax
	jb	.L11
	movl	$0, %eax
	jmp	.L5
.L7:
	movq	32(%rbp), %rcx
	movq	24(%rbp), %rdx
	movq	16(%rbp), %rax
	movq	%rcx, %r8
	movq	%rax, %rcx
	call	memcmp
	nop
.L5:
	addq	$48, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt11char_traitsIcE6lengthEPKc,"x"
	.linkonce discard
	.globl	_ZNSt11char_traitsIcE6lengthEPKc
	.def	_ZNSt11char_traitsIcE6lengthEPKc;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt11char_traitsIcE6lengthEPKc
_ZNSt11char_traitsIcE6lengthEPKc:
.LFB174:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movl	$0, %eax
	testb	%al, %al
	je	.L14
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN9__gnu_cxx11char_traitsIcE6lengthEPKc
	jmp	.L15
.L14:
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	call	strlen
	nop
.L15:
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZnwyPv,"x"
	.linkonce discard
	.globl	_ZnwyPv
	.def	_ZnwyPv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZnwyPv
_ZnwyPv:
.LFB235:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	24(%rbp), %rax
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt10_Hash_impl4hashEPKvyy,"x"
	.linkonce discard
	.globl	_ZNSt10_Hash_impl4hashEPKvyy
	.def	_ZNSt10_Hash_impl4hashEPKvyy;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt10_Hash_impl4hashEPKvyy
_ZNSt10_Hash_impl4hashEPKvyy:
.LFB972:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	%r8, 32(%rbp)
	movq	32(%rbp), %rcx
	movq	24(%rbp), %rdx
	movq	16(%rbp), %rax
	movq	%rcx, %r8
	movq	%rax, %rcx
	call	_ZSt11_Hash_bytesPKvyy
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZZNSt7__cxx119to_stringEiENKUlPcyE_clES0_y,"x"
	.linkonce discard
	.align 2
	.globl	_ZZNSt7__cxx119to_stringEiENKUlPcyE_clES0_y
	.def	_ZZNSt7__cxx119to_stringEiENKUlPcyE_clES0_y;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZZNSt7__cxx119to_stringEiENKUlPcyE_clES0_y
_ZZNSt7__cxx119to_stringEiENKUlPcyE_clES0_y:
.LFB1328:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	%r8, 32(%rbp)
	movq	24(%rbp), %rax
	movb	$45, (%rax)
	movq	16(%rbp), %rax
	movl	8(%rax), %r8d
	movq	16(%rbp), %rax
	movl	4(%rax), %eax
	movq	16(%rbp), %rdx
	movzbl	(%rdx), %edx
	movzbl	%dl, %ecx
	movq	24(%rbp), %rdx
	addq	%rdx, %rcx
	movl	%eax, %edx
	call	_ZNSt8__detail18__to_chars_10_implIjEEvPcjT_
	movq	32(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt7__cxx119to_stringEi,"x"
	.linkonce discard
	.globl	_ZNSt7__cxx119to_stringEi
	.def	_ZNSt7__cxx119to_stringEi;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt7__cxx119to_stringEi
_ZNSt7__cxx119to_stringEi:
.LFB1325:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$80, %rsp
	.seh_stackalloc	80
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movl	%edx, 24(%rbp)
	movl	24(%rbp), %eax
	shrl	$31, %eax
	movb	%al, -1(%rbp)
	cmpb	$0, -1(%rbp)
	je	.L23
	movl	24(%rbp), %eax
	negl	%eax
	jmp	.L24
.L23:
	movl	24(%rbp), %eax
.L24:
	movl	%eax, -8(%rbp)
	movl	-8(%rbp), %eax
	movl	$10, %edx
	movl	%eax, %ecx
	call	_ZNSt8__detail14__to_chars_lenIjEEjT_i
	movl	%eax, -12(%rbp)
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1Ev
	movzbl	-1(%rbp), %eax
	movb	%al, -24(%rbp)
	movl	-12(%rbp), %eax
	movl	%eax, -20(%rbp)
	movl	-8(%rbp), %eax
	movl	%eax, -16(%rbp)
	movzbl	-1(%rbp), %edx
	movl	-12(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rax
	movq	%rax, -48(%rbp)
	movl	-16(%rbp), %eax
	movl	%eax, -40(%rbp)
	leaq	-48(%rbp), %rdx
	movq	16(%rbp), %rax
	movq	%rdx, %r8
	movq	%rcx, %rdx
	movq	%rax, %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE22__resize_and_overwriteIZNS_9to_stringEiEUlPcyE_EEvyT_
	movq	16(%rbp), %rax
	addq	$80, %rsp
	popq	%rbp
	ret
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA1325:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE1325-.LLSDACSB1325
.LLSDACSB1325:
.LLSDACSE1325:
	.section	.text$_ZNSt7__cxx119to_stringEi,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_ZNSt8__detail14__to_chars_lenIjEEjT_i,"x"
	.linkonce discard
	.globl	_ZNSt8__detail14__to_chars_lenIjEEjT_i
	.def	_ZNSt8__detail14__to_chars_lenIjEEjT_i;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt8__detail14__to_chars_lenIjEEjT_i
_ZNSt8__detail14__to_chars_lenIjEEjT_i:
.LFB1330:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$16, %rsp
	.seh_stackalloc	16
	.seh_endprologue
	movl	%ecx, 16(%rbp)
	movl	%edx, 24(%rbp)
	movl	$1, -4(%rbp)
	movl	24(%rbp), %eax
	imull	%eax, %eax
	movl	%eax, -8(%rbp)
	movl	24(%rbp), %eax
	movl	-8(%rbp), %edx
	imull	%edx, %eax
	movl	%eax, -12(%rbp)
	movl	24(%rbp), %eax
	movl	-12(%rbp), %edx
	imull	%edx, %eax
	movl	%eax, -16(%rbp)
.L32:
	movl	24(%rbp), %eax
	cmpl	%eax, 16(%rbp)
	jnb	.L27
	movl	-4(%rbp), %eax
	jmp	.L28
.L27:
	movl	16(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jnb	.L29
	movl	-4(%rbp), %eax
	addl	$1, %eax
	jmp	.L28
.L29:
	movl	16(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jnb	.L30
	movl	-4(%rbp), %eax
	addl	$2, %eax
	jmp	.L28
.L30:
	movl	16(%rbp), %eax
	cmpl	-16(%rbp), %eax
	jnb	.L31
	movl	-4(%rbp), %eax
	addl	$3, %eax
	jmp	.L28
.L31:
	movl	16(%rbp), %eax
	movl	$0, %edx
	divl	-16(%rbp)
	movl	%eax, 16(%rbp)
	addl	$4, -4(%rbp)
	jmp	.L32
.L28:
	addq	$16, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZN5TokenC1E9TokenTypeRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE,"x"
	.linkonce discard
	.align 2
	.globl	_ZN5TokenC1E9TokenTypeRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
	.def	_ZN5TokenC1E9TokenTypeRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5TokenC1E9TokenTypeRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
_ZN5TokenC1E9TokenTypeRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:
.LFB1640:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movl	%edx, 24(%rbp)
	movq	%r8, 32(%rbp)
	movq	16(%rbp), %rax
	movl	24(%rbp), %edx
	movl	%edx, (%rax)
	movq	16(%rbp), %rax
	leaq	8(%rax), %rcx
	movq	32(%rbp), %rax
	movq	%rax, %rdx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1ERKS4_
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt8__detail15_Hash_node_baseC2Ev,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt8__detail15_Hash_node_baseC2Ev
	.def	_ZNSt8__detail15_Hash_node_baseC2Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt8__detail15_Hash_node_baseC2Ev
_ZNSt8__detail15_Hash_node_baseC2Ev:
.LFB1671:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	movq	$0, (%rax)
	nop
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt8__detail15_Hash_node_baseC1Ev,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt8__detail15_Hash_node_baseC1Ev
	.def	_ZNSt8__detail15_Hash_node_baseC1Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt8__detail15_Hash_node_baseC1Ev
_ZNSt8__detail15_Hash_node_baseC1Ev:
.LFB1672:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	movq	$0, (%rax)
	nop
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNKSt8__detail18_Mod_range_hashingclEyy,"x"
	.linkonce discard
	.align 2
	.globl	_ZNKSt8__detail18_Mod_range_hashingclEyy
	.def	_ZNKSt8__detail18_Mod_range_hashingclEyy;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNKSt8__detail18_Mod_range_hashingclEyy
_ZNKSt8__detail18_Mod_range_hashingclEyy:
.LFB1697:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	%r8, 32(%rbp)
	movq	24(%rbp), %rax
	movl	$0, %edx
	divq	32(%rbp)
	movq	%rdx, %rax
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt8__detail20_Prime_rehash_policyC1Ef,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt8__detail20_Prime_rehash_policyC1Ef
	.def	_ZNSt8__detail20_Prime_rehash_policyC1Ef;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt8__detail20_Prime_rehash_policyC1Ef
_ZNSt8__detail20_Prime_rehash_policyC1Ef:
.LFB1700:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movss	%xmm1, 24(%rbp)
	movq	16(%rbp), %rax
	movss	24(%rbp), %xmm0
	movss	%xmm0, (%rax)
	movq	16(%rbp), %rax
	movq	$0, 8(%rax)
	nop
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNKSt8__detail20_Prime_rehash_policy8_M_stateEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNKSt8__detail20_Prime_rehash_policy8_M_stateEv
	.def	_ZNKSt8__detail20_Prime_rehash_policy8_M_stateEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNKSt8__detail20_Prime_rehash_policy8_M_stateEv
_ZNKSt8__detail20_Prime_rehash_policy8_M_stateEv:
.LFB1703:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	movq	8(%rax), %rax
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt8__detail20_Prime_rehash_policy8_M_resetEy,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt8__detail20_Prime_rehash_policy8_M_resetEy
	.def	_ZNSt8__detail20_Prime_rehash_policy8_M_resetEy;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt8__detail20_Prime_rehash_policy8_M_resetEy
_ZNSt8__detail20_Prime_rehash_policy8_M_resetEy:
.LFB1705:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	16(%rbp), %rax
	movq	24(%rbp), %rdx
	movq	%rdx, 8(%rax)
	nop
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZSt3minIyERKT_S2_S2_,"x"
	.linkonce discard
	.globl	_ZSt3minIyERKT_S2_S2_
	.def	_ZSt3minIyERKT_S2_S2_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt3minIyERKT_S2_S2_
_ZSt3minIyERKT_S2_S2_:
.LFB1713:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	24(%rbp), %rax
	movq	(%rax), %rdx
	movq	16(%rbp), %rax
	movq	(%rax), %rax
	cmpq	%rax, %rdx
	jnb	.L43
	movq	24(%rbp), %rax
	jmp	.L44
.L43:
	movq	16(%rbp), %rax
.L44:
	popq	%rbp
	ret
	.seh_endproc
	.globl	_Z12keywordsListB5cxx11
	.section	.data$_Z12keywordsListB5cxx11,"w"
	.linkonce same_size
	.align 32
_Z12keywordsListB5cxx11:
	.space 56
	.section	.text$_ZNSt12_Vector_baseIiSaIiEE12_Vector_implD1Ev,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt12_Vector_baseIiSaIiEE12_Vector_implD1Ev
	.def	_ZNSt12_Vector_baseIiSaIiEE12_Vector_implD1Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt12_Vector_baseIiSaIiEE12_Vector_implD1Ev
_ZNSt12_Vector_baseIiSaIiEE12_Vector_implD1Ev:
.LFB3438:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt15__new_allocatorIiED2Ev
	nop
	nop
	addq	$48, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt12_Vector_baseIiSaIiEEC2Ev,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt12_Vector_baseIiSaIiEEC2Ev
	.def	_ZNSt12_Vector_baseIiSaIiEEC2Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt12_Vector_baseIiSaIiEEC2Ev
_ZNSt12_Vector_baseIiSaIiEEC2Ev:
.LFB3439:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC1Ev
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt6vectorIiSaIiEEC1Ev,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt6vectorIiSaIiEEC1Ev
	.def	_ZNSt6vectorIiSaIiEEC1Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt6vectorIiSaIiEEC1Ev
_ZNSt6vectorIiSaIiEEC1Ev:
.LFB3442:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt12_Vector_baseIiSaIiEEC2Ev
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.text
	.align 2
	.globl	_ZN5LexerC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
	.def	_ZN5LexerC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5LexerC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
_ZN5LexerC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:
.LFB3443:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$56, %rsp
	.seh_stackalloc	56
	leaq	48(%rsp), %rbp
	.seh_setframe	%rbp, 48
	.seh_endprologue
	movq	%rcx, 32(%rbp)
	movq	%rdx, 40(%rbp)
	movq	32(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1Ev
	movq	32(%rbp), %rax
	addq	$56, %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorIiSaIiEEC1Ev
	movq	32(%rbp), %rax
	movq	40(%rbp), %rdx
	movq	%rax, %rcx
.LEHB0:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_
	movq	32(%rbp), %rax
	movq	$0, 32(%rax)
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6lengthEv
	movq	32(%rbp), %rdx
	movq	%rax, 40(%rdx)
	movq	32(%rbp), %rax
	movq	40(%rax), %rax
	testq	%rax, %rax
	je	.L49
	movq	40(%rbp), %rax
	movl	$0, %edx
	movq	%rax, %rcx
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEixEy
	movzbl	(%rax), %eax
	jmp	.L50
.L49:
	movl	$0, %eax
.L50:
	movq	32(%rbp), %rdx
	movb	%al, 48(%rdx)
	movq	32(%rbp), %rax
	leaq	56(%rax), %rcx
	movl	$0, -4(%rbp)
	leaq	-4(%rbp), %rax
	movq	%rax, %rdx
	call	_ZNSt6vectorIiSaIiEE9push_backEOi
.LEHE0:
	movq	32(%rbp), %rax
	movb	$1, 49(%rax)
	jmp	.L53
.L52:
	movq	%rax, %rbx
	movq	32(%rbp), %rax
	addq	$56, %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorIiSaIiEED1Ev
	movq	32(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	movq	%rbx, %rax
	movq	%rax, %rcx
.LEHB1:
	call	_Unwind_Resume
	nop
.LEHE1:
.L53:
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA3443:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE3443-.LLSDACSB3443
.LLSDACSB3443:
	.uleb128 .LEHB0-.LFB3443
	.uleb128 .LEHE0-.LEHB0
	.uleb128 .L52-.LFB3443
	.uleb128 0
	.uleb128 .LEHB1-.LFB3443
	.uleb128 .LEHE1-.LEHB1
	.uleb128 0
	.uleb128 0
.LLSDACSE3443:
	.text
	.seh_endproc
	.globl	_ZN5LexerC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
	.def	_ZN5LexerC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE;	.scl	2;	.type	32;	.endef
	.set	_ZN5LexerC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE,_ZN5LexerC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
	.align 2
	.globl	_ZN5Lexer4peekEv
	.def	_ZN5Lexer4peekEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5Lexer4peekEv
_ZN5Lexer4peekEv:
.LFB3445:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	movq	32(%rax), %rax
	leaq	1(%rax), %rdx
	movq	16(%rbp), %rax
	movq	40(%rax), %rax
	cmpq	%rax, %rdx
	jnb	.L55
	movq	16(%rbp), %rax
	movq	16(%rbp), %rdx
	movq	32(%rdx), %rdx
	addq	$1, %rdx
	movq	%rax, %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEixEy
	movzbl	(%rax), %eax
	jmp	.L56
.L55:
	movl	$0, %eax
.L56:
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.align 2
	.globl	_ZN5Lexer7advanceEv
	.def	_ZN5Lexer7advanceEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5Lexer7advanceEv
_ZN5Lexer7advanceEv:
.LFB3446:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	movq	32(%rax), %rax
	leaq	1(%rax), %rdx
	movq	16(%rbp), %rax
	movq	%rdx, 32(%rax)
	movq	16(%rbp), %rax
	movq	32(%rax), %rdx
	movq	16(%rbp), %rax
	movq	40(%rax), %rax
	cmpq	%rax, %rdx
	jnb	.L58
	movq	16(%rbp), %rax
	movq	16(%rbp), %rdx
	movq	32(%rdx), %rdx
	movq	%rax, %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEixEy
	movzbl	(%rax), %edx
	movq	16(%rbp), %rax
	movb	%dl, 48(%rax)
	jmp	.L60
.L58:
	movq	16(%rbp), %rax
	movb	$0, 48(%rax)
.L60:
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.align 2
	.globl	_ZN5Lexer14skipWhitespaceEv
	.def	_ZN5Lexer14skipWhitespaceEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5Lexer14skipWhitespaceEv
_ZN5Lexer14skipWhitespaceEv:
.LFB3447:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	jmp	.L62
.L63:
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN5Lexer7advanceEv
.L62:
	movq	16(%rbp), %rax
	movzbl	48(%rax), %eax
	cmpb	$32, %al
	je	.L63
	movq	16(%rbp), %rax
	movzbl	48(%rax), %eax
	cmpb	$9, %al
	je	.L63
	movq	16(%rbp), %rax
	movzbl	48(%rax), %eax
	cmpb	$13, %al
	je	.L63
	nop
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.align 2
	.globl	_ZN5Lexer11skipCommentEv
	.def	_ZN5Lexer11skipCommentEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5Lexer11skipCommentEv
_ZN5Lexer11skipCommentEv:
.LFB3448:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	movzbl	48(%rax), %eax
	cmpb	$35, %al
	jne	.L68
	jmp	.L66
.L67:
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN5Lexer7advanceEv
.L66:
	movq	16(%rbp), %rax
	movzbl	48(%rax), %eax
	cmpb	$10, %al
	je	.L68
	movq	16(%rbp), %rax
	movzbl	48(%rax), %eax
	testb	%al, %al
	jne	.L67
.L68:
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.align 2
	.globl	_ZN5Lexer11fileIsEmptyEv
	.def	_ZN5Lexer11fileIsEmptyEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5Lexer11fileIsEmptyEv
_ZN5Lexer11fileIsEmptyEv:
.LFB3449:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	movzbl	48(%rax), %eax
	testb	%al, %al
	jne	.L70
	movl	$1, %eax
	jmp	.L71
.L70:
	movl	$0, %eax
.L71:
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt12_Vector_baseI5TokenSaIS0_EE12_Vector_implD1Ev,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt12_Vector_baseI5TokenSaIS0_EE12_Vector_implD1Ev
	.def	_ZNSt12_Vector_baseI5TokenSaIS0_EE12_Vector_implD1Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt12_Vector_baseI5TokenSaIS0_EE12_Vector_implD1Ev
_ZNSt12_Vector_baseI5TokenSaIS0_EE12_Vector_implD1Ev:
.LFB3456:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt15__new_allocatorI5TokenED2Ev
	nop
	nop
	addq	$48, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt12_Vector_baseI5TokenSaIS0_EEC2Ev,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt12_Vector_baseI5TokenSaIS0_EEC2Ev
	.def	_ZNSt12_Vector_baseI5TokenSaIS0_EEC2Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt12_Vector_baseI5TokenSaIS0_EEC2Ev
_ZNSt12_Vector_baseI5TokenSaIS0_EEC2Ev:
.LFB3457:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt12_Vector_baseI5TokenSaIS0_EE12_Vector_implC1Ev
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt6vectorI5TokenSaIS0_EEC1Ev,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt6vectorI5TokenSaIS0_EEC1Ev
	.def	_ZNSt6vectorI5TokenSaIS0_EEC1Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt6vectorI5TokenSaIS0_EEC1Ev
_ZNSt6vectorI5TokenSaIS0_EEC1Ev:
.LFB3460:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt12_Vector_baseI5TokenSaIS0_EEC2Ev
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZN5TokenD1Ev,"x"
	.linkonce discard
	.align 2
	.globl	_ZN5TokenD1Ev
	.def	_ZN5TokenD1Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5TokenD1Ev
_ZN5TokenD1Ev:
.LFB3463:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	addq	$8, %rax
	movq	%rax, %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section .rdata,"dr"
.LC0:
	.ascii "\0"
	.align 8
.LC1:
	.ascii "Indentation Error: Unindent does not match any outer level\12\0"
.LC2:
	.ascii "\12\0"
.LC3:
	.ascii ".\0"
.LC4:
	.ascii "==\0"
.LC5:
	.ascii "=\0"
	.text
	.align 2
	.globl	_ZN5Lexer8tokenizeEv
	.def	_ZN5Lexer8tokenizeEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5Lexer8tokenizeEv
_ZN5Lexer8tokenizeEv:
.LFB3450:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$1672, %rsp
	.seh_stackalloc	1672
	leaq	128(%rsp), %rbp
	.seh_setframe	%rbp, 128
	.seh_endprologue
	movq	%rcx, 1568(%rbp)
	movq	%rdx, 1576(%rbp)
	movq	1568(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI5TokenSaIS0_EEC1Ev
	jmp	.L77
.L129:
	movq	1576(%rbp), %rax
	movzbl	49(%rax), %eax
	testb	%al, %al
	je	.L78
	movl	$0, -52(%rbp)
	jmp	.L79
.L82:
	movq	1576(%rbp), %rax
	movzbl	48(%rax), %eax
	cmpb	$9, %al
	jne	.L80
	movl	-52(%rbp), %eax
	addl	$4, %eax
	movl	%eax, -52(%rbp)
	jmp	.L81
.L80:
	movl	-52(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -52(%rbp)
.L81:
	movq	1576(%rbp), %rax
	movq	%rax, %rcx
.LEHB2:
	call	_ZN5Lexer7advanceEv
.L79:
	movq	1576(%rbp), %rax
	movzbl	48(%rax), %eax
	cmpb	$32, %al
	je	.L82
	movq	1576(%rbp), %rax
	movzbl	48(%rax), %eax
	cmpb	$9, %al
	je	.L82
	movq	1576(%rbp), %rax
	movzbl	48(%rax), %eax
	cmpb	$10, %al
	je	.L83
	movq	1576(%rbp), %rax
	movzbl	48(%rax), %eax
	cmpb	$35, %al
	jne	.L84
.L83:
	movq	1576(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN5Lexer11skipCommentEv
	movq	1576(%rbp), %rax
	movzbl	48(%rax), %eax
	cmpb	$10, %al
	jne	.L77
	movq	1576(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN5Lexer7advanceEv
	jmp	.L77
.L84:
	movq	1576(%rbp), %rax
	addq	$56, %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorIiSaIiEE4backEv
	movl	(%rax), %eax
	movl	%eax, 1528(%rbp)
	movl	-52(%rbp), %eax
	cmpl	%eax, 1528(%rbp)
	jge	.L86
	movq	1576(%rbp), %rax
	leaq	56(%rax), %rcx
	leaq	-52(%rbp), %rax
	movq	%rax, %rdx
	call	_ZNSt6vectorIiSaIiEE9push_backERKi
.LEHE2:
	movl	-52(%rbp), %edx
	movq	%rbp, %rax
	movq	%rax, %rcx
	call	_ZNSt7__cxx119to_stringEi
	movq	%rbp, %rdx
	leaq	-48(%rbp), %rax
	movq	%rdx, %r8
	movl	$15, %edx
	movq	%rax, %rcx
.LEHB3:
	call	_ZN5TokenC1E9TokenTypeRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
.LEHE3:
	leaq	-48(%rbp), %rdx
	movq	1568(%rbp), %rax
	movq	%rax, %rcx
.LEHB4:
	call	_ZNSt6vectorI5TokenSaIS0_EE9push_backEOS0_
.LEHE4:
	leaq	-48(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN5TokenD1Ev
	movq	%rbp, %rax
	movq	%rax, %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	jmp	.L87
.L86:
	movl	-52(%rbp), %eax
	cmpl	%eax, 1528(%rbp)
	jle	.L87
	jmp	.L88
.L91:
	movq	1576(%rbp), %rax
	addq	$56, %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorIiSaIiEE8pop_backEv
	leaq	127(%rbp), %rax
	movq	%rax, 1520(%rbp)
	nop
	nop
	leaq	127(%rbp), %rdx
	leaq	80(%rbp), %rax
	movq	%rdx, %r8
	leaq	.LC0(%rip), %rdx
	movq	%rax, %rcx
.LEHB5:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_
.LEHE5:
	leaq	80(%rbp), %rdx
	leaq	32(%rbp), %rax
	movq	%rdx, %r8
	movl	$16, %edx
	movq	%rax, %rcx
.LEHB6:
	call	_ZN5TokenC1E9TokenTypeRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
.LEHE6:
	leaq	32(%rbp), %rdx
	movq	1568(%rbp), %rax
	movq	%rax, %rcx
.LEHB7:
	call	_ZNSt6vectorI5TokenSaIS0_EE9push_backEOS0_
.LEHE7:
	leaq	32(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN5TokenD1Ev
	leaq	80(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	leaq	127(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt15__new_allocatorIcED2Ev
	nop
.L88:
	movq	1576(%rbp), %rax
	addq	$56, %rax
	movq	%rax, %rcx
	call	_ZNKSt6vectorIiSaIiEE5emptyEv
	xorl	$1, %eax
	testb	%al, %al
	je	.L89
	movq	1576(%rbp), %rax
	addq	$56, %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorIiSaIiEE4backEv
	movl	(%rax), %edx
	movl	-52(%rbp), %eax
	cmpl	%eax, %edx
	jle	.L89
	movl	$1, %eax
	jmp	.L90
.L89:
	movl	$0, %eax
.L90:
	testb	%al, %al
	jne	.L91
	movq	1576(%rbp), %rax
	addq	$56, %rax
	movq	%rax, %rcx
	call	_ZNKSt6vectorIiSaIiEE5emptyEv
	testb	%al, %al
	jne	.L92
	movq	1576(%rbp), %rax
	addq	$56, %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorIiSaIiEE4backEv
	movl	(%rax), %edx
	movl	-52(%rbp), %eax
	cmpl	%eax, %edx
	je	.L93
.L92:
	movl	$1, %eax
	jmp	.L94
.L93:
	movl	$0, %eax
.L94:
	testb	%al, %al
	je	.L87
	leaq	.LC1(%rip), %rax
	movq	%rax, %rdx
	movq	.refptr._ZSt4cerr(%rip), %rax
	movq	%rax, %rcx
.LEHB8:
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	$1, %ecx
	call	exit
.L87:
	movq	1576(%rbp), %rax
	movb	$0, 49(%rax)
.L78:
	movq	1576(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN5Lexer14skipWhitespaceEv
	movq	1576(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN5Lexer11skipCommentEv
	movq	1576(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN5Lexer11fileIsEmptyEv
	testb	%al, %al
	jne	.L256
	movq	1576(%rbp), %rax
	movzbl	48(%rax), %eax
	movsbl	%al, %eax
	subl	$48, %eax
	cmpl	$9, %eax
	setbe	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L97
	movq	1576(%rbp), %rax
	movzbl	48(%rax), %eax
	cmpb	$46, %al
	jne	.L98
	movq	1576(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN5Lexer4peekEv
.LEHE8:
	movsbl	%al, %eax
	subl	$48, %eax
	cmpl	$9, %eax
	setbe	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	je	.L98
.L97:
	movl	$1, %eax
	jmp	.L99
.L98:
	movl	$0, %eax
.L99:
	testb	%al, %al
	je	.L100
	leaq	-96(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1Ev
	movb	$0, 1535(%rbp)
	jmp	.L101
.L103:
	movq	1576(%rbp), %rax
	movzbl	48(%rax), %eax
	cmpb	$46, %al
	jne	.L102
	movb	$1, 1535(%rbp)
.L102:
	movq	1576(%rbp), %rax
	movzbl	48(%rax), %eax
	movsbl	%al, %edx
	leaq	-96(%rbp), %rax
	movq	%rax, %rcx
.LEHB9:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc
	movq	1576(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN5Lexer7advanceEv
.L101:
	movq	1576(%rbp), %rax
	movzbl	48(%rax), %eax
	movsbl	%al, %eax
	subl	$48, %eax
	cmpl	$9, %eax
	setbe	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L103
	movq	1576(%rbp), %rax
	movzbl	48(%rax), %eax
	cmpb	$46, %al
	jne	.L104
	movzbl	1535(%rbp), %eax
	xorl	$1, %eax
	testb	%al, %al
	jne	.L103
.L104:
	leaq	-96(%rbp), %rdx
	leaq	128(%rbp), %rax
	movq	%rdx, %r8
	movl	$2, %edx
	movq	%rax, %rcx
	call	_ZN5TokenC1E9TokenTypeRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
.LEHE9:
	leaq	128(%rbp), %rdx
	movq	1568(%rbp), %rax
	movq	%rax, %rcx
.LEHB10:
	call	_ZNSt6vectorI5TokenSaIS0_EE9push_backEOS0_
.LEHE10:
	leaq	128(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN5TokenD1Ev
	leaq	-96(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	jmp	.L77
.L100:
	movq	1576(%rbp), %rax
	movzbl	48(%rax), %eax
	cmpb	$10, %al
	jne	.L105
	leaq	271(%rbp), %rax
	movq	%rax, 1512(%rbp)
	nop
	nop
	leaq	271(%rbp), %rdx
	leaq	224(%rbp), %rax
	movq	%rdx, %r8
	leaq	.LC2(%rip), %rdx
	movq	%rax, %rcx
.LEHB11:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_
.LEHE11:
	leaq	224(%rbp), %rdx
	leaq	176(%rbp), %rax
	movq	%rdx, %r8
	movl	$17, %edx
	movq	%rax, %rcx
.LEHB12:
	call	_ZN5TokenC1E9TokenTypeRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
.LEHE12:
	leaq	176(%rbp), %rdx
	movq	1568(%rbp), %rax
	movq	%rax, %rcx
.LEHB13:
	call	_ZNSt6vectorI5TokenSaIS0_EE9push_backEOS0_
.LEHE13:
	leaq	176(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN5TokenD1Ev
	leaq	224(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	leaq	271(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt15__new_allocatorIcED2Ev
	nop
	movq	1576(%rbp), %rax
	movq	%rax, %rcx
.LEHB14:
	call	_ZN5Lexer7advanceEv
.LEHE14:
	movq	1576(%rbp), %rax
	movb	$1, 49(%rax)
	jmp	.L77
.L105:
	movq	1576(%rbp), %rax
	movzbl	48(%rax), %eax
	cmpb	$34, %al
	jne	.L106
	leaq	-96(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1Ev
	movq	1576(%rbp), %rax
	movq	%rax, %rcx
.LEHB15:
	call	_ZN5Lexer7advanceEv
	jmp	.L107
.L109:
	movq	1576(%rbp), %rax
	movzbl	48(%rax), %eax
	movsbl	%al, %edx
	leaq	-96(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc
	movq	1576(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN5Lexer7advanceEv
.L107:
	movq	1576(%rbp), %rax
	movzbl	48(%rax), %eax
	cmpb	$34, %al
	je	.L108
	movq	1576(%rbp), %rax
	movzbl	48(%rax), %eax
	testb	%al, %al
	jne	.L109
.L108:
	movq	1576(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN5Lexer7advanceEv
	leaq	-96(%rbp), %rdx
	leaq	272(%rbp), %rax
	movq	%rdx, %r8
	movl	$3, %edx
	movq	%rax, %rcx
	call	_ZN5TokenC1E9TokenTypeRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
.LEHE15:
	leaq	272(%rbp), %rdx
	movq	1568(%rbp), %rax
	movq	%rax, %rcx
.LEHB16:
	call	_ZNSt6vectorI5TokenSaIS0_EE9push_backEOS0_
.LEHE16:
	leaq	272(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN5TokenD1Ev
	leaq	-96(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	jmp	.L77
.L106:
	movq	1576(%rbp), %rax
	movzbl	48(%rax), %eax
	cmpb	$46, %al
	jne	.L110
	leaq	414(%rbp), %rax
	movq	%rax, 1504(%rbp)
	nop
	nop
	leaq	414(%rbp), %rdx
	leaq	368(%rbp), %rax
	movq	%rdx, %r8
	leaq	.LC3(%rip), %rdx
	movq	%rax, %rcx
.LEHB17:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_
.LEHE17:
	leaq	368(%rbp), %rdx
	leaq	320(%rbp), %rax
	movq	%rdx, %r8
	movl	$10, %edx
	movq	%rax, %rcx
.LEHB18:
	call	_ZN5TokenC1E9TokenTypeRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
.LEHE18:
	leaq	320(%rbp), %rdx
	movq	1568(%rbp), %rax
	movq	%rax, %rcx
.LEHB19:
	call	_ZNSt6vectorI5TokenSaIS0_EE9push_backEOS0_
.LEHE19:
	leaq	320(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN5TokenD1Ev
	leaq	368(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	leaq	414(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt15__new_allocatorIcED2Ev
	nop
	movq	1576(%rbp), %rax
	movq	%rax, %rcx
.LEHB20:
	call	_ZN5Lexer7advanceEv
.LEHE20:
	jmp	.L77
.L110:
	movq	1576(%rbp), %rax
	movzbl	48(%rax), %eax
	cmpb	$41, %al
	jne	.L111
	leaq	415(%rbp), %rax
	movq	%rax, 1496(%rbp)
	nop
	nop
	movq	1576(%rbp), %rax
	movzbl	48(%rax), %eax
	movsbl	%al, %edx
	leaq	415(%rbp), %rcx
	leaq	-96(%rbp), %rax
	movq	%rcx, %r9
	movl	%edx, %r8d
	movl	$1, %edx
	movq	%rax, %rcx
.LEHB21:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEycRKS3_
.LEHE21:
	leaq	415(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt15__new_allocatorIcED2Ev
	nop
	leaq	-96(%rbp), %rdx
	leaq	416(%rbp), %rax
	movq	%rdx, %r8
	movl	$14, %edx
	movq	%rax, %rcx
.LEHB22:
	call	_ZN5TokenC1E9TokenTypeRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
.LEHE22:
	leaq	416(%rbp), %rdx
	movq	1568(%rbp), %rax
	movq	%rax, %rcx
.LEHB23:
	call	_ZNSt6vectorI5TokenSaIS0_EE9push_backEOS0_
.LEHE23:
	leaq	416(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN5TokenD1Ev
	movq	1576(%rbp), %rax
	movq	%rax, %rcx
.LEHB24:
	call	_ZN5Lexer7advanceEv
.LEHE24:
	leaq	-96(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	jmp	.L77
.L111:
	movq	1576(%rbp), %rax
	movzbl	48(%rax), %eax
	cmpb	$40, %al
	jne	.L112
	leaq	463(%rbp), %rax
	movq	%rax, 1488(%rbp)
	nop
	nop
	movq	1576(%rbp), %rax
	movzbl	48(%rax), %eax
	movsbl	%al, %edx
	leaq	463(%rbp), %rcx
	leaq	-96(%rbp), %rax
	movq	%rcx, %r9
	movl	%edx, %r8d
	movl	$1, %edx
	movq	%rax, %rcx
.LEHB25:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEycRKS3_
.LEHE25:
	leaq	463(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt15__new_allocatorIcED2Ev
	nop
	leaq	-96(%rbp), %rdx
	leaq	464(%rbp), %rax
	movq	%rdx, %r8
	movl	$13, %edx
	movq	%rax, %rcx
.LEHB26:
	call	_ZN5TokenC1E9TokenTypeRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
.LEHE26:
	leaq	464(%rbp), %rdx
	movq	1568(%rbp), %rax
	movq	%rax, %rcx
.LEHB27:
	call	_ZNSt6vectorI5TokenSaIS0_EE9push_backEOS0_
.LEHE27:
	leaq	464(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN5TokenD1Ev
	movq	1576(%rbp), %rax
	movq	%rax, %rcx
.LEHB28:
	call	_ZN5Lexer7advanceEv
.LEHE28:
	leaq	-96(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	jmp	.L77
.L112:
	movq	1576(%rbp), %rax
	movzbl	48(%rax), %eax
	cmpb	$61, %al
	jne	.L113
	movq	1576(%rbp), %rax
	movq	%rax, %rcx
.LEHB29:
	call	_ZN5Lexer4peekEv
	cmpb	$61, %al
	sete	%al
	testb	%al, %al
	je	.L114
	movq	1576(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN5Lexer7advanceEv
	movq	1576(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN5Lexer7advanceEv
.LEHE29:
	leaq	607(%rbp), %rax
	movq	%rax, 1480(%rbp)
	nop
	nop
	leaq	607(%rbp), %rdx
	leaq	560(%rbp), %rax
	movq	%rdx, %r8
	leaq	.LC4(%rip), %rdx
	movq	%rax, %rcx
.LEHB30:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_
.LEHE30:
	leaq	560(%rbp), %rdx
	leaq	512(%rbp), %rax
	movq	%rdx, %r8
	movl	$5, %edx
	movq	%rax, %rcx
.LEHB31:
	call	_ZN5TokenC1E9TokenTypeRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
.LEHE31:
	leaq	512(%rbp), %rdx
	movq	1568(%rbp), %rax
	movq	%rax, %rcx
.LEHB32:
	call	_ZNSt6vectorI5TokenSaIS0_EE9push_backEOS0_
.LEHE32:
	leaq	512(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN5TokenD1Ev
	leaq	560(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	leaq	607(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt15__new_allocatorIcED2Ev
	nop
	jmp	.L77
.L114:
	leaq	702(%rbp), %rax
	movq	%rax, 1472(%rbp)
	nop
	nop
	leaq	702(%rbp), %rdx
	leaq	656(%rbp), %rax
	movq	%rdx, %r8
	leaq	.LC5(%rip), %rdx
	movq	%rax, %rcx
.LEHB33:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_
.LEHE33:
	leaq	656(%rbp), %rdx
	leaq	608(%rbp), %rax
	movq	%rdx, %r8
	movl	$4, %edx
	movq	%rax, %rcx
.LEHB34:
	call	_ZN5TokenC1E9TokenTypeRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
.LEHE34:
	leaq	608(%rbp), %rdx
	movq	1568(%rbp), %rax
	movq	%rax, %rcx
.LEHB35:
	call	_ZNSt6vectorI5TokenSaIS0_EE9push_backEOS0_
.LEHE35:
	leaq	608(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN5TokenD1Ev
	leaq	656(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	leaq	702(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt15__new_allocatorIcED2Ev
	nop
	movq	1576(%rbp), %rax
	movq	%rax, %rcx
.LEHB36:
	call	_ZN5Lexer7advanceEv
.LEHE36:
	jmp	.L77
.L113:
	movq	1576(%rbp), %rax
	movzbl	48(%rax), %eax
	cmpb	$43, %al
	jne	.L115
	leaq	703(%rbp), %rax
	movq	%rax, 1464(%rbp)
	nop
	nop
	movq	1576(%rbp), %rax
	movzbl	48(%rax), %eax
	movsbl	%al, %edx
	leaq	703(%rbp), %rcx
	leaq	-96(%rbp), %rax
	movq	%rcx, %r9
	movl	%edx, %r8d
	movl	$1, %edx
	movq	%rax, %rcx
.LEHB37:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEycRKS3_
.LEHE37:
	leaq	703(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt15__new_allocatorIcED2Ev
	nop
	leaq	-96(%rbp), %rdx
	leaq	704(%rbp), %rax
	movq	%rdx, %r8
	movl	$7, %edx
	movq	%rax, %rcx
.LEHB38:
	call	_ZN5TokenC1E9TokenTypeRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
.LEHE38:
	leaq	704(%rbp), %rdx
	movq	1568(%rbp), %rax
	movq	%rax, %rcx
.LEHB39:
	call	_ZNSt6vectorI5TokenSaIS0_EE9push_backEOS0_
.LEHE39:
	leaq	704(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN5TokenD1Ev
	movq	1576(%rbp), %rax
	movq	%rax, %rcx
.LEHB40:
	call	_ZN5Lexer7advanceEv
.LEHE40:
	leaq	-96(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	jmp	.L77
.L115:
	movq	1576(%rbp), %rax
	movzbl	48(%rax), %eax
	cmpb	$45, %al
	jne	.L116
	leaq	751(%rbp), %rax
	movq	%rax, 1456(%rbp)
	nop
	nop
	movq	1576(%rbp), %rax
	movzbl	48(%rax), %eax
	movsbl	%al, %edx
	leaq	751(%rbp), %rcx
	leaq	-96(%rbp), %rax
	movq	%rcx, %r9
	movl	%edx, %r8d
	movl	$1, %edx
	movq	%rax, %rcx
.LEHB41:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEycRKS3_
.LEHE41:
	leaq	751(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt15__new_allocatorIcED2Ev
	nop
	leaq	-96(%rbp), %rdx
	leaq	752(%rbp), %rax
	movq	%rdx, %r8
	movl	$6, %edx
	movq	%rax, %rcx
.LEHB42:
	call	_ZN5TokenC1E9TokenTypeRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
.LEHE42:
	leaq	752(%rbp), %rdx
	movq	1568(%rbp), %rax
	movq	%rax, %rcx
.LEHB43:
	call	_ZNSt6vectorI5TokenSaIS0_EE9push_backEOS0_
.LEHE43:
	leaq	752(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN5TokenD1Ev
	movq	1576(%rbp), %rax
	movq	%rax, %rcx
.LEHB44:
	call	_ZN5Lexer7advanceEv
.LEHE44:
	leaq	-96(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	jmp	.L77
.L116:
	movq	1576(%rbp), %rax
	movzbl	48(%rax), %eax
	cmpb	$42, %al
	jne	.L117
	leaq	799(%rbp), %rax
	movq	%rax, 1448(%rbp)
	nop
	nop
	movq	1576(%rbp), %rax
	movzbl	48(%rax), %eax
	movsbl	%al, %edx
	leaq	799(%rbp), %rcx
	leaq	-96(%rbp), %rax
	movq	%rcx, %r9
	movl	%edx, %r8d
	movl	$1, %edx
	movq	%rax, %rcx
.LEHB45:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEycRKS3_
.LEHE45:
	leaq	799(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt15__new_allocatorIcED2Ev
	nop
	leaq	-96(%rbp), %rdx
	leaq	800(%rbp), %rax
	movq	%rdx, %r8
	movl	$8, %edx
	movq	%rax, %rcx
.LEHB46:
	call	_ZN5TokenC1E9TokenTypeRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
.LEHE46:
	leaq	800(%rbp), %rdx
	movq	1568(%rbp), %rax
	movq	%rax, %rcx
.LEHB47:
	call	_ZNSt6vectorI5TokenSaIS0_EE9push_backEOS0_
.LEHE47:
	leaq	800(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN5TokenD1Ev
	movq	1576(%rbp), %rax
	movq	%rax, %rcx
.LEHB48:
	call	_ZN5Lexer7advanceEv
.LEHE48:
	leaq	-96(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	jmp	.L77
.L117:
	movq	1576(%rbp), %rax
	movzbl	48(%rax), %eax
	cmpb	$47, %al
	jne	.L118
	leaq	847(%rbp), %rax
	movq	%rax, 1440(%rbp)
	nop
	nop
	movq	1576(%rbp), %rax
	movzbl	48(%rax), %eax
	movsbl	%al, %edx
	leaq	847(%rbp), %rcx
	leaq	-96(%rbp), %rax
	movq	%rcx, %r9
	movl	%edx, %r8d
	movl	$1, %edx
	movq	%rax, %rcx
.LEHB49:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEycRKS3_
.LEHE49:
	leaq	847(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt15__new_allocatorIcED2Ev
	nop
	leaq	-96(%rbp), %rdx
	leaq	848(%rbp), %rax
	movq	%rdx, %r8
	movl	$9, %edx
	movq	%rax, %rcx
.LEHB50:
	call	_ZN5TokenC1E9TokenTypeRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
.LEHE50:
	leaq	848(%rbp), %rdx
	movq	1568(%rbp), %rax
	movq	%rax, %rcx
.LEHB51:
	call	_ZNSt6vectorI5TokenSaIS0_EE9push_backEOS0_
.LEHE51:
	leaq	848(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN5TokenD1Ev
	movq	1576(%rbp), %rax
	movq	%rax, %rcx
.LEHB52:
	call	_ZN5Lexer7advanceEv
.LEHE52:
	leaq	-96(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	jmp	.L77
.L118:
	movq	1576(%rbp), %rax
	movzbl	48(%rax), %eax
	cmpb	$58, %al
	jne	.L119
	leaq	895(%rbp), %rax
	movq	%rax, 1432(%rbp)
	nop
	nop
	movq	1576(%rbp), %rax
	movzbl	48(%rax), %eax
	movsbl	%al, %edx
	leaq	895(%rbp), %rcx
	leaq	-96(%rbp), %rax
	movq	%rcx, %r9
	movl	%edx, %r8d
	movl	$1, %edx
	movq	%rax, %rcx
.LEHB53:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEycRKS3_
.LEHE53:
	leaq	895(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt15__new_allocatorIcED2Ev
	nop
	leaq	-96(%rbp), %rdx
	leaq	896(%rbp), %rax
	movq	%rdx, %r8
	movl	$11, %edx
	movq	%rax, %rcx
.LEHB54:
	call	_ZN5TokenC1E9TokenTypeRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
.LEHE54:
	leaq	896(%rbp), %rdx
	movq	1568(%rbp), %rax
	movq	%rax, %rcx
.LEHB55:
	call	_ZNSt6vectorI5TokenSaIS0_EE9push_backEOS0_
.LEHE55:
	leaq	896(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN5TokenD1Ev
	movq	1576(%rbp), %rax
	movq	%rax, %rcx
.LEHB56:
	call	_ZN5Lexer7advanceEv
.LEHE56:
	leaq	-96(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	jmp	.L77
.L119:
	movq	1576(%rbp), %rax
	movzbl	48(%rax), %eax
	cmpb	$44, %al
	jne	.L120
	leaq	943(%rbp), %rax
	movq	%rax, 1424(%rbp)
	nop
	nop
	movq	1576(%rbp), %rax
	movzbl	48(%rax), %eax
	movsbl	%al, %edx
	leaq	943(%rbp), %rcx
	leaq	-96(%rbp), %rax
	movq	%rcx, %r9
	movl	%edx, %r8d
	movl	$1, %edx
	movq	%rax, %rcx
.LEHB57:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEycRKS3_
.LEHE57:
	leaq	943(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt15__new_allocatorIcED2Ev
	nop
	leaq	-96(%rbp), %rdx
	leaq	944(%rbp), %rax
	movq	%rdx, %r8
	movl	$12, %edx
	movq	%rax, %rcx
.LEHB58:
	call	_ZN5TokenC1E9TokenTypeRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
.LEHE58:
	leaq	944(%rbp), %rdx
	movq	1568(%rbp), %rax
	movq	%rax, %rcx
.LEHB59:
	call	_ZNSt6vectorI5TokenSaIS0_EE9push_backEOS0_
.LEHE59:
	leaq	944(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN5TokenD1Ev
	movq	1576(%rbp), %rax
	movq	%rax, %rcx
.LEHB60:
	call	_ZN5Lexer7advanceEv
.LEHE60:
	leaq	-96(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	jmp	.L77
.L120:
	movq	1576(%rbp), %rax
	movzbl	48(%rax), %eax
	cmpb	$62, %al
	jne	.L121
	leaq	991(%rbp), %rax
	movq	%rax, 1416(%rbp)
	nop
	nop
	movq	1576(%rbp), %rax
	movzbl	48(%rax), %eax
	movsbl	%al, %edx
	leaq	991(%rbp), %rcx
	leaq	-96(%rbp), %rax
	movq	%rcx, %r9
	movl	%edx, %r8d
	movl	$1, %edx
	movq	%rax, %rcx
.LEHB61:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEycRKS3_
.LEHE61:
	leaq	991(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt15__new_allocatorIcED2Ev
	nop
	leaq	-96(%rbp), %rdx
	leaq	992(%rbp), %rax
	movq	%rdx, %r8
	movl	$1, %edx
	movq	%rax, %rcx
.LEHB62:
	call	_ZN5TokenC1E9TokenTypeRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
.LEHE62:
	leaq	992(%rbp), %rdx
	movq	1568(%rbp), %rax
	movq	%rax, %rcx
.LEHB63:
	call	_ZNSt6vectorI5TokenSaIS0_EE9push_backEOS0_
.LEHE63:
	leaq	992(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN5TokenD1Ev
	movq	1576(%rbp), %rax
	movq	%rax, %rcx
.LEHB64:
	call	_ZN5Lexer7advanceEv
.LEHE64:
	leaq	-96(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	jmp	.L77
.L121:
	movq	1576(%rbp), %rax
	movzbl	48(%rax), %eax
	cmpb	$60, %al
	jne	.L122
	leaq	1039(%rbp), %rax
	movq	%rax, 1408(%rbp)
	nop
	nop
	movq	1576(%rbp), %rax
	movzbl	48(%rax), %eax
	movsbl	%al, %edx
	leaq	1039(%rbp), %rcx
	leaq	-96(%rbp), %rax
	movq	%rcx, %r9
	movl	%edx, %r8d
	movl	$1, %edx
	movq	%rax, %rcx
.LEHB65:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEycRKS3_
.LEHE65:
	leaq	1039(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt15__new_allocatorIcED2Ev
	nop
	leaq	-96(%rbp), %rdx
	leaq	1040(%rbp), %rax
	movq	%rdx, %r8
	movl	$1, %edx
	movq	%rax, %rcx
.LEHB66:
	call	_ZN5TokenC1E9TokenTypeRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
.LEHE66:
	leaq	1040(%rbp), %rdx
	movq	1568(%rbp), %rax
	movq	%rax, %rcx
.LEHB67:
	call	_ZNSt6vectorI5TokenSaIS0_EE9push_backEOS0_
.LEHE67:
	leaq	1040(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN5TokenD1Ev
	movq	1576(%rbp), %rax
	movq	%rax, %rcx
.LEHB68:
	call	_ZN5Lexer7advanceEv
.LEHE68:
	leaq	-96(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	jmp	.L77
.L122:
	movq	1576(%rbp), %rax
	movzbl	48(%rax), %eax
	movsbl	%al, %eax
	movl	%eax, %ecx
	movq	__imp_isalpha(%rip), %rax
	call	*%rax
	testl	%eax, %eax
	jne	.L123
	movq	1576(%rbp), %rax
	movzbl	48(%rax), %eax
	cmpb	$95, %al
	jne	.L124
.L123:
	leaq	-96(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1Ev
	jmp	.L125
.L126:
	movq	1576(%rbp), %rax
	movzbl	48(%rax), %eax
	movsbl	%al, %edx
	leaq	-96(%rbp), %rax
	movq	%rax, %rcx
.LEHB69:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc
	movq	1576(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN5Lexer7advanceEv
.L125:
	movq	1576(%rbp), %rax
	movzbl	48(%rax), %eax
	movsbl	%al, %eax
	movl	%eax, %ecx
	movq	__imp_isalnum(%rip), %rax
	call	*%rax
	testl	%eax, %eax
	jne	.L126
	movq	1576(%rbp), %rax
	movzbl	48(%rax), %eax
	cmpb	$95, %al
	je	.L126
	leaq	_Z12keywordsListB5cxx11(%rip), %rax
	movq	%rax, %rcx
	call	_ZNKSt13unordered_setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashIS5_ESt8equal_toIS5_ESaIS5_EE3endEv
	movq	%rax, 1088(%rbp)
	leaq	-96(%rbp), %rax
	movq	%rax, %rdx
	leaq	_Z12keywordsListB5cxx11(%rip), %rax
	movq	%rax, %rcx
	call	_ZNKSt13unordered_setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashIS5_ESt8equal_toIS5_ESaIS5_EE4findERKS5_
	movq	%rax, 1096(%rbp)
	leaq	1088(%rbp), %rdx
	leaq	1096(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt8__detailneERKNS_19_Node_iterator_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEES9_
	testb	%al, %al
	je	.L127
	leaq	-96(%rbp), %rdx
	leaq	1104(%rbp), %rax
	movq	%rdx, %r8
	movl	$0, %edx
	movq	%rax, %rcx
	call	_ZN5TokenC1E9TokenTypeRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
.LEHE69:
	leaq	1104(%rbp), %rdx
	movq	1568(%rbp), %rax
	movq	%rax, %rcx
.LEHB70:
	call	_ZNSt6vectorI5TokenSaIS0_EE9push_backEOS0_
.LEHE70:
	leaq	1104(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN5TokenD1Ev
	jmp	.L128
.L127:
	leaq	-96(%rbp), %rdx
	leaq	1152(%rbp), %rax
	movq	%rdx, %r8
	movl	$1, %edx
	movq	%rax, %rcx
.LEHB71:
	call	_ZN5TokenC1E9TokenTypeRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
.LEHE71:
	leaq	1152(%rbp), %rdx
	movq	1568(%rbp), %rax
	movq	%rax, %rcx
.LEHB72:
	call	_ZNSt6vectorI5TokenSaIS0_EE9push_backEOS0_
.LEHE72:
	leaq	1152(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN5TokenD1Ev
.L128:
	leaq	-96(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	jmp	.L77
.L124:
	movq	1576(%rbp), %rax
	movq	%rax, %rcx
.LEHB73:
	call	_ZN5Lexer7advanceEv
.LEHE73:
.L77:
	movq	1576(%rbp), %rax
	movzbl	48(%rax), %eax
	testb	%al, %al
	jne	.L129
	jmp	.L130
.L256:
	nop
	jmp	.L130
.L131:
	movq	1576(%rbp), %rax
	addq	$56, %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorIiSaIiEE8pop_backEv
	leaq	1295(%rbp), %rax
	movq	%rax, 1400(%rbp)
	nop
	nop
	leaq	1295(%rbp), %rdx
	leaq	1248(%rbp), %rax
	movq	%rdx, %r8
	leaq	.LC0(%rip), %rdx
	movq	%rax, %rcx
.LEHB74:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_
.LEHE74:
	leaq	1248(%rbp), %rdx
	leaq	1200(%rbp), %rax
	movq	%rdx, %r8
	movl	$16, %edx
	movq	%rax, %rcx
.LEHB75:
	call	_ZN5TokenC1E9TokenTypeRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
.LEHE75:
	leaq	1200(%rbp), %rdx
	movq	1568(%rbp), %rax
	movq	%rax, %rcx
.LEHB76:
	call	_ZNSt6vectorI5TokenSaIS0_EE9push_backEOS0_
.LEHE76:
	leaq	1200(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN5TokenD1Ev
	leaq	1248(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	leaq	1295(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt15__new_allocatorIcED2Ev
	nop
.L130:
	movq	1576(%rbp), %rax
	addq	$56, %rax
	movq	%rax, %rcx
	call	_ZNKSt6vectorIiSaIiEE4sizeEv
	cmpq	$1, %rax
	seta	%al
	testb	%al, %al
	jne	.L131
	leaq	1391(%rbp), %rax
	movq	%rax, 1392(%rbp)
	nop
	nop
	leaq	1391(%rbp), %rdx
	leaq	1344(%rbp), %rax
	movq	%rdx, %r8
	leaq	.LC0(%rip), %rdx
	movq	%rax, %rcx
.LEHB77:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_
.LEHE77:
	leaq	1344(%rbp), %rdx
	leaq	1296(%rbp), %rax
	movq	%rdx, %r8
	movl	$18, %edx
	movq	%rax, %rcx
.LEHB78:
	call	_ZN5TokenC1E9TokenTypeRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
.LEHE78:
	leaq	1296(%rbp), %rdx
	movq	1568(%rbp), %rax
	movq	%rax, %rcx
.LEHB79:
	call	_ZNSt6vectorI5TokenSaIS0_EE9push_backEOS0_
.LEHE79:
	leaq	1296(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN5TokenD1Ev
	leaq	1344(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	leaq	1391(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt15__new_allocatorIcED2Ev
	nop
	jmp	.L255
.L195:
	movq	%rax, %rbx
	leaq	-48(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN5TokenD1Ev
	jmp	.L134
.L194:
	movq	%rax, %rbx
.L134:
	movq	%rbp, %rax
	movq	%rax, %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	jmp	.L135
.L198:
	movq	%rax, %rbx
	leaq	32(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN5TokenD1Ev
	jmp	.L137
.L197:
	movq	%rax, %rbx
.L137:
	leaq	80(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	jmp	.L138
.L196:
	movq	%rax, %rbx
.L138:
	leaq	127(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt15__new_allocatorIcED2Ev
	nop
	jmp	.L135
.L201:
	movq	%rax, %rbx
	leaq	128(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN5TokenD1Ev
	jmp	.L140
.L200:
	movq	%rax, %rbx
.L140:
	leaq	-96(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	jmp	.L135
.L204:
	movq	%rax, %rbx
	leaq	176(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN5TokenD1Ev
	jmp	.L142
.L203:
	movq	%rax, %rbx
.L142:
	leaq	224(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	jmp	.L143
.L202:
	movq	%rax, %rbx
.L143:
	leaq	271(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt15__new_allocatorIcED2Ev
	nop
	jmp	.L135
.L206:
	movq	%rax, %rbx
	leaq	272(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN5TokenD1Ev
	jmp	.L145
.L205:
	movq	%rax, %rbx
.L145:
	leaq	-96(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	jmp	.L135
.L209:
	movq	%rax, %rbx
	leaq	320(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN5TokenD1Ev
	jmp	.L147
.L208:
	movq	%rax, %rbx
.L147:
	leaq	368(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	jmp	.L148
.L207:
	movq	%rax, %rbx
.L148:
	leaq	414(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt15__new_allocatorIcED2Ev
	nop
	jmp	.L135
.L210:
	movq	%rax, %rbx
	leaq	415(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt15__new_allocatorIcED2Ev
	nop
	jmp	.L135
.L211:
	movq	%rax, %rbx
	leaq	416(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN5TokenD1Ev
	jmp	.L151
.L212:
	movq	%rax, %rbx
.L151:
	leaq	-96(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	jmp	.L135
.L213:
	movq	%rax, %rbx
	leaq	463(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt15__new_allocatorIcED2Ev
	nop
	jmp	.L135
.L214:
	movq	%rax, %rbx
	leaq	464(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN5TokenD1Ev
	jmp	.L154
.L215:
	movq	%rax, %rbx
.L154:
	leaq	-96(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	jmp	.L135
.L218:
	movq	%rax, %rbx
	leaq	512(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN5TokenD1Ev
	jmp	.L156
.L217:
	movq	%rax, %rbx
.L156:
	leaq	560(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	jmp	.L157
.L216:
	movq	%rax, %rbx
.L157:
	leaq	607(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt15__new_allocatorIcED2Ev
	nop
	jmp	.L135
.L221:
	movq	%rax, %rbx
	leaq	608(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN5TokenD1Ev
	jmp	.L159
.L220:
	movq	%rax, %rbx
.L159:
	leaq	656(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	jmp	.L160
.L219:
	movq	%rax, %rbx
.L160:
	leaq	702(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt15__new_allocatorIcED2Ev
	nop
	jmp	.L135
.L222:
	movq	%rax, %rbx
	leaq	703(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt15__new_allocatorIcED2Ev
	nop
	jmp	.L135
.L223:
	movq	%rax, %rbx
	leaq	704(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN5TokenD1Ev
	jmp	.L163
.L224:
	movq	%rax, %rbx
.L163:
	leaq	-96(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	jmp	.L135
.L225:
	movq	%rax, %rbx
	leaq	751(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt15__new_allocatorIcED2Ev
	nop
	jmp	.L135
.L226:
	movq	%rax, %rbx
	leaq	752(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN5TokenD1Ev
	jmp	.L166
.L227:
	movq	%rax, %rbx
.L166:
	leaq	-96(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	jmp	.L135
.L228:
	movq	%rax, %rbx
	leaq	799(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt15__new_allocatorIcED2Ev
	nop
	jmp	.L135
.L229:
	movq	%rax, %rbx
	leaq	800(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN5TokenD1Ev
	jmp	.L169
.L230:
	movq	%rax, %rbx
.L169:
	leaq	-96(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	jmp	.L135
.L231:
	movq	%rax, %rbx
	leaq	847(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt15__new_allocatorIcED2Ev
	nop
	jmp	.L135
.L232:
	movq	%rax, %rbx
	leaq	848(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN5TokenD1Ev
	jmp	.L172
.L233:
	movq	%rax, %rbx
.L172:
	leaq	-96(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	jmp	.L135
.L234:
	movq	%rax, %rbx
	leaq	895(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt15__new_allocatorIcED2Ev
	nop
	jmp	.L135
.L235:
	movq	%rax, %rbx
	leaq	896(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN5TokenD1Ev
	jmp	.L175
.L236:
	movq	%rax, %rbx
.L175:
	leaq	-96(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	jmp	.L135
.L237:
	movq	%rax, %rbx
	leaq	943(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt15__new_allocatorIcED2Ev
	nop
	jmp	.L135
.L238:
	movq	%rax, %rbx
	leaq	944(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN5TokenD1Ev
	jmp	.L178
.L239:
	movq	%rax, %rbx
.L178:
	leaq	-96(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	jmp	.L135
.L240:
	movq	%rax, %rbx
	leaq	991(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt15__new_allocatorIcED2Ev
	nop
	jmp	.L135
.L241:
	movq	%rax, %rbx
	leaq	992(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN5TokenD1Ev
	jmp	.L181
.L242:
	movq	%rax, %rbx
.L181:
	leaq	-96(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	jmp	.L135
.L243:
	movq	%rax, %rbx
	leaq	1039(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt15__new_allocatorIcED2Ev
	nop
	jmp	.L135
.L244:
	movq	%rax, %rbx
	leaq	1040(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN5TokenD1Ev
	jmp	.L184
.L245:
	movq	%rax, %rbx
.L184:
	leaq	-96(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	jmp	.L135
.L247:
	movq	%rax, %rbx
	leaq	1104(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN5TokenD1Ev
	jmp	.L186
.L248:
	movq	%rax, %rbx
	leaq	1152(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN5TokenD1Ev
	jmp	.L186
.L246:
	movq	%rax, %rbx
.L186:
	leaq	-96(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	jmp	.L135
.L251:
	movq	%rax, %rbx
	leaq	1200(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN5TokenD1Ev
	jmp	.L189
.L250:
	movq	%rax, %rbx
.L189:
	leaq	1248(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	jmp	.L190
.L249:
	movq	%rax, %rbx
.L190:
	leaq	1295(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt15__new_allocatorIcED2Ev
	nop
	jmp	.L135
.L254:
	movq	%rax, %rbx
	leaq	1296(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN5TokenD1Ev
	jmp	.L192
.L253:
	movq	%rax, %rbx
.L192:
	leaq	1344(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	jmp	.L193
.L252:
	movq	%rax, %rbx
.L193:
	leaq	1391(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt15__new_allocatorIcED2Ev
	nop
	jmp	.L135
.L199:
	movq	%rax, %rbx
.L135:
	movq	1568(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI5TokenSaIS0_EED1Ev
	movq	%rbx, %rax
	movq	%rax, %rcx
.LEHB80:
	call	_Unwind_Resume
.LEHE80:
.L255:
	movq	1568(%rbp), %rax
	addq	$1672, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA3450:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE3450-.LLSDACSB3450
.LLSDACSB3450:
	.uleb128 .LEHB2-.LFB3450
	.uleb128 .LEHE2-.LEHB2
	.uleb128 .L199-.LFB3450
	.uleb128 0
	.uleb128 .LEHB3-.LFB3450
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L194-.LFB3450
	.uleb128 0
	.uleb128 .LEHB4-.LFB3450
	.uleb128 .LEHE4-.LEHB4
	.uleb128 .L195-.LFB3450
	.uleb128 0
	.uleb128 .LEHB5-.LFB3450
	.uleb128 .LEHE5-.LEHB5
	.uleb128 .L196-.LFB3450
	.uleb128 0
	.uleb128 .LEHB6-.LFB3450
	.uleb128 .LEHE6-.LEHB6
	.uleb128 .L197-.LFB3450
	.uleb128 0
	.uleb128 .LEHB7-.LFB3450
	.uleb128 .LEHE7-.LEHB7
	.uleb128 .L198-.LFB3450
	.uleb128 0
	.uleb128 .LEHB8-.LFB3450
	.uleb128 .LEHE8-.LEHB8
	.uleb128 .L199-.LFB3450
	.uleb128 0
	.uleb128 .LEHB9-.LFB3450
	.uleb128 .LEHE9-.LEHB9
	.uleb128 .L200-.LFB3450
	.uleb128 0
	.uleb128 .LEHB10-.LFB3450
	.uleb128 .LEHE10-.LEHB10
	.uleb128 .L201-.LFB3450
	.uleb128 0
	.uleb128 .LEHB11-.LFB3450
	.uleb128 .LEHE11-.LEHB11
	.uleb128 .L202-.LFB3450
	.uleb128 0
	.uleb128 .LEHB12-.LFB3450
	.uleb128 .LEHE12-.LEHB12
	.uleb128 .L203-.LFB3450
	.uleb128 0
	.uleb128 .LEHB13-.LFB3450
	.uleb128 .LEHE13-.LEHB13
	.uleb128 .L204-.LFB3450
	.uleb128 0
	.uleb128 .LEHB14-.LFB3450
	.uleb128 .LEHE14-.LEHB14
	.uleb128 .L199-.LFB3450
	.uleb128 0
	.uleb128 .LEHB15-.LFB3450
	.uleb128 .LEHE15-.LEHB15
	.uleb128 .L205-.LFB3450
	.uleb128 0
	.uleb128 .LEHB16-.LFB3450
	.uleb128 .LEHE16-.LEHB16
	.uleb128 .L206-.LFB3450
	.uleb128 0
	.uleb128 .LEHB17-.LFB3450
	.uleb128 .LEHE17-.LEHB17
	.uleb128 .L207-.LFB3450
	.uleb128 0
	.uleb128 .LEHB18-.LFB3450
	.uleb128 .LEHE18-.LEHB18
	.uleb128 .L208-.LFB3450
	.uleb128 0
	.uleb128 .LEHB19-.LFB3450
	.uleb128 .LEHE19-.LEHB19
	.uleb128 .L209-.LFB3450
	.uleb128 0
	.uleb128 .LEHB20-.LFB3450
	.uleb128 .LEHE20-.LEHB20
	.uleb128 .L199-.LFB3450
	.uleb128 0
	.uleb128 .LEHB21-.LFB3450
	.uleb128 .LEHE21-.LEHB21
	.uleb128 .L210-.LFB3450
	.uleb128 0
	.uleb128 .LEHB22-.LFB3450
	.uleb128 .LEHE22-.LEHB22
	.uleb128 .L212-.LFB3450
	.uleb128 0
	.uleb128 .LEHB23-.LFB3450
	.uleb128 .LEHE23-.LEHB23
	.uleb128 .L211-.LFB3450
	.uleb128 0
	.uleb128 .LEHB24-.LFB3450
	.uleb128 .LEHE24-.LEHB24
	.uleb128 .L212-.LFB3450
	.uleb128 0
	.uleb128 .LEHB25-.LFB3450
	.uleb128 .LEHE25-.LEHB25
	.uleb128 .L213-.LFB3450
	.uleb128 0
	.uleb128 .LEHB26-.LFB3450
	.uleb128 .LEHE26-.LEHB26
	.uleb128 .L215-.LFB3450
	.uleb128 0
	.uleb128 .LEHB27-.LFB3450
	.uleb128 .LEHE27-.LEHB27
	.uleb128 .L214-.LFB3450
	.uleb128 0
	.uleb128 .LEHB28-.LFB3450
	.uleb128 .LEHE28-.LEHB28
	.uleb128 .L215-.LFB3450
	.uleb128 0
	.uleb128 .LEHB29-.LFB3450
	.uleb128 .LEHE29-.LEHB29
	.uleb128 .L199-.LFB3450
	.uleb128 0
	.uleb128 .LEHB30-.LFB3450
	.uleb128 .LEHE30-.LEHB30
	.uleb128 .L216-.LFB3450
	.uleb128 0
	.uleb128 .LEHB31-.LFB3450
	.uleb128 .LEHE31-.LEHB31
	.uleb128 .L217-.LFB3450
	.uleb128 0
	.uleb128 .LEHB32-.LFB3450
	.uleb128 .LEHE32-.LEHB32
	.uleb128 .L218-.LFB3450
	.uleb128 0
	.uleb128 .LEHB33-.LFB3450
	.uleb128 .LEHE33-.LEHB33
	.uleb128 .L219-.LFB3450
	.uleb128 0
	.uleb128 .LEHB34-.LFB3450
	.uleb128 .LEHE34-.LEHB34
	.uleb128 .L220-.LFB3450
	.uleb128 0
	.uleb128 .LEHB35-.LFB3450
	.uleb128 .LEHE35-.LEHB35
	.uleb128 .L221-.LFB3450
	.uleb128 0
	.uleb128 .LEHB36-.LFB3450
	.uleb128 .LEHE36-.LEHB36
	.uleb128 .L199-.LFB3450
	.uleb128 0
	.uleb128 .LEHB37-.LFB3450
	.uleb128 .LEHE37-.LEHB37
	.uleb128 .L222-.LFB3450
	.uleb128 0
	.uleb128 .LEHB38-.LFB3450
	.uleb128 .LEHE38-.LEHB38
	.uleb128 .L224-.LFB3450
	.uleb128 0
	.uleb128 .LEHB39-.LFB3450
	.uleb128 .LEHE39-.LEHB39
	.uleb128 .L223-.LFB3450
	.uleb128 0
	.uleb128 .LEHB40-.LFB3450
	.uleb128 .LEHE40-.LEHB40
	.uleb128 .L224-.LFB3450
	.uleb128 0
	.uleb128 .LEHB41-.LFB3450
	.uleb128 .LEHE41-.LEHB41
	.uleb128 .L225-.LFB3450
	.uleb128 0
	.uleb128 .LEHB42-.LFB3450
	.uleb128 .LEHE42-.LEHB42
	.uleb128 .L227-.LFB3450
	.uleb128 0
	.uleb128 .LEHB43-.LFB3450
	.uleb128 .LEHE43-.LEHB43
	.uleb128 .L226-.LFB3450
	.uleb128 0
	.uleb128 .LEHB44-.LFB3450
	.uleb128 .LEHE44-.LEHB44
	.uleb128 .L227-.LFB3450
	.uleb128 0
	.uleb128 .LEHB45-.LFB3450
	.uleb128 .LEHE45-.LEHB45
	.uleb128 .L228-.LFB3450
	.uleb128 0
	.uleb128 .LEHB46-.LFB3450
	.uleb128 .LEHE46-.LEHB46
	.uleb128 .L230-.LFB3450
	.uleb128 0
	.uleb128 .LEHB47-.LFB3450
	.uleb128 .LEHE47-.LEHB47
	.uleb128 .L229-.LFB3450
	.uleb128 0
	.uleb128 .LEHB48-.LFB3450
	.uleb128 .LEHE48-.LEHB48
	.uleb128 .L230-.LFB3450
	.uleb128 0
	.uleb128 .LEHB49-.LFB3450
	.uleb128 .LEHE49-.LEHB49
	.uleb128 .L231-.LFB3450
	.uleb128 0
	.uleb128 .LEHB50-.LFB3450
	.uleb128 .LEHE50-.LEHB50
	.uleb128 .L233-.LFB3450
	.uleb128 0
	.uleb128 .LEHB51-.LFB3450
	.uleb128 .LEHE51-.LEHB51
	.uleb128 .L232-.LFB3450
	.uleb128 0
	.uleb128 .LEHB52-.LFB3450
	.uleb128 .LEHE52-.LEHB52
	.uleb128 .L233-.LFB3450
	.uleb128 0
	.uleb128 .LEHB53-.LFB3450
	.uleb128 .LEHE53-.LEHB53
	.uleb128 .L234-.LFB3450
	.uleb128 0
	.uleb128 .LEHB54-.LFB3450
	.uleb128 .LEHE54-.LEHB54
	.uleb128 .L236-.LFB3450
	.uleb128 0
	.uleb128 .LEHB55-.LFB3450
	.uleb128 .LEHE55-.LEHB55
	.uleb128 .L235-.LFB3450
	.uleb128 0
	.uleb128 .LEHB56-.LFB3450
	.uleb128 .LEHE56-.LEHB56
	.uleb128 .L236-.LFB3450
	.uleb128 0
	.uleb128 .LEHB57-.LFB3450
	.uleb128 .LEHE57-.LEHB57
	.uleb128 .L237-.LFB3450
	.uleb128 0
	.uleb128 .LEHB58-.LFB3450
	.uleb128 .LEHE58-.LEHB58
	.uleb128 .L239-.LFB3450
	.uleb128 0
	.uleb128 .LEHB59-.LFB3450
	.uleb128 .LEHE59-.LEHB59
	.uleb128 .L238-.LFB3450
	.uleb128 0
	.uleb128 .LEHB60-.LFB3450
	.uleb128 .LEHE60-.LEHB60
	.uleb128 .L239-.LFB3450
	.uleb128 0
	.uleb128 .LEHB61-.LFB3450
	.uleb128 .LEHE61-.LEHB61
	.uleb128 .L240-.LFB3450
	.uleb128 0
	.uleb128 .LEHB62-.LFB3450
	.uleb128 .LEHE62-.LEHB62
	.uleb128 .L242-.LFB3450
	.uleb128 0
	.uleb128 .LEHB63-.LFB3450
	.uleb128 .LEHE63-.LEHB63
	.uleb128 .L241-.LFB3450
	.uleb128 0
	.uleb128 .LEHB64-.LFB3450
	.uleb128 .LEHE64-.LEHB64
	.uleb128 .L242-.LFB3450
	.uleb128 0
	.uleb128 .LEHB65-.LFB3450
	.uleb128 .LEHE65-.LEHB65
	.uleb128 .L243-.LFB3450
	.uleb128 0
	.uleb128 .LEHB66-.LFB3450
	.uleb128 .LEHE66-.LEHB66
	.uleb128 .L245-.LFB3450
	.uleb128 0
	.uleb128 .LEHB67-.LFB3450
	.uleb128 .LEHE67-.LEHB67
	.uleb128 .L244-.LFB3450
	.uleb128 0
	.uleb128 .LEHB68-.LFB3450
	.uleb128 .LEHE68-.LEHB68
	.uleb128 .L245-.LFB3450
	.uleb128 0
	.uleb128 .LEHB69-.LFB3450
	.uleb128 .LEHE69-.LEHB69
	.uleb128 .L246-.LFB3450
	.uleb128 0
	.uleb128 .LEHB70-.LFB3450
	.uleb128 .LEHE70-.LEHB70
	.uleb128 .L247-.LFB3450
	.uleb128 0
	.uleb128 .LEHB71-.LFB3450
	.uleb128 .LEHE71-.LEHB71
	.uleb128 .L246-.LFB3450
	.uleb128 0
	.uleb128 .LEHB72-.LFB3450
	.uleb128 .LEHE72-.LEHB72
	.uleb128 .L248-.LFB3450
	.uleb128 0
	.uleb128 .LEHB73-.LFB3450
	.uleb128 .LEHE73-.LEHB73
	.uleb128 .L199-.LFB3450
	.uleb128 0
	.uleb128 .LEHB74-.LFB3450
	.uleb128 .LEHE74-.LEHB74
	.uleb128 .L249-.LFB3450
	.uleb128 0
	.uleb128 .LEHB75-.LFB3450
	.uleb128 .LEHE75-.LEHB75
	.uleb128 .L250-.LFB3450
	.uleb128 0
	.uleb128 .LEHB76-.LFB3450
	.uleb128 .LEHE76-.LEHB76
	.uleb128 .L251-.LFB3450
	.uleb128 0
	.uleb128 .LEHB77-.LFB3450
	.uleb128 .LEHE77-.LEHB77
	.uleb128 .L252-.LFB3450
	.uleb128 0
	.uleb128 .LEHB78-.LFB3450
	.uleb128 .LEHE78-.LEHB78
	.uleb128 .L253-.LFB3450
	.uleb128 0
	.uleb128 .LEHB79-.LFB3450
	.uleb128 .LEHE79-.LEHB79
	.uleb128 .L254-.LFB3450
	.uleb128 0
	.uleb128 .LEHB80-.LFB3450
	.uleb128 .LEHE80-.LEHB80
	.uleb128 0
	.uleb128 0
.LLSDACSE3450:
	.text
	.seh_endproc
	.section	.text$_ZN9__gnu_cxx11char_traitsIcE6lengthEPKc,"x"
	.linkonce discard
	.align 2
	.globl	_ZN9__gnu_cxx11char_traitsIcE6lengthEPKc
	.def	_ZN9__gnu_cxx11char_traitsIcE6lengthEPKc;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN9__gnu_cxx11char_traitsIcE6lengthEPKc
_ZN9__gnu_cxx11char_traitsIcE6lengthEPKc:
.LFB3470:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	$0, -8(%rbp)
	jmp	.L258
.L259:
	addq	$1, -8(%rbp)
.L258:
	movb	$0, -9(%rbp)
	movq	16(%rbp), %rdx
	movq	-8(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	leaq	-9(%rbp), %rax
	movq	%rax, %rdx
	call	_ZN9__gnu_cxx11char_traitsIcE2eqERKcS3_
	xorl	$1, %eax
	testb	%al, %al
	jne	.L259
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD1Ev,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD1Ev
	.def	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD1Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD1Ev
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD1Ev:
.LFB3569:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt15__new_allocatorIcED2Ev
	nop
	nop
	addq	$48, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt8__detail18__to_chars_10_implIjEEvPcjT_,"x"
	.linkonce discard
	.globl	_ZNSt8__detail18__to_chars_10_implIjEEvPcjT_
	.def	_ZNSt8__detail18__to_chars_10_implIjEEvPcjT_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt8__detail18__to_chars_10_implIjEEvPcjT_
_ZNSt8__detail18__to_chars_10_implIjEEvPcjT_:
.LFB3575:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$224, %rsp
	.seh_stackalloc	224
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movl	%edx, 24(%rbp)
	movl	%r8d, 32(%rbp)
	movabsq	$3688503277381496880, %rax
	movabsq	$3976738051646829616, %rdx
	movq	%rax, -224(%rbp)
	movq	%rdx, -216(%rbp)
	movabsq	$3544667369688283184, %rax
	movabsq	$3832902143785906737, %rdx
	movq	%rax, -208(%rbp)
	movq	%rdx, -200(%rbp)
	movabsq	$4121136918051239473, %rax
	movabsq	$3689066235924983858, %rdx
	movq	%rax, -192(%rbp)
	movq	%rdx, -184(%rbp)
	movabsq	$3977301010190316594, %rax
	movabsq	$3545230328231770162, %rdx
	movq	%rax, -176(%rbp)
	movq	%rdx, -168(%rbp)
	movabsq	$3833465102329393715, %rax
	movabsq	$4121699876594726451, %rdx
	movq	%rax, -160(%rbp)
	movq	%rdx, -152(%rbp)
	movabsq	$3689629194468470836, %rax
	movabsq	$3977863968733803572, %rdx
	movq	%rax, -144(%rbp)
	movq	%rdx, -136(%rbp)
	movabsq	$3545793286775257140, %rax
	movabsq	$3834028060872880693, %rdx
	movq	%rax, -128(%rbp)
	movq	%rdx, -120(%rbp)
	movabsq	$4122262835138213429, %rax
	movabsq	$3690192153011957814, %rdx
	movq	%rax, -112(%rbp)
	movq	%rdx, -104(%rbp)
	movabsq	$3978426927277290550, %rax
	movabsq	$3546356245318744118, %rdx
	movq	%rax, -96(%rbp)
	movq	%rdx, -88(%rbp)
	movabsq	$3834591019416367671, %rax
	movabsq	$4122825793681700407, %rdx
	movq	%rax, -80(%rbp)
	movq	%rdx, -72(%rbp)
	movabsq	$3690755111555444792, %rax
	movabsq	$3978989885820777528, %rdx
	movq	%rax, -64(%rbp)
	movq	%rdx, -56(%rbp)
	movabsq	$3546919203862231096, %rax
	movabsq	$3835153977959854649, %rdx
	movq	%rax, -48(%rbp)
	movq	%rdx, -40(%rbp)
	movabsq	$4122263930388298034, %rax
	movabsq	$16106987313379638, %rdx
	movq	%rax, -39(%rbp)
	movq	%rdx, -31(%rbp)
	movl	24(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -4(%rbp)
	jmp	.L263
.L264:
	movl	32(%rbp), %ecx
	movl	%ecx, %eax
	imulq	$1374389535, %rax, %rax
	shrq	$32, %rax
	shrl	$5, %eax
	imull	$100, %eax, %edx
	movl	%ecx, %eax
	subl	%edx, %eax
	addl	%eax, %eax
	movl	%eax, -12(%rbp)
	movl	32(%rbp), %eax
	movl	%eax, %eax
	imulq	$1374389535, %rax, %rax
	shrq	$32, %rax
	shrl	$5, %eax
	movl	%eax, 32(%rbp)
	movl	-12(%rbp), %eax
	leal	1(%rax), %ecx
	movl	-4(%rbp), %edx
	movq	16(%rbp), %rax
	addq	%rax, %rdx
	movl	%ecx, %eax
	movzbl	-224(%rbp,%rax), %eax
	movb	%al, (%rdx)
	movl	-4(%rbp), %eax
	subl	$1, %eax
	movl	%eax, %edx
	movq	16(%rbp), %rax
	addq	%rax, %rdx
	movl	-12(%rbp), %eax
	movzbl	-224(%rbp,%rax), %eax
	movb	%al, (%rdx)
	subl	$2, -4(%rbp)
.L263:
	cmpl	$99, 32(%rbp)
	ja	.L264
	cmpl	$9, 32(%rbp)
	jbe	.L265
	movl	32(%rbp), %eax
	addl	%eax, %eax
	movl	%eax, -8(%rbp)
	movl	-8(%rbp), %eax
	leal	1(%rax), %ecx
	movq	16(%rbp), %rax
	leaq	1(%rax), %rdx
	movl	%ecx, %eax
	movzbl	-224(%rbp,%rax), %eax
	movb	%al, (%rdx)
	movl	-8(%rbp), %eax
	movzbl	-224(%rbp,%rax), %edx
	movq	16(%rbp), %rax
	movb	%dl, (%rax)
	jmp	.L267
.L265:
	movl	32(%rbp), %eax
	addl	$48, %eax
	movl	%eax, %edx
	movq	16(%rbp), %rax
	movb	%dl, (%rax)
.L267:
	nop
	addq	$224, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE22__resize_and_overwriteIZNS_9to_stringEiEUlPcyE_EEvyT_EN11_TerminatorD1Ev,"x"
	.linkonce discard
	.align 2
	.globl	_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE22__resize_and_overwriteIZNS_9to_stringEiEUlPcyE_EEvyT_EN11_TerminatorD1Ev
	.def	_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE22__resize_and_overwriteIZNS_9to_stringEiEUlPcyE_EEvyT_EN11_TerminatorD1Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE22__resize_and_overwriteIZNS_9to_stringEiEUlPcyE_EEvyT_EN11_TerminatorD1Ev
_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE22__resize_and_overwriteIZNS_9to_stringEiEUlPcyE_EEvyT_EN11_TerminatorD1Ev:
.LFB3579:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rbp), %rdx
	movq	8(%rdx), %rdx
	movq	%rax, %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_set_lengthEy
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA3579:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE3579-.LLSDACSB3579
.LLSDACSB3579:
.LLSDACSE3579:
	.section	.text$_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE22__resize_and_overwriteIZNS_9to_stringEiEUlPcyE_EEvyT_EN11_TerminatorD1Ev,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE22__resize_and_overwriteIZNS_9to_stringEiEUlPcyE_EEvyT_,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE22__resize_and_overwriteIZNS_9to_stringEiEUlPcyE_EEvyT_
	.def	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE22__resize_and_overwriteIZNS_9to_stringEiEUlPcyE_EEvyT_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE22__resize_and_overwriteIZNS_9to_stringEiEUlPcyE_EEvyT_
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE22__resize_and_overwriteIZNS_9to_stringEiEUlPcyE_EEvyT_:
.LFB3576:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$72, %rsp
	.seh_stackalloc	72
	leaq	64(%rsp), %rbp
	.seh_setframe	%rbp, 64
	.seh_endprologue
	movq	%rcx, 32(%rbp)
	movq	%rdx, 40(%rbp)
	movq	%r8, %rbx
	movq	40(%rbp), %rdx
	movq	32(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEy
	movq	32(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEv
	movq	%rax, -8(%rbp)
	pxor	%xmm0, %xmm0
	movaps	%xmm0, -32(%rbp)
	movq	32(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	%rbx, %rcx
	call	_ZSt4moveIRZNSt7__cxx119to_stringEiEUlPcyE_EONSt16remove_referenceIT_E4typeEOS5_
	movq	%rax, %rcx
	movq	40(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %r8
	movq	%rax, %rdx
	call	_ZZNSt7__cxx119to_stringEiENKUlPcyE_clES0_y
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	cmpq	%rax, 40(%rbp)
	leaq	-32(%rbp), %rax
	movq	%rax, %rcx
	call	_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE22__resize_and_overwriteIZNS_9to_stringEiEUlPcyE_EEvyT_EN11_TerminatorD1Ev
	nop
	addq	$72, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC6:
	.ascii "basic_string: construction from null is not valid\0"
	.section	.text$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_
	.def	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_:
.LFB3740:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$48, %rsp
	.seh_stackalloc	48
	leaq	48(%rsp), %rbp
	.seh_setframe	%rbp, 48
	.seh_endprologue
	movq	%rcx, 32(%rbp)
	movq	%rdx, 40(%rbp)
	movq	%r8, 48(%rbp)
	movq	32(%rbp), %rbx
	movq	32(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv
	movq	48(%rbp), %rdx
	movq	%rdx, %r8
	movq	%rax, %rdx
	movq	%rbx, %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderC1EPcRKS3_
	cmpq	$0, 40(%rbp)
	jne	.L272
	leaq	.LC6(%rip), %rax
	movq	%rax, %rcx
.LEHB81:
	call	_ZSt19__throw_logic_errorPKc
.L272:
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt11char_traitsIcE6lengthEPKc
	movq	40(%rbp), %rdx
	addq	%rdx, %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rcx
	movq	40(%rbp), %rdx
	movq	32(%rbp), %rax
	movl	%esi, %r9d
	movq	%rcx, %r8
	movq	%rax, %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag
.LEHE81:
	jmp	.L275
.L274:
	movq	%rax, %rbx
	movq	32(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD1Ev
	movq	%rbx, %rax
	movq	%rax, %rcx
.LEHB82:
	call	_Unwind_Resume
	nop
.LEHE82:
.L275:
	addq	$48, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rbp
	ret
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA3740:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE3740-.LLSDACSB3740
.LLSDACSB3740:
	.uleb128 .LEHB81-.LFB3740
	.uleb128 .LEHE81-.LEHB81
	.uleb128 .L274-.LFB3740
	.uleb128 0
	.uleb128 .LEHB82-.LFB3740
	.uleb128 .LEHE82-.LEHB82
	.uleb128 0
	.uleb128 0
.LLSDACSE3740:
	.section	.text$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_ZSt3maxIyERKT_S2_S2_,"x"
	.linkonce discard
	.globl	_ZSt3maxIyERKT_S2_S2_
	.def	_ZSt3maxIyERKT_S2_S2_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt3maxIyERKT_S2_S2_
_ZSt3maxIyERKT_S2_S2_:
.LFB3744:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	16(%rbp), %rax
	movq	(%rax), %rdx
	movq	24(%rbp), %rax
	movq	(%rax), %rax
	cmpq	%rax, %rdx
	jnb	.L277
	movq	24(%rbp), %rax
	jmp	.L278
.L277:
	movq	16(%rbp), %rax
.L278:
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZSt7forwardIiEOT_RNSt16remove_referenceIS0_E4typeE,"x"
	.linkonce discard
	.globl	_ZSt7forwardIiEOT_RNSt16remove_referenceIS0_E4typeE
	.def	_ZSt7forwardIiEOT_RNSt16remove_referenceIS0_E4typeE;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt7forwardIiEOT_RNSt16remove_referenceIS0_E4typeE
_ZSt7forwardIiEOT_RNSt16remove_referenceIS0_E4typeE:
.LFB3749:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt13unordered_setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashIS5_ESt8equal_toIS5_ESaIS5_EEC1IPKPKcEET_SH_yRKS7_RKS9_RKSA_,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt13unordered_setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashIS5_ESt8equal_toIS5_ESaIS5_EEC1IPKPKcEET_SH_yRKS7_RKS9_RKSA_
	.def	_ZNSt13unordered_setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashIS5_ESt8equal_toIS5_ESaIS5_EEC1IPKPKcEET_SH_yRKS7_RKS9_RKSA_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt13unordered_setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashIS5_ESt8equal_toIS5_ESaIS5_EEC1IPKPKcEET_SH_yRKS7_RKS9_RKSA_
_ZNSt13unordered_setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashIS5_ESt8equal_toIS5_ESaIS5_EEC1IPKPKcEET_SH_yRKS7_RKS9_RKSA_:
.LFB3760:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$64, %rsp
	.seh_stackalloc	64
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	%r8, 32(%rbp)
	movq	%r9, 40(%rbp)
	movq	16(%rbp), %rax
	movq	40(%rbp), %r9
	movq	32(%rbp), %r8
	movq	24(%rbp), %rdx
	movq	64(%rbp), %rcx
	movq	%rcx, 48(%rsp)
	movq	56(%rbp), %rcx
	movq	%rcx, 40(%rsp)
	movq	48(%rbp), %rcx
	movq	%rcx, 32(%rsp)
	movq	%rax, %rcx
	call	_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEEC1IPKPKcEET_SO_yRKSC_RKSA_RKS6_
	nop
	addq	$64, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC1Ev,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC1Ev
	.def	_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC1Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC1Ev
_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC1Ev:
.LFB3768:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)
	nop
	nop
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataC2Ev
	nop
	addq	$48, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt12_Vector_baseIiSaIiEED2Ev,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt12_Vector_baseIiSaIiEED2Ev
	.def	_ZNSt12_Vector_baseIiSaIiEED2Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt12_Vector_baseIiSaIiEED2Ev
_ZNSt12_Vector_baseIiSaIiEED2Ev:
.LFB3773:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	movq	16(%rax), %rdx
	movq	16(%rbp), %rax
	movq	(%rax), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	sarq	$2, %rax
	movq	%rax, %rcx
	movq	16(%rbp), %rax
	movq	(%rax), %rdx
	movq	16(%rbp), %rax
	movq	%rcx, %r8
	movq	%rax, %rcx
	call	_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPiy
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt12_Vector_baseIiSaIiEE12_Vector_implD1Ev
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA3773:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE3773-.LLSDACSB3773
.LLSDACSB3773:
.LLSDACSE3773:
	.section	.text$_ZNSt12_Vector_baseIiSaIiEED2Ev,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_ZNSt6vectorIiSaIiEED1Ev,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt6vectorIiSaIiEED1Ev
	.def	_ZNSt6vectorIiSaIiEED1Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt6vectorIiSaIiEED1Ev
_ZNSt6vectorIiSaIiEED1Ev:
.LFB3777:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$64, %rsp
	.seh_stackalloc	64
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv
	movq	16(%rbp), %rdx
	movq	8(%rdx), %rdx
	movq	16(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	%rcx, -8(%rbp)
	movq	%rdx, -16(%rbp)
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rax, %rcx
	call	_ZSt8_DestroyIPiEvT_S1_
	nop
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt12_Vector_baseIiSaIiEED2Ev
	nop
	addq	$64, %rsp
	popq	%rbp
	ret
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA3777:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE3777-.LLSDACSB3777
.LLSDACSB3777:
.LLSDACSE3777:
	.section	.text$_ZNSt6vectorIiSaIiEED1Ev,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_ZNSt6vectorIiSaIiEE9push_backEOi,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt6vectorIiSaIiEE9push_backEOi
	.def	_ZNSt6vectorIiSaIiEE9push_backEOi;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt6vectorIiSaIiEE9push_backEOi
_ZNSt6vectorIiSaIiEE9push_backEOi:
.LFB3781:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	24(%rbp), %rax
	movq	%rax, %rcx
	call	_ZSt4moveIRiEONSt16remove_referenceIT_E4typeEOS2_
	movq	%rax, %rdx
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorIiSaIiEE12emplace_backIJiEEERiDpOT_
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt12_Vector_baseI5TokenSaIS0_EE12_Vector_implC1Ev,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt12_Vector_baseI5TokenSaIS0_EE12_Vector_implC1Ev
	.def	_ZNSt12_Vector_baseI5TokenSaIS0_EE12_Vector_implC1Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt12_Vector_baseI5TokenSaIS0_EE12_Vector_implC1Ev
_ZNSt12_Vector_baseI5TokenSaIS0_EE12_Vector_implC1Ev:
.LFB3785:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)
	nop
	nop
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt12_Vector_baseI5TokenSaIS0_EE17_Vector_impl_dataC2Ev
	nop
	addq	$48, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt12_Vector_baseI5TokenSaIS0_EED2Ev,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt12_Vector_baseI5TokenSaIS0_EED2Ev
	.def	_ZNSt12_Vector_baseI5TokenSaIS0_EED2Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt12_Vector_baseI5TokenSaIS0_EED2Ev
_ZNSt12_Vector_baseI5TokenSaIS0_EED2Ev:
.LFB3790:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	movq	16(%rax), %rdx
	movq	16(%rbp), %rax
	movq	(%rax), %rax
	subq	%rax, %rdx
	sarq	$3, %rdx
	movabsq	$-3689348814741910323, %rax
	imulq	%rdx, %rax
	movq	%rax, %rcx
	movq	16(%rbp), %rax
	movq	(%rax), %rdx
	movq	16(%rbp), %rax
	movq	%rcx, %r8
	movq	%rax, %rcx
	call	_ZNSt12_Vector_baseI5TokenSaIS0_EE13_M_deallocateEPS0_y
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt12_Vector_baseI5TokenSaIS0_EE12_Vector_implD1Ev
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA3790:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE3790-.LLSDACSB3790
.LLSDACSB3790:
.LLSDACSE3790:
	.section	.text$_ZNSt12_Vector_baseI5TokenSaIS0_EED2Ev,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_ZNSt6vectorI5TokenSaIS0_EED1Ev,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt6vectorI5TokenSaIS0_EED1Ev
	.def	_ZNSt6vectorI5TokenSaIS0_EED1Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt6vectorI5TokenSaIS0_EED1Ev
_ZNSt6vectorI5TokenSaIS0_EED1Ev:
.LFB3794:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$64, %rsp
	.seh_stackalloc	64
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt12_Vector_baseI5TokenSaIS0_EE19_M_get_Tp_allocatorEv
	movq	16(%rbp), %rdx
	movq	8(%rdx), %rdx
	movq	16(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	%rcx, -8(%rbp)
	movq	%rdx, -16(%rbp)
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rax, %rcx
	call	_ZSt8_DestroyIP5TokenEvT_S2_
	nop
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt12_Vector_baseI5TokenSaIS0_EED2Ev
	nop
	addq	$64, %rsp
	popq	%rbp
	ret
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA3794:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE3794-.LLSDACSB3794
.LLSDACSB3794:
.LLSDACSE3794:
	.section	.text$_ZNSt6vectorI5TokenSaIS0_EED1Ev,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_ZNSt6vectorIiSaIiEE4backEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt6vectorIiSaIiEE4backEv
	.def	_ZNSt6vectorIiSaIiEE4backEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt6vectorIiSaIiEE4backEv
_ZNSt6vectorIiSaIiEE4backEv:
.LFB3795:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorIiSaIiEE3endEv
	movq	%rax, -8(%rbp)
	leaq	-8(%rbp), %rax
	movl	$1, %edx
	movq	%rax, %rcx
	call	_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEmiEx
	movq	%rax, -16(%rbp)
	leaq	-16(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEdeEv
	addq	$48, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt6vectorIiSaIiEE9push_backERKi,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt6vectorIiSaIiEE9push_backERKi
	.def	_ZNSt6vectorIiSaIiEE9push_backERKi;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt6vectorIiSaIiEE9push_backERKi
_ZNSt6vectorIiSaIiEE9push_backERKi:
.LFB3796:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$88, %rsp
	.seh_stackalloc	88
	leaq	80(%rsp), %rbp
	.seh_setframe	%rbp, 80
	.seh_endprologue
	movq	%rcx, 32(%rbp)
	movq	%rdx, 40(%rbp)
	movq	32(%rbp), %rax
	movq	8(%rax), %rdx
	movq	32(%rbp), %rax
	movq	16(%rax), %rax
	cmpq	%rax, %rdx
	je	.L292
	movq	32(%rbp), %rax
	movq	8(%rax), %rax
	movq	32(%rbp), %rdx
	movq	%rdx, -8(%rbp)
	movq	%rax, -16(%rbp)
	movq	40(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rcx
	call	_ZSt7forwardIRKiEOT_RNSt16remove_referenceIS2_E4typeE
	movq	-16(%rbp), %rdx
	movq	%rdx, -32(%rbp)
	movq	%rax, -40(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdx
	movl	$4, %ecx
	call	_ZnwyPv
	movq	%rax, %rbx
	movq	-40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZSt7forwardIRKiEOT_RNSt16remove_referenceIS2_E4typeE
	movl	(%rax), %eax
	movl	%eax, (%rbx)
	nop
	nop
	movq	32(%rbp), %rax
	movq	8(%rax), %rax
	leaq	4(%rax), %rdx
	movq	32(%rbp), %rax
	movq	%rdx, 8(%rax)
	jmp	.L294
.L292:
	movq	40(%rbp), %rdx
	movq	32(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJRKiEEEvDpOT_
.L294:
	nop
	addq	$88, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt6vectorI5TokenSaIS0_EE9push_backEOS0_,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt6vectorI5TokenSaIS0_EE9push_backEOS0_
	.def	_ZNSt6vectorI5TokenSaIS0_EE9push_backEOS0_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt6vectorI5TokenSaIS0_EE9push_backEOS0_
_ZNSt6vectorI5TokenSaIS0_EE9push_backEOS0_:
.LFB3798:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	24(%rbp), %rax
	movq	%rax, %rcx
	call	_ZSt4moveIR5TokenEONSt16remove_referenceIT_E4typeEOS3_
	movq	%rax, %rdx
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI5TokenSaIS0_EE12emplace_backIJS0_EEERS0_DpOT_
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNKSt6vectorIiSaIiEE5emptyEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNKSt6vectorIiSaIiEE5emptyEv
	.def	_ZNKSt6vectorIiSaIiEE5emptyEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNKSt6vectorIiSaIiEE5emptyEv
_ZNKSt6vectorIiSaIiEE5emptyEv:
.LFB3799:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNKSt6vectorIiSaIiEE3endEv
	movq	%rax, -16(%rbp)
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNKSt6vectorIiSaIiEE5beginEv
	movq	%rax, -8(%rbp)
	leaq	-16(%rbp), %rdx
	leaq	-8(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN9__gnu_cxxeqIPKiSt6vectorIiSaIiEEEEbRKNS_17__normal_iteratorIT_T0_EESB_
	addq	$48, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt6vectorIiSaIiEE8pop_backEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt6vectorIiSaIiEE8pop_backEv
	.def	_ZNSt6vectorIiSaIiEE8pop_backEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt6vectorIiSaIiEE8pop_backEv
_ZNSt6vectorIiSaIiEE8pop_backEv:
.LFB3800:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	movq	8(%rax), %rax
	leaq	-4(%rax), %rdx
	movq	16(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	16(%rbp), %rax
	movq	8(%rax), %rax
	movq	16(%rbp), %rdx
	movq	%rdx, -8(%rbp)
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
	nop
	nop
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEycRKS3_,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEycRKS3_
	.def	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEycRKS3_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEycRKS3_
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEycRKS3_:
.LFB3805:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$40, %rsp
	.seh_stackalloc	40
	leaq	32(%rsp), %rbp
	.seh_setframe	%rbp, 32
	.seh_endprologue
	movq	%rcx, 32(%rbp)
	movq	%rdx, 40(%rbp)
	movl	%r8d, %eax
	movq	%r9, 56(%rbp)
	movb	%al, 48(%rbp)
	movq	32(%rbp), %rbx
	movq	32(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv
	movq	56(%rbp), %rdx
	movq	%rdx, %r8
	movq	%rax, %rdx
	movq	%rbx, %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderC1EPcRKS3_
	movsbl	48(%rbp), %ecx
	movq	40(%rbp), %rdx
	movq	32(%rbp), %rax
	movl	%ecx, %r8d
	movq	%rax, %rcx
.LEHB83:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEyc
.LEHE83:
	jmp	.L302
.L301:
	movq	%rax, %rbx
	movq	32(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD1Ev
	movq	%rbx, %rax
	movq	%rax, %rcx
.LEHB84:
	call	_Unwind_Resume
	nop
.LEHE84:
.L302:
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA3805:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE3805-.LLSDACSB3805
.LLSDACSB3805:
	.uleb128 .LEHB83-.LFB3805
	.uleb128 .LEHE83-.LEHB83
	.uleb128 .L301-.LFB3805
	.uleb128 0
	.uleb128 .LEHB84-.LFB3805
	.uleb128 .LEHE84-.LEHB84
	.uleb128 0
	.uleb128 0
.LLSDACSE3805:
	.section	.text$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEycRKS3_,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_ZNKSt13unordered_setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashIS5_ESt8equal_toIS5_ESaIS5_EE4findERKS5_,"x"
	.linkonce discard
	.align 2
	.globl	_ZNKSt13unordered_setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashIS5_ESt8equal_toIS5_ESaIS5_EE4findERKS5_
	.def	_ZNKSt13unordered_setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashIS5_ESt8equal_toIS5_ESaIS5_EE4findERKS5_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNKSt13unordered_setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashIS5_ESt8equal_toIS5_ESaIS5_EE4findERKS5_
_ZNKSt13unordered_setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashIS5_ESt8equal_toIS5_ESaIS5_EE4findERKS5_:
.LFB3806:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	16(%rbp), %rax
	movq	24(%rbp), %rdx
	movq	%rax, %rcx
	call	_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE4findERKS5_
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNKSt13unordered_setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashIS5_ESt8equal_toIS5_ESaIS5_EE3endEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNKSt13unordered_setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashIS5_ESt8equal_toIS5_ESaIS5_EE3endEv
	.def	_ZNKSt13unordered_setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashIS5_ESt8equal_toIS5_ESaIS5_EE3endEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNKSt13unordered_setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashIS5_ESt8equal_toIS5_ESaIS5_EE3endEv
_ZNKSt13unordered_setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashIS5_ESt8equal_toIS5_ESaIS5_EE3endEv:
.LFB3807:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE3endEv
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt8__detailneERKNS_19_Node_iterator_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEES9_,"x"
	.linkonce discard
	.globl	_ZNSt8__detailneERKNS_19_Node_iterator_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEES9_
	.def	_ZNSt8__detailneERKNS_19_Node_iterator_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEES9_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt8__detailneERKNS_19_Node_iterator_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEES9_
_ZNSt8__detailneERKNS_19_Node_iterator_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEES9_:
.LFB3808:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	16(%rbp), %rax
	movq	(%rax), %rdx
	movq	24(%rbp), %rax
	movq	(%rax), %rax
	cmpq	%rax, %rdx
	setne	%al
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNKSt6vectorIiSaIiEE4sizeEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNKSt6vectorIiSaIiEE4sizeEv
	.def	_ZNKSt6vectorIiSaIiEE4sizeEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNKSt6vectorIiSaIiEE4sizeEv
_ZNKSt6vectorIiSaIiEE4sizeEv:
.LFB3809:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	movq	8(%rax), %rdx
	movq	16(%rbp), %rax
	movq	(%rax), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	sarq	$2, %rax
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZN9__gnu_cxx11char_traitsIcE2eqERKcS3_,"x"
	.linkonce discard
	.globl	_ZN9__gnu_cxx11char_traitsIcE2eqERKcS3_
	.def	_ZN9__gnu_cxx11char_traitsIcE2eqERKcS3_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN9__gnu_cxx11char_traitsIcE2eqERKcS3_
_ZN9__gnu_cxx11char_traitsIcE2eqERKcS3_:
.LFB3813:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	16(%rbp), %rax
	movzbl	(%rax), %edx
	movq	24(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	%al, %dl
	sete	%al
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZSt4moveIRZNSt7__cxx119to_stringEiEUlPcyE_EONSt16remove_referenceIT_E4typeEOS5_,"x"
	.linkonce discard
	.globl	_ZSt4moveIRZNSt7__cxx119to_stringEiEUlPcyE_EONSt16remove_referenceIT_E4typeEOS5_
	.def	_ZSt4moveIRZNSt7__cxx119to_stringEiEUlPcyE_EONSt16remove_referenceIT_E4typeEOS5_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt4moveIRZNSt7__cxx119to_stringEiEUlPcyE_EONSt16remove_referenceIT_E4typeEOS5_
_ZSt4moveIRZNSt7__cxx119to_stringEiEUlPcyE_EONSt16remove_referenceIT_E4typeEOS5_:
.LFB3824:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt15__new_allocatorIcED2Ev,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt15__new_allocatorIcED2Ev
	.def	_ZNSt15__new_allocatorIcED2Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt15__new_allocatorIcED2Ev
_ZNSt15__new_allocatorIcED2Ev:
.LFB3866:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	nop
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardC1EPS4_,"x"
	.linkonce discard
	.align 2
	.globl	_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardC1EPS4_
	.def	_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardC1EPS4_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardC1EPS4_
_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardC1EPS4_:
.LFB3874:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	16(%rbp), %rax
	movq	24(%rbp), %rdx
	movq	%rdx, (%rax)
	nop
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardD1Ev,"x"
	.linkonce discard
	.align 2
	.globl	_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardD1Ev
	.def	_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardD1Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardD1Ev
_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardD1Ev:
.LFB3877:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L319
	movq	16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
.L319:
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA3877:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE3877-.LLSDACSB3877
.LLSDACSB3877:
.LLSDACSE3877:
	.section	.text$_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardD1Ev,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag
	.def	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag:
.LFB3871:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$104, %rsp
	.seh_stackalloc	104
	leaq	96(%rsp), %rbp
	.seh_setframe	%rbp, 96
	.seh_endprologue
	movq	%rcx, 32(%rbp)
	movq	%rdx, 40(%rbp)
	movq	%r8, 48(%rbp)
	movq	40(%rbp), %rax
	movq	%rax, -56(%rbp)
	movq	48(%rbp), %rax
	movq	%rax, -8(%rbp)
	nop
	movq	-56(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	subq	-16(%rbp), %rax
	nop
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	cmpq	$15, %rax
	jbe	.L324
	leaq	-40(%rbp), %rdx
	movq	32(%rbp), %rax
	movl	$0, %r8d
	movq	%rax, %rcx
.LEHB85:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERyy
.LEHE85:
	movq	%rax, %rdx
	movq	32(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEPc
	movq	-40(%rbp), %rdx
	movq	32(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_capacityEy
	jmp	.L325
.L324:
	movq	32(%rbp), %rax
	movq	%rax, -32(%rbp)
	nop
.L325:
	movq	32(%rbp), %rdx
	leaq	-48(%rbp), %rax
	movq	%rax, %rcx
	call	_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardC1EPS4_
	movq	32(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEv
	movq	%rax, %rcx
	movq	48(%rbp), %rdx
	movq	40(%rbp), %rax
	movq	%rdx, %r8
	movq	%rax, %rdx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_S_copy_charsEPcPKcS7_
	movq	$0, -48(%rbp)
	movq	-40(%rbp), %rdx
	movq	32(%rbp), %rax
	movq	%rax, %rcx
.LEHB86:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_set_lengthEy
.LEHE86:
	leaq	-48(%rbp), %rax
	movq	%rax, %rcx
	call	_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardD1Ev
	jmp	.L328
.L327:
	movq	%rax, %rbx
	leaq	-48(%rbp), %rax
	movq	%rax, %rcx
	call	_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardD1Ev
	movq	%rbx, %rax
	movq	%rax, %rcx
.LEHB87:
	call	_Unwind_Resume
	nop
.LEHE87:
.L328:
	addq	$104, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA3871:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE3871-.LLSDACSB3871
.LLSDACSB3871:
	.uleb128 .LEHB85-.LFB3871
	.uleb128 .LEHE85-.LEHB85
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB86-.LFB3871
	.uleb128 .LEHE86-.LEHB86
	.uleb128 .L327-.LFB3871
	.uleb128 0
	.uleb128 .LEHB87-.LFB3871
	.uleb128 .LEHE87-.LEHB87
	.uleb128 0
	.uleb128 0
.LLSDACSE3871:
	.section	.text$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_ZSt7forwardIbEOT_RNSt16remove_referenceIS0_E4typeE,"x"
	.linkonce discard
	.globl	_ZSt7forwardIbEOT_RNSt16remove_referenceIS0_E4typeE
	.def	_ZSt7forwardIbEOT_RNSt16remove_referenceIS0_E4typeE;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt7forwardIbEOT_RNSt16remove_referenceIS0_E4typeE
_ZSt7forwardIbEOT_RNSt16remove_referenceIS0_E4typeE:
.LFB3930:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev
	.def	_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev
_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev:
.LFB3936:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	nop
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEEC1IPKPKcEET_SO_yRKSC_RKSA_RKS6_,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEEC1IPKPKcEET_SO_yRKSC_RKSA_RKS6_
	.def	_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEEC1IPKPKcEET_SO_yRKSC_RKSA_RKS6_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEEC1IPKPKcEET_SO_yRKSC_RKSA_RKS6_
_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEEC1IPKPKcEET_SO_yRKSC_RKSA_RKS6_:
.LFB3940:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$64, %rsp
	.seh_stackalloc	64
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	%r8, 32(%rbp)
	movq	%r9, 40(%rbp)
	movq	40(%rbp), %r9
	movq	32(%rbp), %r8
	movq	24(%rbp), %rdx
	movq	16(%rbp), %rax
	movq	64(%rbp), %rcx
	movq	%rcx, 48(%rsp)
	movq	56(%rbp), %rcx
	movq	%rcx, 40(%rsp)
	movq	48(%rbp), %rcx
	movq	%rcx, 32(%rsp)
	movq	%rax, %rcx
	call	_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEEC1IPKPKcEET_SO_yRKSC_RKSA_RKS6_St17integral_constantIbLb1EE
	nop
	addq	$64, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt8__detail21_Hashtable_ebo_helperILi0ESaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEELb1EED2Ev,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt8__detail21_Hashtable_ebo_helperILi0ESaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEELb1EED2Ev
	.def	_ZNSt8__detail21_Hashtable_ebo_helperILi0ESaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEELb1EED2Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt8__detail21_Hashtable_ebo_helperILi0ESaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEELb1EED2Ev
_ZNSt8__detail21_Hashtable_ebo_helperILi0ESaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEELb1EED2Ev:
.LFB3944:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt15__new_allocatorINSt8__detail10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEED2Ev
	nop
	nop
	addq	$48, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEED2Ev,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEED2Ev
	.def	_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEED2Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEED2Ev
_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEED2Ev:
.LFB3946:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt8__detail21_Hashtable_ebo_helperILi0ESaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEELb1EED2Ev
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEED1Ev,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEED1Ev
	.def	_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEED1Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEED1Ev
_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEED1Ev:
.LFB3949:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE21_M_deallocate_bucketsEv
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEED2Ev
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA3949:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE3949-.LLSDACSB3949
.LLSDACSB3949:
.LLSDACSE3949:
	.section	.text$_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEED1Ev,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_ZNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataC2Ev,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataC2Ev
	.def	_ZNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataC2Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataC2Ev
_ZNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataC2Ev:
.LFB3957:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	movq	$0, (%rax)
	movq	16(%rbp), %rax
	movq	$0, 8(%rax)
	movq	16(%rbp), %rax
	movq	$0, 16(%rax)
	nop
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt15__new_allocatorIiED2Ev,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt15__new_allocatorIiED2Ev
	.def	_ZNSt15__new_allocatorIiED2Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt15__new_allocatorIiED2Ev
_ZNSt15__new_allocatorIiED2Ev:
.LFB3960:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	nop
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPiy,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPiy
	.def	_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPiy;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPiy
_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPiy:
.LFB3962:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$64, %rsp
	.seh_stackalloc	64
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	%r8, 32(%rbp)
	cmpq	$0, 24(%rbp)
	je	.L340
	movq	16(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	24(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	32(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rcx, %r8
	movq	%rax, %rcx
	call	_ZNSt15__new_allocatorIiE10deallocateEPiy
	nop
.L340:
	nop
	addq	$64, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv
	.def	_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv
_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv:
.LFB3963:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZSt4moveIRiEONSt16remove_referenceIT_E4typeEOS2_,"x"
	.linkonce discard
	.globl	_ZSt4moveIRiEONSt16remove_referenceIT_E4typeEOS2_
	.def	_ZSt4moveIRiEONSt16remove_referenceIT_E4typeEOS2_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt4moveIRiEONSt16remove_referenceIT_E4typeEOS2_
_ZSt4moveIRiEONSt16remove_referenceIT_E4typeEOS2_:
.LFB3968:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt6vectorIiSaIiEE12emplace_backIJiEEERiDpOT_,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt6vectorIiSaIiEE12emplace_backIJiEEERiDpOT_
	.def	_ZNSt6vectorIiSaIiEE12emplace_backIJiEEERiDpOT_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt6vectorIiSaIiEE12emplace_backIJiEEERiDpOT_
_ZNSt6vectorIiSaIiEE12emplace_backIJiEEERiDpOT_:
.LFB3969:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$88, %rsp
	.seh_stackalloc	88
	leaq	80(%rsp), %rbp
	.seh_setframe	%rbp, 80
	.seh_endprologue
	movq	%rcx, 32(%rbp)
	movq	%rdx, 40(%rbp)
	movq	32(%rbp), %rax
	movq	8(%rax), %rdx
	movq	32(%rbp), %rax
	movq	16(%rax), %rax
	cmpq	%rax, %rdx
	je	.L346
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZSt7forwardIiEOT_RNSt16remove_referenceIS0_E4typeE
	movq	32(%rbp), %rdx
	movq	8(%rdx), %rdx
	movq	32(%rbp), %rcx
	movq	%rcx, -8(%rbp)
	movq	%rdx, -16(%rbp)
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rcx
	call	_ZSt7forwardIiEOT_RNSt16remove_referenceIS0_E4typeE
	movq	-16(%rbp), %rdx
	movq	%rdx, -32(%rbp)
	movq	%rax, -40(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdx
	movl	$4, %ecx
	call	_ZnwyPv
	movq	%rax, %rbx
	movq	-40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZSt7forwardIiEOT_RNSt16remove_referenceIS0_E4typeE
	movl	(%rax), %eax
	movl	%eax, (%rbx)
	nop
	nop
	movq	32(%rbp), %rax
	movq	8(%rax), %rax
	leaq	4(%rax), %rdx
	movq	32(%rbp), %rax
	movq	%rdx, 8(%rax)
	jmp	.L347
.L346:
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZSt7forwardIiEOT_RNSt16remove_referenceIS0_E4typeE
	movq	%rax, %rdx
	movq	32(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJiEEEvDpOT_
.L347:
	movq	32(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorIiSaIiEE4backEv
	addq	$88, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt12_Vector_baseI5TokenSaIS0_EE17_Vector_impl_dataC2Ev,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt12_Vector_baseI5TokenSaIS0_EE17_Vector_impl_dataC2Ev
	.def	_ZNSt12_Vector_baseI5TokenSaIS0_EE17_Vector_impl_dataC2Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt12_Vector_baseI5TokenSaIS0_EE17_Vector_impl_dataC2Ev
_ZNSt12_Vector_baseI5TokenSaIS0_EE17_Vector_impl_dataC2Ev:
.LFB3974:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	movq	$0, (%rax)
	movq	16(%rbp), %rax
	movq	$0, 8(%rax)
	movq	16(%rbp), %rax
	movq	$0, 16(%rax)
	nop
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt15__new_allocatorI5TokenED2Ev,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt15__new_allocatorI5TokenED2Ev
	.def	_ZNSt15__new_allocatorI5TokenED2Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt15__new_allocatorI5TokenED2Ev
_ZNSt15__new_allocatorI5TokenED2Ev:
.LFB3977:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	nop
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt12_Vector_baseI5TokenSaIS0_EE13_M_deallocateEPS0_y,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt12_Vector_baseI5TokenSaIS0_EE13_M_deallocateEPS0_y
	.def	_ZNSt12_Vector_baseI5TokenSaIS0_EE13_M_deallocateEPS0_y;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt12_Vector_baseI5TokenSaIS0_EE13_M_deallocateEPS0_y
_ZNSt12_Vector_baseI5TokenSaIS0_EE13_M_deallocateEPS0_y:
.LFB3979:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$64, %rsp
	.seh_stackalloc	64
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	%r8, 32(%rbp)
	cmpq	$0, 24(%rbp)
	je	.L353
	movq	16(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	24(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	32(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rcx, %r8
	movq	%rax, %rcx
	call	_ZNSt15__new_allocatorI5TokenE10deallocateEPS0_y
	nop
.L353:
	nop
	addq	$64, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt12_Vector_baseI5TokenSaIS0_EE19_M_get_Tp_allocatorEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt12_Vector_baseI5TokenSaIS0_EE19_M_get_Tp_allocatorEv
	.def	_ZNSt12_Vector_baseI5TokenSaIS0_EE19_M_get_Tp_allocatorEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt12_Vector_baseI5TokenSaIS0_EE19_M_get_Tp_allocatorEv
_ZNSt12_Vector_baseI5TokenSaIS0_EE19_M_get_Tp_allocatorEv:
.LFB3980:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt6vectorIiSaIiEE3endEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt6vectorIiSaIiEE3endEv
	.def	_ZNSt6vectorIiSaIiEE3endEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt6vectorIiSaIiEE3endEv
_ZNSt6vectorIiSaIiEE3endEv:
.LFB3982:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	leaq	8(%rax), %rdx
	leaq	-8(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEC1ERKS1_
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEmiEx,"x"
	.linkonce discard
	.align 2
	.globl	_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEmiEx
	.def	_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEmiEx;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEmiEx
_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEmiEx:
.LFB3983:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	16(%rbp), %rax
	movq	(%rax), %rax
	movq	24(%rbp), %rdx
	salq	$2, %rdx
	negq	%rdx
	addq	%rdx, %rax
	movq	%rax, -8(%rbp)
	leaq	-8(%rbp), %rdx
	leaq	-16(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEC1ERKS1_
	movq	-16(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEdeEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEdeEv
	.def	_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEdeEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEdeEv
_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEdeEv:
.LFB3984:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	movq	(%rax), %rax
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZZNSt6vectorIiSaIiEE17_M_realloc_appendIJRKiEEEvDpOT_EN6_GuardC1EPiyRS0_,"x"
	.linkonce discard
	.align 2
	.globl	_ZZNSt6vectorIiSaIiEE17_M_realloc_appendIJRKiEEEvDpOT_EN6_GuardC1EPiyRS0_
	.def	_ZZNSt6vectorIiSaIiEE17_M_realloc_appendIJRKiEEEvDpOT_EN6_GuardC1EPiyRS0_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZZNSt6vectorIiSaIiEE17_M_realloc_appendIJRKiEEEvDpOT_EN6_GuardC1EPiyRS0_
_ZZNSt6vectorIiSaIiEE17_M_realloc_appendIJRKiEEEvDpOT_EN6_GuardC1EPiyRS0_:
.LFB3989:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	%r8, 32(%rbp)
	movq	%r9, 40(%rbp)
	movq	16(%rbp), %rax
	movq	24(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	16(%rbp), %rax
	movq	32(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movq	16(%rbp), %rax
	movq	40(%rbp), %rdx
	movq	%rdx, 16(%rax)
	nop
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZZNSt6vectorIiSaIiEE17_M_realloc_appendIJRKiEEEvDpOT_EN6_GuardD1Ev,"x"
	.linkonce discard
	.align 2
	.globl	_ZZNSt6vectorIiSaIiEE17_M_realloc_appendIJRKiEEEvDpOT_EN6_GuardD1Ev
	.def	_ZZNSt6vectorIiSaIiEE17_M_realloc_appendIJRKiEEEvDpOT_EN6_GuardD1Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZZNSt6vectorIiSaIiEE17_M_realloc_appendIJRKiEEEvDpOT_EN6_GuardD1Ev
_ZZNSt6vectorIiSaIiEE17_M_realloc_appendIJRKiEEEvDpOT_EN6_GuardD1Ev:
.LFB3992:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$64, %rsp
	.seh_stackalloc	64
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L365
	movq	16(%rbp), %rax
	movq	8(%rax), %rax
	movq	16(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	16(%rbp), %rcx
	movq	16(%rcx), %rcx
	movq	%rcx, -8(%rbp)
	movq	%rdx, -16(%rbp)
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rcx, %r8
	movq	%rax, %rcx
	call	_ZNSt15__new_allocatorIiE10deallocateEPiy
	nop
.L365:
	nop
	addq	$64, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section .rdata,"dr"
.LC7:
	.ascii "vector::_M_realloc_append\0"
	.section	.text$_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJRKiEEEvDpOT_,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJRKiEEEvDpOT_
	.def	_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJRKiEEEvDpOT_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJRKiEEEvDpOT_
_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJRKiEEEvDpOT_:
.LFB3986:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$184, %rsp
	.seh_stackalloc	184
	leaq	176(%rsp), %rbp
	.seh_setframe	%rbp, 176
	.seh_endprologue
	movq	%rcx, 32(%rbp)
	movq	%rdx, 40(%rbp)
	movq	32(%rbp), %rax
	leaq	.LC7(%rip), %r8
	movl	$1, %edx
	movq	%rax, %rcx
	call	_ZNKSt6vectorIiSaIiEE12_M_check_lenEyPKc
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	movq	32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	32(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	32(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorIiSaIiEE5beginEv
	movq	%rax, -112(%rbp)
	movq	32(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorIiSaIiEE3endEv
	movq	%rax, -104(%rbp)
	leaq	-112(%rbp), %rdx
	leaq	-104(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN9__gnu_cxxmiIPiSt6vectorIiSaIiEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS8_SB_
	movq	%rax, -32(%rbp)
	movq	32(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rax, %rcx
	call	_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEy
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	32(%rbp), %r8
	movq	-8(%rbp), %rcx
	movq	-40(%rbp), %rdx
	leaq	-144(%rbp), %rax
	movq	%r8, %r9
	movq	%rcx, %r8
	movq	%rax, %rcx
	call	_ZZNSt6vectorIiSaIiEE17_M_realloc_appendIJRKiEEEvDpOT_EN6_GuardC1EPiyRS0_
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZSt7forwardIRKiEOT_RNSt16remove_referenceIS2_E4typeE
	movq	%rax, %rbx
	movq	-32(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, %rcx
	call	_ZSt12__to_addressIiEPT_S1_
	movq	32(%rbp), %rdx
	movq	%rdx, -56(%rbp)
	movq	%rax, -64(%rbp)
	movq	%rbx, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, %rcx
	call	_ZSt7forwardIRKiEOT_RNSt16remove_referenceIS2_E4typeE
	movq	-64(%rbp), %rdx
	movq	%rdx, -80(%rbp)
	movq	%rax, -88(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -96(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, %rdx
	movl	$4, %ecx
	call	_ZnwyPv
	movq	%rax, %rbx
	movq	-88(%rbp), %rax
	movq	%rax, %rcx
	call	_ZSt7forwardIRKiEOT_RNSt16remove_referenceIS2_E4typeE
	movl	(%rax), %eax
	movl	%eax, (%rbx)
	nop
	nop
	movq	32(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv
	movq	%rax, %rcx
	movq	-40(%rbp), %r8
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rcx, %r9
	movq	%rax, %rcx
	call	_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_
	movq	%rax, -48(%rbp)
	addq	$4, -48(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -144(%rbp)
	movq	32(%rbp), %rax
	movq	16(%rax), %rax
	subq	-16(%rbp), %rax
	sarq	$2, %rax
	movq	%rax, -136(%rbp)
	leaq	-144(%rbp), %rax
	movq	%rax, %rcx
	call	_ZZNSt6vectorIiSaIiEE17_M_realloc_appendIJRKiEEEvDpOT_EN6_GuardD1Ev
	movq	32(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	32(%rbp), %rax
	movq	-48(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movq	-8(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-40(%rbp), %rax
	addq	%rax, %rdx
	movq	32(%rbp), %rax
	movq	%rdx, 16(%rax)
	nop
	addq	$184, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZSt4moveIR5TokenEONSt16remove_referenceIT_E4typeEOS3_,"x"
	.linkonce discard
	.globl	_ZSt4moveIR5TokenEONSt16remove_referenceIT_E4typeEOS3_
	.def	_ZSt4moveIR5TokenEONSt16remove_referenceIT_E4typeEOS3_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt4moveIR5TokenEONSt16remove_referenceIT_E4typeEOS3_
_ZSt4moveIR5TokenEONSt16remove_referenceIT_E4typeEOS3_:
.LFB3996:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt6vectorI5TokenSaIS0_EE12emplace_backIJS0_EEERS0_DpOT_,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt6vectorI5TokenSaIS0_EE12emplace_backIJS0_EEERS0_DpOT_
	.def	_ZNSt6vectorI5TokenSaIS0_EE12emplace_backIJS0_EEERS0_DpOT_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt6vectorI5TokenSaIS0_EE12emplace_backIJS0_EEERS0_DpOT_
_ZNSt6vectorI5TokenSaIS0_EE12emplace_backIJS0_EEERS0_DpOT_:
.LFB3997:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$88, %rsp
	.seh_stackalloc	88
	leaq	80(%rsp), %rbp
	.seh_setframe	%rbp, 80
	.seh_endprologue
	movq	%rcx, 32(%rbp)
	movq	%rdx, 40(%rbp)
	movq	32(%rbp), %rax
	movq	8(%rax), %rdx
	movq	32(%rbp), %rax
	movq	16(%rax), %rax
	cmpq	%rax, %rdx
	je	.L371
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZSt7forwardI5TokenEOT_RNSt16remove_referenceIS1_E4typeE
	movq	32(%rbp), %rdx
	movq	8(%rdx), %rdx
	movq	32(%rbp), %rcx
	movq	%rcx, -8(%rbp)
	movq	%rdx, -16(%rbp)
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rcx
	call	_ZSt7forwardI5TokenEOT_RNSt16remove_referenceIS1_E4typeE
	movq	-16(%rbp), %rdx
	movq	%rdx, -32(%rbp)
	movq	%rax, -40(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdx
	movl	$40, %ecx
	call	_ZnwyPv
	movq	%rax, %rbx
	movq	-40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZSt7forwardI5TokenEOT_RNSt16remove_referenceIS1_E4typeE
	movq	%rax, %rdx
	movq	%rbx, %rcx
	call	_ZN5TokenC1EOS_
	nop
	nop
	movq	32(%rbp), %rax
	movq	8(%rax), %rax
	leaq	40(%rax), %rdx
	movq	32(%rbp), %rax
	movq	%rdx, 8(%rax)
	jmp	.L372
.L371:
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZSt7forwardI5TokenEOT_RNSt16remove_referenceIS1_E4typeE
	movq	%rax, %rdx
	movq	32(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI5TokenSaIS0_EE17_M_realloc_appendIJS0_EEEvDpOT_
.L372:
	movq	32(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI5TokenSaIS0_EE4backEv
	addq	$88, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNKSt6vectorIiSaIiEE5beginEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNKSt6vectorIiSaIiEE5beginEv
	.def	_ZNKSt6vectorIiSaIiEE5beginEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNKSt6vectorIiSaIiEE5beginEv
_ZNKSt6vectorIiSaIiEE5beginEv:
.LFB3999:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rdx
	leaq	-8(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEC1ERKS2_
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNKSt6vectorIiSaIiEE3endEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNKSt6vectorIiSaIiEE3endEv
	.def	_ZNKSt6vectorIiSaIiEE3endEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNKSt6vectorIiSaIiEE3endEv
_ZNKSt6vectorIiSaIiEE3endEv:
.LFB4000:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	leaq	8(%rax), %rdx
	leaq	-8(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEC1ERKS2_
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZN9__gnu_cxxeqIPKiSt6vectorIiSaIiEEEEbRKNS_17__normal_iteratorIT_T0_EESB_,"x"
	.linkonce discard
	.globl	_ZN9__gnu_cxxeqIPKiSt6vectorIiSaIiEEEEbRKNS_17__normal_iteratorIT_T0_EESB_
	.def	_ZN9__gnu_cxxeqIPKiSt6vectorIiSaIiEEEEbRKNS_17__normal_iteratorIT_T0_EESB_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN9__gnu_cxxeqIPKiSt6vectorIiSaIiEEEEbRKNS_17__normal_iteratorIT_T0_EESB_
_ZN9__gnu_cxxeqIPKiSt6vectorIiSaIiEEEEbRKNS_17__normal_iteratorIT_T0_EESB_:
.LFB4001:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$40, %rsp
	.seh_stackalloc	40
	leaq	32(%rsp), %rbp
	.seh_setframe	%rbp, 32
	.seh_endprologue
	movq	%rcx, 32(%rbp)
	movq	%rdx, 40(%rbp)
	movq	32(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNK9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEE4baseEv
	movq	(%rax), %rbx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNK9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEE4baseEv
	movq	(%rax), %rax
	cmpq	%rax, %rbx
	sete	%al
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE4findERKS5_,"x"
	.linkonce discard
	.align 2
	.globl	_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE4findERKS5_
	.def	_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE4findERKS5_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE4findERKS5_
_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE4findERKS5_:
.LFB4005:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$88, %rsp
	.seh_stackalloc	88
	leaq	80(%rsp), %rbp
	.seh_setframe	%rbp, 80
	.seh_endprologue
	movq	%rcx, 32(%rbp)
	movq	%rdx, 40(%rbp)
	movq	32(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE4sizeEv
	movq	%rax, %rbx
	call	_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE22__small_size_thresholdEv
	cmpq	%rbx, %rax
	setnb	%al
	testb	%al, %al
	je	.L381
	movq	32(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE8_M_beginEv
	movq	%rax, -8(%rbp)
	jmp	.L382
.L385:
	movq	-8(%rbp), %rax
	leaq	8(%rax), %rcx
	movq	40(%rbp), %rdx
	movq	32(%rbp), %rax
	movq	%rcx, %r8
	movq	%rax, %rcx
	call	_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE13_M_key_equalsERKS6_RKNS_16_Hash_node_valueIS6_Lb1EEE
	testb	%al, %al
	je	.L383
	movq	-8(%rbp), %rdx
	leaq	-40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt8__detail20_Node_const_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ELb1EEC1EPNS_10_Hash_nodeIS6_Lb1EEE
	movq	-40(%rbp), %rax
	jmp	.L384
.L383:
	movq	-8(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNKSt8__detail10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EE7_M_nextEv
	movq	%rax, -8(%rbp)
.L382:
	cmpq	$0, -8(%rbp)
	jne	.L385
	movq	32(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE3endEv
	jmp	.L384
.L381:
	movq	40(%rbp), %rdx
	movq	32(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERKS6_
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rdx
	movq	32(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE15_M_bucket_indexEy
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %r8
	movq	40(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	32(%rbp), %rax
	movq	%r8, %r9
	movq	%rcx, %r8
	movq	%rax, %rcx
	call	_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE12_M_find_nodeEyRKS5_y
	movq	%rax, %rdx
	leaq	-32(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt8__detail20_Node_const_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ELb1EEC1EPNS_10_Hash_nodeIS6_Lb1EEE
	movq	-32(%rbp), %rax
.L384:
	addq	$88, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE3endEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE3endEv
	.def	_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE3endEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE3endEv
_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE3endEv:
.LFB4006:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	leaq	-8(%rbp), %rax
	movl	$0, %edx
	movq	%rax, %rcx
	call	_ZNSt8__detail20_Node_const_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ELb1EEC1EPNS_10_Hash_nodeIS6_Lb1EEE
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEEC1IPKPKcEET_SO_yRKSC_RKSA_RKS6_St17integral_constantIbLb1EE,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEEC1IPKPKcEET_SO_yRKSC_RKSA_RKS6_St17integral_constantIbLb1EE
	.def	_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEEC1IPKPKcEET_SO_yRKSC_RKSA_RKS6_St17integral_constantIbLb1EE;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEEC1IPKPKcEET_SO_yRKSC_RKSA_RKS6_St17integral_constantIbLb1EE
_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEEC1IPKPKcEET_SO_yRKSC_RKSA_RKS6_St17integral_constantIbLb1EE:
.LFB4069:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$56, %rsp
	.seh_stackalloc	56
	leaq	48(%rsp), %rbp
	.seh_setframe	%rbp, 48
	.seh_endprologue
	movq	%rcx, 32(%rbp)
	movq	%rdx, 40(%rbp)
	movq	%r8, 48(%rbp)
	movq	%r9, 56(%rbp)
	movq	72(%rbp), %r9
	movq	64(%rbp), %r8
	movq	56(%rbp), %rdx
	movq	32(%rbp), %rax
	movq	80(%rbp), %rcx
	movq	%rcx, 32(%rsp)
	movq	%rax, %rcx
.LEHB88:
	call	_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEEC1EyRKSC_RKSA_RKS6_
.LEHE88:
	movq	48(%rbp), %rcx
	movq	40(%rbp), %rdx
	movq	32(%rbp), %rax
	movq	%rcx, %r8
	movq	%rax, %rcx
.LEHB89:
	call	_ZNSt8__detail12_Insert_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_SaIS6_ENS_9_IdentityESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb1ELb1ELb1EEEE6insertIPKPKcEEvT_SO_
.LEHE89:
	jmp	.L391
.L390:
	movq	%rax, %rbx
	movq	32(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEED1Ev
	movq	%rbx, %rax
	movq	%rax, %rcx
.LEHB90:
	call	_Unwind_Resume
	nop
.LEHE90:
.L391:
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA4069:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE4069-.LLSDACSB4069
.LLSDACSB4069:
	.uleb128 .LEHB88-.LFB4069
	.uleb128 .LEHE88-.LEHB88
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB89-.LFB4069
	.uleb128 .LEHE89-.LEHB89
	.uleb128 .L390-.LFB4069
	.uleb128 0
	.uleb128 .LEHB90-.LFB4069
	.uleb128 .LEHE90-.LEHB90
	.uleb128 0
	.uleb128 0
.LLSDACSE4069:
	.section	.text$_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEEC1IPKPKcEET_SO_yRKSC_RKSA_RKS6_St17integral_constantIbLb1EE,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv
	.def	_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv
_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv:
.LFB4073:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE8_M_beginEv
	movq	%rax, %rdx
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEE19_M_deallocate_nodesEPS8_
	movq	16(%rbp), %rax
	movq	8(%rax), %rax
	leaq	0(,%rax,8), %rdx
	movq	16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %r8
	movl	$0, %edx
	movq	%rax, %rcx
	call	memset
	movq	16(%rbp), %rax
	movq	$0, 24(%rax)
	movq	16(%rbp), %rax
	movq	$0, 16(%rax)
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA4073:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE4073-.LLSDACSB4073
.LLSDACSB4073:
.LLSDACSE4073:
	.section	.text$_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE21_M_deallocate_bucketsEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE21_M_deallocate_bucketsEv
	.def	_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE21_M_deallocate_bucketsEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE21_M_deallocate_bucketsEv
_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE21_M_deallocate_bucketsEv:
.LFB4074:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	movq	8(%rax), %rcx
	movq	16(%rbp), %rax
	movq	(%rax), %rdx
	movq	16(%rbp), %rax
	movq	%rcx, %r8
	movq	%rax, %rcx
	call	_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE21_M_deallocate_bucketsEPPNS7_15_Hash_node_baseEy
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZSt8_DestroyIPiEvT_S1_,"x"
	.linkonce discard
	.globl	_ZSt8_DestroyIPiEvT_S1_
	.def	_ZSt8_DestroyIPiEvT_S1_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt8_DestroyIPiEvT_S1_
_ZSt8_DestroyIPiEvT_S1_:
.LFB4080:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	24(%rbp), %rdx
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt12_Destroy_auxILb1EE9__destroyIPiEEvT_S3_
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZZNSt6vectorIiSaIiEE17_M_realloc_appendIJiEEEvDpOT_EN6_GuardC1EPiyRS0_,"x"
	.linkonce discard
	.align 2
	.globl	_ZZNSt6vectorIiSaIiEE17_M_realloc_appendIJiEEEvDpOT_EN6_GuardC1EPiyRS0_
	.def	_ZZNSt6vectorIiSaIiEE17_M_realloc_appendIJiEEEvDpOT_EN6_GuardC1EPiyRS0_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZZNSt6vectorIiSaIiEE17_M_realloc_appendIJiEEEvDpOT_EN6_GuardC1EPiyRS0_
_ZZNSt6vectorIiSaIiEE17_M_realloc_appendIJiEEEvDpOT_EN6_GuardC1EPiyRS0_:
.LFB4088:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	%r8, 32(%rbp)
	movq	%r9, 40(%rbp)
	movq	16(%rbp), %rax
	movq	24(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	16(%rbp), %rax
	movq	32(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movq	16(%rbp), %rax
	movq	40(%rbp), %rdx
	movq	%rdx, 16(%rax)
	nop
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZZNSt6vectorIiSaIiEE17_M_realloc_appendIJiEEEvDpOT_EN6_GuardD1Ev,"x"
	.linkonce discard
	.align 2
	.globl	_ZZNSt6vectorIiSaIiEE17_M_realloc_appendIJiEEEvDpOT_EN6_GuardD1Ev
	.def	_ZZNSt6vectorIiSaIiEE17_M_realloc_appendIJiEEEvDpOT_EN6_GuardD1Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZZNSt6vectorIiSaIiEE17_M_realloc_appendIJiEEEvDpOT_EN6_GuardD1Ev
_ZZNSt6vectorIiSaIiEE17_M_realloc_appendIJiEEEvDpOT_EN6_GuardD1Ev:
.LFB4091:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$64, %rsp
	.seh_stackalloc	64
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L398
	movq	16(%rbp), %rax
	movq	8(%rax), %rax
	movq	16(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	16(%rbp), %rcx
	movq	16(%rcx), %rcx
	movq	%rcx, -8(%rbp)
	movq	%rdx, -16(%rbp)
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rcx, %r8
	movq	%rax, %rcx
	call	_ZNSt15__new_allocatorIiE10deallocateEPiy
	nop
.L398:
	nop
	addq	$64, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJiEEEvDpOT_,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJiEEEvDpOT_
	.def	_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJiEEEvDpOT_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJiEEEvDpOT_
_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJiEEEvDpOT_:
.LFB4085:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$184, %rsp
	.seh_stackalloc	184
	leaq	176(%rsp), %rbp
	.seh_setframe	%rbp, 176
	.seh_endprologue
	movq	%rcx, 32(%rbp)
	movq	%rdx, 40(%rbp)
	movq	32(%rbp), %rax
	leaq	.LC7(%rip), %r8
	movl	$1, %edx
	movq	%rax, %rcx
	call	_ZNKSt6vectorIiSaIiEE12_M_check_lenEyPKc
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	movq	32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	32(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	32(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorIiSaIiEE5beginEv
	movq	%rax, -112(%rbp)
	movq	32(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorIiSaIiEE3endEv
	movq	%rax, -104(%rbp)
	leaq	-112(%rbp), %rdx
	leaq	-104(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN9__gnu_cxxmiIPiSt6vectorIiSaIiEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS8_SB_
	movq	%rax, -32(%rbp)
	movq	32(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rax, %rcx
	call	_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEy
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	32(%rbp), %r8
	movq	-8(%rbp), %rcx
	movq	-40(%rbp), %rdx
	leaq	-144(%rbp), %rax
	movq	%r8, %r9
	movq	%rcx, %r8
	movq	%rax, %rcx
	call	_ZZNSt6vectorIiSaIiEE17_M_realloc_appendIJiEEEvDpOT_EN6_GuardC1EPiyRS0_
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZSt7forwardIiEOT_RNSt16remove_referenceIS0_E4typeE
	movq	%rax, %rbx
	movq	-32(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, %rcx
	call	_ZSt12__to_addressIiEPT_S1_
	movq	32(%rbp), %rdx
	movq	%rdx, -56(%rbp)
	movq	%rax, -64(%rbp)
	movq	%rbx, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, %rcx
	call	_ZSt7forwardIiEOT_RNSt16remove_referenceIS0_E4typeE
	movq	-64(%rbp), %rdx
	movq	%rdx, -80(%rbp)
	movq	%rax, -88(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -96(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, %rdx
	movl	$4, %ecx
	call	_ZnwyPv
	movq	%rax, %rbx
	movq	-88(%rbp), %rax
	movq	%rax, %rcx
	call	_ZSt7forwardIiEOT_RNSt16remove_referenceIS0_E4typeE
	movl	(%rax), %eax
	movl	%eax, (%rbx)
	nop
	nop
	movq	32(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv
	movq	%rax, %rcx
	movq	-40(%rbp), %r8
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rcx, %r9
	movq	%rax, %rcx
	call	_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_
	movq	%rax, -48(%rbp)
	addq	$4, -48(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -144(%rbp)
	movq	32(%rbp), %rax
	movq	16(%rax), %rax
	subq	-16(%rbp), %rax
	sarq	$2, %rax
	movq	%rax, -136(%rbp)
	leaq	-144(%rbp), %rax
	movq	%rax, %rcx
	call	_ZZNSt6vectorIiSaIiEE17_M_realloc_appendIJiEEEvDpOT_EN6_GuardD1Ev
	movq	32(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	32(%rbp), %rax
	movq	-48(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movq	-8(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-40(%rbp), %rax
	addq	%rax, %rdx
	movq	32(%rbp), %rax
	movq	%rdx, 16(%rax)
	nop
	addq	$184, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZSt8_DestroyIP5TokenEvT_S2_,"x"
	.linkonce discard
	.globl	_ZSt8_DestroyIP5TokenEvT_S2_
	.def	_ZSt8_DestroyIP5TokenEvT_S2_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt8_DestroyIP5TokenEvT_S2_
_ZSt8_DestroyIP5TokenEvT_S2_:
.LFB4096:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	24(%rbp), %rdx
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt12_Destroy_auxILb0EE9__destroyIP5TokenEEvT_S4_
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEC1ERKS1_,"x"
	.linkonce discard
	.align 2
	.globl	_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEC1ERKS1_
	.def	_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEC1ERKS1_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEC1ERKS1_
_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEC1ERKS1_:
.LFB4099:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	24(%rbp), %rax
	movq	(%rax), %rdx
	movq	16(%rbp), %rax
	movq	%rdx, (%rax)
	nop
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZSt7forwardIRKiEOT_RNSt16remove_referenceIS2_E4typeE,"x"
	.linkonce discard
	.globl	_ZSt7forwardIRKiEOT_RNSt16remove_referenceIS2_E4typeE
	.def	_ZSt7forwardIRKiEOT_RNSt16remove_referenceIS2_E4typeE;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt7forwardIRKiEOT_RNSt16remove_referenceIS2_E4typeE
_ZSt7forwardIRKiEOT_RNSt16remove_referenceIS2_E4typeE:
.LFB4100:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNKSt6vectorIiSaIiEE12_M_check_lenEyPKc,"x"
	.linkonce discard
	.align 2
	.globl	_ZNKSt6vectorIiSaIiEE12_M_check_lenEyPKc
	.def	_ZNKSt6vectorIiSaIiEE12_M_check_lenEyPKc;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNKSt6vectorIiSaIiEE12_M_check_lenEyPKc
_ZNKSt6vectorIiSaIiEE12_M_check_lenEyPKc:
.LFB4102:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$56, %rsp
	.seh_stackalloc	56
	leaq	48(%rsp), %rbp
	.seh_setframe	%rbp, 48
	.seh_endprologue
	movq	%rcx, 32(%rbp)
	movq	%rdx, 40(%rbp)
	movq	%r8, 48(%rbp)
	movq	32(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNKSt6vectorIiSaIiEE8max_sizeEv
	movq	%rax, %rbx
	movq	32(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNKSt6vectorIiSaIiEE4sizeEv
	subq	%rax, %rbx
	movq	%rbx, %rdx
	movq	40(%rbp), %rax
	cmpq	%rax, %rdx
	setb	%al
	testb	%al, %al
	je	.L406
	movq	48(%rbp), %rax
	movq	%rax, %rcx
	call	_ZSt20__throw_length_errorPKc
.L406:
	movq	32(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNKSt6vectorIiSaIiEE4sizeEv
	movq	%rax, %rbx
	movq	32(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNKSt6vectorIiSaIiEE4sizeEv
	movq	%rax, -16(%rbp)
	leaq	40(%rbp), %rdx
	leaq	-16(%rbp), %rax
	movq	%rax, %rcx
	call	_ZSt3maxIyERKT_S2_S2_
	movq	(%rax), %rax
	addq	%rbx, %rax
	movq	%rax, -8(%rbp)
	movq	32(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNKSt6vectorIiSaIiEE4sizeEv
	cmpq	%rax, -8(%rbp)
	jb	.L407
	movq	32(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNKSt6vectorIiSaIiEE8max_sizeEv
	cmpq	-8(%rbp), %rax
	jnb	.L408
.L407:
	movq	32(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNKSt6vectorIiSaIiEE8max_sizeEv
	jmp	.L409
.L408:
	movq	-8(%rbp), %rax
.L409:
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt6vectorIiSaIiEE5beginEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt6vectorIiSaIiEE5beginEv
	.def	_ZNSt6vectorIiSaIiEE5beginEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt6vectorIiSaIiEE5beginEv
_ZNSt6vectorIiSaIiEE5beginEv:
.LFB4103:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rdx
	leaq	-8(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEC1ERKS1_
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZN9__gnu_cxxmiIPiSt6vectorIiSaIiEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS8_SB_,"x"
	.linkonce discard
	.globl	_ZN9__gnu_cxxmiIPiSt6vectorIiSaIiEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS8_SB_
	.def	_ZN9__gnu_cxxmiIPiSt6vectorIiSaIiEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS8_SB_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN9__gnu_cxxmiIPiSt6vectorIiSaIiEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS8_SB_
_ZN9__gnu_cxxmiIPiSt6vectorIiSaIiEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS8_SB_:
.LFB4104:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$40, %rsp
	.seh_stackalloc	40
	leaq	32(%rsp), %rbp
	.seh_setframe	%rbp, 32
	.seh_endprologue
	movq	%rcx, 32(%rbp)
	movq	%rdx, 40(%rbp)
	movq	32(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEE4baseEv
	movq	(%rax), %rbx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEE4baseEv
	movq	(%rax), %rax
	subq	%rax, %rbx
	movq	%rbx, %rdx
	movq	%rdx, %rax
	sarq	$2, %rax
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEy,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEy
	.def	_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEy;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEy
_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEy:
.LFB4105:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	cmpq	$0, 24(%rbp)
	je	.L416
	movq	16(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	24(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movl	$0, %r8d
	movq	%rax, %rcx
	call	_ZNSt15__new_allocatorIiE8allocateEyPKv
	nop
	jmp	.L418
.L416:
	movl	$0, %eax
.L418:
	addq	$48, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZSt12__to_addressIiEPT_S1_,"x"
	.linkonce discard
	.globl	_ZSt12__to_addressIiEPT_S1_
	.def	_ZSt12__to_addressIiEPT_S1_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt12__to_addressIiEPT_S1_
_ZSt12__to_addressIiEPT_S1_:
.LFB4106:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_,"x"
	.linkonce discard
	.globl	_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_
	.def	_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_
_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_:
.LFB4107:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	%r8, 32(%rbp)
	movq	%r9, 40(%rbp)
	movq	40(%rbp), %r8
	movq	32(%rbp), %rcx
	movq	24(%rbp), %rdx
	movq	16(%rbp), %rax
	movq	%r8, %r9
	movq	%rcx, %r8
	movq	%rax, %rcx
	call	_ZSt12__relocate_aIPiS0_SaIiEET0_T_S3_S2_RT1_
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZSt7forwardI5TokenEOT_RNSt16remove_referenceIS1_E4typeE,"x"
	.linkonce discard
	.globl	_ZSt7forwardI5TokenEOT_RNSt16remove_referenceIS1_E4typeE
	.def	_ZSt7forwardI5TokenEOT_RNSt16remove_referenceIS1_E4typeE;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt7forwardI5TokenEOT_RNSt16remove_referenceIS1_E4typeE
_ZSt7forwardI5TokenEOT_RNSt16remove_referenceIS1_E4typeE:
.LFB4108:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZZNSt6vectorI5TokenSaIS0_EE17_M_realloc_appendIJS0_EEEvDpOT_EN6_GuardC1EPS0_yRS1_,"x"
	.linkonce discard
	.align 2
	.globl	_ZZNSt6vectorI5TokenSaIS0_EE17_M_realloc_appendIJS0_EEEvDpOT_EN6_GuardC1EPS0_yRS1_
	.def	_ZZNSt6vectorI5TokenSaIS0_EE17_M_realloc_appendIJS0_EEEvDpOT_EN6_GuardC1EPS0_yRS1_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZZNSt6vectorI5TokenSaIS0_EE17_M_realloc_appendIJS0_EEEvDpOT_EN6_GuardC1EPS0_yRS1_
_ZZNSt6vectorI5TokenSaIS0_EE17_M_realloc_appendIJS0_EEEvDpOT_EN6_GuardC1EPS0_yRS1_:
.LFB4113:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	%r8, 32(%rbp)
	movq	%r9, 40(%rbp)
	movq	16(%rbp), %rax
	movq	24(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	16(%rbp), %rax
	movq	32(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movq	16(%rbp), %rax
	movq	40(%rbp), %rdx
	movq	%rdx, 16(%rax)
	nop
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZZNSt6vectorI5TokenSaIS0_EE17_M_realloc_appendIJS0_EEEvDpOT_EN6_GuardD1Ev,"x"
	.linkonce discard
	.align 2
	.globl	_ZZNSt6vectorI5TokenSaIS0_EE17_M_realloc_appendIJS0_EEEvDpOT_EN6_GuardD1Ev
	.def	_ZZNSt6vectorI5TokenSaIS0_EE17_M_realloc_appendIJS0_EEEvDpOT_EN6_GuardD1Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZZNSt6vectorI5TokenSaIS0_EE17_M_realloc_appendIJS0_EEEvDpOT_EN6_GuardD1Ev
_ZZNSt6vectorI5TokenSaIS0_EE17_M_realloc_appendIJS0_EEEvDpOT_EN6_GuardD1Ev:
.LFB4116:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$64, %rsp
	.seh_stackalloc	64
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L429
	movq	16(%rbp), %rax
	movq	8(%rax), %rax
	movq	16(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	16(%rbp), %rcx
	movq	16(%rcx), %rcx
	movq	%rcx, -8(%rbp)
	movq	%rdx, -16(%rbp)
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rcx, %r8
	movq	%rax, %rcx
	call	_ZNSt15__new_allocatorI5TokenE10deallocateEPS0_y
	nop
.L429:
	nop
	addq	$64, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt6vectorI5TokenSaIS0_EE17_M_realloc_appendIJS0_EEEvDpOT_,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt6vectorI5TokenSaIS0_EE17_M_realloc_appendIJS0_EEEvDpOT_
	.def	_ZNSt6vectorI5TokenSaIS0_EE17_M_realloc_appendIJS0_EEEvDpOT_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt6vectorI5TokenSaIS0_EE17_M_realloc_appendIJS0_EEEvDpOT_
_ZNSt6vectorI5TokenSaIS0_EE17_M_realloc_appendIJS0_EEEvDpOT_:
.LFB4110:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$184, %rsp
	.seh_stackalloc	184
	leaq	176(%rsp), %rbp
	.seh_setframe	%rbp, 176
	.seh_endprologue
	movq	%rcx, 32(%rbp)
	movq	%rdx, 40(%rbp)
	movq	32(%rbp), %rax
	leaq	.LC7(%rip), %r8
	movl	$1, %edx
	movq	%rax, %rcx
	call	_ZNKSt6vectorI5TokenSaIS0_EE12_M_check_lenEyPKc
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	movq	32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	32(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	32(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI5TokenSaIS0_EE5beginEv
	movq	%rax, -112(%rbp)
	movq	32(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI5TokenSaIS0_EE3endEv
	movq	%rax, -104(%rbp)
	leaq	-112(%rbp), %rdx
	leaq	-104(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN9__gnu_cxxmiIP5TokenSt6vectorIS1_SaIS1_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS9_SC_
	movq	%rax, -32(%rbp)
	movq	32(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rax, %rcx
	call	_ZNSt12_Vector_baseI5TokenSaIS0_EE11_M_allocateEy
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	32(%rbp), %r8
	movq	-8(%rbp), %rcx
	movq	-40(%rbp), %rdx
	leaq	-144(%rbp), %rax
	movq	%r8, %r9
	movq	%rcx, %r8
	movq	%rax, %rcx
	call	_ZZNSt6vectorI5TokenSaIS0_EE17_M_realloc_appendIJS0_EEEvDpOT_EN6_GuardC1EPS0_yRS1_
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZSt7forwardI5TokenEOT_RNSt16remove_referenceIS1_E4typeE
	movq	%rax, %rbx
	movq	-32(%rbp), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, %rcx
	call	_ZSt12__to_addressI5TokenEPT_S2_
	movq	32(%rbp), %rdx
	movq	%rdx, -56(%rbp)
	movq	%rax, -64(%rbp)
	movq	%rbx, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, %rcx
	call	_ZSt7forwardI5TokenEOT_RNSt16remove_referenceIS1_E4typeE
	movq	-64(%rbp), %rdx
	movq	%rdx, -80(%rbp)
	movq	%rax, -88(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -96(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, %rdx
	movl	$40, %ecx
	call	_ZnwyPv
	movq	%rax, %rbx
	movq	-88(%rbp), %rax
	movq	%rax, %rcx
	call	_ZSt7forwardI5TokenEOT_RNSt16remove_referenceIS1_E4typeE
	movq	%rax, %rdx
	movq	%rbx, %rcx
	call	_ZN5TokenC1EOS_
	nop
	nop
	movq	32(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt12_Vector_baseI5TokenSaIS0_EE19_M_get_Tp_allocatorEv
	movq	%rax, %rcx
	movq	-40(%rbp), %r8
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rcx, %r9
	movq	%rax, %rcx
	call	_ZNSt6vectorI5TokenSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_
	movq	%rax, -48(%rbp)
	addq	$40, -48(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -144(%rbp)
	movq	32(%rbp), %rax
	movq	16(%rax), %rax
	subq	-16(%rbp), %rax
	sarq	$3, %rax
	movq	%rax, %rdx
	movabsq	$-3689348814741910323, %rax
	imulq	%rdx, %rax
	movq	%rax, -136(%rbp)
	leaq	-144(%rbp), %rax
	movq	%rax, %rcx
	call	_ZZNSt6vectorI5TokenSaIS0_EE17_M_realloc_appendIJS0_EEEvDpOT_EN6_GuardD1Ev
	movq	32(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	32(%rbp), %rax
	movq	-48(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movq	-8(%rbp), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	addq	%rax, %rdx
	movq	32(%rbp), %rax
	movq	%rdx, 16(%rax)
	nop
	addq	$184, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt6vectorI5TokenSaIS0_EE4backEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt6vectorI5TokenSaIS0_EE4backEv
	.def	_ZNSt6vectorI5TokenSaIS0_EE4backEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt6vectorI5TokenSaIS0_EE4backEv
_ZNSt6vectorI5TokenSaIS0_EE4backEv:
.LFB4120:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI5TokenSaIS0_EE3endEv
	movq	%rax, -8(%rbp)
	leaq	-8(%rbp), %rax
	movl	$1, %edx
	movq	%rax, %rcx
	call	_ZNK9__gnu_cxx17__normal_iteratorIP5TokenSt6vectorIS1_SaIS1_EEEmiEx
	movq	%rax, -16(%rbp)
	leaq	-16(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNK9__gnu_cxx17__normal_iteratorIP5TokenSt6vectorIS1_SaIS1_EEEdeEv
	addq	$48, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEC1ERKS2_,"x"
	.linkonce discard
	.align 2
	.globl	_ZN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEC1ERKS2_
	.def	_ZN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEC1ERKS2_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEC1ERKS2_
_ZN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEC1ERKS2_:
.LFB4123:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	24(%rbp), %rax
	movq	(%rax), %rdx
	movq	16(%rbp), %rax
	movq	%rdx, (%rax)
	nop
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNK9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEE4baseEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNK9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEE4baseEv
	.def	_ZNK9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEE4baseEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNK9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEE4baseEv
_ZNK9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEE4baseEv:
.LFB4124:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE4sizeEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE4sizeEv
	.def	_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE4sizeEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE4sizeEv
_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE4sizeEv:
.LFB4128:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	movq	24(%rax), %rax
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE22__small_size_thresholdEv,"x"
	.linkonce discard
	.globl	_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE22__small_size_thresholdEv
	.def	_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE22__small_size_thresholdEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE22__small_size_thresholdEv
_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE22__small_size_thresholdEv:
.LFB4129:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	call	_ZNSt8__detail22_Hashtable_hash_traitsISt4hashINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE22__small_size_thresholdEv
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE8_M_beginEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE8_M_beginEv
	.def	_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE8_M_beginEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE8_M_beginEv
_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE8_M_beginEv:
.LFB4130:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	movq	16(%rax), %rax
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNKSt8__detail10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EE7_M_nextEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNKSt8__detail10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EE7_M_nextEv
	.def	_ZNKSt8__detail10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EE7_M_nextEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNKSt8__detail10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EE7_M_nextEv
_ZNKSt8__detail10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EE7_M_nextEv:
.LFB4131:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	movq	(%rax), %rax
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE13_M_key_equalsERKS6_RKNS_16_Hash_node_valueIS6_Lb1EEE,"x"
	.linkonce discard
	.align 2
	.globl	_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE13_M_key_equalsERKS6_RKNS_16_Hash_node_valueIS6_Lb1EEE
	.def	_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE13_M_key_equalsERKS6_RKNS_16_Hash_node_valueIS6_Lb1EEE;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE13_M_key_equalsERKS6_RKNS_16_Hash_node_valueIS6_Lb1EEE
_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE13_M_key_equalsERKS6_RKNS_16_Hash_node_valueIS6_Lb1EEE:
.LFB4132:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$72, %rsp
	.seh_stackalloc	72
	leaq	64(%rsp), %rbp
	.seh_setframe	%rbp, 64
	.seh_endprologue
	movq	%rcx, 32(%rbp)
	movq	%rdx, 40(%rbp)
	movq	%r8, 48(%rbp)
	movq	32(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE5_M_eqEv
	movq	%rax, %rbx
	movq	48(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNK9__gnu_cxx16__aligned_bufferINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE6_M_ptrEv
	movq	%rax, %rdx
	nop
	nop
	leaq	-17(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNKSt8__detail9_IdentityclIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEOT_SB_
	movq	%rax, %rdx
	movq	40(%rbp), %rax
	movq	%rdx, %r8
	movq	%rax, %rdx
	movq	%rbx, %rcx
	call	_ZNKSt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_
	addq	$72, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt8__detail20_Node_const_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ELb1EEC1EPNS_10_Hash_nodeIS6_Lb1EEE,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt8__detail20_Node_const_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ELb1EEC1EPNS_10_Hash_nodeIS6_Lb1EEE
	.def	_ZNSt8__detail20_Node_const_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ELb1EEC1EPNS_10_Hash_nodeIS6_Lb1EEE;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt8__detail20_Node_const_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ELb1EEC1EPNS_10_Hash_nodeIS6_Lb1EEE
_ZNSt8__detail20_Node_const_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ELb1EEC1EPNS_10_Hash_nodeIS6_Lb1EEE:
.LFB4135:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	16(%rbp), %rax
	movq	24(%rbp), %rdx
	movq	%rax, %rcx
	call	_ZNSt8__detail19_Node_iterator_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEC2EPNS_10_Hash_nodeIS6_Lb1EEE
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERKS6_,"x"
	.linkonce discard
	.align 2
	.globl	_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERKS6_
	.def	_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERKS6_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERKS6_
_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERKS6_:
.LFB4136:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE7_M_hashEv
	movq	%rax, %rcx
	movq	24(%rbp), %rax
	movq	%rax, %rdx
	call	_ZNKSt15__str_hash_baseIcSaIcENSt7__cxx1112basic_stringIcSt11char_traitsIcES0_EEEclERKS5_
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE15_M_bucket_indexEy,"x"
	.linkonce discard
	.align 2
	.globl	_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE15_M_bucket_indexEy
	.def	_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE15_M_bucket_indexEy;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE15_M_bucket_indexEy
_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE15_M_bucket_indexEy:
.LFB4137:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	16(%rbp), %rax
	movq	8(%rax), %rcx
	movq	24(%rbp), %rdx
	movq	16(%rbp), %rax
	movq	%rcx, %r8
	movq	%rax, %rcx
	call	_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE15_M_bucket_indexEyy
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE12_M_find_nodeEyRKS5_y,"x"
	.linkonce discard
	.align 2
	.globl	_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE12_M_find_nodeEyRKS5_y
	.def	_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE12_M_find_nodeEyRKS5_y;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE12_M_find_nodeEyRKS5_y
_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE12_M_find_nodeEyRKS5_y:
.LFB4138:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	%r8, 32(%rbp)
	movq	%r9, 40(%rbp)
	movq	40(%rbp), %r8
	movq	32(%rbp), %rcx
	movq	24(%rbp), %rdx
	movq	16(%rbp), %rax
	movq	%r8, %r9
	movq	%rcx, %r8
	movq	%rax, %rcx
	call	_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE19_M_find_before_nodeEyRKS5_y
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L455
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	jmp	.L456
.L455:
	movl	$0, %eax
.L456:
	addq	$48, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEEC1EyRKSC_RKSA_RKS6_,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEEC1EyRKSC_RKSA_RKS6_
	.def	_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEEC1EyRKSC_RKSA_RKS6_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEEC1EyRKSC_RKSA_RKS6_
_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEEC1EyRKSC_RKSA_RKS6_:
.LFB4190:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$56, %rsp
	.seh_stackalloc	56
	leaq	48(%rsp), %rbp
	.seh_setframe	%rbp, 48
	.seh_endprologue
	movq	%rcx, 32(%rbp)
	movq	%rdx, 40(%rbp)
	movq	%r8, 48(%rbp)
	movq	%r9, 56(%rbp)
	movq	64(%rbp), %r8
	movq	56(%rbp), %rcx
	movq	48(%rbp), %rdx
	movq	32(%rbp), %rax
	movq	%r8, %r9
	movq	%rcx, %r8
	movq	%rax, %rcx
.LEHB91:
	call	_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEEC1ERKSC_RKSA_RKS6_
.LEHE91:
	movq	32(%rbp), %rax
	leaq	32(%rax), %rcx
	movq	40(%rbp), %rax
	movq	%rax, %rdx
.LEHB92:
	call	_ZNKSt8__detail20_Prime_rehash_policy11_M_next_bktEy
	movq	%rax, -8(%rbp)
	movq	32(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	-8(%rbp), %rax
	jnb	.L461
	movq	-8(%rbp), %rdx
	movq	32(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE19_M_allocate_bucketsEy
.LEHE92:
	movq	32(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	32(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, 8(%rax)
	jmp	.L461
.L460:
	movq	%rax, %rbx
	movq	32(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEED1Ev
	movq	%rbx, %rax
	movq	%rax, %rcx
.LEHB93:
	call	_Unwind_Resume
.LEHE93:
.L461:
	nop
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA4190:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE4190-.LLSDACSB4190
.LLSDACSB4190:
	.uleb128 .LEHB91-.LFB4190
	.uleb128 .LEHE91-.LEHB91
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB92-.LFB4190
	.uleb128 .LEHE92-.LEHB92
	.uleb128 .L460-.LFB4190
	.uleb128 0
	.uleb128 .LEHB93-.LFB4190
	.uleb128 .LEHE93-.LEHB93
	.uleb128 0
	.uleb128 0
.LLSDACSE4190:
	.section	.text$_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEEC1EyRKSC_RKSA_RKS6_,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_ZNSt8__detail12_Insert_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_SaIS6_ENS_9_IdentityESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb1ELb1ELb1EEEE6insertIPKPKcEEvT_SO_,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt8__detail12_Insert_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_SaIS6_ENS_9_IdentityESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb1ELb1ELb1EEEE6insertIPKPKcEEvT_SO_
	.def	_ZNSt8__detail12_Insert_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_SaIS6_ENS_9_IdentityESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb1ELb1ELb1EEEE6insertIPKPKcEEvT_SO_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt8__detail12_Insert_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_SaIS6_ENS_9_IdentityESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb1ELb1ELb1EEEE6insertIPKPKcEEvT_SO_
_ZNSt8__detail12_Insert_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_SaIS6_ENS_9_IdentityESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb1ELb1ELb1EEEE6insertIPKPKcEEvT_SO_:
.LFB4191:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	%r8, 32(%rbp)
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt8__detail12_Insert_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_SaIS6_ENS_9_IdentityESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb1ELb1ELb1EEEE20_M_conjure_hashtableEv
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rdx
	leaq	-16(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt8__detail10_AllocNodeISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEEC1ERNS_16_Hashtable_allocIS9_EE
	leaq	-16(%rbp), %r8
	movq	32(%rbp), %rcx
	movq	24(%rbp), %rdx
	movq	16(%rbp), %rax
	movq	%r8, %r9
	movq	%rcx, %r8
	movq	%rax, %rcx
	call	_ZNSt8__detail12_Insert_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_SaIS6_ENS_9_IdentityESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb1ELb1ELb1EEEE15_M_insert_rangeIPKPKcNS_10_AllocNodeISaINS_10_Hash_nodeIS6_Lb1EEEEEEEEvT_ST_RKT0_St17integral_constantIbLb1EE
	nop
	addq	$48, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt15__new_allocatorINSt8__detail10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEED2Ev,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt15__new_allocatorINSt8__detail10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEED2Ev
	.def	_ZNSt15__new_allocatorINSt8__detail10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEED2Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt15__new_allocatorINSt8__detail10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEED2Ev
_ZNSt15__new_allocatorINSt8__detail10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEED2Ev:
.LFB4193:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	nop
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEE19_M_deallocate_nodesEPS8_,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEE19_M_deallocate_nodesEPS8_
	.def	_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEE19_M_deallocate_nodesEPS8_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEE19_M_deallocate_nodesEPS8_
_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEE19_M_deallocate_nodesEPS8_:
.LFB4195:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	jmp	.L466
.L467:
	movq	24(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	24(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNKSt8__detail10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EE7_M_nextEv
	movq	%rax, 24(%rbp)
	movq	-8(%rbp), %rdx
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEE18_M_deallocate_nodeEPS8_
.L466:
	cmpq	$0, 24(%rbp)
	jne	.L467
	nop
	nop
	addq	$48, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE21_M_deallocate_bucketsEPPNS7_15_Hash_node_baseEy,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE21_M_deallocate_bucketsEPPNS7_15_Hash_node_baseEy
	.def	_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE21_M_deallocate_bucketsEPPNS7_15_Hash_node_baseEy;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE21_M_deallocate_bucketsEPPNS7_15_Hash_node_baseEy
_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE21_M_deallocate_bucketsEPPNS7_15_Hash_node_baseEy:
.LFB4196:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	%r8, 32(%rbp)
	movq	24(%rbp), %rdx
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE21_M_uses_single_bucketEPPNS7_15_Hash_node_baseE
	testb	%al, %al
	jne	.L471
	movq	32(%rbp), %rcx
	movq	24(%rbp), %rdx
	movq	16(%rbp), %rax
	movq	%rcx, %r8
	movq	%rax, %rcx
	call	_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEE21_M_deallocate_bucketsEPPNS_15_Hash_node_baseEy
	jmp	.L468
.L471:
	nop
.L468:
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt15__new_allocatorIiE10deallocateEPiy,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt15__new_allocatorIiE10deallocateEPiy
	.def	_ZNSt15__new_allocatorIiE10deallocateEPiy;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt15__new_allocatorIiE10deallocateEPiy
_ZNSt15__new_allocatorIiE10deallocateEPiy:
.LFB4199:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	%r8, 32(%rbp)
	movq	32(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	24(%rbp), %rax
	movq	%rax, %rcx
	call	_ZdlPvy
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt12_Destroy_auxILb1EE9__destroyIPiEEvT_S3_,"x"
	.linkonce discard
	.globl	_ZNSt12_Destroy_auxILb1EE9__destroyIPiEEvT_S3_
	.def	_ZNSt12_Destroy_auxILb1EE9__destroyIPiEEvT_S3_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt12_Destroy_auxILb1EE9__destroyIPiEEvT_S3_
_ZNSt12_Destroy_auxILb1EE9__destroyIPiEEvT_S3_:
.LFB4200:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	nop
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt15__new_allocatorI5TokenE10deallocateEPS0_y,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt15__new_allocatorI5TokenE10deallocateEPS0_y
	.def	_ZNSt15__new_allocatorI5TokenE10deallocateEPS0_y;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt15__new_allocatorI5TokenE10deallocateEPS0_y
_ZNSt15__new_allocatorI5TokenE10deallocateEPS0_y:
.LFB4203:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	%r8, 32(%rbp)
	movq	32(%rbp), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	24(%rbp), %rax
	movq	%rax, %rcx
	call	_ZdlPvy
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt12_Destroy_auxILb0EE9__destroyIP5TokenEEvT_S4_,"x"
	.linkonce discard
	.globl	_ZNSt12_Destroy_auxILb0EE9__destroyIP5TokenEEvT_S4_
	.def	_ZNSt12_Destroy_auxILb0EE9__destroyIP5TokenEEvT_S4_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt12_Destroy_auxILb0EE9__destroyIP5TokenEEvT_S4_
_ZNSt12_Destroy_auxILb0EE9__destroyIP5TokenEEvT_S4_:
.LFB4204:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	jmp	.L478
.L479:
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	call	_ZSt11__addressofI5TokenEPT_RS1_
	movq	%rax, %rcx
	call	_ZSt8_DestroyI5TokenEvPT_
	addq	$40, 16(%rbp)
.L478:
	movq	16(%rbp), %rax
	cmpq	24(%rbp), %rax
	jne	.L479
	nop
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNKSt6vectorIiSaIiEE8max_sizeEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNKSt6vectorIiSaIiEE8max_sizeEv
	.def	_ZNKSt6vectorIiSaIiEE8max_sizeEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNKSt6vectorIiSaIiEE8max_sizeEv
_ZNKSt6vectorIiSaIiEE8max_sizeEv:
.LFB4205:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNKSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv
	movq	%rax, %rcx
	call	_ZNSt6vectorIiSaIiEE11_S_max_sizeERKS0_
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEE4baseEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEE4baseEv
	.def	_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEE4baseEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEE4baseEv
_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEE4baseEv:
.LFB4206:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZSt12__relocate_aIPiS0_SaIiEET0_T_S3_S2_RT1_,"x"
	.linkonce discard
	.globl	_ZSt12__relocate_aIPiS0_SaIiEET0_T_S3_S2_RT1_
	.def	_ZSt12__relocate_aIPiS0_SaIiEET0_T_S3_S2_RT1_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt12__relocate_aIPiS0_SaIiEET0_T_S3_S2_RT1_
_ZSt12__relocate_aIPiS0_SaIiEET0_T_S3_S2_RT1_:
.LFB4208:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$32, %rsp
	.seh_stackalloc	32
	leaq	32(%rsp), %rbp
	.seh_setframe	%rbp, 32
	.seh_endprologue
	movq	%rcx, 32(%rbp)
	movq	%rdx, 40(%rbp)
	movq	%r8, 48(%rbp)
	movq	%r9, 56(%rbp)
	movq	48(%rbp), %rax
	movq	%rax, %rcx
	call	_ZSt12__niter_baseIPiET_S1_
	movq	%rax, %rsi
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZSt12__niter_baseIPiET_S1_
	movq	%rax, %rbx
	movq	32(%rbp), %rax
	movq	%rax, %rcx
	call	_ZSt12__niter_baseIPiET_S1_
	movq	56(%rbp), %rdx
	movq	%rdx, %r9
	movq	%rsi, %r8
	movq	%rbx, %rdx
	movq	%rax, %rcx
	call	_ZSt14__relocate_a_1IiiENSt9enable_ifIXsrSt24__is_bitwise_relocatableIT_vE5valueEPS2_E4typeES4_S4_S4_RSaIT0_E
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZN5TokenC1EOS_,"x"
	.linkonce discard
	.align 2
	.globl	_ZN5TokenC1EOS_
	.def	_ZN5TokenC1EOS_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5TokenC1EOS_
_ZN5TokenC1EOS_:
.LFB4212:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	24(%rbp), %rax
	movl	(%rax), %edx
	movq	16(%rbp), %rax
	movl	%edx, (%rax)
	movq	16(%rbp), %rax
	addq	$8, %rax
	movq	24(%rbp), %rdx
	addq	$8, %rdx
	movq	%rax, %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EOS4_
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNKSt6vectorI5TokenSaIS0_EE12_M_check_lenEyPKc,"x"
	.linkonce discard
	.align 2
	.globl	_ZNKSt6vectorI5TokenSaIS0_EE12_M_check_lenEyPKc
	.def	_ZNKSt6vectorI5TokenSaIS0_EE12_M_check_lenEyPKc;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNKSt6vectorI5TokenSaIS0_EE12_M_check_lenEyPKc
_ZNKSt6vectorI5TokenSaIS0_EE12_M_check_lenEyPKc:
.LFB4213:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$56, %rsp
	.seh_stackalloc	56
	leaq	48(%rsp), %rbp
	.seh_setframe	%rbp, 48
	.seh_endprologue
	movq	%rcx, 32(%rbp)
	movq	%rdx, 40(%rbp)
	movq	%r8, 48(%rbp)
	movq	32(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNKSt6vectorI5TokenSaIS0_EE8max_sizeEv
	movq	%rax, %rbx
	movq	32(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNKSt6vectorI5TokenSaIS0_EE4sizeEv
	subq	%rax, %rbx
	movq	%rbx, %rdx
	movq	40(%rbp), %rax
	cmpq	%rax, %rdx
	setb	%al
	testb	%al, %al
	je	.L488
	movq	48(%rbp), %rax
	movq	%rax, %rcx
	call	_ZSt20__throw_length_errorPKc
.L488:
	movq	32(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNKSt6vectorI5TokenSaIS0_EE4sizeEv
	movq	%rax, %rbx
	movq	32(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNKSt6vectorI5TokenSaIS0_EE4sizeEv
	movq	%rax, -16(%rbp)
	leaq	40(%rbp), %rdx
	leaq	-16(%rbp), %rax
	movq	%rax, %rcx
	call	_ZSt3maxIyERKT_S2_S2_
	movq	(%rax), %rax
	addq	%rbx, %rax
	movq	%rax, -8(%rbp)
	movq	32(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNKSt6vectorI5TokenSaIS0_EE4sizeEv
	cmpq	%rax, -8(%rbp)
	jb	.L489
	movq	32(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNKSt6vectorI5TokenSaIS0_EE8max_sizeEv
	cmpq	-8(%rbp), %rax
	jnb	.L490
.L489:
	movq	32(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNKSt6vectorI5TokenSaIS0_EE8max_sizeEv
	jmp	.L491
.L490:
	movq	-8(%rbp), %rax
.L491:
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt6vectorI5TokenSaIS0_EE3endEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt6vectorI5TokenSaIS0_EE3endEv
	.def	_ZNSt6vectorI5TokenSaIS0_EE3endEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt6vectorI5TokenSaIS0_EE3endEv
_ZNSt6vectorI5TokenSaIS0_EE3endEv:
.LFB4214:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	leaq	8(%rax), %rdx
	leaq	-8(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN9__gnu_cxx17__normal_iteratorIP5TokenSt6vectorIS1_SaIS1_EEEC1ERKS2_
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt6vectorI5TokenSaIS0_EE5beginEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt6vectorI5TokenSaIS0_EE5beginEv
	.def	_ZNSt6vectorI5TokenSaIS0_EE5beginEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt6vectorI5TokenSaIS0_EE5beginEv
_ZNSt6vectorI5TokenSaIS0_EE5beginEv:
.LFB4215:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rdx
	leaq	-8(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN9__gnu_cxx17__normal_iteratorIP5TokenSt6vectorIS1_SaIS1_EEEC1ERKS2_
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZN9__gnu_cxxmiIP5TokenSt6vectorIS1_SaIS1_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS9_SC_,"x"
	.linkonce discard
	.globl	_ZN9__gnu_cxxmiIP5TokenSt6vectorIS1_SaIS1_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS9_SC_
	.def	_ZN9__gnu_cxxmiIP5TokenSt6vectorIS1_SaIS1_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS9_SC_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN9__gnu_cxxmiIP5TokenSt6vectorIS1_SaIS1_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS9_SC_
_ZN9__gnu_cxxmiIP5TokenSt6vectorIS1_SaIS1_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS9_SC_:
.LFB4216:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$40, %rsp
	.seh_stackalloc	40
	leaq	32(%rsp), %rbp
	.seh_setframe	%rbp, 32
	.seh_endprologue
	movq	%rcx, 32(%rbp)
	movq	%rdx, 40(%rbp)
	movq	32(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNK9__gnu_cxx17__normal_iteratorIP5TokenSt6vectorIS1_SaIS1_EEE4baseEv
	movq	(%rax), %rbx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNK9__gnu_cxx17__normal_iteratorIP5TokenSt6vectorIS1_SaIS1_EEE4baseEv
	movq	(%rax), %rax
	subq	%rax, %rbx
	movq	%rbx, %rdx
	sarq	$3, %rdx
	movabsq	$-3689348814741910323, %rax
	imulq	%rdx, %rax
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt12_Vector_baseI5TokenSaIS0_EE11_M_allocateEy,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt12_Vector_baseI5TokenSaIS0_EE11_M_allocateEy
	.def	_ZNSt12_Vector_baseI5TokenSaIS0_EE11_M_allocateEy;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt12_Vector_baseI5TokenSaIS0_EE11_M_allocateEy
_ZNSt12_Vector_baseI5TokenSaIS0_EE11_M_allocateEy:
.LFB4217:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	cmpq	$0, 24(%rbp)
	je	.L500
	movq	16(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	24(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movl	$0, %r8d
	movq	%rax, %rcx
	call	_ZNSt15__new_allocatorI5TokenE8allocateEyPKv
	nop
	jmp	.L502
.L500:
	movl	$0, %eax
.L502:
	addq	$48, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZSt12__to_addressI5TokenEPT_S2_,"x"
	.linkonce discard
	.globl	_ZSt12__to_addressI5TokenEPT_S2_
	.def	_ZSt12__to_addressI5TokenEPT_S2_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt12__to_addressI5TokenEPT_S2_
_ZSt12__to_addressI5TokenEPT_S2_:
.LFB4218:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt6vectorI5TokenSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_,"x"
	.linkonce discard
	.globl	_ZNSt6vectorI5TokenSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_
	.def	_ZNSt6vectorI5TokenSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt6vectorI5TokenSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_
_ZNSt6vectorI5TokenSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_:
.LFB4219:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	%r8, 32(%rbp)
	movq	%r9, 40(%rbp)
	movq	40(%rbp), %r8
	movq	32(%rbp), %rcx
	movq	24(%rbp), %rdx
	movq	16(%rbp), %rax
	movq	%r8, %r9
	movq	%rcx, %r8
	movq	%rax, %rcx
	call	_ZSt12__relocate_aIP5TokenS1_SaIS0_EET0_T_S4_S3_RT1_
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNK9__gnu_cxx17__normal_iteratorIP5TokenSt6vectorIS1_SaIS1_EEEmiEx,"x"
	.linkonce discard
	.align 2
	.globl	_ZNK9__gnu_cxx17__normal_iteratorIP5TokenSt6vectorIS1_SaIS1_EEEmiEx
	.def	_ZNK9__gnu_cxx17__normal_iteratorIP5TokenSt6vectorIS1_SaIS1_EEEmiEx;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNK9__gnu_cxx17__normal_iteratorIP5TokenSt6vectorIS1_SaIS1_EEEmiEx
_ZNK9__gnu_cxx17__normal_iteratorIP5TokenSt6vectorIS1_SaIS1_EEEmiEx:
.LFB4220:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	16(%rbp), %rax
	movq	(%rax), %rcx
	movq	24(%rbp), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	negq	%rax
	addq	%rcx, %rax
	movq	%rax, -8(%rbp)
	leaq	-8(%rbp), %rdx
	leaq	-16(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN9__gnu_cxx17__normal_iteratorIP5TokenSt6vectorIS1_SaIS1_EEEC1ERKS2_
	movq	-16(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNK9__gnu_cxx17__normal_iteratorIP5TokenSt6vectorIS1_SaIS1_EEEdeEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNK9__gnu_cxx17__normal_iteratorIP5TokenSt6vectorIS1_SaIS1_EEEdeEv
	.def	_ZNK9__gnu_cxx17__normal_iteratorIP5TokenSt6vectorIS1_SaIS1_EEEdeEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNK9__gnu_cxx17__normal_iteratorIP5TokenSt6vectorIS1_SaIS1_EEEdeEv
_ZNK9__gnu_cxx17__normal_iteratorIP5TokenSt6vectorIS1_SaIS1_EEEdeEv:
.LFB4221:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	movq	(%rax), %rax
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt8__detail22_Hashtable_hash_traitsISt4hashINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE22__small_size_thresholdEv,"x"
	.linkonce discard
	.globl	_ZNSt8__detail22_Hashtable_hash_traitsISt4hashINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE22__small_size_thresholdEv
	.def	_ZNSt8__detail22_Hashtable_hash_traitsISt4hashINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE22__small_size_thresholdEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt8__detail22_Hashtable_hash_traitsISt4hashINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE22__small_size_thresholdEv
_ZNSt8__detail22_Hashtable_hash_traitsISt4hashINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE22__small_size_thresholdEv:
.LFB4222:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movl	$20, %eax
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE5_M_eqEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE5_M_eqEv
	.def	_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE5_M_eqEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE5_M_eqEv
_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE5_M_eqEv:
.LFB4223:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNKSt8__detail21_Hashtable_ebo_helperILi0ESt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEELb1EE7_M_cgetEv
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNKSt8__detail9_IdentityclIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEOT_SB_,"x"
	.linkonce discard
	.align 2
	.globl	_ZNKSt8__detail9_IdentityclIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEOT_SB_
	.def	_ZNKSt8__detail9_IdentityclIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEOT_SB_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNKSt8__detail9_IdentityclIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEOT_SB_
_ZNKSt8__detail9_IdentityclIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEOT_SB_:
.LFB4225:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	24(%rbp), %rax
	movq	%rax, %rcx
	call	_ZSt7forwardIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEOT_RNSt16remove_referenceIS8_E4typeE
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNKSt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_,"x"
	.linkonce discard
	.align 2
	.globl	_ZNKSt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_
	.def	_ZNKSt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNKSt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_
_ZNKSt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_:
.LFB4226:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	%r8, 32(%rbp)
	movq	32(%rbp), %rdx
	movq	24(%rbp), %rax
	movq	%rax, %rcx
	call	_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt8__detail19_Node_iterator_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEC2EPNS_10_Hash_nodeIS6_Lb1EEE,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt8__detail19_Node_iterator_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEC2EPNS_10_Hash_nodeIS6_Lb1EEE
	.def	_ZNSt8__detail19_Node_iterator_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEC2EPNS_10_Hash_nodeIS6_Lb1EEE;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt8__detail19_Node_iterator_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEC2EPNS_10_Hash_nodeIS6_Lb1EEE
_ZNSt8__detail19_Node_iterator_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEC2EPNS_10_Hash_nodeIS6_Lb1EEE:
.LFB4228:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	16(%rbp), %rax
	movq	24(%rbp), %rdx
	movq	%rdx, (%rax)
	nop
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE7_M_hashEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE7_M_hashEv
	.def	_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE7_M_hashEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE7_M_hashEv
_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE7_M_hashEv:
.LFB4230:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNKSt8__detail21_Hashtable_ebo_helperILi1ESt4hashINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEELb1EE7_M_cgetEv
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNKSt15__str_hash_baseIcSaIcENSt7__cxx1112basic_stringIcSt11char_traitsIcES0_EEEclERKS5_,"x"
	.linkonce discard
	.align 2
	.globl	_ZNKSt15__str_hash_baseIcSaIcENSt7__cxx1112basic_stringIcSt11char_traitsIcES0_EEEclERKS5_
	.def	_ZNKSt15__str_hash_baseIcSaIcENSt7__cxx1112basic_stringIcSt11char_traitsIcES0_EEEclERKS5_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNKSt15__str_hash_baseIcSaIcENSt7__cxx1112basic_stringIcSt11char_traitsIcES0_EEEclERKS5_
_ZNKSt15__str_hash_baseIcSaIcENSt7__cxx1112basic_stringIcSt11char_traitsIcES0_EEEclERKS5_:
.LFB4231:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$40, %rsp
	.seh_stackalloc	40
	leaq	32(%rsp), %rbp
	.seh_setframe	%rbp, 32
	.seh_endprologue
	movq	%rcx, 32(%rbp)
	movq	%rdx, 40(%rbp)
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6lengthEv
	movq	%rax, %rbx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4dataEv
	movl	$3339675911, %r8d
	movq	%rbx, %rdx
	movq	%rax, %rcx
	call	_ZNSt10_Hash_impl4hashEPKvyy
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA4231:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE4231-.LLSDACSB4231
.LLSDACSB4231:
.LLSDACSE4231:
	.section	.text$_ZNKSt15__str_hash_baseIcSaIcENSt7__cxx1112basic_stringIcSt11char_traitsIcES0_EEEclERKS5_,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE15_M_bucket_indexEyy,"x"
	.linkonce discard
	.align 2
	.globl	_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE15_M_bucket_indexEyy
	.def	_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE15_M_bucket_indexEyy;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE15_M_bucket_indexEyy
_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE15_M_bucket_indexEyy:
.LFB4232:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	%r8, 32(%rbp)
	movq	32(%rbp), %rcx
	movq	24(%rbp), %rdx
	leaq	-1(%rbp), %rax
	movq	%rcx, %r8
	movq	%rax, %rcx
	call	_ZNKSt8__detail18_Mod_range_hashingclEyy
	addq	$48, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE19_M_find_before_nodeEyRKS5_y,"x"
	.linkonce discard
	.align 2
	.globl	_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE19_M_find_before_nodeEyRKS5_y
	.def	_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE19_M_find_before_nodeEyRKS5_y;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE19_M_find_before_nodeEyRKS5_y
_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE19_M_find_before_nodeEyRKS5_y:
.LFB4233:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	%r8, 32(%rbp)
	movq	%r9, 40(%rbp)
	movq	16(%rbp), %rax
	movq	(%rax), %rax
	movq	24(%rbp), %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L528
	movl	$0, %eax
	jmp	.L529
.L528:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
.L536:
	movq	-16(%rbp), %rax
	leaq	8(%rax), %r8
	movq	40(%rbp), %rcx
	movq	32(%rbp), %rdx
	movq	16(%rbp), %rax
	movq	%r8, %r9
	movq	%rcx, %r8
	movq	%rax, %rcx
	call	_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_equalsERKS6_yRKNS_16_Hash_node_valueIS6_Lb1EEE
	testb	%al, %al
	je	.L530
	movq	-8(%rbp), %rax
	jmp	.L529
.L530:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L531
	movq	-16(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNKSt8__detail10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EE7_M_nextEv
	leaq	8(%rax), %rdx
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE15_M_bucket_indexERKNS7_16_Hash_node_valueIS5_Lb1EEE
	cmpq	%rax, 24(%rbp)
	je	.L532
.L531:
	movl	$1, %eax
	jmp	.L533
.L532:
	movl	$0, %eax
.L533:
	testb	%al, %al
	jne	.L538
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNKSt8__detail10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EE7_M_nextEv
	movq	%rax, -16(%rbp)
	jmp	.L536
.L538:
	nop
	movl	$0, %eax
.L529:
	addq	$48, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEEC1ERKSC_RKSA_RKS6_,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEEC1ERKSC_RKSA_RKS6_
	.def	_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEEC1ERKSC_RKSA_RKS6_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEEC1ERKSC_RKSA_RKS6_
_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEEC1ERKSC_RKSA_RKS6_:
.LFB4254:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$72, %rsp
	.seh_stackalloc	72
	leaq	64(%rsp), %rbp
	.seh_setframe	%rbp, 64
	.seh_endprologue
	movq	%rcx, 32(%rbp)
	movq	%rdx, 40(%rbp)
	movq	%r8, 48(%rbp)
	movq	%r9, 56(%rbp)
	movq	48(%rbp), %rcx
	movq	40(%rbp), %rdx
	movq	32(%rbp), %rax
	movq	%rcx, %r8
	movq	%rax, %rcx
.LEHB94:
	call	_ZNSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEEC2ERKSB_RKS9_
.LEHE94:
	movq	56(%rbp), %rax
	movq	%rax, -8(%rbp)
	leaq	-17(%rbp), %rax
	movq	%rax, -16(%rbp)
	nop
	nop
	leaq	-17(%rbp), %rdx
	movq	32(%rbp), %rax
	movq	%rax, %rcx
.LEHB95:
	call	_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEEC2IS9_EEOT_
.LEHE95:
	leaq	-17(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt15__new_allocatorINSt8__detail10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEED2Ev
	nop
	movq	32(%rbp), %rax
	movl	%ebx, %edx
	movq	%rax, %rcx
	call	_ZNSt27_Enable_default_constructorILb1ENSt8__detail15_Hash_node_baseEEC2ESt31_Enable_default_constructor_tag
	movq	32(%rbp), %rax
	leaq	48(%rax), %rdx
	movq	32(%rbp), %rax
	movq	%rdx, (%rax)
	movq	32(%rbp), %rax
	movq	$1, 8(%rax)
	movq	32(%rbp), %rax
	addq	$16, %rax
	movq	%rax, %rcx
	call	_ZNSt8__detail15_Hash_node_baseC1Ev
	movq	32(%rbp), %rax
	movq	$0, 24(%rax)
	movq	32(%rbp), %rax
	addq	$32, %rax
	movss	.LC8(%rip), %xmm1
	movq	%rax, %rcx
	call	_ZNSt8__detail20_Prime_rehash_policyC1Ef
	movq	32(%rbp), %rax
	movq	$0, 48(%rax)
	jmp	.L542
.L541:
	movq	%rax, %rbx
	leaq	-17(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt15__new_allocatorINSt8__detail10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEED2Ev
	nop
	movq	%rbx, %rax
	movq	%rax, %rcx
.LEHB96:
	call	_Unwind_Resume
	nop
.LEHE96:
.L542:
	addq	$72, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA4254:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE4254-.LLSDACSB4254
.LLSDACSB4254:
	.uleb128 .LEHB94-.LFB4254
	.uleb128 .LEHE94-.LEHB94
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB95-.LFB4254
	.uleb128 .LEHE95-.LEHB95
	.uleb128 .L541-.LFB4254
	.uleb128 0
	.uleb128 .LEHB96-.LFB4254
	.uleb128 .LEHE96-.LEHB96
	.uleb128 0
	.uleb128 0
.LLSDACSE4254:
	.section	.text$_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEEC1ERKSC_RKSA_RKS6_,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE19_M_allocate_bucketsEy,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE19_M_allocate_bucketsEy
	.def	_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE19_M_allocate_bucketsEy;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE19_M_allocate_bucketsEy
_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE19_M_allocate_bucketsEy:
.LFB4255:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	cmpq	$1, 24(%rbp)
	sete	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	je	.L544
	movq	16(%rbp), %rax
	movq	$0, 48(%rax)
	movq	16(%rbp), %rax
	addq	$48, %rax
	jmp	.L545
.L544:
	movq	24(%rbp), %rdx
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEE19_M_allocate_bucketsEy
	nop
.L545:
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt8__detail12_Insert_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_SaIS6_ENS_9_IdentityESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb1ELb1ELb1EEEE20_M_conjure_hashtableEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt8__detail12_Insert_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_SaIS6_ENS_9_IdentityESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb1ELb1ELb1EEEE20_M_conjure_hashtableEv
	.def	_ZNSt8__detail12_Insert_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_SaIS6_ENS_9_IdentityESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb1ELb1ELb1EEEE20_M_conjure_hashtableEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt8__detail12_Insert_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_SaIS6_ENS_9_IdentityESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb1ELb1ELb1EEEE20_M_conjure_hashtableEv
_ZNSt8__detail12_Insert_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_SaIS6_ENS_9_IdentityESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb1ELb1ELb1EEEE20_M_conjure_hashtableEv:
.LFB4256:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt8__detail10_AllocNodeISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEEC1ERNS_16_Hashtable_allocIS9_EE,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt8__detail10_AllocNodeISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEEC1ERNS_16_Hashtable_allocIS9_EE
	.def	_ZNSt8__detail10_AllocNodeISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEEC1ERNS_16_Hashtable_allocIS9_EE;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt8__detail10_AllocNodeISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEEC1ERNS_16_Hashtable_allocIS9_EE
_ZNSt8__detail10_AllocNodeISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEEC1ERNS_16_Hashtable_allocIS9_EE:
.LFB4259:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	16(%rbp), %rax
	movq	24(%rbp), %rdx
	movq	%rdx, (%rax)
	nop
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt8__detail12_Insert_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_SaIS6_ENS_9_IdentityESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb1ELb1ELb1EEEE15_M_insert_rangeIPKPKcNS_10_AllocNodeISaINS_10_Hash_nodeIS6_Lb1EEEEEEEEvT_ST_RKT0_St17integral_constantIbLb1EE,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt8__detail12_Insert_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_SaIS6_ENS_9_IdentityESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb1ELb1ELb1EEEE15_M_insert_rangeIPKPKcNS_10_AllocNodeISaINS_10_Hash_nodeIS6_Lb1EEEEEEEEvT_ST_RKT0_St17integral_constantIbLb1EE
	.def	_ZNSt8__detail12_Insert_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_SaIS6_ENS_9_IdentityESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb1ELb1ELb1EEEE15_M_insert_rangeIPKPKcNS_10_AllocNodeISaINS_10_Hash_nodeIS6_Lb1EEEEEEEEvT_ST_RKT0_St17integral_constantIbLb1EE;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt8__detail12_Insert_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_SaIS6_ENS_9_IdentityESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb1ELb1ELb1EEEE15_M_insert_rangeIPKPKcNS_10_AllocNodeISaINS_10_Hash_nodeIS6_Lb1EEEEEEEEvT_ST_RKT0_St17integral_constantIbLb1EE
_ZNSt8__detail12_Insert_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_SaIS6_ENS_9_IdentityESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb1ELb1ELb1EEEE15_M_insert_rangeIPKPKcNS_10_AllocNodeISaINS_10_Hash_nodeIS6_Lb1EEEEEEEEvT_ST_RKT0_St17integral_constantIbLb1EE:
.LFB4260:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$80, %rsp
	.seh_stackalloc	80
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	%r8, 32(%rbp)
	movq	%r9, 40(%rbp)
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt8__detail12_Insert_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_SaIS6_ENS_9_IdentityESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb1ELb1ELb1EEEE20_M_conjure_hashtableEv
	movq	%rax, -8(%rbp)
	jmp	.L550
.L551:
	leaq	-32(%rbp), %rax
	movq	40(%rbp), %r8
	movq	24(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movq	%r8, %r9
	movq	%rcx, %r8
	movq	%rax, %rcx
	call	_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_insertIRKPKcNS7_10_AllocNodeISaINS7_10_Hash_nodeIS5_Lb1EEEEEEEESt4pairINS7_14_Node_iteratorIS5_Lb1ELb1EEEbEOT_RKT0_St17integral_constantIbLb1EE
	addq	$8, 24(%rbp)
.L550:
	movq	24(%rbp), %rax
	cmpq	32(%rbp), %rax
	jne	.L551
	nop
	nop
	addq	$80, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEE18_M_deallocate_nodeEPS8_,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEE18_M_deallocate_nodeEPS8_
	.def	_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEE18_M_deallocate_nodeEPS8_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEE18_M_deallocate_nodeEPS8_
_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEE18_M_deallocate_nodeEPS8_:
.LFB4262:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$88, %rsp
	.seh_stackalloc	88
	leaq	80(%rsp), %rbp
	.seh_setframe	%rbp, 80
	.seh_endprologue
	movq	%rcx, 32(%rbp)
	movq	%rdx, 40(%rbp)
	movq	40(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN9__gnu_cxx16__aligned_bufferINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE6_M_ptrEv
	movq	%rax, %rbx
	nop
	movq	32(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEE17_M_node_allocatorEv
	movq	%rax, -8(%rbp)
	movq	%rbx, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	nop
	nop
	movq	40(%rbp), %rdx
	movq	32(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEE22_M_deallocate_node_ptrEPS8_
	nop
	addq	$88, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE21_M_uses_single_bucketEPPNS7_15_Hash_node_baseE,"x"
	.linkonce discard
	.align 2
	.globl	_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE21_M_uses_single_bucketEPPNS7_15_Hash_node_baseE
	.def	_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE21_M_uses_single_bucketEPPNS7_15_Hash_node_baseE;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE21_M_uses_single_bucketEPPNS7_15_Hash_node_baseE
_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE21_M_uses_single_bucketEPPNS7_15_Hash_node_baseE:
.LFB4264:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	16(%rbp), %rax
	addq	$48, %rax
	cmpq	%rax, 24(%rbp)
	sete	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	setne	%al
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEE21_M_deallocate_bucketsEPPNS_15_Hash_node_baseEy,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEE21_M_deallocate_bucketsEPPNS_15_Hash_node_baseEy
	.def	_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEE21_M_deallocate_bucketsEPPNS_15_Hash_node_baseEy;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEE21_M_deallocate_bucketsEPPNS_15_Hash_node_baseEy
_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEE21_M_deallocate_bucketsEPPNS_15_Hash_node_baseEy:
.LFB4265:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$80, %rsp
	.seh_stackalloc	80
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	%r8, 32(%rbp)
	movq	24(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt19__ptr_traits_ptr_toIPPNSt8__detail15_Hash_node_baseES2_Lb0EE10pointer_toERS2_
	movq	%rax, -8(%rbp)
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEE17_M_node_allocatorEv
	movq	%rax, -32(%rbp)
	leaq	-41(%rbp), %rax
	movq	%rax, -40(%rbp)
	nop
	nop
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	32(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rcx
	movq	-16(%rbp), %rdx
	leaq	-41(%rbp), %rax
	movq	%rcx, %r8
	movq	%rax, %rcx
	call	_ZNSt15__new_allocatorIPNSt8__detail15_Hash_node_baseEE10deallocateEPS2_y
	nop
	leaq	-41(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt15__new_allocatorIPNSt8__detail15_Hash_node_baseEED2Ev
	nop
	nop
	addq	$80, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZSt11__addressofI5TokenEPT_RS1_,"x"
	.linkonce discard
	.globl	_ZSt11__addressofI5TokenEPT_RS1_
	.def	_ZSt11__addressofI5TokenEPT_RS1_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt11__addressofI5TokenEPT_RS1_
_ZSt11__addressofI5TokenEPT_RS1_:
.LFB4268:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZSt8_DestroyI5TokenEvPT_,"x"
	.linkonce discard
	.globl	_ZSt8_DestroyI5TokenEvPT_
	.def	_ZSt8_DestroyI5TokenEvPT_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt8_DestroyI5TokenEvPT_
_ZSt8_DestroyI5TokenEvPT_:
.LFB4269:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN5TokenD1Ev
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt6vectorIiSaIiEE11_S_max_sizeERKS0_,"x"
	.linkonce discard
	.globl	_ZNSt6vectorIiSaIiEE11_S_max_sizeERKS0_
	.def	_ZNSt6vectorIiSaIiEE11_S_max_sizeERKS0_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt6vectorIiSaIiEE11_S_max_sizeERKS0_
_ZNSt6vectorIiSaIiEE11_S_max_sizeERKS0_:
.LFB4270:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$80, %rsp
	.seh_stackalloc	80
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movabsq	$2305843009213693951, %rax
	movq	%rax, -32(%rbp)
	movq	16(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	movabsq	$2305843009213693951, %rax
	nop
	nop
	movq	%rax, -40(%rbp)
	leaq	-40(%rbp), %rdx
	leaq	-32(%rbp), %rax
	movq	%rax, %rcx
	call	_ZSt3minIyERKT_S2_S2_
	movq	(%rax), %rax
	addq	$80, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNKSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNKSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv
	.def	_ZNKSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNKSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv
_ZNKSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv:
.LFB4271:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt15__new_allocatorIiE8allocateEyPKv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt15__new_allocatorIiE8allocateEyPKv
	.def	_ZNSt15__new_allocatorIiE8allocateEyPKv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt15__new_allocatorIiE8allocateEyPKv
_ZNSt15__new_allocatorIiE8allocateEyPKv:
.LFB4272:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	%r8, 32(%rbp)
	movq	16(%rbp), %rax
	movq	%rax, -8(%rbp)
	movabsq	$2305843009213693951, %rax
	cmpq	24(%rbp), %rax
	setb	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	setne	%al
	testb	%al, %al
	je	.L569
	movabsq	$4611686018427387903, %rax
	cmpq	24(%rbp), %rax
	jnb	.L570
	call	_ZSt28__throw_bad_array_new_lengthv
.L570:
	call	_ZSt17__throw_bad_allocv
.L569:
	movq	24(%rbp), %rax
	salq	$2, %rax
	movq	%rax, %rcx
	call	_Znwy
	nop
	addq	$48, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZSt12__niter_baseIPiET_S1_,"x"
	.linkonce discard
	.globl	_ZSt12__niter_baseIPiET_S1_
	.def	_ZSt12__niter_baseIPiET_S1_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt12__niter_baseIPiET_S1_
_ZSt12__niter_baseIPiET_S1_:
.LFB4274:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZSt14__relocate_a_1IiiENSt9enable_ifIXsrSt24__is_bitwise_relocatableIT_vE5valueEPS2_E4typeES4_S4_S4_RSaIT0_E,"x"
	.linkonce discard
	.globl	_ZSt14__relocate_a_1IiiENSt9enable_ifIXsrSt24__is_bitwise_relocatableIT_vE5valueEPS2_E4typeES4_S4_S4_RSaIT0_E
	.def	_ZSt14__relocate_a_1IiiENSt9enable_ifIXsrSt24__is_bitwise_relocatableIT_vE5valueEPS2_E4typeES4_S4_S4_RSaIT0_E;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt14__relocate_a_1IiiENSt9enable_ifIXsrSt24__is_bitwise_relocatableIT_vE5valueEPS2_E4typeES4_S4_S4_RSaIT0_E
_ZSt14__relocate_a_1IiiENSt9enable_ifIXsrSt24__is_bitwise_relocatableIT_vE5valueEPS2_E4typeES4_S4_S4_RSaIT0_E:
.LFB4275:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	%r8, 32(%rbp)
	movq	%r9, 40(%rbp)
	movq	24(%rbp), %rax
	subq	16(%rbp), %rax
	sarq	$2, %rax
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jle	.L575
	movq	-8(%rbp), %rax
	leaq	0(,%rax,4), %r8
	movq	32(%rbp), %rdx
	movq	16(%rbp), %rax
	movq	%rdx, %rcx
	movq	%r8, %rdx
	movq	%rdx, %r8
	movq	%rax, %rdx
	call	memcpy
.L575:
	movq	-8(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	32(%rbp), %rax
	addq	%rdx, %rax
	addq	$48, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNKSt6vectorI5TokenSaIS0_EE8max_sizeEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNKSt6vectorI5TokenSaIS0_EE8max_sizeEv
	.def	_ZNKSt6vectorI5TokenSaIS0_EE8max_sizeEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNKSt6vectorI5TokenSaIS0_EE8max_sizeEv
_ZNKSt6vectorI5TokenSaIS0_EE8max_sizeEv:
.LFB4276:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNKSt12_Vector_baseI5TokenSaIS0_EE19_M_get_Tp_allocatorEv
	movq	%rax, %rcx
	call	_ZNSt6vectorI5TokenSaIS0_EE11_S_max_sizeERKS1_
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNKSt6vectorI5TokenSaIS0_EE4sizeEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNKSt6vectorI5TokenSaIS0_EE4sizeEv
	.def	_ZNKSt6vectorI5TokenSaIS0_EE4sizeEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNKSt6vectorI5TokenSaIS0_EE4sizeEv
_ZNKSt6vectorI5TokenSaIS0_EE4sizeEv:
.LFB4277:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	movq	8(%rax), %rdx
	movq	16(%rbp), %rax
	movq	(%rax), %rax
	subq	%rax, %rdx
	sarq	$3, %rdx
	movabsq	$-3689348814741910323, %rax
	imulq	%rdx, %rax
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZN9__gnu_cxx17__normal_iteratorIP5TokenSt6vectorIS1_SaIS1_EEEC1ERKS2_,"x"
	.linkonce discard
	.align 2
	.globl	_ZN9__gnu_cxx17__normal_iteratorIP5TokenSt6vectorIS1_SaIS1_EEEC1ERKS2_
	.def	_ZN9__gnu_cxx17__normal_iteratorIP5TokenSt6vectorIS1_SaIS1_EEEC1ERKS2_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN9__gnu_cxx17__normal_iteratorIP5TokenSt6vectorIS1_SaIS1_EEEC1ERKS2_
_ZN9__gnu_cxx17__normal_iteratorIP5TokenSt6vectorIS1_SaIS1_EEEC1ERKS2_:
.LFB4280:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	24(%rbp), %rax
	movq	(%rax), %rdx
	movq	16(%rbp), %rax
	movq	%rdx, (%rax)
	nop
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNK9__gnu_cxx17__normal_iteratorIP5TokenSt6vectorIS1_SaIS1_EEE4baseEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNK9__gnu_cxx17__normal_iteratorIP5TokenSt6vectorIS1_SaIS1_EEE4baseEv
	.def	_ZNK9__gnu_cxx17__normal_iteratorIP5TokenSt6vectorIS1_SaIS1_EEE4baseEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNK9__gnu_cxx17__normal_iteratorIP5TokenSt6vectorIS1_SaIS1_EEE4baseEv
_ZNK9__gnu_cxx17__normal_iteratorIP5TokenSt6vectorIS1_SaIS1_EEE4baseEv:
.LFB4281:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZSt12__relocate_aIP5TokenS1_SaIS0_EET0_T_S4_S3_RT1_,"x"
	.linkonce discard
	.globl	_ZSt12__relocate_aIP5TokenS1_SaIS0_EET0_T_S4_S3_RT1_
	.def	_ZSt12__relocate_aIP5TokenS1_SaIS0_EET0_T_S4_S3_RT1_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt12__relocate_aIP5TokenS1_SaIS0_EET0_T_S4_S3_RT1_
_ZSt12__relocate_aIP5TokenS1_SaIS0_EET0_T_S4_S3_RT1_:
.LFB4283:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$32, %rsp
	.seh_stackalloc	32
	leaq	32(%rsp), %rbp
	.seh_setframe	%rbp, 32
	.seh_endprologue
	movq	%rcx, 32(%rbp)
	movq	%rdx, 40(%rbp)
	movq	%r8, 48(%rbp)
	movq	%r9, 56(%rbp)
	movq	48(%rbp), %rax
	movq	%rax, %rcx
	call	_ZSt12__niter_baseIP5TokenET_S2_
	movq	%rax, %rsi
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZSt12__niter_baseIP5TokenET_S2_
	movq	%rax, %rbx
	movq	32(%rbp), %rax
	movq	%rax, %rcx
	call	_ZSt12__niter_baseIP5TokenET_S2_
	movq	56(%rbp), %rdx
	movq	%rdx, %r9
	movq	%rsi, %r8
	movq	%rbx, %rdx
	movq	%rax, %rcx
	call	_ZSt14__relocate_a_1IP5TokenS1_SaIS0_EET0_T_S4_S3_RT1_
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNKSt8__detail21_Hashtable_ebo_helperILi0ESt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEELb1EE7_M_cgetEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNKSt8__detail21_Hashtable_ebo_helperILi0ESt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEELb1EE7_M_cgetEv
	.def	_ZNKSt8__detail21_Hashtable_ebo_helperILi0ESt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEELb1EE7_M_cgetEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNKSt8__detail21_Hashtable_ebo_helperILi0ESt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEELb1EE7_M_cgetEv
_ZNKSt8__detail21_Hashtable_ebo_helperILi0ESt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEELb1EE7_M_cgetEv:
.LFB4284:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZSt7forwardIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEOT_RNSt16remove_referenceIS8_E4typeE,"x"
	.linkonce discard
	.globl	_ZSt7forwardIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEOT_RNSt16remove_referenceIS8_E4typeE
	.def	_ZSt7forwardIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEOT_RNSt16remove_referenceIS8_E4typeE;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt7forwardIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEOT_RNSt16remove_referenceIS8_E4typeE
_ZSt7forwardIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEOT_RNSt16remove_referenceIS8_E4typeE:
.LFB4286:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_,"x"
	.linkonce discard
	.globl	_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_
	.def	_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_
_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_:
.LFB4287:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$32, %rsp
	.seh_stackalloc	32
	leaq	32(%rsp), %rbp
	.seh_setframe	%rbp, 32
	.seh_endprologue
	movq	%rcx, 32(%rbp)
	movq	%rdx, 40(%rbp)
	movq	32(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4sizeEv
	movq	%rax, %rbx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4sizeEv
	cmpq	%rax, %rbx
	jne	.L591
	movq	32(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4sizeEv
	movq	%rax, %rsi
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4dataEv
	movq	%rax, %rbx
	movq	32(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4dataEv
	movq	%rsi, %r8
	movq	%rbx, %rdx
	movq	%rax, %rcx
	call	_ZNSt11char_traitsIcE7compareEPKcS2_y
	testl	%eax, %eax
	jne	.L591
	movl	$1, %eax
	jmp	.L592
.L591:
	movl	$0, %eax
.L592:
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNKSt8__detail21_Hashtable_ebo_helperILi1ESt4hashINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEELb1EE7_M_cgetEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNKSt8__detail21_Hashtable_ebo_helperILi1ESt4hashINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEELb1EE7_M_cgetEv
	.def	_ZNKSt8__detail21_Hashtable_ebo_helperILi1ESt4hashINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEELb1EE7_M_cgetEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNKSt8__detail21_Hashtable_ebo_helperILi1ESt4hashINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEELb1EE7_M_cgetEv
_ZNKSt8__detail21_Hashtable_ebo_helperILi1ESt4hashINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEELb1EE7_M_cgetEv:
.LFB4288:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_equalsERKS6_yRKNS_16_Hash_node_valueIS6_Lb1EEE,"x"
	.linkonce discard
	.align 2
	.globl	_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_equalsERKS6_yRKNS_16_Hash_node_valueIS6_Lb1EEE
	.def	_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_equalsERKS6_yRKNS_16_Hash_node_valueIS6_Lb1EEE;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_equalsERKS6_yRKNS_16_Hash_node_valueIS6_Lb1EEE
_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_equalsERKS6_yRKNS_16_Hash_node_valueIS6_Lb1EEE:
.LFB4289:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	%r8, 32(%rbp)
	movq	%r9, 40(%rbp)
	movq	40(%rbp), %rax
	leaq	32(%rax), %rdx
	movq	32(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_S_equalsEyRKNS_21_Hash_node_code_cacheILb1EEE
	testb	%al, %al
	je	.L597
	movq	40(%rbp), %rcx
	movq	24(%rbp), %rdx
	movq	16(%rbp), %rax
	movq	%rcx, %r8
	movq	%rax, %rcx
	call	_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE13_M_key_equalsERKS6_RKNS_16_Hash_node_valueIS6_Lb1EEE
	testb	%al, %al
	je	.L597
	movl	$1, %eax
	jmp	.L598
.L597:
	movl	$0, %eax
.L598:
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE15_M_bucket_indexERKNS7_16_Hash_node_valueIS5_Lb1EEE,"x"
	.linkonce discard
	.align 2
	.globl	_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE15_M_bucket_indexERKNS7_16_Hash_node_valueIS5_Lb1EEE
	.def	_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE15_M_bucket_indexERKNS7_16_Hash_node_valueIS5_Lb1EEE;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE15_M_bucket_indexERKNS7_16_Hash_node_valueIS5_Lb1EEE
_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE15_M_bucket_indexERKNS7_16_Hash_node_valueIS5_Lb1EEE:
.LFB4290:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	16(%rbp), %rax
	movq	8(%rax), %rcx
	movq	24(%rbp), %rdx
	movq	16(%rbp), %rax
	movq	%rcx, %r8
	movq	%rax, %rcx
	call	_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE15_M_bucket_indexERKNS_16_Hash_node_valueIS6_Lb1EEEy
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEEC2ERKSB_RKS9_,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEEC2ERKSB_RKS9_
	.def	_ZNSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEEC2ERKSB_RKS9_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEEC2ERKSB_RKS9_
_ZNSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEEC2ERKSB_RKS9_:
.LFB4305:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	%r8, 32(%rbp)
	movq	24(%rbp), %rdx
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EEC2ERKS9_
	movq	32(%rbp), %rdx
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt8__detail21_Hashtable_ebo_helperILi0ESt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEELb1EEC2IRKS8_EEOT_
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEEC2IS9_EEOT_,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEEC2IS9_EEOT_
	.def	_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEEC2IS9_EEOT_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEEC2IS9_EEOT_
_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEEC2IS9_EEOT_:
.LFB4308:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	24(%rbp), %rax
	movq	%rax, %rcx
	call	_ZSt7forwardISaINSt8__detail10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEEOT_RNSt16remove_referenceISA_E4typeE
	movq	%rax, %rdx
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt8__detail21_Hashtable_ebo_helperILi0ESaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEELb1EEC2IS9_EEOT_
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt27_Enable_default_constructorILb1ENSt8__detail15_Hash_node_baseEEC2ESt31_Enable_default_constructor_tag,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt27_Enable_default_constructorILb1ENSt8__detail15_Hash_node_baseEEC2ESt31_Enable_default_constructor_tag
	.def	_ZNSt27_Enable_default_constructorILb1ENSt8__detail15_Hash_node_baseEEC2ESt31_Enable_default_constructor_tag;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt27_Enable_default_constructorILb1ENSt8__detail15_Hash_node_baseEEC2ESt31_Enable_default_constructor_tag
_ZNSt27_Enable_default_constructorILb1ENSt8__detail15_Hash_node_baseEEC2ESt31_Enable_default_constructor_tag:
.LFB4311:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	nop
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEE19_M_allocate_bucketsEy,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEE19_M_allocate_bucketsEy
	.def	_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEE19_M_allocate_bucketsEy;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEE19_M_allocate_bucketsEy
_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEE19_M_allocate_bucketsEy:
.LFB4313:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$88, %rsp
	.seh_stackalloc	88
	leaq	80(%rsp), %rbp
	.seh_setframe	%rbp, 80
	.seh_endprologue
	movq	%rcx, 32(%rbp)
	movq	%rdx, 40(%rbp)
	movq	32(%rbp), %rax
	movq	%rax, %rcx
.LEHB97:
	call	_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEE17_M_node_allocatorEv
.LEHE97:
	movq	%rax, -32(%rbp)
	leaq	-41(%rbp), %rax
	movq	%rax, -40(%rbp)
	nop
	nop
	movq	40(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdx
	leaq	-41(%rbp), %rax
	movl	$0, %r8d
	movq	%rax, %rcx
.LEHB98:
	call	_ZNSt15__new_allocatorIPNSt8__detail15_Hash_node_baseEE8allocateEyPKv
.LEHE98:
	nop
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rcx
	call	_ZSt12__to_addressIPNSt8__detail15_Hash_node_baseEEPT_S4_
	movq	%rax, -16(%rbp)
	movq	40(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %r8
	movl	$0, %edx
	movq	%rax, %rcx
	call	memset
	movq	-16(%rbp), %rbx
	leaq	-41(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt15__new_allocatorIPNSt8__detail15_Hash_node_baseEED2Ev
	nop
	movq	%rbx, %rax
	jmp	.L610
.L609:
	movq	%rax, %rbx
	leaq	-41(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt15__new_allocatorIPNSt8__detail15_Hash_node_baseEED2Ev
	nop
	movq	%rbx, %rax
	movq	%rax, %rcx
.LEHB99:
	call	_Unwind_Resume
.LEHE99:
.L610:
	addq	$88, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA4313:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE4313-.LLSDACSB4313
.LLSDACSB4313:
	.uleb128 .LEHB97-.LFB4313
	.uleb128 .LEHE97-.LEHB97
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB98-.LFB4313
	.uleb128 .LEHE98-.LEHB98
	.uleb128 .L609-.LFB4313
	.uleb128 0
	.uleb128 .LEHB99-.LFB4313
	.uleb128 .LEHE99-.LEHB99
	.uleb128 0
	.uleb128 0
.LLSDACSE4313:
	.section	.text$_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEE19_M_allocate_bucketsEy,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_insertIRKPKcNS7_10_AllocNodeISaINS7_10_Hash_nodeIS5_Lb1EEEEEEEESt4pairINS7_14_Node_iteratorIS5_Lb1ELb1EEEbEOT_RKT0_St17integral_constantIbLb1EE,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_insertIRKPKcNS7_10_AllocNodeISaINS7_10_Hash_nodeIS5_Lb1EEEEEEEESt4pairINS7_14_Node_iteratorIS5_Lb1ELb1EEEbEOT_RKT0_St17integral_constantIbLb1EE
	.def	_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_insertIRKPKcNS7_10_AllocNodeISaINS7_10_Hash_nodeIS5_Lb1EEEEEEEESt4pairINS7_14_Node_iteratorIS5_Lb1ELb1EEEbEOT_RKT0_St17integral_constantIbLb1EE;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_insertIRKPKcNS7_10_AllocNodeISaINS7_10_Hash_nodeIS5_Lb1EEEEEEEESt4pairINS7_14_Node_iteratorIS5_Lb1ELb1EEEbEOT_RKT0_St17integral_constantIbLb1EE
_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_insertIRKPKcNS7_10_AllocNodeISaINS7_10_Hash_nodeIS5_Lb1EEEEEEEESt4pairINS7_14_Node_iteratorIS5_Lb1ELb1EEEbEOT_RKT0_St17integral_constantIbLb1EE:
.LFB4314:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	%r8, 32(%rbp)
	movq	%r9, 40(%rbp)
	movq	32(%rbp), %rax
	movq	%rax, %rcx
	call	_ZSt7forwardIRKPKcEOT_RNSt16remove_referenceIS4_E4typeE
	movq	%rax, %rdx
	leaq	-1(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNKSt8__detail19_ConvertToValueTypeINS_9_IdentityENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclIRKPKcEEOT_SF_
	movq	%rax, %rcx
	movq	16(%rbp), %rax
	movq	40(%rbp), %r8
	movq	24(%rbp), %rdx
	movq	%r8, %r9
	movq	%rcx, %r8
	movq	%rax, %rcx
	call	_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE20_M_insert_unique_auxIRKPKcNS7_10_AllocNodeISaINS7_10_Hash_nodeIS5_Lb1EEEEEEEESt4pairINS7_14_Node_iteratorIS5_Lb1ELb1EEEbEOT_RKT0_
	nop
	movq	16(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEE17_M_node_allocatorEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEE17_M_node_allocatorEv
	.def	_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEE17_M_node_allocatorEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEE17_M_node_allocatorEv
_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEE17_M_node_allocatorEv:
.LFB4315:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt8__detail21_Hashtable_ebo_helperILi0ESaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEELb1EE6_M_getEv
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEE22_M_deallocate_node_ptrEPS8_,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEE22_M_deallocate_node_ptrEPS8_
	.def	_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEE22_M_deallocate_node_ptrEPS8_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEE22_M_deallocate_node_ptrEPS8_
_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEE22_M_deallocate_node_ptrEPS8_:
.LFB4318:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$64, %rsp
	.seh_stackalloc	64
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	24(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt19__ptr_traits_ptr_toIPNSt8__detail10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEES8_Lb0EE10pointer_toERS8_
	movq	%rax, -8(%rbp)
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEE17_M_node_allocatorEv
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	$1, -32(%rbp)
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rcx, %r8
	movq	%rax, %rcx
	call	_ZNSt15__new_allocatorINSt8__detail10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEE10deallocateEPS8_y
	nop
	nop
	addq	$64, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt19__ptr_traits_ptr_toIPPNSt8__detail15_Hash_node_baseES2_Lb0EE10pointer_toERS2_,"x"
	.linkonce discard
	.globl	_ZNSt19__ptr_traits_ptr_toIPPNSt8__detail15_Hash_node_baseES2_Lb0EE10pointer_toERS2_
	.def	_ZNSt19__ptr_traits_ptr_toIPPNSt8__detail15_Hash_node_baseES2_Lb0EE10pointer_toERS2_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt19__ptr_traits_ptr_toIPPNSt8__detail15_Hash_node_baseES2_Lb0EE10pointer_toERS2_
_ZNSt19__ptr_traits_ptr_toIPPNSt8__detail15_Hash_node_baseES2_Lb0EE10pointer_toERS2_:
.LFB4319:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	call	_ZSt9addressofIPNSt8__detail15_Hash_node_baseEEPT_RS3_
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt6vectorI5TokenSaIS0_EE11_S_max_sizeERKS1_,"x"
	.linkonce discard
	.globl	_ZNSt6vectorI5TokenSaIS0_EE11_S_max_sizeERKS1_
	.def	_ZNSt6vectorI5TokenSaIS0_EE11_S_max_sizeERKS1_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt6vectorI5TokenSaIS0_EE11_S_max_sizeERKS1_
_ZNSt6vectorI5TokenSaIS0_EE11_S_max_sizeERKS1_:
.LFB4328:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$80, %rsp
	.seh_stackalloc	80
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movabsq	$230584300921369395, %rax
	movq	%rax, -32(%rbp)
	movq	16(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	movabsq	$230584300921369395, %rax
	nop
	nop
	movq	%rax, -40(%rbp)
	leaq	-40(%rbp), %rdx
	leaq	-32(%rbp), %rax
	movq	%rax, %rcx
	call	_ZSt3minIyERKT_S2_S2_
	movq	(%rax), %rax
	addq	$80, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNKSt12_Vector_baseI5TokenSaIS0_EE19_M_get_Tp_allocatorEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNKSt12_Vector_baseI5TokenSaIS0_EE19_M_get_Tp_allocatorEv
	.def	_ZNKSt12_Vector_baseI5TokenSaIS0_EE19_M_get_Tp_allocatorEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNKSt12_Vector_baseI5TokenSaIS0_EE19_M_get_Tp_allocatorEv
_ZNKSt12_Vector_baseI5TokenSaIS0_EE19_M_get_Tp_allocatorEv:
.LFB4329:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt15__new_allocatorI5TokenE8allocateEyPKv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt15__new_allocatorI5TokenE8allocateEyPKv
	.def	_ZNSt15__new_allocatorI5TokenE8allocateEyPKv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt15__new_allocatorI5TokenE8allocateEyPKv
_ZNSt15__new_allocatorI5TokenE8allocateEyPKv:
.LFB4330:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	%r8, 32(%rbp)
	movq	16(%rbp), %rax
	movq	%rax, -8(%rbp)
	movabsq	$230584300921369395, %rax
	cmpq	24(%rbp), %rax
	setb	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	setne	%al
	testb	%al, %al
	je	.L627
	movabsq	$461168601842738790, %rax
	cmpq	24(%rbp), %rax
	jnb	.L628
	call	_ZSt28__throw_bad_array_new_lengthv
.L628:
	call	_ZSt17__throw_bad_allocv
.L627:
	movq	24(%rbp), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rcx
	call	_Znwy
	nop
	addq	$48, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZSt12__niter_baseIP5TokenET_S2_,"x"
	.linkonce discard
	.globl	_ZSt12__niter_baseIP5TokenET_S2_
	.def	_ZSt12__niter_baseIP5TokenET_S2_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt12__niter_baseIP5TokenET_S2_
_ZSt12__niter_baseIP5TokenET_S2_:
.LFB4332:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZSt14__relocate_a_1IP5TokenS1_SaIS0_EET0_T_S4_S3_RT1_,"x"
	.linkonce discard
	.globl	_ZSt14__relocate_a_1IP5TokenS1_SaIS0_EET0_T_S4_S3_RT1_
	.def	_ZSt14__relocate_a_1IP5TokenS1_SaIS0_EET0_T_S4_S3_RT1_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt14__relocate_a_1IP5TokenS1_SaIS0_EET0_T_S4_S3_RT1_
_ZSt14__relocate_a_1IP5TokenS1_SaIS0_EET0_T_S4_S3_RT1_:
.LFB4333:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$56, %rsp
	.seh_stackalloc	56
	leaq	48(%rsp), %rbp
	.seh_setframe	%rbp, 48
	.seh_endprologue
	movq	%rcx, 32(%rbp)
	movq	%rdx, 40(%rbp)
	movq	%r8, 48(%rbp)
	movq	%r9, 56(%rbp)
	movq	48(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L633
.L634:
	movq	32(%rbp), %rax
	movq	%rax, %rcx
	call	_ZSt11__addressofI5TokenEPT_RS1_
	movq	%rax, %rbx
	movq	-8(%rbp), %rax
	movq	%rax, %rcx
	call	_ZSt11__addressofI5TokenEPT_RS1_
	movq	56(%rbp), %rdx
	movq	%rdx, %r8
	movq	%rbx, %rdx
	movq	%rax, %rcx
	call	_ZSt19__relocate_object_aI5TokenS0_SaIS0_EEvPT_PT0_RT1_
	addq	$40, 32(%rbp)
	addq	$40, -8(%rbp)
.L633:
	movq	32(%rbp), %rax
	cmpq	40(%rbp), %rax
	jne	.L634
	movq	-8(%rbp), %rax
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNK9__gnu_cxx16__aligned_bufferINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE6_M_ptrEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNK9__gnu_cxx16__aligned_bufferINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE6_M_ptrEv
	.def	_ZNK9__gnu_cxx16__aligned_bufferINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE6_M_ptrEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNK9__gnu_cxx16__aligned_bufferINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE6_M_ptrEv
_ZNK9__gnu_cxx16__aligned_bufferINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE6_M_ptrEv:
.LFB4334:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNK9__gnu_cxx16__aligned_bufferINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7_M_addrEv
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_S_equalsEyRKNS_21_Hash_node_code_cacheILb1EEE,"x"
	.linkonce discard
	.globl	_ZNSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_S_equalsEyRKNS_21_Hash_node_code_cacheILb1EEE
	.def	_ZNSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_S_equalsEyRKNS_21_Hash_node_code_cacheILb1EEE;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_S_equalsEyRKNS_21_Hash_node_code_cacheILb1EEE
_ZNSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_S_equalsEyRKNS_21_Hash_node_code_cacheILb1EEE:
.LFB4335:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	24(%rbp), %rax
	movq	(%rax), %rax
	cmpq	%rax, 16(%rbp)
	sete	%al
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE15_M_bucket_indexERKNS_16_Hash_node_valueIS6_Lb1EEEy,"x"
	.linkonce discard
	.align 2
	.globl	_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE15_M_bucket_indexERKNS_16_Hash_node_valueIS6_Lb1EEEy
	.def	_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE15_M_bucket_indexERKNS_16_Hash_node_valueIS6_Lb1EEEy;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE15_M_bucket_indexERKNS_16_Hash_node_valueIS6_Lb1EEEy
_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE15_M_bucket_indexERKNS_16_Hash_node_valueIS6_Lb1EEEy:
.LFB4336:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	%r8, 32(%rbp)
	movq	24(%rbp), %rax
	movq	32(%rax), %rdx
	movq	32(%rbp), %rcx
	leaq	-1(%rbp), %rax
	movq	%rcx, %r8
	movq	%rax, %rcx
	call	_ZNKSt8__detail18_Mod_range_hashingclEyy
	addq	$48, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EEC2ERKS9_,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EEC2ERKS9_
	.def	_ZNSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EEC2ERKS9_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EEC2ERKS9_
_ZNSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EEC2ERKS9_:
.LFB4344:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	24(%rbp), %rdx
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt8__detail21_Hashtable_ebo_helperILi1ESt4hashINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEELb1EEC2IRKS8_EEOT_
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt8__detail21_Hashtable_ebo_helperILi0ESt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEELb1EEC2IRKS8_EEOT_,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt8__detail21_Hashtable_ebo_helperILi0ESt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEELb1EEC2IRKS8_EEOT_
	.def	_ZNSt8__detail21_Hashtable_ebo_helperILi0ESt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEELb1EEC2IRKS8_EEOT_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt8__detail21_Hashtable_ebo_helperILi0ESt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEELb1EEC2IRKS8_EEOT_
_ZNSt8__detail21_Hashtable_ebo_helperILi0ESt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEELb1EEC2IRKS8_EEOT_:
.LFB4347:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	24(%rbp), %rax
	movq	%rax, %rcx
	call	_ZSt7forwardIRKSt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEOT_RNSt16remove_referenceISA_E4typeE
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZSt7forwardISaINSt8__detail10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEEOT_RNSt16remove_referenceISA_E4typeE,"x"
	.linkonce discard
	.globl	_ZSt7forwardISaINSt8__detail10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEEOT_RNSt16remove_referenceISA_E4typeE
	.def	_ZSt7forwardISaINSt8__detail10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEEOT_RNSt16remove_referenceISA_E4typeE;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt7forwardISaINSt8__detail10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEEOT_RNSt16remove_referenceISA_E4typeE
_ZSt7forwardISaINSt8__detail10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEEOT_RNSt16remove_referenceISA_E4typeE:
.LFB4349:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt8__detail21_Hashtable_ebo_helperILi0ESaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEELb1EEC2IS9_EEOT_,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt8__detail21_Hashtable_ebo_helperILi0ESaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEELb1EEC2IS9_EEOT_
	.def	_ZNSt8__detail21_Hashtable_ebo_helperILi0ESaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEELb1EEC2IS9_EEOT_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt8__detail21_Hashtable_ebo_helperILi0ESaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEELb1EEC2IS9_EEOT_
_ZNSt8__detail21_Hashtable_ebo_helperILi0ESaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEELb1EEC2IS9_EEOT_:
.LFB4351:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$64, %rsp
	.seh_stackalloc	64
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	24(%rbp), %rax
	movq	%rax, %rcx
	call	_ZSt7forwardISaINSt8__detail10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEEOT_RNSt16remove_referenceISA_E4typeE
	movq	16(%rbp), %rdx
	movq	%rdx, -8(%rbp)
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
	nop
	nop
	nop
	addq	$64, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZSt12__to_addressIPNSt8__detail15_Hash_node_baseEEPT_S4_,"x"
	.linkonce discard
	.globl	_ZSt12__to_addressIPNSt8__detail15_Hash_node_baseEEPT_S4_
	.def	_ZSt12__to_addressIPNSt8__detail15_Hash_node_baseEEPT_S4_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt12__to_addressIPNSt8__detail15_Hash_node_baseEEPT_S4_
_ZSt12__to_addressIPNSt8__detail15_Hash_node_baseEEPT_S4_:
.LFB4354:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZSt7forwardIRKPKcEOT_RNSt16remove_referenceIS4_E4typeE,"x"
	.linkonce discard
	.globl	_ZSt7forwardIRKPKcEOT_RNSt16remove_referenceIS4_E4typeE
	.def	_ZSt7forwardIRKPKcEOT_RNSt16remove_referenceIS4_E4typeE;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt7forwardIRKPKcEOT_RNSt16remove_referenceIS4_E4typeE
_ZSt7forwardIRKPKcEOT_RNSt16remove_referenceIS4_E4typeE:
.LFB4355:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNKSt8__detail19_ConvertToValueTypeINS_9_IdentityENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclIRKPKcEEOT_SF_,"x"
	.linkonce discard
	.align 2
	.globl	_ZNKSt8__detail19_ConvertToValueTypeINS_9_IdentityENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclIRKPKcEEOT_SF_
	.def	_ZNKSt8__detail19_ConvertToValueTypeINS_9_IdentityENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclIRKPKcEEOT_SF_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNKSt8__detail19_ConvertToValueTypeINS_9_IdentityENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclIRKPKcEEOT_SF_
_ZNKSt8__detail19_ConvertToValueTypeINS_9_IdentityENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclIRKPKcEEOT_SF_:
.LFB4356:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	24(%rbp), %rax
	movq	%rax, %rcx
	call	_ZSt7forwardIRKPKcEOT_RNSt16remove_referenceIS4_E4typeE
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE20_M_insert_unique_auxIRKPKcNS7_10_AllocNodeISaINS7_10_Hash_nodeIS5_Lb1EEEEEEEESt4pairINS7_14_Node_iteratorIS5_Lb1ELb1EEEbEOT_RKT0_,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE20_M_insert_unique_auxIRKPKcNS7_10_AllocNodeISaINS7_10_Hash_nodeIS5_Lb1EEEEEEEESt4pairINS7_14_Node_iteratorIS5_Lb1ELb1EEEbEOT_RKT0_
	.def	_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE20_M_insert_unique_auxIRKPKcNS7_10_AllocNodeISaINS7_10_Hash_nodeIS5_Lb1EEEEEEEESt4pairINS7_14_Node_iteratorIS5_Lb1ELb1EEEbEOT_RKT0_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE20_M_insert_unique_auxIRKPKcNS7_10_AllocNodeISaINS7_10_Hash_nodeIS5_Lb1EEEEEEEESt4pairINS7_14_Node_iteratorIS5_Lb1ELb1EEEbEOT_RKT0_
_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE20_M_insert_unique_auxIRKPKcNS7_10_AllocNodeISaINS7_10_Hash_nodeIS5_Lb1EEEEEEEESt4pairINS7_14_Node_iteratorIS5_Lb1ELb1EEEbEOT_RKT0_:
.LFB4357:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$104, %rsp
	.seh_stackalloc	104
	leaq	96(%rsp), %rbp
	.seh_setframe	%rbp, 96
	.seh_endprologue
	movq	%rcx, 32(%rbp)
	movq	%rdx, 40(%rbp)
	movq	%r8, 48(%rbp)
	movq	%r9, 56(%rbp)
	movq	48(%rbp), %rax
	movq	%rax, %rcx
	call	_ZSt7forwardIRKPKcEOT_RNSt16remove_referenceIS4_E4typeE
	movq	%rax, %rbx
	movq	48(%rbp), %rax
	movq	%rax, %rcx
	call	_ZSt7forwardIRKPKcEOT_RNSt16remove_referenceIS4_E4typeE
	movq	%rax, %rdx
	leaq	-1(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNKSt8__detail9_IdentityclIRKPKcEEOT_S7_
	movq	%rax, %rdx
	leaq	-48(%rbp), %rax
	movq	%rax, %rcx
.LEHB100:
	call	_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE14_S_forward_keyIRKPKcEENSt13__conditionalIXsrSt6__and_IJSt22__is_nothrow_invocableIRSC_JRKS5_EESt6__not_ISQ_ISR_JT_EEEEE5valueEE4typeIS5_OSW_EES12_
.LEHE100:
	movq	32(%rbp), %rax
	leaq	-48(%rbp), %r8
	movq	40(%rbp), %rdx
	movq	56(%rbp), %rcx
	movq	%rcx, 32(%rsp)
	movq	%rbx, %r9
	movq	%rax, %rcx
.LEHB101:
	call	_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE16_M_insert_uniqueIS5_RKPKcNS7_10_AllocNodeISaINS7_10_Hash_nodeIS5_Lb1EEEEEEEESt4pairINS7_14_Node_iteratorIS5_Lb1ELb1EEEbEOT_OT0_RKT1_
.LEHE101:
	nop
	leaq	-48(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	jmp	.L657
.L656:
	movq	%rax, %rbx
	leaq	-48(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	movq	%rbx, %rax
	movq	%rax, %rcx
.LEHB102:
	call	_Unwind_Resume
.LEHE102:
.L657:
	movq	32(%rbp), %rax
	addq	$104, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA4357:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE4357-.LLSDACSB4357
.LLSDACSB4357:
	.uleb128 .LEHB100-.LFB4357
	.uleb128 .LEHE100-.LEHB100
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB101-.LFB4357
	.uleb128 .LEHE101-.LEHB101
	.uleb128 .L656-.LFB4357
	.uleb128 0
	.uleb128 .LEHB102-.LFB4357
	.uleb128 .LEHE102-.LEHB102
	.uleb128 0
	.uleb128 0
.LLSDACSE4357:
	.section	.text$_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE20_M_insert_unique_auxIRKPKcNS7_10_AllocNodeISaINS7_10_Hash_nodeIS5_Lb1EEEEEEEESt4pairINS7_14_Node_iteratorIS5_Lb1ELb1EEEbEOT_RKT0_,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_ZNSt8__detail21_Hashtable_ebo_helperILi0ESaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEELb1EE6_M_getEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt8__detail21_Hashtable_ebo_helperILi0ESaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEELb1EE6_M_getEv
	.def	_ZNSt8__detail21_Hashtable_ebo_helperILi0ESaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEELb1EE6_M_getEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt8__detail21_Hashtable_ebo_helperILi0ESaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEELb1EE6_M_getEv
_ZNSt8__detail21_Hashtable_ebo_helperILi0ESaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEELb1EE6_M_getEv:
.LFB4360:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZN9__gnu_cxx16__aligned_bufferINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE6_M_ptrEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZN9__gnu_cxx16__aligned_bufferINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE6_M_ptrEv
	.def	_ZN9__gnu_cxx16__aligned_bufferINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE6_M_ptrEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN9__gnu_cxx16__aligned_bufferINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE6_M_ptrEv
_ZN9__gnu_cxx16__aligned_bufferINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE6_M_ptrEv:
.LFB4361:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN9__gnu_cxx16__aligned_bufferINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7_M_addrEv
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt19__ptr_traits_ptr_toIPNSt8__detail10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEES8_Lb0EE10pointer_toERS8_,"x"
	.linkonce discard
	.globl	_ZNSt19__ptr_traits_ptr_toIPNSt8__detail10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEES8_Lb0EE10pointer_toERS8_
	.def	_ZNSt19__ptr_traits_ptr_toIPNSt8__detail10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEES8_Lb0EE10pointer_toERS8_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt19__ptr_traits_ptr_toIPNSt8__detail10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEES8_Lb0EE10pointer_toERS8_
_ZNSt19__ptr_traits_ptr_toIPNSt8__detail10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEES8_Lb0EE10pointer_toERS8_:
.LFB4363:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	call	_ZSt9addressofINSt8__detail10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEPT_RS9_
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZSt9addressofIPNSt8__detail15_Hash_node_baseEEPT_RS3_,"x"
	.linkonce discard
	.globl	_ZSt9addressofIPNSt8__detail15_Hash_node_baseEEPT_RS3_
	.def	_ZSt9addressofIPNSt8__detail15_Hash_node_baseEEPT_RS3_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt9addressofIPNSt8__detail15_Hash_node_baseEEPT_RS3_
_ZSt9addressofIPNSt8__detail15_Hash_node_baseEEPT_RS3_:
.LFB4365:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	call	_ZSt11__addressofIPNSt8__detail15_Hash_node_baseEEPT_RS3_
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt15__new_allocatorIPNSt8__detail15_Hash_node_baseEED2Ev,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt15__new_allocatorIPNSt8__detail15_Hash_node_baseEED2Ev
	.def	_ZNSt15__new_allocatorIPNSt8__detail15_Hash_node_baseEED2Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt15__new_allocatorIPNSt8__detail15_Hash_node_baseEED2Ev
_ZNSt15__new_allocatorIPNSt8__detail15_Hash_node_baseEED2Ev:
.LFB4370:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	nop
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt15__new_allocatorIPNSt8__detail15_Hash_node_baseEE10deallocateEPS2_y,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt15__new_allocatorIPNSt8__detail15_Hash_node_baseEE10deallocateEPS2_y
	.def	_ZNSt15__new_allocatorIPNSt8__detail15_Hash_node_baseEE10deallocateEPS2_y;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt15__new_allocatorIPNSt8__detail15_Hash_node_baseEE10deallocateEPS2_y
_ZNSt15__new_allocatorIPNSt8__detail15_Hash_node_baseEE10deallocateEPS2_y:
.LFB4372:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	%r8, 32(%rbp)
	movq	32(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	24(%rbp), %rax
	movq	%rax, %rcx
	call	_ZdlPvy
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZSt19__relocate_object_aI5TokenS0_SaIS0_EEvPT_PT0_RT1_,"x"
	.linkonce discard
	.globl	_ZSt19__relocate_object_aI5TokenS0_SaIS0_EEvPT_PT0_RT1_
	.def	_ZSt19__relocate_object_aI5TokenS0_SaIS0_EEvPT_PT0_RT1_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt19__relocate_object_aI5TokenS0_SaIS0_EEvPT_PT0_RT1_
_ZSt19__relocate_object_aI5TokenS0_SaIS0_EEvPT_PT0_RT1_:
.LFB4375:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$120, %rsp
	.seh_stackalloc	120
	leaq	112(%rsp), %rbp
	.seh_setframe	%rbp, 112
	.seh_endprologue
	movq	%rcx, 32(%rbp)
	movq	%rdx, 40(%rbp)
	movq	%r8, 48(%rbp)
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZSt4moveIR5TokenEONSt16remove_referenceIT_E4typeEOS3_
	movq	48(%rbp), %rdx
	movq	%rdx, -40(%rbp)
	movq	32(%rbp), %rdx
	movq	%rdx, -48(%rbp)
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, %rcx
	call	_ZSt7forwardI5TokenEOT_RNSt16remove_referenceIS1_E4typeE
	movq	-48(%rbp), %rdx
	movq	%rdx, -64(%rbp)
	movq	%rax, -72(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -80(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, %rdx
	movl	$40, %ecx
	call	_ZnwyPv
	movq	%rax, %rbx
	movq	-72(%rbp), %rax
	movq	%rax, %rcx
	call	_ZSt7forwardI5TokenEOT_RNSt16remove_referenceIS1_E4typeE
	movq	%rax, %rdx
	movq	%rbx, %rcx
	call	_ZN5TokenC1EOS_
	nop
	nop
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZSt11__addressofI5TokenEPT_RS1_
	movq	48(%rbp), %rdx
	movq	%rdx, -8(%rbp)
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN5TokenD1Ev
	nop
	nop
	nop
	addq	$120, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNK9__gnu_cxx16__aligned_bufferINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7_M_addrEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNK9__gnu_cxx16__aligned_bufferINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7_M_addrEv
	.def	_ZNK9__gnu_cxx16__aligned_bufferINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7_M_addrEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNK9__gnu_cxx16__aligned_bufferINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7_M_addrEv
_ZNK9__gnu_cxx16__aligned_bufferINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7_M_addrEv:
.LFB4376:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt8__detail21_Hashtable_ebo_helperILi1ESt4hashINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEELb1EEC2IRKS8_EEOT_,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt8__detail21_Hashtable_ebo_helperILi1ESt4hashINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEELb1EEC2IRKS8_EEOT_
	.def	_ZNSt8__detail21_Hashtable_ebo_helperILi1ESt4hashINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEELb1EEC2IRKS8_EEOT_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt8__detail21_Hashtable_ebo_helperILi1ESt4hashINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEELb1EEC2IRKS8_EEOT_
_ZNSt8__detail21_Hashtable_ebo_helperILi1ESt4hashINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEELb1EEC2IRKS8_EEOT_:
.LFB4378:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	24(%rbp), %rax
	movq	%rax, %rcx
	call	_ZSt7forwardIRKSt4hashINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEOT_RNSt16remove_referenceISA_E4typeE
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZSt7forwardIRKSt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEOT_RNSt16remove_referenceISA_E4typeE,"x"
	.linkonce discard
	.globl	_ZSt7forwardIRKSt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEOT_RNSt16remove_referenceISA_E4typeE
	.def	_ZSt7forwardIRKSt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEOT_RNSt16remove_referenceISA_E4typeE;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt7forwardIRKSt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEOT_RNSt16remove_referenceISA_E4typeE
_ZSt7forwardIRKSt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEOT_RNSt16remove_referenceISA_E4typeE:
.LFB4380:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt15__new_allocatorIPNSt8__detail15_Hash_node_baseEE8allocateEyPKv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt15__new_allocatorIPNSt8__detail15_Hash_node_baseEE8allocateEyPKv
	.def	_ZNSt15__new_allocatorIPNSt8__detail15_Hash_node_baseEE8allocateEyPKv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt15__new_allocatorIPNSt8__detail15_Hash_node_baseEE8allocateEyPKv
_ZNSt15__new_allocatorIPNSt8__detail15_Hash_node_baseEE8allocateEyPKv:
.LFB4384:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	%r8, 32(%rbp)
	movq	16(%rbp), %rax
	movq	%rax, -8(%rbp)
	movabsq	$1152921504606846975, %rax
	cmpq	24(%rbp), %rax
	setb	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	setne	%al
	testb	%al, %al
	je	.L677
	movabsq	$2305843009213693951, %rax
	cmpq	24(%rbp), %rax
	jnb	.L678
	call	_ZSt28__throw_bad_array_new_lengthv
.L678:
	call	_ZSt17__throw_bad_allocv
.L677:
	movq	24(%rbp), %rax
	salq	$3, %rax
	movq	%rax, %rcx
	call	_Znwy
	nop
	addq	$48, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNKSt8__detail9_IdentityclIRKPKcEEOT_S7_,"x"
	.linkonce discard
	.align 2
	.globl	_ZNKSt8__detail9_IdentityclIRKPKcEEOT_S7_
	.def	_ZNKSt8__detail9_IdentityclIRKPKcEEOT_S7_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNKSt8__detail9_IdentityclIRKPKcEEOT_S7_
_ZNKSt8__detail9_IdentityclIRKPKcEEOT_S7_:
.LFB4386:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	24(%rbp), %rax
	movq	%rax, %rcx
	call	_ZSt7forwardIRKPKcEOT_RNSt16remove_referenceIS4_E4typeE
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE14_S_forward_keyIRKPKcEENSt13__conditionalIXsrSt6__and_IJSt22__is_nothrow_invocableIRSC_JRKS5_EESt6__not_ISQ_ISR_JT_EEEEE5valueEE4typeIS5_OSW_EES12_,"x"
	.linkonce discard
	.globl	_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE14_S_forward_keyIRKPKcEENSt13__conditionalIXsrSt6__and_IJSt22__is_nothrow_invocableIRSC_JRKS5_EESt6__not_ISQ_ISR_JT_EEEEE5valueEE4typeIS5_OSW_EES12_
	.def	_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE14_S_forward_keyIRKPKcEENSt13__conditionalIXsrSt6__and_IJSt22__is_nothrow_invocableIRSC_JRKS5_EESt6__not_ISQ_ISR_JT_EEEEE5valueEE4typeIS5_OSW_EES12_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE14_S_forward_keyIRKPKcEENSt13__conditionalIXsrSt6__and_IJSt22__is_nothrow_invocableIRSC_JRKS5_EESt6__not_ISQ_ISR_JT_EEEEE5valueEE4typeIS5_OSW_EES12_
_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE14_S_forward_keyIRKPKcEENSt13__conditionalIXsrSt6__and_IJSt22__is_nothrow_invocableIRSC_JRKS5_EESt6__not_ISQ_ISR_JT_EEEEE5valueEE4typeIS5_OSW_EES12_:
.LFB4387:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$56, %rsp
	.seh_stackalloc	56
	leaq	48(%rsp), %rbp
	.seh_setframe	%rbp, 48
	.seh_endprologue
	movq	%rcx, 32(%rbp)
	movq	%rdx, 40(%rbp)
	leaq	-9(%rbp), %rax
	movq	%rax, -8(%rbp)
	nop
	nop
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZSt7forwardIRKPKcEOT_RNSt16remove_referenceIS4_E4typeE
	movq	(%rax), %rdx
	leaq	-9(%rbp), %rcx
	movq	32(%rbp), %rax
	movq	%rcx, %r8
	movq	%rax, %rcx
.LEHB103:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_
.LEHE103:
	leaq	-9(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt15__new_allocatorIcED2Ev
	nop
	jmp	.L686
.L685:
	movq	%rax, %rbx
	leaq	-9(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt15__new_allocatorIcED2Ev
	nop
	movq	%rbx, %rax
	movq	%rax, %rcx
.LEHB104:
	call	_Unwind_Resume
.LEHE104:
.L686:
	movq	32(%rbp), %rax
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA4387:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE4387-.LLSDACSB4387
.LLSDACSB4387:
	.uleb128 .LEHB103-.LFB4387
	.uleb128 .LEHE103-.LEHB103
	.uleb128 .L685-.LFB4387
	.uleb128 0
	.uleb128 .LEHB104-.LFB4387
	.uleb128 .LEHE104-.LEHB104
	.uleb128 0
	.uleb128 0
.LLSDACSE4387:
	.section	.text$_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE14_S_forward_keyIRKPKcEENSt13__conditionalIXsrSt6__and_IJSt22__is_nothrow_invocableIRSC_JRKS5_EESt6__not_ISQ_ISR_JT_EEEEE5valueEE4typeIS5_OSW_EES12_,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE16_M_insert_uniqueIS5_RKPKcNS7_10_AllocNodeISaINS7_10_Hash_nodeIS5_Lb1EEEEEEEESt4pairINS7_14_Node_iteratorIS5_Lb1ELb1EEEbEOT_OT0_RKT1_,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE16_M_insert_uniqueIS5_RKPKcNS7_10_AllocNodeISaINS7_10_Hash_nodeIS5_Lb1EEEEEEEESt4pairINS7_14_Node_iteratorIS5_Lb1ELb1EEEbEOT_OT0_RKT1_
	.def	_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE16_M_insert_uniqueIS5_RKPKcNS7_10_AllocNodeISaINS7_10_Hash_nodeIS5_Lb1EEEEEEEESt4pairINS7_14_Node_iteratorIS5_Lb1ELb1EEEbEOT_OT0_RKT1_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE16_M_insert_uniqueIS5_RKPKcNS7_10_AllocNodeISaINS7_10_Hash_nodeIS5_Lb1EEEEEEEESt4pairINS7_14_Node_iteratorIS5_Lb1ELb1EEEbEOT_OT0_RKT1_
_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE16_M_insert_uniqueIS5_RKPKcNS7_10_AllocNodeISaINS7_10_Hash_nodeIS5_Lb1EEEEEEEESt4pairINS7_14_Node_iteratorIS5_Lb1ELb1EEEbEOT_OT0_RKT1_:
.LFB4388:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$168, %rsp
	.seh_stackalloc	168
	leaq	160(%rsp), %rbp
	.seh_setframe	%rbp, 160
	.seh_endprologue
	movq	%rcx, 32(%rbp)
	movq	%rdx, 40(%rbp)
	movq	%r8, 48(%rbp)
	movq	%r9, 56(%rbp)
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE4sizeEv
	movq	%rax, -16(%rbp)
	call	_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE22__small_size_thresholdEv
	cmpq	-16(%rbp), %rax
	setnb	%al
	testb	%al, %al
	je	.L688
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE8_M_beginEv
	movq	%rax, -8(%rbp)
	jmp	.L689
.L692:
	movq	-8(%rbp), %rax
	leaq	8(%rax), %rcx
	movq	48(%rbp), %rdx
	movq	40(%rbp), %rax
	movq	%rcx, %r8
	movq	%rax, %rcx
.LEHB105:
	call	_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE16_M_key_equals_trIS6_EEbRKT_RKNS_16_Hash_node_valueIS6_Lb1EEE
	testb	%al, %al
	je	.L690
	movq	-8(%rbp), %rdx
	leaq	-72(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt8__detail14_Node_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ELb1EEC1EPNS_10_Hash_nodeIS6_Lb1EEE
	movb	$0, -57(%rbp)
	leaq	-57(%rbp), %rcx
	leaq	-72(%rbp), %rdx
	movq	32(%rbp), %rax
	movq	%rcx, %r8
	movq	%rax, %rcx
	call	_ZNSt4pairINSt8__detail14_Node_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ELb1EEEbEC1IS8_bLb1EEEOT_OT0_
	jmp	.L687
.L690:
	movq	-8(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNKSt8__detail10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EE7_M_nextEv
	movq	%rax, -8(%rbp)
.L689:
	cmpq	$0, -8(%rbp)
	jne	.L692
.L688:
	movq	48(%rbp), %rdx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE15_M_hash_code_trIS6_EEyRKT_
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE15_M_bucket_indexEy
	movq	%rax, -32(%rbp)
	call	_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE22__small_size_thresholdEv
	cmpq	-16(%rbp), %rax
	setb	%al
	testb	%al, %al
	je	.L693
	movq	-24(%rbp), %r8
	movq	48(%rbp), %rcx
	movq	-32(%rbp), %rdx
	movq	40(%rbp), %rax
	movq	%r8, %r9
	movq	%rcx, %r8
	movq	%rax, %rcx
	call	_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE15_M_find_node_trIS5_EEPNS7_10_Hash_nodeIS5_Lb1EEEyRKT_y
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.L693
	movq	-40(%rbp), %rdx
	leaq	-56(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt8__detail14_Node_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ELb1EEC1EPNS_10_Hash_nodeIS6_Lb1EEE
	movb	$0, -42(%rbp)
	leaq	-42(%rbp), %rcx
	leaq	-56(%rbp), %rdx
	movq	32(%rbp), %rax
	movq	%rcx, %r8
	movq	%rax, %rcx
	call	_ZNSt4pairINSt8__detail14_Node_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ELb1EEEbEC1IS8_bLb1EEEOT_OT0_
	jmp	.L687
.L693:
	movq	56(%rbp), %rax
	movq	%rax, %rcx
	call	_ZSt7forwardIRKPKcEOT_RNSt16remove_referenceIS4_E4typeE
	movq	%rax, %rbx
	movq	48(%rbp), %rax
	movq	%rax, %rcx
	call	_ZSt7forwardINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEOT_RNSt16remove_referenceIS6_E4typeE
	movq	64(%rbp), %rdx
	movq	%rdx, %r8
	movq	%rbx, %rdx
	movq	%rax, %rcx
	call	_ZNSt8__detail12_NodeBuilderINS_9_IdentityEE8_S_buildINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKPKcNS_10_AllocNodeISaINS_10_Hash_nodeIS9_Lb1EEEEEEEENT1_10__node_ptrEOT_OT0_RKSJ_
.LEHE105:
	movq	%rax, %rdx
	movq	40(%rbp), %rcx
	leaq	-96(%rbp), %rax
	movq	%rcx, %r8
	movq	%rax, %rcx
	call	_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE12_Scoped_nodeC1EPNS7_10_Hash_nodeIS5_Lb1EEEPNS7_16_Hashtable_allocISaISL_EEE
	movq	-88(%rbp), %r8
	movq	-24(%rbp), %rcx
	movq	-32(%rbp), %rdx
	movq	40(%rbp), %rax
	movq	$1, 32(%rsp)
	movq	%r8, %r9
	movq	%rcx, %r8
	movq	%rax, %rcx
.LEHB106:
	call	_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE21_M_insert_unique_nodeEyyPNS7_10_Hash_nodeIS5_Lb1EEEy
.LEHE106:
	movq	%rax, -104(%rbp)
	movq	$0, -88(%rbp)
	movb	$1, -41(%rbp)
	leaq	-41(%rbp), %rcx
	leaq	-104(%rbp), %rdx
	movq	32(%rbp), %rax
	movq	%rcx, %r8
	movq	%rax, %rcx
	call	_ZNSt4pairINSt8__detail14_Node_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ELb1EEEbEC1IRS8_bLb1EEEOT_OT0_
	leaq	-96(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE12_Scoped_nodeD1Ev
	jmp	.L687
.L696:
	movq	%rax, %rbx
	leaq	-96(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE12_Scoped_nodeD1Ev
	movq	%rbx, %rax
	movq	%rax, %rcx
.LEHB107:
	call	_Unwind_Resume
.LEHE107:
.L687:
	movq	32(%rbp), %rax
	addq	$168, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA4388:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE4388-.LLSDACSB4388
.LLSDACSB4388:
	.uleb128 .LEHB105-.LFB4388
	.uleb128 .LEHE105-.LEHB105
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB106-.LFB4388
	.uleb128 .LEHE106-.LEHB106
	.uleb128 .L696-.LFB4388
	.uleb128 0
	.uleb128 .LEHB107-.LFB4388
	.uleb128 .LEHE107-.LEHB107
	.uleb128 0
	.uleb128 0
.LLSDACSE4388:
	.section	.text$_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE16_M_insert_uniqueIS5_RKPKcNS7_10_AllocNodeISaINS7_10_Hash_nodeIS5_Lb1EEEEEEEESt4pairINS7_14_Node_iteratorIS5_Lb1ELb1EEEbEOT_OT0_RKT1_,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_ZN9__gnu_cxx16__aligned_bufferINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7_M_addrEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZN9__gnu_cxx16__aligned_bufferINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7_M_addrEv
	.def	_ZN9__gnu_cxx16__aligned_bufferINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7_M_addrEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN9__gnu_cxx16__aligned_bufferINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7_M_addrEv
_ZN9__gnu_cxx16__aligned_bufferINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7_M_addrEv:
.LFB4395:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZSt9addressofINSt8__detail10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEPT_RS9_,"x"
	.linkonce discard
	.globl	_ZSt9addressofINSt8__detail10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEPT_RS9_
	.def	_ZSt9addressofINSt8__detail10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEPT_RS9_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt9addressofINSt8__detail10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEPT_RS9_
_ZSt9addressofINSt8__detail10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEPT_RS9_:
.LFB4396:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	call	_ZSt11__addressofINSt8__detail10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEPT_RS9_
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt15__new_allocatorINSt8__detail10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEE10deallocateEPS8_y,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt15__new_allocatorINSt8__detail10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEE10deallocateEPS8_y
	.def	_ZNSt15__new_allocatorINSt8__detail10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEE10deallocateEPS8_y;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt15__new_allocatorINSt8__detail10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEE10deallocateEPS8_y
_ZNSt15__new_allocatorINSt8__detail10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEE10deallocateEPS8_y:
.LFB4397:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	%r8, 32(%rbp)
	movq	32(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	movq	%rax, %rdx
	movq	24(%rbp), %rax
	movq	%rax, %rcx
	call	_ZdlPvy
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZSt11__addressofIPNSt8__detail15_Hash_node_baseEEPT_RS3_,"x"
	.linkonce discard
	.globl	_ZSt11__addressofIPNSt8__detail15_Hash_node_baseEEPT_RS3_
	.def	_ZSt11__addressofIPNSt8__detail15_Hash_node_baseEEPT_RS3_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt11__addressofIPNSt8__detail15_Hash_node_baseEEPT_RS3_
_ZSt11__addressofIPNSt8__detail15_Hash_node_baseEEPT_RS3_:
.LFB4398:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZSt7forwardIRKSt4hashINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEOT_RNSt16remove_referenceISA_E4typeE,"x"
	.linkonce discard
	.globl	_ZSt7forwardIRKSt4hashINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEOT_RNSt16remove_referenceISA_E4typeE
	.def	_ZSt7forwardIRKSt4hashINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEOT_RNSt16remove_referenceISA_E4typeE;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt7forwardIRKSt4hashINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEOT_RNSt16remove_referenceISA_E4typeE
_ZSt7forwardIRKSt4hashINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEOT_RNSt16remove_referenceISA_E4typeE:
.LFB4401:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE16_M_key_equals_trIS6_EEbRKT_RKNS_16_Hash_node_valueIS6_Lb1EEE,"x"
	.linkonce discard
	.align 2
	.globl	_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE16_M_key_equals_trIS6_EEbRKT_RKNS_16_Hash_node_valueIS6_Lb1EEE
	.def	_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE16_M_key_equals_trIS6_EEbRKT_RKNS_16_Hash_node_valueIS6_Lb1EEE;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE16_M_key_equals_trIS6_EEbRKT_RKNS_16_Hash_node_valueIS6_Lb1EEE
_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE16_M_key_equals_trIS6_EEbRKT_RKNS_16_Hash_node_valueIS6_Lb1EEE:
.LFB4405:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$72, %rsp
	.seh_stackalloc	72
	leaq	64(%rsp), %rbp
	.seh_setframe	%rbp, 64
	.seh_endprologue
	movq	%rcx, 32(%rbp)
	movq	%rdx, 40(%rbp)
	movq	%r8, 48(%rbp)
	movq	32(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE5_M_eqEv
	movq	%rax, %rbx
	movq	48(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNK9__gnu_cxx16__aligned_bufferINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE6_M_ptrEv
	movq	%rax, %rdx
	nop
	nop
	leaq	-17(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNKSt8__detail9_IdentityclIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEOT_SB_
	movq	%rax, %rdx
	movq	40(%rbp), %rax
	movq	%rdx, %r8
	movq	%rax, %rdx
	movq	%rbx, %rcx
	call	_ZNKSt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_
	addq	$72, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt8__detail14_Node_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ELb1EEC1EPNS_10_Hash_nodeIS6_Lb1EEE,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt8__detail14_Node_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ELb1EEC1EPNS_10_Hash_nodeIS6_Lb1EEE
	.def	_ZNSt8__detail14_Node_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ELb1EEC1EPNS_10_Hash_nodeIS6_Lb1EEE;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt8__detail14_Node_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ELb1EEC1EPNS_10_Hash_nodeIS6_Lb1EEE
_ZNSt8__detail14_Node_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ELb1EEC1EPNS_10_Hash_nodeIS6_Lb1EEE:
.LFB4408:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	16(%rbp), %rax
	movq	24(%rbp), %rdx
	movq	%rax, %rcx
	call	_ZNSt8__detail19_Node_iterator_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEC2EPNS_10_Hash_nodeIS6_Lb1EEE
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt4pairINSt8__detail14_Node_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ELb1EEEbEC1IS8_bLb1EEEOT_OT0_,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt4pairINSt8__detail14_Node_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ELb1EEEbEC1IS8_bLb1EEEOT_OT0_
	.def	_ZNSt4pairINSt8__detail14_Node_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ELb1EEEbEC1IS8_bLb1EEEOT_OT0_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt4pairINSt8__detail14_Node_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ELb1EEEbEC1IS8_bLb1EEEOT_OT0_
_ZNSt4pairINSt8__detail14_Node_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ELb1EEEbEC1IS8_bLb1EEEOT_OT0_:
.LFB4411:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	%r8, 32(%rbp)
	movq	24(%rbp), %rax
	movq	%rax, %rcx
	call	_ZSt7forwardINSt8__detail14_Node_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ELb1EEEEOT_RNSt16remove_referenceIS9_E4typeE
	movq	16(%rbp), %rdx
	movq	(%rax), %rax
	movq	%rax, (%rdx)
	movq	32(%rbp), %rax
	movq	%rax, %rcx
	call	_ZSt7forwardIbEOT_RNSt16remove_referenceIS0_E4typeE
	movzbl	(%rax), %edx
	movq	16(%rbp), %rax
	movb	%dl, 8(%rax)
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE15_M_hash_code_trIS6_EEyRKT_,"x"
	.linkonce discard
	.align 2
	.globl	_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE15_M_hash_code_trIS6_EEyRKT_
	.def	_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE15_M_hash_code_trIS6_EEyRKT_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE15_M_hash_code_trIS6_EEyRKT_
_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE15_M_hash_code_trIS6_EEyRKT_:
.LFB4412:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE7_M_hashEv
	movq	%rax, %rcx
	movq	24(%rbp), %rax
	movq	%rax, %rdx
	call	_ZNKSt15__str_hash_baseIcSaIcENSt7__cxx1112basic_stringIcSt11char_traitsIcES0_EEEclERKS5_
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE15_M_find_node_trIS5_EEPNS7_10_Hash_nodeIS5_Lb1EEEyRKT_y,"x"
	.linkonce discard
	.align 2
	.globl	_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE15_M_find_node_trIS5_EEPNS7_10_Hash_nodeIS5_Lb1EEEyRKT_y
	.def	_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE15_M_find_node_trIS5_EEPNS7_10_Hash_nodeIS5_Lb1EEEyRKT_y;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE15_M_find_node_trIS5_EEPNS7_10_Hash_nodeIS5_Lb1EEEyRKT_y
_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE15_M_find_node_trIS5_EEPNS7_10_Hash_nodeIS5_Lb1EEEyRKT_y:
.LFB4413:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	%r8, 32(%rbp)
	movq	%r9, 40(%rbp)
	movq	40(%rbp), %r8
	movq	32(%rbp), %rcx
	movq	24(%rbp), %rdx
	movq	16(%rbp), %rax
	movq	%r8, %r9
	movq	%rcx, %r8
	movq	%rax, %rcx
	call	_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE22_M_find_before_node_trIS5_EEPNS7_15_Hash_node_baseEyRKT_y
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L716
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	jmp	.L717
.L716:
	movl	$0, %eax
.L717:
	addq	$48, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZSt7forwardINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEOT_RNSt16remove_referenceIS6_E4typeE,"x"
	.linkonce discard
	.globl	_ZSt7forwardINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEOT_RNSt16remove_referenceIS6_E4typeE
	.def	_ZSt7forwardINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEOT_RNSt16remove_referenceIS6_E4typeE;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt7forwardINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEOT_RNSt16remove_referenceIS6_E4typeE
_ZSt7forwardINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEOT_RNSt16remove_referenceIS6_E4typeE:
.LFB4414:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt8__detail12_NodeBuilderINS_9_IdentityEE8_S_buildINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKPKcNS_10_AllocNodeISaINS_10_Hash_nodeIS9_Lb1EEEEEEEENT1_10__node_ptrEOT_OT0_RKSJ_,"x"
	.linkonce discard
	.globl	_ZNSt8__detail12_NodeBuilderINS_9_IdentityEE8_S_buildINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKPKcNS_10_AllocNodeISaINS_10_Hash_nodeIS9_Lb1EEEEEEEENT1_10__node_ptrEOT_OT0_RKSJ_
	.def	_ZNSt8__detail12_NodeBuilderINS_9_IdentityEE8_S_buildINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKPKcNS_10_AllocNodeISaINS_10_Hash_nodeIS9_Lb1EEEEEEEENT1_10__node_ptrEOT_OT0_RKSJ_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt8__detail12_NodeBuilderINS_9_IdentityEE8_S_buildINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKPKcNS_10_AllocNodeISaINS_10_Hash_nodeIS9_Lb1EEEEEEEENT1_10__node_ptrEOT_OT0_RKSJ_
_ZNSt8__detail12_NodeBuilderINS_9_IdentityEE8_S_buildINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKPKcNS_10_AllocNodeISaINS_10_Hash_nodeIS9_Lb1EEEEEEEENT1_10__node_ptrEOT_OT0_RKSJ_:
.LFB4415:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	%r8, 32(%rbp)
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	call	_ZSt7forwardINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEOT_RNSt16remove_referenceIS6_E4typeE
	movq	%rax, %rdx
	movq	32(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNKSt8__detail10_AllocNodeISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEEclIJS7_EEEPS8_DpOT_
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE12_Scoped_nodeC1EPNS7_10_Hash_nodeIS5_Lb1EEEPNS7_16_Hashtable_allocISaISL_EEE,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE12_Scoped_nodeC1EPNS7_10_Hash_nodeIS5_Lb1EEEPNS7_16_Hashtable_allocISaISL_EEE
	.def	_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE12_Scoped_nodeC1EPNS7_10_Hash_nodeIS5_Lb1EEEPNS7_16_Hashtable_allocISaISL_EEE;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE12_Scoped_nodeC1EPNS7_10_Hash_nodeIS5_Lb1EEEPNS7_16_Hashtable_allocISaISL_EEE
_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE12_Scoped_nodeC1EPNS7_10_Hash_nodeIS5_Lb1EEEPNS7_16_Hashtable_allocISaISL_EEE:
.LFB4418:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	%r8, 32(%rbp)
	movq	16(%rbp), %rax
	movq	32(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	16(%rbp), %rax
	movq	24(%rbp), %rdx
	movq	%rdx, 8(%rax)
	nop
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE12_Scoped_nodeD1Ev,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE12_Scoped_nodeD1Ev
	.def	_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE12_Scoped_nodeD1Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE12_Scoped_nodeD1Ev
_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE12_Scoped_nodeD1Ev:
.LFB4421:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L725
	movq	16(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rbp), %rdx
	movq	8(%rdx), %rdx
	movq	%rax, %rcx
	call	_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEE18_M_deallocate_nodeEPS8_
.L725:
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA4421:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE4421-.LLSDACSB4421
.LLSDACSB4421:
.LLSDACSE4421:
	.section	.text$_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE12_Scoped_nodeD1Ev,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE21_M_insert_unique_nodeEyyPNS7_10_Hash_nodeIS5_Lb1EEEy,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE21_M_insert_unique_nodeEyyPNS7_10_Hash_nodeIS5_Lb1EEEy
	.def	_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE21_M_insert_unique_nodeEyyPNS7_10_Hash_nodeIS5_Lb1EEEy;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE21_M_insert_unique_nodeEyyPNS7_10_Hash_nodeIS5_Lb1EEEy
_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE21_M_insert_unique_nodeEyyPNS7_10_Hash_nodeIS5_Lb1EEEy:
.LFB4422:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$104, %rsp
	.seh_stackalloc	104
	leaq	96(%rsp), %rbp
	.seh_setframe	%rbp, 96
	.seh_endprologue
	movq	%rcx, 32(%rbp)
	movq	%rdx, 40(%rbp)
	movq	%r8, 48(%rbp)
	movq	%r9, 56(%rbp)
	movq	32(%rbp), %rax
	leaq	32(%rax), %rdx
	leaq	-32(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt8__detail17_RehashStateGuardINS_20_Prime_rehash_policyEEC1ERS1_
	movq	32(%rbp), %rax
	leaq	32(%rax), %rdx
	movq	32(%rbp), %rax
	movq	24(%rax), %r9
	movq	32(%rbp), %rax
	movq	8(%rax), %r8
	leaq	-48(%rbp), %rax
	movq	64(%rbp), %rcx
	movq	%rcx, 32(%rsp)
	movq	%rax, %rcx
.LEHB108:
	call	_ZNKSt8__detail20_Prime_rehash_policy14_M_need_rehashEyyy
	movzbl	-48(%rbp), %eax
	testb	%al, %al
	je	.L727
	movq	-40(%rbp), %rdx
	movq	32(%rbp), %rax
	movl	%ebx, %r8d
	movq	%rax, %rcx
	call	_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_rehashEySt17integral_constantIbLb1EE
.LEHE108:
	movq	48(%rbp), %rdx
	movq	32(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE15_M_bucket_indexEy
	movq	%rax, 40(%rbp)
.L727:
	movq	$0, -32(%rbp)
	movq	56(%rbp), %rax
	leaq	40(%rax), %rdx
	movq	48(%rbp), %rcx
	movq	32(%rbp), %rax
	movq	%rcx, %r8
	movq	%rax, %rcx
	call	_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE13_M_store_codeERNS_21_Hash_node_code_cacheILb1EEEy
	movq	56(%rbp), %rcx
	movq	40(%rbp), %rdx
	movq	32(%rbp), %rax
	movq	%rcx, %r8
	movq	%rax, %rcx
	call	_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE22_M_insert_bucket_beginEyPNS7_10_Hash_nodeIS5_Lb1EEE
	movq	32(%rbp), %rax
	movq	24(%rax), %rax
	leaq	1(%rax), %rdx
	movq	32(%rbp), %rax
	movq	%rdx, 24(%rax)
	movq	56(%rbp), %rdx
	leaq	-8(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt8__detail14_Node_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ELb1EEC1EPNS_10_Hash_nodeIS6_Lb1EEE
	movq	-8(%rbp), %rbx
	leaq	-32(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt8__detail17_RehashStateGuardINS_20_Prime_rehash_policyEED1Ev
	movq	%rbx, %rax
	jmp	.L731
.L730:
	movq	%rax, %rbx
	leaq	-32(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt8__detail17_RehashStateGuardINS_20_Prime_rehash_policyEED1Ev
	movq	%rbx, %rax
	movq	%rax, %rcx
.LEHB109:
	call	_Unwind_Resume
.LEHE109:
.L731:
	addq	$104, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA4422:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE4422-.LLSDACSB4422
.LLSDACSB4422:
	.uleb128 .LEHB108-.LFB4422
	.uleb128 .LEHE108-.LEHB108
	.uleb128 .L730-.LFB4422
	.uleb128 0
	.uleb128 .LEHB109-.LFB4422
	.uleb128 .LEHE109-.LEHB109
	.uleb128 0
	.uleb128 0
.LLSDACSE4422:
	.section	.text$_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE21_M_insert_unique_nodeEyyPNS7_10_Hash_nodeIS5_Lb1EEEy,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_ZNSt4pairINSt8__detail14_Node_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ELb1EEEbEC1IRS8_bLb1EEEOT_OT0_,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt4pairINSt8__detail14_Node_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ELb1EEEbEC1IRS8_bLb1EEEOT_OT0_
	.def	_ZNSt4pairINSt8__detail14_Node_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ELb1EEEbEC1IRS8_bLb1EEEOT_OT0_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt4pairINSt8__detail14_Node_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ELb1EEEbEC1IRS8_bLb1EEEOT_OT0_
_ZNSt4pairINSt8__detail14_Node_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ELb1EEEbEC1IRS8_bLb1EEEOT_OT0_:
.LFB4425:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	%r8, 32(%rbp)
	movq	24(%rbp), %rax
	movq	%rax, %rcx
	call	_ZSt7forwardIRNSt8__detail14_Node_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ELb1EEEEOT_RNSt16remove_referenceISA_E4typeE
	movq	16(%rbp), %rdx
	movq	(%rax), %rax
	movq	%rax, (%rdx)
	movq	32(%rbp), %rax
	movq	%rax, %rcx
	call	_ZSt7forwardIbEOT_RNSt16remove_referenceIS0_E4typeE
	movzbl	(%rax), %edx
	movq	16(%rbp), %rax
	movb	%dl, 8(%rax)
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZSt11__addressofINSt8__detail10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEPT_RS9_,"x"
	.linkonce discard
	.globl	_ZSt11__addressofINSt8__detail10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEPT_RS9_
	.def	_ZSt11__addressofINSt8__detail10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEPT_RS9_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt11__addressofINSt8__detail10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEPT_RS9_
_ZSt11__addressofINSt8__detail10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEPT_RS9_:
.LFB4426:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZSt7forwardINSt8__detail14_Node_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ELb1EEEEOT_RNSt16remove_referenceIS9_E4typeE,"x"
	.linkonce discard
	.globl	_ZSt7forwardINSt8__detail14_Node_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ELb1EEEEOT_RNSt16remove_referenceIS9_E4typeE
	.def	_ZSt7forwardINSt8__detail14_Node_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ELb1EEEEOT_RNSt16remove_referenceIS9_E4typeE;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt7forwardINSt8__detail14_Node_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ELb1EEEEOT_RNSt16remove_referenceIS9_E4typeE
_ZSt7forwardINSt8__detail14_Node_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ELb1EEEEOT_RNSt16remove_referenceIS9_E4typeE:
.LFB4428:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE22_M_find_before_node_trIS5_EEPNS7_15_Hash_node_baseEyRKT_y,"x"
	.linkonce discard
	.align 2
	.globl	_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE22_M_find_before_node_trIS5_EEPNS7_15_Hash_node_baseEyRKT_y
	.def	_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE22_M_find_before_node_trIS5_EEPNS7_15_Hash_node_baseEyRKT_y;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE22_M_find_before_node_trIS5_EEPNS7_15_Hash_node_baseEyRKT_y
_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE22_M_find_before_node_trIS5_EEPNS7_15_Hash_node_baseEyRKT_y:
.LFB4429:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	%r8, 32(%rbp)
	movq	%r9, 40(%rbp)
	movq	16(%rbp), %rax
	movq	(%rax), %rax
	movq	24(%rbp), %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L738
	movl	$0, %eax
	jmp	.L739
.L738:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
.L746:
	movq	-16(%rbp), %rax
	leaq	8(%rax), %r8
	movq	40(%rbp), %rcx
	movq	32(%rbp), %rdx
	movq	16(%rbp), %rax
	movq	%r8, %r9
	movq	%rcx, %r8
	movq	%rax, %rcx
	call	_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE12_M_equals_trIS6_EEbRKT_yRKNS_16_Hash_node_valueIS6_Lb1EEE
	testb	%al, %al
	je	.L740
	movq	-8(%rbp), %rax
	jmp	.L739
.L740:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L741
	movq	-16(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNKSt8__detail10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EE7_M_nextEv
	leaq	8(%rax), %rdx
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE15_M_bucket_indexERKNS7_16_Hash_node_valueIS5_Lb1EEE
	cmpq	%rax, 24(%rbp)
	je	.L742
.L741:
	movl	$1, %eax
	jmp	.L743
.L742:
	movl	$0, %eax
.L743:
	testb	%al, %al
	jne	.L748
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNKSt8__detail10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EE7_M_nextEv
	movq	%rax, -16(%rbp)
	jmp	.L746
.L748:
	nop
	movl	$0, %eax
.L739:
	addq	$48, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNKSt8__detail10_AllocNodeISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEEclIJS7_EEEPS8_DpOT_,"x"
	.linkonce discard
	.align 2
	.globl	_ZNKSt8__detail10_AllocNodeISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEEclIJS7_EEEPS8_DpOT_
	.def	_ZNKSt8__detail10_AllocNodeISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEEclIJS7_EEEPS8_DpOT_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNKSt8__detail10_AllocNodeISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEEclIJS7_EEEPS8_DpOT_
_ZNKSt8__detail10_AllocNodeISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEEclIJS7_EEEPS8_DpOT_:
.LFB4430:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$40, %rsp
	.seh_stackalloc	40
	leaq	32(%rsp), %rbp
	.seh_setframe	%rbp, 32
	.seh_endprologue
	movq	%rcx, 32(%rbp)
	movq	%rdx, 40(%rbp)
	movq	32(%rbp), %rax
	movq	(%rax), %rbx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZSt7forwardINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEOT_RNSt16remove_referenceIS6_E4typeE
	movq	%rax, %rdx
	movq	%rbx, %rcx
	call	_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEE16_M_allocate_nodeIJS7_EEEPS8_DpOT_
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt8__detail17_RehashStateGuardINS_20_Prime_rehash_policyEEC1ERS1_,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt8__detail17_RehashStateGuardINS_20_Prime_rehash_policyEEC1ERS1_
	.def	_ZNSt8__detail17_RehashStateGuardINS_20_Prime_rehash_policyEEC1ERS1_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt8__detail17_RehashStateGuardINS_20_Prime_rehash_policyEEC1ERS1_
_ZNSt8__detail17_RehashStateGuardINS_20_Prime_rehash_policyEEC1ERS1_:
.LFB4433:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	24(%rbp), %rax
	movq	%rax, %rcx
	call	_ZSt11__addressofINSt8__detail20_Prime_rehash_policyEEPT_RS2_
	movq	16(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	24(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNKSt8__detail20_Prime_rehash_policy8_M_stateEv
	movq	16(%rbp), %rdx
	movq	%rax, 8(%rdx)
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt8__detail17_RehashStateGuardINS_20_Prime_rehash_policyEED1Ev,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt8__detail17_RehashStateGuardINS_20_Prime_rehash_policyEED1Ev
	.def	_ZNSt8__detail17_RehashStateGuardINS_20_Prime_rehash_policyEED1Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt8__detail17_RehashStateGuardINS_20_Prime_rehash_policyEED1Ev
_ZNSt8__detail17_RehashStateGuardINS_20_Prime_rehash_policyEED1Ev:
.LFB4436:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L754
	movq	16(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rbp), %rdx
	movq	8(%rdx), %rdx
	movq	%rax, %rcx
	call	_ZNSt8__detail20_Prime_rehash_policy8_M_resetEy
.L754:
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_rehashEySt17integral_constantIbLb1EE,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_rehashEySt17integral_constantIbLb1EE
	.def	_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_rehashEySt17integral_constantIbLb1EE;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_rehashEySt17integral_constantIbLb1EE
_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_rehashEySt17integral_constantIbLb1EE:
.LFB4437:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$80, %rsp
	.seh_stackalloc	80
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	24(%rbp), %rdx
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE19_M_allocate_bucketsEy
	movq	%rax, -24(%rbp)
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE8_M_beginEv
	movq	%rax, -8(%rbp)
	movq	16(%rbp), %rax
	movq	$0, 16(%rax)
	movq	$0, -16(%rbp)
	jmp	.L756
.L760:
	movq	-8(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNKSt8__detail10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EE7_M_nextEv
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	24(%rbp), %rcx
	movq	16(%rbp), %rax
	movq	%rcx, %r8
	movq	%rax, %rcx
	call	_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE15_M_bucket_indexERKNS_16_Hash_node_valueIS6_Lb1EEEy
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L757
	movq	16(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	movq	16(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, 16(%rax)
	movq	-40(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movq	16(%rbp), %rdx
	addq	$16, %rdx
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L758
	movq	-16(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-24(%rbp), %rax
	addq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rax, (%rdx)
.L758:
	movq	-40(%rbp), %rax
	movq	%rax, -16(%rbp)
	jmp	.L759
.L757:
	movq	-40(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-40(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, (%rax)
.L759:
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
.L756:
	cmpq	$0, -8(%rbp)
	jne	.L760
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE21_M_deallocate_bucketsEv
	movq	16(%rbp), %rax
	movq	24(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movq	16(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, (%rax)
	nop
	addq	$80, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE13_M_store_codeERNS_21_Hash_node_code_cacheILb1EEEy,"x"
	.linkonce discard
	.align 2
	.globl	_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE13_M_store_codeERNS_21_Hash_node_code_cacheILb1EEEy
	.def	_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE13_M_store_codeERNS_21_Hash_node_code_cacheILb1EEEy;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE13_M_store_codeERNS_21_Hash_node_code_cacheILb1EEEy
_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE13_M_store_codeERNS_21_Hash_node_code_cacheILb1EEEy:
.LFB4438:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	%r8, 32(%rbp)
	movq	24(%rbp), %rax
	movq	32(%rbp), %rdx
	movq	%rdx, (%rax)
	nop
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE22_M_insert_bucket_beginEyPNS7_10_Hash_nodeIS5_Lb1EEE,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE22_M_insert_bucket_beginEyPNS7_10_Hash_nodeIS5_Lb1EEE
	.def	_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE22_M_insert_bucket_beginEyPNS7_10_Hash_nodeIS5_Lb1EEE;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE22_M_insert_bucket_beginEyPNS7_10_Hash_nodeIS5_Lb1EEE
_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE22_M_insert_bucket_beginEyPNS7_10_Hash_nodeIS5_Lb1EEE:
.LFB4439:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$32, %rsp
	.seh_stackalloc	32
	leaq	32(%rsp), %rbp
	.seh_setframe	%rbp, 32
	.seh_endprologue
	movq	%rcx, 32(%rbp)
	movq	%rdx, 40(%rbp)
	movq	%r8, 48(%rbp)
	movq	32(%rbp), %rax
	movq	(%rax), %rax
	movq	40(%rbp), %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L763
	movq	32(%rbp), %rax
	movq	(%rax), %rax
	movq	40(%rbp), %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	(%rax), %rdx
	movq	48(%rbp), %rax
	movq	%rdx, (%rax)
	movq	32(%rbp), %rax
	movq	(%rax), %rax
	movq	40(%rbp), %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	48(%rbp), %rdx
	movq	%rdx, (%rax)
	jmp	.L766
.L763:
	movq	32(%rbp), %rax
	movq	16(%rax), %rdx
	movq	48(%rbp), %rax
	movq	%rdx, (%rax)
	movq	32(%rbp), %rax
	movq	48(%rbp), %rdx
	movq	%rdx, 16(%rax)
	movq	48(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L765
	movq	48(%rbp), %rbx
	movq	32(%rbp), %rax
	movq	(%rax), %rsi
	movq	48(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNKSt8__detail10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EE7_M_nextEv
	leaq	8(%rax), %rdx
	movq	32(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE15_M_bucket_indexERKNS7_16_Hash_node_valueIS5_Lb1EEE
	salq	$3, %rax
	addq	%rsi, %rax
	movq	%rbx, (%rax)
.L765:
	movq	32(%rbp), %rax
	movq	(%rax), %rax
	movq	40(%rbp), %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	32(%rbp), %rdx
	addq	$16, %rdx
	movq	%rdx, (%rax)
.L766:
	nop
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZSt7forwardIRNSt8__detail14_Node_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ELb1EEEEOT_RNSt16remove_referenceISA_E4typeE,"x"
	.linkonce discard
	.globl	_ZSt7forwardIRNSt8__detail14_Node_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ELb1EEEEOT_RNSt16remove_referenceISA_E4typeE
	.def	_ZSt7forwardIRNSt8__detail14_Node_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ELb1EEEEOT_RNSt16remove_referenceISA_E4typeE;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt7forwardIRNSt8__detail14_Node_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ELb1EEEEOT_RNSt16remove_referenceISA_E4typeE
_ZSt7forwardIRNSt8__detail14_Node_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ELb1EEEEOT_RNSt16remove_referenceISA_E4typeE:
.LFB4440:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE12_M_equals_trIS6_EEbRKT_yRKNS_16_Hash_node_valueIS6_Lb1EEE,"x"
	.linkonce discard
	.align 2
	.globl	_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE12_M_equals_trIS6_EEbRKT_yRKNS_16_Hash_node_valueIS6_Lb1EEE
	.def	_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE12_M_equals_trIS6_EEbRKT_yRKNS_16_Hash_node_valueIS6_Lb1EEE;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE12_M_equals_trIS6_EEbRKT_yRKNS_16_Hash_node_valueIS6_Lb1EEE
_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE12_M_equals_trIS6_EEbRKT_yRKNS_16_Hash_node_valueIS6_Lb1EEE:
.LFB4441:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	%r8, 32(%rbp)
	movq	%r9, 40(%rbp)
	movq	40(%rbp), %rax
	leaq	32(%rax), %rdx
	movq	32(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_S_equalsEyRKNS_21_Hash_node_code_cacheILb1EEE
	testb	%al, %al
	je	.L770
	movq	40(%rbp), %rcx
	movq	24(%rbp), %rdx
	movq	16(%rbp), %rax
	movq	%rcx, %r8
	movq	%rax, %rcx
	call	_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE16_M_key_equals_trIS6_EEbRKT_RKNS_16_Hash_node_valueIS6_Lb1EEE
	testb	%al, %al
	je	.L770
	movl	$1, %eax
	jmp	.L771
.L770:
	movl	$0, %eax
.L771:
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt8__detail10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEC1Ev,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt8__detail10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEC1Ev
	.def	_ZNSt8__detail10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEC1Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt8__detail10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEC1Ev
_ZNSt8__detail10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEC1Ev:
.LFB4445:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt8__detail15_Hash_node_baseC2Ev
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEE16_M_allocate_nodeIJS7_EEEPS8_DpOT_,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEE16_M_allocate_nodeIJS7_EEEPS8_DpOT_
	.def	_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEE16_M_allocate_nodeIJS7_EEEPS8_DpOT_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEE16_M_allocate_nodeIJS7_EEEPS8_DpOT_
_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEE16_M_allocate_nodeIJS7_EEEPS8_DpOT_:
.LFB4442:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$136, %rsp
	.seh_stackalloc	136
	leaq	128(%rsp), %rbp
	.seh_setframe	%rbp, 128
	.seh_endprologue
	movq	%rcx, 32(%rbp)
	movq	%rdx, 40(%rbp)
	movq	32(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEE17_M_node_allocatorEv
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -88(%rbp)
	movq	$1, -96(%rbp)
	movq	-96(%rbp), %rdx
	movq	-88(%rbp), %rax
	movl	$0, %r8d
	movq	%rax, %rcx
	call	_ZNSt15__new_allocatorINSt8__detail10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEE8allocateEyPKv
	nop
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rcx
	call	_ZSt12__to_addressINSt8__detail10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEPT_SA_
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdx
	movl	$48, %ecx
	call	_ZnwyPv
	movq	%rax, %rcx
	call	_ZNSt8__detail10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEC1Ev
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZSt7forwardINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEOT_RNSt16remove_referenceIS6_E4typeE
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN9__gnu_cxx16__aligned_bufferINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE6_M_ptrEv
	nop
	movq	-8(%rbp), %rdx
	movq	%rdx, -32(%rbp)
	movq	%rax, -40(%rbp)
	movq	%rbx, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, %rcx
	call	_ZSt7forwardINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEOT_RNSt16remove_referenceIS6_E4typeE
	movq	-40(%rbp), %rdx
	movq	%rdx, -56(%rbp)
	movq	%rax, -64(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -72(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, %rdx
	movl	$32, %ecx
	call	_ZnwyPv
	movq	%rax, %rbx
	movq	-64(%rbp), %rax
	movq	%rax, %rcx
	call	_ZSt7forwardINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEOT_RNSt16remove_referenceIS6_E4typeE
	movq	%rax, %rdx
	movq	%rbx, %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EOS4_
	nop
	nop
	movq	-24(%rbp), %rax
	addq	$136, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZSt11__addressofINSt8__detail20_Prime_rehash_policyEEPT_RS2_,"x"
	.linkonce discard
	.globl	_ZSt11__addressofINSt8__detail20_Prime_rehash_policyEEPT_RS2_
	.def	_ZSt11__addressofINSt8__detail20_Prime_rehash_policyEEPT_RS2_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt11__addressofINSt8__detail20_Prime_rehash_policyEEPT_RS2_
_ZSt11__addressofINSt8__detail20_Prime_rehash_policyEEPT_RS2_:
.LFB4446:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZSt12__to_addressINSt8__detail10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEPT_SA_,"x"
	.linkonce discard
	.globl	_ZSt12__to_addressINSt8__detail10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEPT_SA_
	.def	_ZSt12__to_addressINSt8__detail10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEPT_SA_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt12__to_addressINSt8__detail10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEPT_SA_
_ZSt12__to_addressINSt8__detail10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEPT_SA_:
.LFB4448:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt15__new_allocatorINSt8__detail10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEE8allocateEyPKv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt15__new_allocatorINSt8__detail10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEE8allocateEyPKv
	.def	_ZNSt15__new_allocatorINSt8__detail10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEE8allocateEyPKv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt15__new_allocatorINSt8__detail10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEE8allocateEyPKv
_ZNSt15__new_allocatorINSt8__detail10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEE8allocateEyPKv:
.LFB4450:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	%r8, 32(%rbp)
	movq	16(%rbp), %rax
	movq	%rax, -8(%rbp)
	movabsq	$192153584101141162, %rax
	cmpq	24(%rbp), %rax
	setb	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	setne	%al
	testb	%al, %al
	je	.L784
	movabsq	$384307168202282325, %rax
	cmpq	24(%rbp), %rax
	jnb	.L785
	call	_ZSt28__throw_bad_array_new_lengthv
.L785:
	call	_ZSt17__throw_bad_allocv
.L784:
	movq	24(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	movq	%rax, %rcx
	call	_Znwy
	nop
	addq	$48, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.globl	_ZGV12keywordsListB5cxx11
	.section	.data$_ZGV12keywordsListB5cxx11,"w"
	.linkonce same_size
	.align 8
_ZGV12keywordsListB5cxx11:
	.space 8
	.section	.text$_ZNSt13unordered_setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashIS5_ESt8equal_toIS5_ESaIS5_EED1Ev,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt13unordered_setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashIS5_ESt8equal_toIS5_ESaIS5_EED1Ev
	.def	_ZNSt13unordered_setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashIS5_ESt8equal_toIS5_ESaIS5_EED1Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt13unordered_setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashIS5_ESt8equal_toIS5_ESaIS5_EED1Ev
_ZNSt13unordered_setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashIS5_ESt8equal_toIS5_ESaIS5_EED1Ev:
.LFB4456:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEED1Ev
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.text
	.def	__tcf_0;	.scl	3;	.type	32;	.endef
	.seh_proc	__tcf_0
__tcf_0:
.LFB4457:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	leaq	_Z12keywordsListB5cxx11(%rip), %rax
	movq	%rax, %rcx
	call	_ZNSt13unordered_setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashIS5_ESt8equal_toIS5_ESaIS5_EED1Ev
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.def	_Z41__static_initialization_and_destruction_0v;	.scl	3;	.type	32;	.endef
	.seh_proc	_Z41__static_initialization_and_destruction_0v
_Z41__static_initialization_and_destruction_0v:
.LFB4453:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$88, %rsp
	.seh_stackalloc	88
	leaq	80(%rsp), %rbp
	.seh_setframe	%rbp, 80
	.seh_endprologue
	leaq	_ZGV12keywordsListB5cxx11(%rip), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L793
	leaq	_ZGV12keywordsListB5cxx11(%rip), %rax
	movb	$1, (%rax)
	leaq	176+C.60.0(%rip), %rdx
	leaq	-9(%rbp), %rax
	movq	%rax, -8(%rbp)
	nop
	nop
	leaq	-9(%rbp), %rax
	movq	%rax, 48(%rsp)
	leaq	-10(%rbp), %rax
	movq	%rax, 40(%rsp)
	leaq	-11(%rbp), %rax
	movq	%rax, 32(%rsp)
	movl	$0, %r9d
	movq	%rdx, %r8
	leaq	C.60.0(%rip), %rax
	movq	%rax, %rdx
	leaq	_Z12keywordsListB5cxx11(%rip), %rax
	movq	%rax, %rcx
.LEHB110:
	call	_ZNSt13unordered_setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashIS5_ESt8equal_toIS5_ESaIS5_EEC1IPKPKcEET_SH_yRKS7_RKS9_RKSA_
.LEHE110:
	leaq	-9(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev
	nop
	leaq	__tcf_0(%rip), %rax
	movq	%rax, %rcx
	call	atexit
	jmp	.L793
.L792:
	movq	%rax, %rbx
	leaq	-9(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev
	nop
	movq	%rbx, %rax
	movq	%rax, %rcx
.LEHB111:
	call	_Unwind_Resume
.LEHE111:
.L793:
	nop
	addq	$88, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA4453:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE4453-.LLSDACSB4453
.LLSDACSB4453:
	.uleb128 .LEHB110-.LFB4453
	.uleb128 .LEHE110-.LEHB110
	.uleb128 .L792-.LFB4453
	.uleb128 0
	.uleb128 .LEHB111-.LFB4453
	.uleb128 .LEHE111-.LEHB111
	.uleb128 0
	.uleb128 0
.LLSDACSE4453:
	.text
	.seh_endproc
	.section .rdata,"dr"
_ZNSt8__detail30__integer_to_chars_is_unsignedIjEE:
	.byte	1
_ZNSt8__detail30__integer_to_chars_is_unsignedImEE:
	.byte	1
_ZNSt8__detail30__integer_to_chars_is_unsignedIyEE:
	.byte	1
	.text
	.def	_GLOBAL__sub_I__ZN5LexerC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE;	.scl	3;	.type	32;	.endef
	.seh_proc	_GLOBAL__sub_I__ZN5LexerC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
_GLOBAL__sub_I__ZN5LexerC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:
.LFB4458:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	call	_Z41__static_initialization_and_destruction_0v
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.ctors,"w"
	.align 8
	.quad	_GLOBAL__sub_I__ZN5LexerC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
	.section .rdata,"dr"
.LC9:
	.ascii "start\0"
.LC10:
	.ascii "loop\0"
.LC11:
	.ascii "wait\0"
.LC12:
	.ascii "turn_on\0"
.LC13:
	.ascii "turn_off\0"
.LC14:
	.ascii "if\0"
.LC15:
	.ascii "elif\0"
.LC16:
	.ascii "else\0"
.LC17:
	.ascii "read_serial\0"
.LC18:
	.ascii "write\0"
.LC19:
	.ascii "read\0"
.LC20:
	.ascii "serial\0"
.LC21:
	.ascii "print\0"
.LC22:
	.ascii "println\0"
.LC23:
	.ascii "scale\0"
.LC24:
	.ascii "func\0"
.LC25:
	.ascii "return\0"
.LC26:
	.ascii "available\0"
.LC27:
	.ascii "every\0"
.LC28:
	.ascii "while\0"
.LC29:
	.ascii "repeat\0"
.LC30:
	.ascii "on_press\0"
	.align 32
C.60.0:
	.quad	.LC9
	.quad	.LC10
	.quad	.LC11
	.quad	.LC12
	.quad	.LC13
	.quad	.LC14
	.quad	.LC15
	.quad	.LC16
	.quad	.LC17
	.quad	.LC18
	.quad	.LC19
	.quad	.LC20
	.quad	.LC21
	.quad	.LC22
	.quad	.LC23
	.quad	.LC24
	.quad	.LC25
	.quad	.LC26
	.quad	.LC27
	.quad	.LC28
	.quad	.LC29
	.quad	.LC30
	.align 4
.LC8:
	.long	1065353216
	.def	__gxx_personality_seh0;	.scl	2;	.type	32;	.endef
	.ident	"GCC: (MinGW-W64 x86_64-ucrt-posix-seh, built by Brecht Sanders, r3) 14.1.0"
	.def	memcmp;	.scl	2;	.type	32;	.endef
	.def	strlen;	.scl	2;	.type	32;	.endef
	.def	_ZSt11_Hash_bytesPKvyy;	.scl	2;	.type	32;	.endef
	.def	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1Ev;	.scl	2;	.type	32;	.endef
	.def	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1ERKS4_;	.scl	2;	.type	32;	.endef
	.def	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_;	.scl	2;	.type	32;	.endef
	.def	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6lengthEv;	.scl	2;	.type	32;	.endef
	.def	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEixEy;	.scl	2;	.type	32;	.endef
	.def	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev;	.scl	2;	.type	32;	.endef
	.def	_Unwind_Resume;	.scl	2;	.type	32;	.endef
	.def	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEixEy;	.scl	2;	.type	32;	.endef
	.def	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc;	.scl	2;	.type	32;	.endef
	.def	exit;	.scl	2;	.type	32;	.endef
	.def	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc;	.scl	2;	.type	32;	.endef
	.def	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_set_lengthEy;	.scl	2;	.type	32;	.endef
	.def	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEy;	.scl	2;	.type	32;	.endef
	.def	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEv;	.scl	2;	.type	32;	.endef
	.def	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv;	.scl	2;	.type	32;	.endef
	.def	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderC1EPcRKS3_;	.scl	2;	.type	32;	.endef
	.def	_ZSt19__throw_logic_errorPKc;	.scl	2;	.type	32;	.endef
	.def	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEyc;	.scl	2;	.type	32;	.endef
	.def	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv;	.scl	2;	.type	32;	.endef
	.def	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERyy;	.scl	2;	.type	32;	.endef
	.def	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEPc;	.scl	2;	.type	32;	.endef
	.def	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_capacityEy;	.scl	2;	.type	32;	.endef
	.def	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_S_copy_charsEPcPKcS7_;	.scl	2;	.type	32;	.endef
	.def	memset;	.scl	2;	.type	32;	.endef
	.def	_ZSt20__throw_length_errorPKc;	.scl	2;	.type	32;	.endef
	.def	_ZNKSt8__detail20_Prime_rehash_policy11_M_next_bktEy;	.scl	2;	.type	32;	.endef
	.def	_ZdlPvy;	.scl	2;	.type	32;	.endef
	.def	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EOS4_;	.scl	2;	.type	32;	.endef
	.def	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4dataEv;	.scl	2;	.type	32;	.endef
	.def	_ZSt28__throw_bad_array_new_lengthv;	.scl	2;	.type	32;	.endef
	.def	_ZSt17__throw_bad_allocv;	.scl	2;	.type	32;	.endef
	.def	_Znwy;	.scl	2;	.type	32;	.endef
	.def	memcpy;	.scl	2;	.type	32;	.endef
	.def	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4sizeEv;	.scl	2;	.type	32;	.endef
	.def	_ZNKSt8__detail20_Prime_rehash_policy14_M_need_rehashEyyy;	.scl	2;	.type	32;	.endef
	.def	atexit;	.scl	2;	.type	32;	.endef
	.section	.rdata$.refptr._ZSt4cerr, "dr"
	.globl	.refptr._ZSt4cerr
	.linkonce	discard
.refptr._ZSt4cerr:
	.quad	_ZSt4cerr
