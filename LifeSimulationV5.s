	.file	"LifeSimulationV5.cpp"
	.text
	.section .rdata,"dr"
_ZStL19piecewise_construct:
	.space 1
	.section	.text$_ZnwyPv,"x"
	.linkonce discard
	.globl	_ZnwyPv
	.def	_ZnwyPv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZnwyPv
_ZnwyPv:
.LFB387:
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
.lcomm _ZStL8__ioinit,1,1
	.section .rdata,"dr"
	.align 4
_ZL6TSIZEE:
	.long	50
	.globl	TABLE
	.bss
	.align 32
TABLE:
	.space 2500
	.globl	TABLE2
	.align 32
TABLE2:
	.space 2500
	.globl	LIVE_SQUARES
	.align 16
LIVE_SQUARES:
	.space 24
	.globl	LIVE_SQUARES2
	.align 16
LIVE_SQUARES2:
	.space 24
	.section .rdata,"dr"
_ZL15PrintableSquare:
	.byte	-37
	.def	__main;	.scl	2;	.type	32;	.endef
.LC0:
	.ascii "Start?\0"
.LC1:
	.ascii "Creating random data\0"
.LC2:
	.ascii "starting simulation\0"
	.text
	.globl	main
	.def	main;	.scl	2;	.type	32;	.endef
	.seh_proc	main
main:
.LFB6584:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	call	__main
	movl	$0, %ecx
	call	time
	movl	%eax, %ecx
	call	srand
	leaq	.LC0(%rip), %rdx
	movq	.refptr._ZSt4cout(%rip), %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%rip), %rdx
	movq	%rax, %rcx
	call	_ZNSolsEPFRSoS_E
	call	getchar
	leaq	.LC1(%rip), %rdx
	movq	.refptr._ZSt4cout(%rip), %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%rip), %rdx
	movq	%rax, %rcx
	call	_ZNSolsEPFRSoS_E
	call	_Z19CreateRandomStartupv
	leaq	.LC2(%rip), %rdx
	movq	.refptr._ZSt4cout(%rip), %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	call	_Z10PrintTablev
.L4:
	call	_Z7DoStuffv
	call	_Z10PrintTablev
	movl	$500, %ecx
	movq	__imp_Sleep(%rip), %rax
	call	*%rax
	jmp	.L4
	.seh_endproc
	.globl	_Z19CreateRandomStartupv
	.def	_Z19CreateRandomStartupv;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z19CreateRandomStartupv
_Z19CreateRandomStartupv:
.LFB6585:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$80, %rsp
	.seh_stackalloc	80
	.seh_endprologue
	movl	$0, -4(%rbp)
.L12:
	cmpl	$49, -4(%rbp)
	jg	.L6
	movl	$0, -8(%rbp)
.L11:
	cmpl	$49, -8(%rbp)
	jg	.L7
	call	rand
	andl	$1, %eax
	testl	%eax, %eax
	je	.L8
	call	rand
	andl	$1, %eax
	testl	%eax, %eax
	je	.L8
	call	rand
	andl	$1, %eax
	testl	%eax, %eax
	je	.L8
	movl	$1, %ecx
	jmp	.L9
.L8:
	movl	$0, %ecx
.L9:
	movl	-8(%rbp), %eax
	cltq
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	imulq	$50, %rdx, %rdx
	addq	%rax, %rdx
	leaq	TABLE(%rip), %rax
	addq	%rdx, %rax
	movb	%cl, (%rax)
	movl	-8(%rbp), %eax
	cltq
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	imulq	$50, %rdx, %rdx
	addq	%rax, %rdx
	leaq	TABLE(%rip), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L10
	movl	-4(%rbp), %eax
	movl	%eax, -48(%rbp)
	movl	-8(%rbp), %eax
	movl	%eax, -44(%rbp)
	leaq	LIVE_SQUARES(%rip), %rcx
	call	_ZNSt6vectorI6SquareSaIS0_EE3endEv
	movq	%rax, -32(%rbp)
	leaq	-32(%rbp), %rdx
	leaq	-40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN9__gnu_cxx17__normal_iteratorIPK6SquareSt6vectorIS1_SaIS1_EEEC1IPS1_EERKNS0_IT_NS_11__enable_ifIXsrSt10__are_sameISA_S9_E7__valueES6_E6__typeEEE
	leaq	-48(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %r8
	movq	%rax, %rdx
	leaq	LIVE_SQUARES(%rip), %rcx
	call	_ZNSt6vectorI6SquareSaIS0_EE6insertEN9__gnu_cxx17__normal_iteratorIPKS0_S2_EERS5_
.L10:
	addl	$1, -8(%rbp)
	jmp	.L11
.L7:
	addl	$1, -4(%rbp)
	jmp	.L12
.L6:
	movq	$0, -16(%rbp)
.L16:
	cmpq	$49, -16(%rbp)
	ja	.L17
	movq	$0, -24(%rbp)
.L15:
	cmpq	$49, -24(%rbp)
	ja	.L14
	movq	-16(%rbp), %rax
	imulq	$50, %rax, %rax
	movq	-24(%rbp), %rdx
	addq	%rax, %rdx
	leaq	TABLE(%rip), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movq	-16(%rbp), %rdx
	imulq	$50, %rdx, %rdx
	movq	-24(%rbp), %rcx
	addq	%rdx, %rcx
	leaq	TABLE2(%rip), %rdx
	addq	%rcx, %rdx
	movb	%al, (%rdx)
	addq	$1, -24(%rbp)
	jmp	.L15
.L14:
	addq	$1, -16(%rbp)
	jmp	.L16
.L17:
	nop
	addq	$80, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.globl	_Z16SurroundingCellsP6Square
	.def	_Z16SurroundingCellsP6Square;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z16SurroundingCellsP6Square
_Z16SurroundingCellsP6Square:
.LFB6586:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$64, %rsp
	.seh_stackalloc	64
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movl	$0, -4(%rbp)
	movl	$-1, -8(%rbp)
.L25:
	cmpl	$1, -8(%rbp)
	jg	.L19
	movq	16(%rbp), %rax
	movl	(%rax), %edx
	movl	-8(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -16(%rbp)
	movl	$-1, -12(%rbp)
.L24:
	cmpl	$1, -12(%rbp)
	jg	.L20
	movq	16(%rbp), %rax
	movl	4(%rax), %edx
	movl	-12(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -20(%rbp)
	movl	-20(%rbp), %edx
	movl	-16(%rbp), %eax
	movl	%eax, %ecx
	call	_Z10CellExistsll
	testb	%al, %al
	je	.L21
	movl	-20(%rbp), %eax
	cltq
	movl	-16(%rbp), %edx
	movslq	%edx, %rdx
	imulq	$50, %rdx, %rdx
	addq	%rax, %rdx
	leaq	TABLE(%rip), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L21
	movq	16(%rbp), %rax
	movl	(%rax), %eax
	cmpl	%eax, -16(%rbp)
	jne	.L22
	movq	16(%rbp), %rax
	movl	4(%rax), %eax
	cmpl	%eax, -20(%rbp)
	je	.L21
.L22:
	addl	$1, -4(%rbp)
.L21:
	addl	$1, -12(%rbp)
	jmp	.L24
.L20:
	addl	$1, -8(%rbp)
	jmp	.L25
.L19:
	movl	-4(%rbp), %eax
	addq	$64, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.globl	_Z16SurroundingCellsll
	.def	_Z16SurroundingCellsll;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z16SurroundingCellsll
_Z16SurroundingCellsll:
.LFB6587:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$64, %rsp
	.seh_stackalloc	64
	.seh_endprologue
	movl	%ecx, 16(%rbp)
	movl	%edx, 24(%rbp)
	movl	$0, -4(%rbp)
	movl	$-1, -8(%rbp)
.L34:
	cmpl	$1, -8(%rbp)
	jg	.L28
	movl	16(%rbp), %edx
	movl	-8(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -16(%rbp)
	movl	$-1, -12(%rbp)
.L33:
	cmpl	$1, -12(%rbp)
	jg	.L29
	movl	24(%rbp), %edx
	movl	-12(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -20(%rbp)
	movl	-20(%rbp), %edx
	movl	-16(%rbp), %eax
	movl	%eax, %ecx
	call	_Z10CellExistsll
	testb	%al, %al
	je	.L30
	movl	-20(%rbp), %eax
	cltq
	movl	-16(%rbp), %edx
	movslq	%edx, %rdx
	imulq	$50, %rdx, %rdx
	addq	%rax, %rdx
	leaq	TABLE(%rip), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L30
	movl	-16(%rbp), %eax
	cmpl	16(%rbp), %eax
	jne	.L31
	movl	-20(%rbp), %eax
	cmpl	24(%rbp), %eax
	je	.L30
.L31:
	addl	$1, -4(%rbp)
.L30:
	addl	$1, -12(%rbp)
	jmp	.L33
.L29:
	addl	$1, -8(%rbp)
	jmp	.L34
.L28:
	movl	-4(%rbp), %eax
	addq	$64, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.globl	_Z7DoStuffv
	.def	_Z7DoStuffv;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z7DoStuffv
_Z7DoStuffv:
.LFB6588:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$104, %rsp
	.seh_stackalloc	104
	leaq	128(%rsp), %rbp
	.seh_setframe	%rbp, 128
	.seh_endprologue
	movq	$0, -40(%rbp)
.L40:
	leaq	LIVE_SQUARES(%rip), %rcx
	call	_ZNKSt6vectorI6SquareSaIS0_EE4sizeEv
	cmpq	%rax, -40(%rbp)
	setb	%al
	testb	%al, %al
	je	.L37
	movq	-40(%rbp), %rax
	movq	%rax, %rdx
	leaq	LIVE_SQUARES(%rip), %rcx
	call	_ZNSt6vectorI6SquareSaIS0_EEixEy
	movq	%rax, %rcx
	call	_Z16SurroundingCellsP6Square
	movl	%eax, -68(%rbp)
	cmpl	$2, -68(%rbp)
	je	.L38
	cmpl	$3, -68(%rbp)
	je	.L38
	movq	-40(%rbp), %rax
	movq	%rax, %rdx
	leaq	LIVE_SQUARES(%rip), %rcx
	call	_ZNSt6vectorI6SquareSaIS0_EEixEy
	movl	(%rax), %ebx
	movq	-40(%rbp), %rax
	movq	%rax, %rdx
	leaq	LIVE_SQUARES(%rip), %rcx
	call	_ZNSt6vectorI6SquareSaIS0_EEixEy
	movl	4(%rax), %eax
	cltq
	movslq	%ebx, %rdx
	imulq	$50, %rdx, %rdx
	addq	%rax, %rdx
	leaq	TABLE2(%rip), %rax
	addq	%rdx, %rax
	movb	$0, (%rax)
	jmp	.L39
.L38:
	movq	-40(%rbp), %rax
	movq	%rax, %rdx
	leaq	LIVE_SQUARES(%rip), %rcx
	call	_ZNSt6vectorI6SquareSaIS0_EEixEy
	movq	%rax, %rbx
	leaq	LIVE_SQUARES2(%rip), %rcx
	call	_ZNSt6vectorI6SquareSaIS0_EE3endEv
	movq	%rax, -80(%rbp)
	leaq	-80(%rbp), %rdx
	leaq	-88(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN9__gnu_cxx17__normal_iteratorIPK6SquareSt6vectorIS1_SaIS1_EEEC1IPS1_EERKNS0_IT_NS_11__enable_ifIXsrSt10__are_sameISA_S9_E7__valueES6_E6__typeEEE
	movq	-88(%rbp), %rax
	movq	%rbx, %r8
	movq	%rax, %rdx
	leaq	LIVE_SQUARES2(%rip), %rcx
	call	_ZNSt6vectorI6SquareSaIS0_EE6insertEN9__gnu_cxx17__normal_iteratorIPKS0_S2_EERS5_
.L39:
	addq	$1, -40(%rbp)
	jmp	.L40
.L37:
	movq	$0, -48(%rbp)
.L42:
	leaq	LIVE_SQUARES(%rip), %rcx
	call	_ZNKSt6vectorI6SquareSaIS0_EE4sizeEv
	cmpq	%rax, -48(%rbp)
	setb	%al
	testb	%al, %al
	je	.L41
	movq	-48(%rbp), %rax
	movq	%rax, %rdx
	leaq	LIVE_SQUARES(%rip), %rcx
	call	_ZNSt6vectorI6SquareSaIS0_EEixEy
	movq	%rax, %rcx
	call	_Z16GenerateNewCellsP6Square
	addq	$1, -48(%rbp)
	jmp	.L42
.L41:
	movq	$0, -56(%rbp)
.L46:
	cmpq	$49, -56(%rbp)
	ja	.L43
	movq	$0, -64(%rbp)
.L45:
	cmpq	$49, -64(%rbp)
	ja	.L44
	movq	-56(%rbp), %rax
	imulq	$50, %rax, %rax
	movq	-64(%rbp), %rdx
	addq	%rax, %rdx
	leaq	TABLE2(%rip), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movq	-56(%rbp), %rdx
	imulq	$50, %rdx, %rdx
	movq	-64(%rbp), %rcx
	addq	%rdx, %rcx
	leaq	TABLE(%rip), %rdx
	addq	%rcx, %rdx
	movb	%al, (%rdx)
	addq	$1, -64(%rbp)
	jmp	.L45
.L44:
	addq	$1, -56(%rbp)
	jmp	.L46
.L43:
	leaq	LIVE_SQUARES(%rip), %rcx
	call	_ZNSt6vectorI6SquareSaIS0_EE5clearEv
	leaq	LIVE_SQUARES(%rip), %rcx
	call	_ZNSt6vectorI6SquareSaIS0_EE13shrink_to_fitEv
	leaq	LIVE_SQUARES2(%rip), %rdx
	leaq	LIVE_SQUARES(%rip), %rcx
	call	_ZNSt6vectorI6SquareSaIS0_EEaSERKS2_
	leaq	LIVE_SQUARES2(%rip), %rcx
	call	_ZNSt6vectorI6SquareSaIS0_EE5clearEv
	leaq	LIVE_SQUARES2(%rip), %rcx
	call	_ZNSt6vectorI6SquareSaIS0_EE13shrink_to_fitEv
	nop
	addq	$104, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.seh_endproc
	.globl	_Z16GenerateNewCellsP6Square
	.def	_Z16GenerateNewCellsP6Square;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z16GenerateNewCellsP6Square
_Z16GenerateNewCellsP6Square:
.LFB6589:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$80, %rsp
	.seh_stackalloc	80
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movl	$-1, -4(%rbp)
.L54:
	cmpl	$1, -4(%rbp)
	jg	.L56
	movq	16(%rbp), %rax
	movl	(%rax), %edx
	movl	-4(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -12(%rbp)
	movl	$-1, -8(%rbp)
.L53:
	cmpl	$1, -8(%rbp)
	jg	.L49
	movq	16(%rbp), %rax
	movl	4(%rax), %edx
	movl	-8(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -16(%rbp)
	movl	-16(%rbp), %edx
	movl	-12(%rbp), %eax
	movl	%eax, %ecx
	call	_Z10CellExistsll
	testb	%al, %al
	je	.L50
	movl	-16(%rbp), %eax
	cltq
	movl	-12(%rbp), %edx
	movslq	%edx, %rdx
	imulq	$50, %rdx, %rdx
	addq	%rax, %rdx
	leaq	TABLE2(%rip), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.L50
	movl	-16(%rbp), %edx
	movl	-12(%rbp), %eax
	movl	%eax, %ecx
	call	_Z16SurroundingCellsll
	cmpl	$3, %eax
	sete	%al
	testb	%al, %al
	je	.L50
	movl	-12(%rbp), %eax
	movl	%eax, -40(%rbp)
	movl	-16(%rbp), %eax
	movl	%eax, -36(%rbp)
	movl	-16(%rbp), %eax
	cltq
	movl	-12(%rbp), %edx
	movslq	%edx, %rdx
	imulq	$50, %rdx, %rdx
	addq	%rax, %rdx
	leaq	TABLE2(%rip), %rax
	addq	%rdx, %rax
	movb	$1, (%rax)
	leaq	LIVE_SQUARES2(%rip), %rcx
	call	_ZNSt6vectorI6SquareSaIS0_EE3endEv
	movq	%rax, -24(%rbp)
	leaq	-24(%rbp), %rdx
	leaq	-32(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN9__gnu_cxx17__normal_iteratorIPK6SquareSt6vectorIS1_SaIS1_EEEC1IPS1_EERKNS0_IT_NS_11__enable_ifIXsrSt10__are_sameISA_S9_E7__valueES6_E6__typeEEE
	leaq	-40(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %r8
	movq	%rax, %rdx
	leaq	LIVE_SQUARES2(%rip), %rcx
	call	_ZNSt6vectorI6SquareSaIS0_EE6insertEN9__gnu_cxx17__normal_iteratorIPKS0_S2_EERS5_
.L50:
	addl	$1, -8(%rbp)
	jmp	.L53
.L49:
	addl	$1, -4(%rbp)
	jmp	.L54
.L56:
	nop
	addq	$80, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section .rdata,"dr"
.LC3:
	.ascii "CLS\0"
.LC4:
	.ascii "  \0"
.LC5:
	.ascii "\12\0"
	.text
	.globl	_Z10PrintTablev
	.def	_Z10PrintTablev;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z10PrintTablev
_Z10PrintTablev:
.LFB6590:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	leaq	.LC3(%rip), %rcx
	call	system
	movq	$0, -8(%rbp)
.L63:
	cmpq	$49, -8(%rbp)
	ja	.L58
	movq	$0, -16(%rbp)
.L62:
	cmpq	$49, -16(%rbp)
	ja	.L59
	movq	-8(%rbp), %rax
	imulq	$50, %rax, %rax
	movq	-16(%rbp), %rdx
	addq	%rax, %rdx
	leaq	TABLE(%rip), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L60
	movl	$-37, %edx
	movq	.refptr._ZSt4cout(%rip), %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c
	movl	$-37, %edx
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c
	jmp	.L61
.L60:
	leaq	.LC4(%rip), %rdx
	movq	.refptr._ZSt4cout(%rip), %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
.L61:
	addq	$1, -16(%rbp)
	jmp	.L62
.L59:
	leaq	.LC5(%rip), %rdx
	movq	.refptr._ZSt4cout(%rip), %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	addq	$1, -8(%rbp)
	jmp	.L63
.L58:
	movq	.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%rip), %rdx
	movq	.refptr._ZSt4cout(%rip), %rcx
	call	_ZNSolsEPFRSoS_E
	nop
	addq	$48, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.globl	_Z10CellExistsll
	.def	_Z10CellExistsll;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z10CellExistsll
_Z10CellExistsll:
.LFB6591:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movl	%ecx, 16(%rbp)
	movl	%edx, 24(%rbp)
	cmpl	$0, 16(%rbp)
	js	.L65
	cmpl	$0, 24(%rbp)
	js	.L65
	cmpl	$49, 16(%rbp)
	jg	.L65
	cmpl	$49, 24(%rbp)
	jle	.L66
.L65:
	movl	$0, %eax
	jmp	.L67
.L66:
	movl	$1, %eax
.L67:
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt6vectorI6SquareSaIS0_EEC1Ev,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt6vectorI6SquareSaIS0_EEC1Ev
	.def	_ZNSt6vectorI6SquareSaIS0_EEC1Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt6vectorI6SquareSaIS0_EEC1Ev
_ZNSt6vectorI6SquareSaIS0_EEC1Ev:
.LFB6830:
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
	call	_ZNSt12_Vector_baseI6SquareSaIS0_EEC2Ev
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.def	__gxx_personality_seh0;	.scl	2;	.type	32;	.endef
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA6830:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE6830-.LLSDACSB6830
.LLSDACSB6830:
.LLSDACSE6830:
	.section	.text$_ZNSt6vectorI6SquareSaIS0_EEC1Ev,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_ZNSt6vectorI6SquareSaIS0_EE3endEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt6vectorI6SquareSaIS0_EE3endEv
	.def	_ZNSt6vectorI6SquareSaIS0_EE3endEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt6vectorI6SquareSaIS0_EE3endEv
_ZNSt6vectorI6SquareSaIS0_EE3endEv:
.LFB6834:
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
	call	_ZN9__gnu_cxx17__normal_iteratorIP6SquareSt6vectorIS1_SaIS1_EEEC1ERKS2_
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZN9__gnu_cxx17__normal_iteratorIPK6SquareSt6vectorIS1_SaIS1_EEEC1IPS1_EERKNS0_IT_NS_11__enable_ifIXsrSt10__are_sameISA_S9_E7__valueES6_E6__typeEEE,"x"
	.linkonce discard
	.align 2
	.globl	_ZN9__gnu_cxx17__normal_iteratorIPK6SquareSt6vectorIS1_SaIS1_EEEC1IPS1_EERKNS0_IT_NS_11__enable_ifIXsrSt10__are_sameISA_S9_E7__valueES6_E6__typeEEE
	.def	_ZN9__gnu_cxx17__normal_iteratorIPK6SquareSt6vectorIS1_SaIS1_EEEC1IPS1_EERKNS0_IT_NS_11__enable_ifIXsrSt10__are_sameISA_S9_E7__valueES6_E6__typeEEE;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN9__gnu_cxx17__normal_iteratorIPK6SquareSt6vectorIS1_SaIS1_EEEC1IPS1_EERKNS0_IT_NS_11__enable_ifIXsrSt10__are_sameISA_S9_E7__valueES6_E6__typeEEE
_ZN9__gnu_cxx17__normal_iteratorIPK6SquareSt6vectorIS1_SaIS1_EEEC1IPS1_EERKNS0_IT_NS_11__enable_ifIXsrSt10__are_sameISA_S9_E7__valueES6_E6__typeEEE:
.LFB6837:
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
	call	_ZNK9__gnu_cxx17__normal_iteratorIP6SquareSt6vectorIS1_SaIS1_EEE4baseEv
	movq	(%rax), %rdx
	movq	16(%rbp), %rax
	movq	%rdx, (%rax)
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt6vectorI6SquareSaIS0_EE6insertEN9__gnu_cxx17__normal_iteratorIPKS0_S2_EERS5_,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt6vectorI6SquareSaIS0_EE6insertEN9__gnu_cxx17__normal_iteratorIPKS0_S2_EERS5_
	.def	_ZNSt6vectorI6SquareSaIS0_EE6insertEN9__gnu_cxx17__normal_iteratorIPKS0_S2_EERS5_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt6vectorI6SquareSaIS0_EE6insertEN9__gnu_cxx17__normal_iteratorIPKS0_S2_EERS5_
_ZNSt6vectorI6SquareSaIS0_EE6insertEN9__gnu_cxx17__normal_iteratorIPKS0_S2_EERS5_:
.LFB6838:
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
	movq	%r8, 48(%rbp)
	movq	32(%rbp), %rcx
	call	_ZNSt6vectorI6SquareSaIS0_EE5beginEv
	movq	%rax, -72(%rbp)
	leaq	-72(%rbp), %rdx
	leaq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN9__gnu_cxxmiIPK6SquarePS1_St6vectorIS1_SaIS1_EEEEDTmicldtfp_4baseEcldtfp0_4baseEERKNS_17__normal_iteratorIT_T1_EERKNS9_IT0_SB_EE
	movq	%rax, -8(%rbp)
	movq	32(%rbp), %rax
	movq	8(%rax), %rdx
	movq	32(%rbp), %rax
	movq	16(%rax), %rax
	cmpq	%rax, %rdx
	je	.L73
	movq	32(%rbp), %rcx
	call	_ZNSt6vectorI6SquareSaIS0_EE3endEv
	movq	%rax, -64(%rbp)
	leaq	-64(%rbp), %rdx
	leaq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN9__gnu_cxxeqIPK6SquarePS1_St6vectorIS1_SaIS1_EEEEbRKNS_17__normal_iteratorIT_T1_EERKNS8_IT0_SA_EE
	testb	%al, %al
	je	.L74
	movq	32(%rbp), %rax
	movq	8(%rax), %rdx
	movq	32(%rbp), %rax
	movq	48(%rbp), %rcx
	movq	%rcx, %r8
	movq	%rax, %rcx
.LEHB0:
	call	_ZNSt16allocator_traitsISaI6SquareEE9constructIS0_JRKS0_EEEvRS1_PT_DpOT0_
	movq	32(%rbp), %rax
	movq	8(%rax), %rax
	leaq	8(%rax), %rdx
	movq	32(%rbp), %rax
	movq	%rdx, 8(%rax)
	jmp	.L76
.L74:
	movq	32(%rbp), %rcx
	call	_ZNKSt6vectorI6SquareSaIS0_EE6cbeginEv
	movq	%rax, -56(%rbp)
	leaq	-56(%rbp), %rdx
	leaq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN9__gnu_cxxmiIPK6SquareSt6vectorIS1_SaIS1_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSA_SD_
	movq	%rax, %rbx
	movq	32(%rbp), %rcx
	call	_ZNSt6vectorI6SquareSaIS0_EE5beginEv
	movq	%rax, -48(%rbp)
	leaq	-48(%rbp), %rax
	movq	%rbx, %rdx
	movq	%rax, %rcx
	call	_ZNK9__gnu_cxx17__normal_iteratorIP6SquareSt6vectorIS1_SaIS1_EEEplEx
	movq	%rax, -80(%rbp)
	movq	48(%rbp), %rdx
	leaq	-96(%rbp), %rax
	movq	%rdx, %r8
	movq	32(%rbp), %rdx
	movq	%rax, %rcx
	call	_ZNSt6vectorI6SquareSaIS0_EE16_Temporary_valueC1IJRKS0_EEEPS2_DpOT_
.LEHE0:
	leaq	-96(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI6SquareSaIS0_EE16_Temporary_value6_M_valEv
	movq	%rax, %rcx
	call	_ZSt4moveIR6SquareEONSt16remove_referenceIT_E4typeEOS3_
	movq	%rax, %rdx
	movq	-80(%rbp), %rax
	movq	%rdx, %r8
	movq	%rax, %rdx
	movq	32(%rbp), %rcx
.LEHB1:
	call	_ZNSt6vectorI6SquareSaIS0_EE13_M_insert_auxIS0_EEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEOT_
.LEHE1:
	leaq	-96(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI6SquareSaIS0_EE16_Temporary_valueD1Ev
	jmp	.L76
.L73:
	movq	32(%rbp), %rcx
	call	_ZNKSt6vectorI6SquareSaIS0_EE6cbeginEv
	movq	%rax, -40(%rbp)
	leaq	-40(%rbp), %rdx
	leaq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN9__gnu_cxxmiIPK6SquareSt6vectorIS1_SaIS1_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSA_SD_
	movq	%rax, %rbx
	movq	32(%rbp), %rcx
	call	_ZNSt6vectorI6SquareSaIS0_EE5beginEv
	movq	%rax, -32(%rbp)
	leaq	-32(%rbp), %rax
	movq	%rbx, %rdx
	movq	%rax, %rcx
	call	_ZNK9__gnu_cxx17__normal_iteratorIP6SquareSt6vectorIS1_SaIS1_EEEplEx
	movq	%rax, %rdx
	movq	48(%rbp), %rax
	movq	%rax, %r8
	movq	32(%rbp), %rcx
.LEHB2:
	call	_ZNSt6vectorI6SquareSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_
.L76:
	movq	32(%rbp), %rax
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	salq	$3, %rax
	addq	%rdx, %rax
	movq	%rax, -16(%rbp)
	leaq	-16(%rbp), %rdx
	leaq	-24(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN9__gnu_cxx17__normal_iteratorIP6SquareSt6vectorIS1_SaIS1_EEEC1ERKS2_
	movq	-24(%rbp), %rax
	jmp	.L80
.L79:
	movq	%rax, %rbx
	leaq	-96(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI6SquareSaIS0_EE16_Temporary_valueD1Ev
	movq	%rbx, %rax
	movq	%rax, %rcx
	call	_Unwind_Resume
.LEHE2:
.L80:
	addq	$136, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA6838:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE6838-.LLSDACSB6838
.LLSDACSB6838:
	.uleb128 .LEHB0-.LFB6838
	.uleb128 .LEHE0-.LEHB0
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB1-.LFB6838
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L79-.LFB6838
	.uleb128 0
	.uleb128 .LEHB2-.LFB6838
	.uleb128 .LEHE2-.LEHB2
	.uleb128 0
	.uleb128 0
.LLSDACSE6838:
	.section	.text$_ZNSt6vectorI6SquareSaIS0_EE6insertEN9__gnu_cxx17__normal_iteratorIPKS0_S2_EERS5_,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_ZNKSt6vectorI6SquareSaIS0_EE4sizeEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNKSt6vectorI6SquareSaIS0_EE4sizeEv
	.def	_ZNKSt6vectorI6SquareSaIS0_EE4sizeEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNKSt6vectorI6SquareSaIS0_EE4sizeEv
_ZNKSt6vectorI6SquareSaIS0_EE4sizeEv:
.LFB6839:
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
	sarq	$3, %rax
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt6vectorI6SquareSaIS0_EEixEy,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt6vectorI6SquareSaIS0_EEixEy
	.def	_ZNSt6vectorI6SquareSaIS0_EEixEy;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt6vectorI6SquareSaIS0_EEixEy
_ZNSt6vectorI6SquareSaIS0_EEixEy:
.LFB6840:
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
	salq	$3, %rax
	addq	%rdx, %rax
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt6vectorI6SquareSaIS0_EE5clearEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt6vectorI6SquareSaIS0_EE5clearEv
	.def	_ZNSt6vectorI6SquareSaIS0_EE5clearEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt6vectorI6SquareSaIS0_EE5clearEv
_ZNSt6vectorI6SquareSaIS0_EE5clearEv:
.LFB6841:
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
	movq	%rax, %rdx
	movq	16(%rbp), %rcx
	call	_ZNSt6vectorI6SquareSaIS0_EE15_M_erase_at_endEPS0_
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt6vectorI6SquareSaIS0_EE13shrink_to_fitEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt6vectorI6SquareSaIS0_EE13shrink_to_fitEv
	.def	_ZNSt6vectorI6SquareSaIS0_EE13shrink_to_fitEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt6vectorI6SquareSaIS0_EE13shrink_to_fitEv
_ZNSt6vectorI6SquareSaIS0_EE13shrink_to_fitEv:
.LFB6842:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rcx
	call	_ZNSt6vectorI6SquareSaIS0_EE16_M_shrink_to_fitEv
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZN9__gnu_cxx14__alloc_traitsISaI6SquareES1_E27_S_propagate_on_copy_assignEv,"x"
	.linkonce discard
	.globl	_ZN9__gnu_cxx14__alloc_traitsISaI6SquareES1_E27_S_propagate_on_copy_assignEv
	.def	_ZN9__gnu_cxx14__alloc_traitsISaI6SquareES1_E27_S_propagate_on_copy_assignEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN9__gnu_cxx14__alloc_traitsISaI6SquareES1_E27_S_propagate_on_copy_assignEv
_ZN9__gnu_cxx14__alloc_traitsISaI6SquareES1_E27_S_propagate_on_copy_assignEv:
.LFB6844:
	.seh_endprologue
	movl	$0, %eax
	ret
	.seh_endproc
	.section	.text$_ZN9__gnu_cxx14__alloc_traitsISaI6SquareES1_E15_S_always_equalEv,"x"
	.linkonce discard
	.globl	_ZN9__gnu_cxx14__alloc_traitsISaI6SquareES1_E15_S_always_equalEv
	.def	_ZN9__gnu_cxx14__alloc_traitsISaI6SquareES1_E15_S_always_equalEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN9__gnu_cxx14__alloc_traitsISaI6SquareES1_E15_S_always_equalEv
_ZN9__gnu_cxx14__alloc_traitsISaI6SquareES1_E15_S_always_equalEv:
.LFB6845:
	.seh_endprologue
	movl	$1, %eax
	ret
	.seh_endproc
	.section	.text$_ZNSt6vectorI6SquareSaIS0_EEaSERKS2_,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt6vectorI6SquareSaIS0_EEaSERKS2_
	.def	_ZNSt6vectorI6SquareSaIS0_EEaSERKS2_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt6vectorI6SquareSaIS0_EEaSERKS2_
_ZNSt6vectorI6SquareSaIS0_EEaSERKS2_:
.LFB6843:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%r12
	.seh_pushreg	%r12
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	movq	%rcx, 48(%rbp)
	movq	%rdx, 56(%rbp)
	movq	56(%rbp), %rax
	cmpq	48(%rbp), %rax
	je	.L92
	call	_ZN9__gnu_cxx14__alloc_traitsISaI6SquareES1_E27_S_propagate_on_copy_assignEv
	testb	%al, %al
	je	.L93
	call	_ZN9__gnu_cxx14__alloc_traitsISaI6SquareES1_E15_S_always_equalEv
	xorl	$1, %eax
	testb	%al, %al
	je	.L94
	movq	56(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNKSt12_Vector_baseI6SquareSaIS0_EE19_M_get_Tp_allocatorEv
	movq	%rax, %rbx
	movq	48(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt12_Vector_baseI6SquareSaIS0_EE19_M_get_Tp_allocatorEv
	movq	%rbx, %rdx
	movq	%rax, %rcx
	call	_ZStneI6SquareEbRKSaIT_ES4_
	testb	%al, %al
	je	.L94
	movl	$1, %eax
	jmp	.L95
.L94:
	movl	$0, %eax
.L95:
	testb	%al, %al
	je	.L96
	movq	48(%rbp), %rcx
	call	_ZNSt6vectorI6SquareSaIS0_EE5clearEv
	movq	48(%rbp), %rax
	movq	48(%rbp), %rdx
	movq	16(%rdx), %rcx
	movq	48(%rbp), %rdx
	movq	(%rdx), %rdx
	subq	%rdx, %rcx
	movq	%rcx, %rdx
	sarq	$3, %rdx
	movq	%rdx, %rcx
	movq	48(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	%rcx, %r8
	movq	%rax, %rcx
	call	_ZNSt12_Vector_baseI6SquareSaIS0_EE13_M_deallocateEPS0_y
	movq	48(%rbp), %rax
	movq	$0, (%rax)
	movq	48(%rbp), %rax
	movq	$0, 8(%rax)
	movq	48(%rbp), %rax
	movq	$0, 16(%rax)
.L96:
	movq	56(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNKSt12_Vector_baseI6SquareSaIS0_EE19_M_get_Tp_allocatorEv
	movq	%rax, %rbx
	movq	48(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt12_Vector_baseI6SquareSaIS0_EE19_M_get_Tp_allocatorEv
	movq	%rbx, %rdx
	movq	%rax, %rcx
	call	_ZSt15__alloc_on_copyISaI6SquareEEvRT_RKS2_
.L93:
	movq	56(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNKSt6vectorI6SquareSaIS0_EE4sizeEv
	movq	%rax, -8(%rbp)
	movq	48(%rbp), %rcx
	call	_ZNKSt6vectorI6SquareSaIS0_EE8capacityEv
	cmpq	%rax, -8(%rbp)
	seta	%al
	testb	%al, %al
	je	.L97
	movq	56(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNKSt6vectorI6SquareSaIS0_EE3endEv
	movq	%rax, %rbx
	movq	56(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNKSt6vectorI6SquareSaIS0_EE5beginEv
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rbx, %r9
	movq	%rdx, %r8
	movq	%rax, %rdx
	movq	48(%rbp), %rcx
	call	_ZNSt6vectorI6SquareSaIS0_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS0_S2_EEEEPS0_yT_SA_
	movq	%rax, -16(%rbp)
	movq	48(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt12_Vector_baseI6SquareSaIS0_EE19_M_get_Tp_allocatorEv
	movq	%rax, %rcx
	movq	48(%rbp), %rax
	movq	8(%rax), %rdx
	movq	48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rcx, %r8
	movq	%rax, %rcx
	call	_ZSt8_DestroyIP6SquareS0_EvT_S2_RSaIT0_E
	movq	48(%rbp), %rax
	movq	48(%rbp), %rdx
	movq	16(%rdx), %rcx
	movq	48(%rbp), %rdx
	movq	(%rdx), %rdx
	subq	%rdx, %rcx
	movq	%rcx, %rdx
	sarq	$3, %rdx
	movq	%rdx, %rcx
	movq	48(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	%rcx, %r8
	movq	%rax, %rcx
	call	_ZNSt12_Vector_baseI6SquareSaIS0_EE13_M_deallocateEPS0_y
	movq	48(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	48(%rbp), %rax
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	salq	$3, %rax
	addq	%rax, %rdx
	movq	48(%rbp), %rax
	movq	%rdx, 16(%rax)
	jmp	.L98
.L97:
	movq	48(%rbp), %rcx
	call	_ZNKSt6vectorI6SquareSaIS0_EE4sizeEv
	cmpq	%rax, -8(%rbp)
	setbe	%al
	testb	%al, %al
	je	.L99
	movq	48(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt12_Vector_baseI6SquareSaIS0_EE19_M_get_Tp_allocatorEv
	movq	%rax, %rsi
	movq	48(%rbp), %rcx
	call	_ZNSt6vectorI6SquareSaIS0_EE3endEv
	movq	%rax, %rbx
	movq	48(%rbp), %rcx
	call	_ZNSt6vectorI6SquareSaIS0_EE5beginEv
	movq	%rax, %r12
	movq	56(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNKSt6vectorI6SquareSaIS0_EE3endEv
	movq	%rax, %rdi
	movq	56(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNKSt6vectorI6SquareSaIS0_EE5beginEv
	movq	%r12, %r8
	movq	%rdi, %rdx
	movq	%rax, %rcx
	call	_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPK6SquareSt6vectorIS2_SaIS2_EEEENS1_IPS2_S7_EEET0_T_SC_SB_
	movq	%rsi, %r8
	movq	%rbx, %rdx
	movq	%rax, %rcx
	call	_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIP6SquareSt6vectorIS2_SaIS2_EEEES2_EvT_S8_RSaIT0_E
	jmp	.L98
.L99:
	movq	48(%rbp), %rax
	movq	(%rax), %rbx
	movq	56(%rbp), %rax
	movq	(%rax), %rsi
	movq	48(%rbp), %rcx
	call	_ZNKSt6vectorI6SquareSaIS0_EE4sizeEv
	salq	$3, %rax
	leaq	(%rsi,%rax), %rdx
	movq	56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rbx, %r8
	movq	%rax, %rcx
	call	_ZSt4copyIP6SquareS1_ET0_T_S3_S2_
	movq	48(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt12_Vector_baseI6SquareSaIS0_EE19_M_get_Tp_allocatorEv
	movq	%rax, %r12
	movq	48(%rbp), %rax
	movq	8(%rax), %rsi
	movq	56(%rbp), %rax
	movq	8(%rax), %rbx
	movq	56(%rbp), %rax
	movq	(%rax), %rdi
	movq	48(%rbp), %rcx
	call	_ZNKSt6vectorI6SquareSaIS0_EE4sizeEv
	salq	$3, %rax
	addq	%rdi, %rax
	movq	%r12, %r9
	movq	%rsi, %r8
	movq	%rbx, %rdx
	movq	%rax, %rcx
	call	_ZSt22__uninitialized_copy_aIP6SquareS1_S0_ET0_T_S3_S2_RSaIT1_E
.L98:
	movq	48(%rbp), %rax
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	salq	$3, %rax
	addq	%rax, %rdx
	movq	48(%rbp), %rax
	movq	%rdx, 8(%rax)
.L92:
	movq	48(%rbp), %rax
	addq	$48, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%r12
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt12_Vector_baseI6SquareSaIS0_EE12_Vector_implD1Ev,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt12_Vector_baseI6SquareSaIS0_EE12_Vector_implD1Ev
	.def	_ZNSt12_Vector_baseI6SquareSaIS0_EE12_Vector_implD1Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt12_Vector_baseI6SquareSaIS0_EE12_Vector_implD1Ev
_ZNSt12_Vector_baseI6SquareSaIS0_EE12_Vector_implD1Ev:
.LFB6958:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rcx
	call	_ZNSaI6SquareED2Ev
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt12_Vector_baseI6SquareSaIS0_EEC2Ev,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt12_Vector_baseI6SquareSaIS0_EEC2Ev
	.def	_ZNSt12_Vector_baseI6SquareSaIS0_EEC2Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt12_Vector_baseI6SquareSaIS0_EEC2Ev
_ZNSt12_Vector_baseI6SquareSaIS0_EEC2Ev:
.LFB6959:
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
	call	_ZNSt12_Vector_baseI6SquareSaIS0_EE12_Vector_implC1Ev
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt12_Vector_baseI6SquareSaIS0_EED2Ev,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt12_Vector_baseI6SquareSaIS0_EED2Ev
	.def	_ZNSt12_Vector_baseI6SquareSaIS0_EED2Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt12_Vector_baseI6SquareSaIS0_EED2Ev
_ZNSt12_Vector_baseI6SquareSaIS0_EED2Ev:
.LFB6962:
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
	sarq	$3, %rax
	movq	%rax, %rdx
	movq	16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %r8
	movq	%rax, %rdx
	movq	16(%rbp), %rcx
	call	_ZNSt12_Vector_baseI6SquareSaIS0_EE13_M_deallocateEPS0_y
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt12_Vector_baseI6SquareSaIS0_EE12_Vector_implD1Ev
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA6962:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE6962-.LLSDACSB6962
.LLSDACSB6962:
.LLSDACSE6962:
	.section	.text$_ZNSt12_Vector_baseI6SquareSaIS0_EED2Ev,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_ZN9__gnu_cxx17__normal_iteratorIP6SquareSt6vectorIS1_SaIS1_EEEC1ERKS2_,"x"
	.linkonce discard
	.align 2
	.globl	_ZN9__gnu_cxx17__normal_iteratorIP6SquareSt6vectorIS1_SaIS1_EEEC1ERKS2_
	.def	_ZN9__gnu_cxx17__normal_iteratorIP6SquareSt6vectorIS1_SaIS1_EEEC1ERKS2_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN9__gnu_cxx17__normal_iteratorIP6SquareSt6vectorIS1_SaIS1_EEEC1ERKS2_
_ZN9__gnu_cxx17__normal_iteratorIP6SquareSt6vectorIS1_SaIS1_EEEC1ERKS2_:
.LFB6969:
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
	.section	.text$_ZNK9__gnu_cxx17__normal_iteratorIP6SquareSt6vectorIS1_SaIS1_EEE4baseEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNK9__gnu_cxx17__normal_iteratorIP6SquareSt6vectorIS1_SaIS1_EEE4baseEv
	.def	_ZNK9__gnu_cxx17__normal_iteratorIP6SquareSt6vectorIS1_SaIS1_EEE4baseEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNK9__gnu_cxx17__normal_iteratorIP6SquareSt6vectorIS1_SaIS1_EEE4baseEv
_ZNK9__gnu_cxx17__normal_iteratorIP6SquareSt6vectorIS1_SaIS1_EEE4baseEv:
.LFB6970:
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
	.section	.text$_ZNSt6vectorI6SquareSaIS0_EE5beginEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt6vectorI6SquareSaIS0_EE5beginEv
	.def	_ZNSt6vectorI6SquareSaIS0_EE5beginEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt6vectorI6SquareSaIS0_EE5beginEv
_ZNSt6vectorI6SquareSaIS0_EE5beginEv:
.LFB6971:
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
	call	_ZN9__gnu_cxx17__normal_iteratorIP6SquareSt6vectorIS1_SaIS1_EEEC1ERKS2_
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZN9__gnu_cxxmiIPK6SquarePS1_St6vectorIS1_SaIS1_EEEEDTmicldtfp_4baseEcldtfp0_4baseEERKNS_17__normal_iteratorIT_T1_EERKNS9_IT0_SB_EE,"x"
	.linkonce discard
	.globl	_ZN9__gnu_cxxmiIPK6SquarePS1_St6vectorIS1_SaIS1_EEEEDTmicldtfp_4baseEcldtfp0_4baseEERKNS_17__normal_iteratorIT_T1_EERKNS9_IT0_SB_EE
	.def	_ZN9__gnu_cxxmiIPK6SquarePS1_St6vectorIS1_SaIS1_EEEEDTmicldtfp_4baseEcldtfp0_4baseEERKNS_17__normal_iteratorIT_T1_EERKNS9_IT0_SB_EE;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN9__gnu_cxxmiIPK6SquarePS1_St6vectorIS1_SaIS1_EEEEDTmicldtfp_4baseEcldtfp0_4baseEERKNS_17__normal_iteratorIT_T1_EERKNS9_IT0_SB_EE
_ZN9__gnu_cxxmiIPK6SquarePS1_St6vectorIS1_SaIS1_EEEEDTmicldtfp_4baseEcldtfp0_4baseEERKNS_17__normal_iteratorIT_T1_EERKNS9_IT0_SB_EE:
.LFB6972:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$40, %rsp
	.seh_stackalloc	40
	leaq	128(%rsp), %rbp
	.seh_setframe	%rbp, 128
	.seh_endprologue
	movq	%rcx, -64(%rbp)
	movq	%rdx, -56(%rbp)
	movq	-64(%rbp), %rcx
	call	_ZNK9__gnu_cxx17__normal_iteratorIPK6SquareSt6vectorIS1_SaIS1_EEE4baseEv
	movq	(%rax), %rbx
	movq	-56(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNK9__gnu_cxx17__normal_iteratorIP6SquareSt6vectorIS1_SaIS1_EEE4baseEv
	movq	(%rax), %rax
	subq	%rax, %rbx
	movq	%rbx, %rax
	sarq	$3, %rax
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZN9__gnu_cxxeqIPK6SquarePS1_St6vectorIS1_SaIS1_EEEEbRKNS_17__normal_iteratorIT_T1_EERKNS8_IT0_SA_EE,"x"
	.linkonce discard
	.globl	_ZN9__gnu_cxxeqIPK6SquarePS1_St6vectorIS1_SaIS1_EEEEbRKNS_17__normal_iteratorIT_T1_EERKNS8_IT0_SA_EE
	.def	_ZN9__gnu_cxxeqIPK6SquarePS1_St6vectorIS1_SaIS1_EEEEbRKNS_17__normal_iteratorIT_T1_EERKNS8_IT0_SA_EE;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN9__gnu_cxxeqIPK6SquarePS1_St6vectorIS1_SaIS1_EEEEbRKNS_17__normal_iteratorIT_T1_EERKNS8_IT0_SA_EE
_ZN9__gnu_cxxeqIPK6SquarePS1_St6vectorIS1_SaIS1_EEEEbRKNS_17__normal_iteratorIT_T1_EERKNS8_IT0_SA_EE:
.LFB6973:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$40, %rsp
	.seh_stackalloc	40
	leaq	128(%rsp), %rbp
	.seh_setframe	%rbp, 128
	.seh_endprologue
	movq	%rcx, -64(%rbp)
	movq	%rdx, -56(%rbp)
	movq	-64(%rbp), %rcx
	call	_ZNK9__gnu_cxx17__normal_iteratorIPK6SquareSt6vectorIS1_SaIS1_EEE4baseEv
	movq	(%rax), %rbx
	movq	-56(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNK9__gnu_cxx17__normal_iteratorIP6SquareSt6vectorIS1_SaIS1_EEE4baseEv
	movq	(%rax), %rax
	cmpq	%rax, %rbx
	sete	%al
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt16allocator_traitsISaI6SquareEE9constructIS0_JRKS0_EEEvRS1_PT_DpOT0_,"x"
	.linkonce discard
	.globl	_ZNSt16allocator_traitsISaI6SquareEE9constructIS0_JRKS0_EEEvRS1_PT_DpOT0_
	.def	_ZNSt16allocator_traitsISaI6SquareEE9constructIS0_JRKS0_EEEvRS1_PT_DpOT0_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt16allocator_traitsISaI6SquareEE9constructIS0_JRKS0_EEEvRS1_PT_DpOT0_
_ZNSt16allocator_traitsISaI6SquareEE9constructIS0_JRKS0_EEEvRS1_PT_DpOT0_:
.LFB6974:
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
	movq	%rax, %rcx
	call	_ZSt7forwardIRK6SquareEOT_RNSt16remove_referenceIS3_E4typeE
	movq	%rax, %rdx
	movq	24(%rbp), %rax
	movq	%rdx, %r8
	movq	%rax, %rdx
	movq	16(%rbp), %rcx
	call	_ZN9__gnu_cxx13new_allocatorI6SquareE9constructIS1_JRKS1_EEEvPT_DpOT0_
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNKSt6vectorI6SquareSaIS0_EE6cbeginEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNKSt6vectorI6SquareSaIS0_EE6cbeginEv
	.def	_ZNKSt6vectorI6SquareSaIS0_EE6cbeginEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNKSt6vectorI6SquareSaIS0_EE6cbeginEv
_ZNKSt6vectorI6SquareSaIS0_EE6cbeginEv:
.LFB6975:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	leaq	-8(%rbp), %rdx
	leaq	-16(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN9__gnu_cxx17__normal_iteratorIPK6SquareSt6vectorIS1_SaIS1_EEEC1ERKS3_
	movq	-16(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZN9__gnu_cxxmiIPK6SquareSt6vectorIS1_SaIS1_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSA_SD_,"x"
	.linkonce discard
	.globl	_ZN9__gnu_cxxmiIPK6SquareSt6vectorIS1_SaIS1_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSA_SD_
	.def	_ZN9__gnu_cxxmiIPK6SquareSt6vectorIS1_SaIS1_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSA_SD_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN9__gnu_cxxmiIPK6SquareSt6vectorIS1_SaIS1_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSA_SD_
_ZN9__gnu_cxxmiIPK6SquareSt6vectorIS1_SaIS1_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSA_SD_:
.LFB6976:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$40, %rsp
	.seh_stackalloc	40
	leaq	128(%rsp), %rbp
	.seh_setframe	%rbp, 128
	.seh_endprologue
	movq	%rcx, -64(%rbp)
	movq	%rdx, -56(%rbp)
	movq	-64(%rbp), %rcx
	call	_ZNK9__gnu_cxx17__normal_iteratorIPK6SquareSt6vectorIS1_SaIS1_EEE4baseEv
	movq	(%rax), %rbx
	movq	-56(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNK9__gnu_cxx17__normal_iteratorIPK6SquareSt6vectorIS1_SaIS1_EEE4baseEv
	movq	(%rax), %rax
	subq	%rax, %rbx
	movq	%rbx, %rax
	sarq	$3, %rax
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNK9__gnu_cxx17__normal_iteratorIP6SquareSt6vectorIS1_SaIS1_EEEplEx,"x"
	.linkonce discard
	.align 2
	.globl	_ZNK9__gnu_cxx17__normal_iteratorIP6SquareSt6vectorIS1_SaIS1_EEEplEx
	.def	_ZNK9__gnu_cxx17__normal_iteratorIP6SquareSt6vectorIS1_SaIS1_EEEplEx;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNK9__gnu_cxx17__normal_iteratorIP6SquareSt6vectorIS1_SaIS1_EEEplEx
_ZNK9__gnu_cxx17__normal_iteratorIP6SquareSt6vectorIS1_SaIS1_EEEplEx:
.LFB6977:
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
	movq	(%rax), %rdx
	movq	24(%rbp), %rax
	salq	$3, %rax
	addq	%rdx, %rax
	movq	%rax, -8(%rbp)
	leaq	-8(%rbp), %rdx
	leaq	-16(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN9__gnu_cxx17__normal_iteratorIP6SquareSt6vectorIS1_SaIS1_EEEC1ERKS2_
	movq	-16(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt6vectorI6SquareSaIS0_EE16_Temporary_valueC1IJRKS0_EEEPS2_DpOT_,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt6vectorI6SquareSaIS0_EE16_Temporary_valueC1IJRKS0_EEEPS2_DpOT_
	.def	_ZNSt6vectorI6SquareSaIS0_EE16_Temporary_valueC1IJRKS0_EEEPS2_DpOT_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt6vectorI6SquareSaIS0_EE16_Temporary_valueC1IJRKS0_EEEPS2_DpOT_
_ZNSt6vectorI6SquareSaIS0_EE16_Temporary_valueC1IJRKS0_EEEPS2_DpOT_:
.LFB6980:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$40, %rsp
	.seh_stackalloc	40
	leaq	128(%rsp), %rbp
	.seh_setframe	%rbp, 128
	.seh_endprologue
	movq	%rcx, -64(%rbp)
	movq	%rdx, -56(%rbp)
	movq	%r8, -48(%rbp)
	movq	-64(%rbp), %rax
	movq	-56(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-48(%rbp), %rax
	movq	%rax, %rcx
	call	_ZSt7forwardIRK6SquareEOT_RNSt16remove_referenceIS3_E4typeE
	movq	%rax, %rbx
	movq	-64(%rbp), %rcx
	call	_ZNSt6vectorI6SquareSaIS0_EE16_Temporary_value6_M_ptrEv
	movq	%rax, %rdx
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	%rbx, %r8
	movq	%rax, %rcx
	call	_ZNSt16allocator_traitsISaI6SquareEE9constructIS0_JRKS0_EEEvRS1_PT_DpOT0_
	nop
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt6vectorI6SquareSaIS0_EE16_Temporary_valueD1Ev,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt6vectorI6SquareSaIS0_EE16_Temporary_valueD1Ev
	.def	_ZNSt6vectorI6SquareSaIS0_EE16_Temporary_valueD1Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt6vectorI6SquareSaIS0_EE16_Temporary_valueD1Ev
_ZNSt6vectorI6SquareSaIS0_EE16_Temporary_valueD1Ev:
.LFB6983:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rcx
	call	_ZNSt6vectorI6SquareSaIS0_EE16_Temporary_value6_M_ptrEv
	movq	%rax, %rdx
	movq	16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rcx
	call	_ZNSt16allocator_traitsISaI6SquareEE7destroyIS0_EEvRS1_PT_
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA6983:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE6983-.LLSDACSB6983
.LLSDACSB6983:
.LLSDACSE6983:
	.section	.text$_ZNSt6vectorI6SquareSaIS0_EE16_Temporary_valueD1Ev,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_ZNSt6vectorI6SquareSaIS0_EE16_Temporary_value6_M_valEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt6vectorI6SquareSaIS0_EE16_Temporary_value6_M_valEv
	.def	_ZNSt6vectorI6SquareSaIS0_EE16_Temporary_value6_M_valEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt6vectorI6SquareSaIS0_EE16_Temporary_value6_M_valEv
_ZNSt6vectorI6SquareSaIS0_EE16_Temporary_value6_M_valEv:
.LFB6984:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	addq	$8, %rax
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZSt4moveIR6SquareEONSt16remove_referenceIT_E4typeEOS3_,"x"
	.linkonce discard
	.globl	_ZSt4moveIR6SquareEONSt16remove_referenceIT_E4typeEOS3_
	.def	_ZSt4moveIR6SquareEONSt16remove_referenceIT_E4typeEOS3_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt4moveIR6SquareEONSt16remove_referenceIT_E4typeEOS3_
_ZSt4moveIR6SquareEONSt16remove_referenceIT_E4typeEOS3_:
.LFB6985:
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
	.section	.text$_ZNSt6vectorI6SquareSaIS0_EE13_M_insert_auxIS0_EEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEOT_,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt6vectorI6SquareSaIS0_EE13_M_insert_auxIS0_EEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEOT_
	.def	_ZNSt6vectorI6SquareSaIS0_EE13_M_insert_auxIS0_EEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEOT_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt6vectorI6SquareSaIS0_EE13_M_insert_auxIS0_EEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEOT_
_ZNSt6vectorI6SquareSaIS0_EE13_M_insert_auxIS0_EEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEOT_:
.LFB6986:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 32(%rbp)
	movq	%rdx, 40(%rbp)
	movq	%r8, 48(%rbp)
	movq	32(%rbp), %rax
	movq	8(%rax), %rax
	subq	$8, %rax
	movq	%rax, %rcx
	call	_ZSt4moveIR6SquareEONSt16remove_referenceIT_E4typeEOS3_
	movq	%rax, %rcx
	movq	32(%rbp), %rax
	movq	8(%rax), %rdx
	movq	32(%rbp), %rax
	movq	%rcx, %r8
	movq	%rax, %rcx
	call	_ZNSt16allocator_traitsISaI6SquareEE9constructIS0_JS0_EEEvRS1_PT_DpOT0_
	movq	32(%rbp), %rax
	movq	8(%rax), %rax
	leaq	8(%rax), %rdx
	movq	32(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	32(%rbp), %rax
	movq	8(%rax), %rax
	leaq	-8(%rax), %rsi
	movq	32(%rbp), %rax
	movq	8(%rax), %rax
	leaq	-16(%rax), %rbx
	leaq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNK9__gnu_cxx17__normal_iteratorIP6SquareSt6vectorIS1_SaIS1_EEE4baseEv
	movq	(%rax), %rax
	movq	%rsi, %r8
	movq	%rbx, %rdx
	movq	%rax, %rcx
	call	_ZSt13move_backwardIP6SquareS1_ET0_T_S3_S2_
	movq	48(%rbp), %rax
	movq	%rax, %rcx
	call	_ZSt7forwardI6SquareEOT_RNSt16remove_referenceIS1_E4typeE
	movq	%rax, %rbx
	leaq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNK9__gnu_cxx17__normal_iteratorIP6SquareSt6vectorIS1_SaIS1_EEEdeEv
	movq	%rax, %rdx
	movq	(%rbx), %rax
	movq	%rax, (%rdx)
	nop
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rbp
	ret
	.seh_endproc
	.section .rdata,"dr"
.LC6:
	.ascii "vector::_M_realloc_insert\0"
	.section	.text$_ZNSt6vectorI6SquareSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt6vectorI6SquareSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_
	.def	_ZNSt6vectorI6SquareSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt6vectorI6SquareSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_
_ZNSt6vectorI6SquareSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_:
.LFB6987:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$104, %rsp
	.seh_stackalloc	104
	leaq	128(%rsp), %rbp
	.seh_setframe	%rbp, 128
	.seh_endprologue
	movq	%rcx, 0(%rbp)
	movq	%rdx, 8(%rbp)
	movq	%r8, 16(%rbp)
	leaq	.LC6(%rip), %r8
	movl	$1, %edx
	movq	0(%rbp), %rcx
.LEHB3:
	call	_ZNKSt6vectorI6SquareSaIS0_EE12_M_check_lenEyPKc
	movq	%rax, -48(%rbp)
	movq	0(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	0(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -64(%rbp)
	movq	0(%rbp), %rcx
	call	_ZNSt6vectorI6SquareSaIS0_EE5beginEv
	movq	%rax, -88(%rbp)
	leaq	-88(%rbp), %rdx
	leaq	8(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN9__gnu_cxxmiIP6SquareSt6vectorIS1_SaIS1_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS9_SC_
	movq	%rax, -72(%rbp)
	movq	0(%rbp), %rax
	movq	-48(%rbp), %rdx
	movq	%rax, %rcx
	call	_ZNSt12_Vector_baseI6SquareSaIS0_EE11_M_allocateEy
.LEHE3:
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	call	_ZSt7forwardIRK6SquareEOT_RNSt16remove_referenceIS3_E4typeE
	movq	%rax, %rcx
	movq	-72(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-80(%rbp), %rax
	addq	%rax, %rdx
	movq	0(%rbp), %rax
	movq	%rcx, %r8
	movq	%rax, %rcx
	call	_ZNSt16allocator_traitsISaI6SquareEE9constructIS0_JRKS0_EEEvRS1_PT_DpOT0_
	movq	$0, -40(%rbp)
	movq	0(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt12_Vector_baseI6SquareSaIS0_EE19_M_get_Tp_allocatorEv
	movq	%rax, %rbx
	leaq	8(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNK9__gnu_cxx17__normal_iteratorIP6SquareSt6vectorIS1_SaIS1_EEE4baseEv
	movq	(%rax), %rdx
	movq	-80(%rbp), %rcx
	movq	-56(%rbp), %rax
	movq	%rbx, %r9
	movq	%rcx, %r8
	movq	%rax, %rcx
.LEHB4:
	call	_ZSt34__uninitialized_move_if_noexcept_aIP6SquareS1_SaIS0_EET0_T_S4_S3_RT1_
	movq	%rax, -40(%rbp)
	addq	$8, -40(%rbp)
	movq	0(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt12_Vector_baseI6SquareSaIS0_EE19_M_get_Tp_allocatorEv
	movq	%rax, %rbx
	leaq	8(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNK9__gnu_cxx17__normal_iteratorIP6SquareSt6vectorIS1_SaIS1_EEE4baseEv
	movq	(%rax), %rax
	movq	-40(%rbp), %rcx
	movq	-64(%rbp), %rdx
	movq	%rbx, %r9
	movq	%rcx, %r8
	movq	%rax, %rcx
	call	_ZSt34__uninitialized_move_if_noexcept_aIP6SquareS1_SaIS0_EET0_T_S4_S3_RT1_
.LEHE4:
	movq	%rax, -40(%rbp)
	movq	0(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt12_Vector_baseI6SquareSaIS0_EE19_M_get_Tp_allocatorEv
	movq	%rax, %rcx
	movq	-64(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rcx, %r8
	movq	%rax, %rcx
.LEHB5:
	call	_ZSt8_DestroyIP6SquareS0_EvT_S2_RSaIT0_E
	movq	0(%rbp), %rax
	movq	0(%rbp), %rdx
	movq	16(%rdx), %rdx
	subq	-56(%rbp), %rdx
	sarq	$3, %rdx
	movq	%rdx, %rcx
	movq	-56(%rbp), %rdx
	movq	%rcx, %r8
	movq	%rax, %rcx
	call	_ZNSt12_Vector_baseI6SquareSaIS0_EE13_M_deallocateEPS0_y
.LEHE5:
	movq	0(%rbp), %rax
	movq	-80(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	0(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movq	-48(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-80(%rbp), %rax
	addq	%rax, %rdx
	movq	0(%rbp), %rax
	movq	%rdx, 16(%rax)
	jmp	.L134
.L132:
	movq	%rax, %rcx
	call	__cxa_begin_catch
	cmpq	$0, -40(%rbp)
	jne	.L129
	movq	-72(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-80(%rbp), %rax
	addq	%rax, %rdx
	movq	0(%rbp), %rax
	movq	%rax, %rcx
.LEHB6:
	call	_ZNSt16allocator_traitsISaI6SquareEE7destroyIS0_EEvRS1_PT_
	jmp	.L130
.L129:
	movq	0(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt12_Vector_baseI6SquareSaIS0_EE19_M_get_Tp_allocatorEv
	movq	%rax, %rcx
	movq	-40(%rbp), %rdx
	movq	-80(%rbp), %rax
	movq	%rcx, %r8
	movq	%rax, %rcx
	call	_ZSt8_DestroyIP6SquareS0_EvT_S2_RSaIT0_E
.L130:
	movq	0(%rbp), %rax
	movq	-48(%rbp), %rcx
	movq	-80(%rbp), %rdx
	movq	%rcx, %r8
	movq	%rax, %rcx
	call	_ZNSt12_Vector_baseI6SquareSaIS0_EE13_M_deallocateEPS0_y
	call	__cxa_rethrow
.LEHE6:
.L133:
	movq	%rax, %rbx
	call	__cxa_end_catch
	movq	%rbx, %rax
	movq	%rax, %rcx
.LEHB7:
	call	_Unwind_Resume
	nop
.LEHE7:
.L134:
	addq	$104, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
	.align 4
.LLSDA6987:
	.byte	0xff
	.byte	0x9b
	.uleb128 .LLSDATT6987-.LLSDATTD6987
.LLSDATTD6987:
	.byte	0x1
	.uleb128 .LLSDACSE6987-.LLSDACSB6987
.LLSDACSB6987:
	.uleb128 .LEHB3-.LFB6987
	.uleb128 .LEHE3-.LEHB3
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB4-.LFB6987
	.uleb128 .LEHE4-.LEHB4
	.uleb128 .L132-.LFB6987
	.uleb128 0x1
	.uleb128 .LEHB5-.LFB6987
	.uleb128 .LEHE5-.LEHB5
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB6-.LFB6987
	.uleb128 .LEHE6-.LEHB6
	.uleb128 .L133-.LFB6987
	.uleb128 0
	.uleb128 .LEHB7-.LFB6987
	.uleb128 .LEHE7-.LEHB7
	.uleb128 0
	.uleb128 0
.LLSDACSE6987:
	.byte	0x1
	.byte	0
	.align 4
	.long	0

.LLSDATT6987:
	.section	.text$_ZNSt6vectorI6SquareSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_ZNSt6vectorI6SquareSaIS0_EE15_M_erase_at_endEPS0_,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt6vectorI6SquareSaIS0_EE15_M_erase_at_endEPS0_
	.def	_ZNSt6vectorI6SquareSaIS0_EE15_M_erase_at_endEPS0_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt6vectorI6SquareSaIS0_EE15_M_erase_at_endEPS0_
_ZNSt6vectorI6SquareSaIS0_EE15_M_erase_at_endEPS0_:
.LFB6988:
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
	movq	8(%rax), %rax
	subq	24(%rbp), %rax
	sarq	$3, %rax
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L137
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt12_Vector_baseI6SquareSaIS0_EE19_M_get_Tp_allocatorEv
	movq	%rax, %rcx
	movq	16(%rbp), %rax
	movq	8(%rax), %rdx
	movq	24(%rbp), %rax
	movq	%rcx, %r8
	movq	%rax, %rcx
	call	_ZSt8_DestroyIP6SquareS0_EvT_S2_RSaIT0_E
	movq	16(%rbp), %rax
	movq	24(%rbp), %rdx
	movq	%rdx, 8(%rax)
.L137:
	nop
	addq	$48, %rsp
	popq	%rbp
	ret
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA6988:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE6988-.LLSDACSB6988
.LLSDACSB6988:
.LLSDACSE6988:
	.section	.text$_ZNSt6vectorI6SquareSaIS0_EE15_M_erase_at_endEPS0_,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_ZNSt6vectorI6SquareSaIS0_EE16_M_shrink_to_fitEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt6vectorI6SquareSaIS0_EE16_M_shrink_to_fitEv
	.def	_ZNSt6vectorI6SquareSaIS0_EE16_M_shrink_to_fitEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt6vectorI6SquareSaIS0_EE16_M_shrink_to_fitEv
_ZNSt6vectorI6SquareSaIS0_EE16_M_shrink_to_fitEv:
.LFB6989:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$40, %rsp
	.seh_stackalloc	40
	leaq	128(%rsp), %rbp
	.seh_setframe	%rbp, 128
	.seh_endprologue
	movq	%rcx, -64(%rbp)
	movq	-64(%rbp), %rcx
	call	_ZNKSt6vectorI6SquareSaIS0_EE8capacityEv
	movq	%rax, %rbx
	movq	-64(%rbp), %rcx
	call	_ZNKSt6vectorI6SquareSaIS0_EE4sizeEv
	cmpq	%rax, %rbx
	sete	%al
	testb	%al, %al
	je	.L139
	movl	$0, %eax
	jmp	.L140
.L139:
	movq	-64(%rbp), %rcx
	call	_ZNSt19__shrink_to_fit_auxISt6vectorI6SquareSaIS1_EELb1EE8_S_do_itERS3_
	nop
.L140:
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt12_Vector_baseI6SquareSaIS0_EE19_M_get_Tp_allocatorEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt12_Vector_baseI6SquareSaIS0_EE19_M_get_Tp_allocatorEv
	.def	_ZNSt12_Vector_baseI6SquareSaIS0_EE19_M_get_Tp_allocatorEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt12_Vector_baseI6SquareSaIS0_EE19_M_get_Tp_allocatorEv
_ZNSt12_Vector_baseI6SquareSaIS0_EE19_M_get_Tp_allocatorEv:
.LFB6990:
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
	.section	.text$_ZNKSt12_Vector_baseI6SquareSaIS0_EE19_M_get_Tp_allocatorEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNKSt12_Vector_baseI6SquareSaIS0_EE19_M_get_Tp_allocatorEv
	.def	_ZNKSt12_Vector_baseI6SquareSaIS0_EE19_M_get_Tp_allocatorEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNKSt12_Vector_baseI6SquareSaIS0_EE19_M_get_Tp_allocatorEv
_ZNKSt12_Vector_baseI6SquareSaIS0_EE19_M_get_Tp_allocatorEv:
.LFB6991:
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
	.section	.text$_ZStneI6SquareEbRKSaIT_ES4_,"x"
	.linkonce discard
	.globl	_ZStneI6SquareEbRKSaIT_ES4_
	.def	_ZStneI6SquareEbRKSaIT_ES4_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZStneI6SquareEbRKSaIT_ES4_
_ZStneI6SquareEbRKSaIT_ES4_:
.LFB6992:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movl	$0, %eax
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt12_Vector_baseI6SquareSaIS0_EE13_M_deallocateEPS0_y,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt12_Vector_baseI6SquareSaIS0_EE13_M_deallocateEPS0_y
	.def	_ZNSt12_Vector_baseI6SquareSaIS0_EE13_M_deallocateEPS0_y;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt12_Vector_baseI6SquareSaIS0_EE13_M_deallocateEPS0_y
_ZNSt12_Vector_baseI6SquareSaIS0_EE13_M_deallocateEPS0_y:
.LFB6993:
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
	cmpq	$0, 24(%rbp)
	je	.L149
	movq	16(%rbp), %rax
	movq	32(%rbp), %rcx
	movq	24(%rbp), %rdx
	movq	%rcx, %r8
	movq	%rax, %rcx
	call	_ZNSt16allocator_traitsISaI6SquareEE10deallocateERS1_PS0_y
.L149:
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZSt15__alloc_on_copyISaI6SquareEEvRT_RKS2_,"x"
	.linkonce discard
	.globl	_ZSt15__alloc_on_copyISaI6SquareEEvRT_RKS2_
	.def	_ZSt15__alloc_on_copyISaI6SquareEEvRT_RKS2_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt15__alloc_on_copyISaI6SquareEEvRT_RKS2_
_ZSt15__alloc_on_copyISaI6SquareEEvRT_RKS2_:
.LFB6994:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	24(%rbp), %rax
	movq	%rax, %rdx
	movq	16(%rbp), %rcx
	call	_ZSt18__do_alloc_on_copyISaI6SquareEEvRT_RKS2_St17integral_constantIbLb0EE
	nop
	addq	$48, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNKSt6vectorI6SquareSaIS0_EE8capacityEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNKSt6vectorI6SquareSaIS0_EE8capacityEv
	.def	_ZNKSt6vectorI6SquareSaIS0_EE8capacityEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNKSt6vectorI6SquareSaIS0_EE8capacityEv
_ZNKSt6vectorI6SquareSaIS0_EE8capacityEv:
.LFB6995:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	movq	16(%rax), %rdx
	movq	16(%rbp), %rax
	movq	(%rax), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	sarq	$3, %rax
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNKSt6vectorI6SquareSaIS0_EE5beginEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNKSt6vectorI6SquareSaIS0_EE5beginEv
	.def	_ZNKSt6vectorI6SquareSaIS0_EE5beginEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNKSt6vectorI6SquareSaIS0_EE5beginEv
_ZNKSt6vectorI6SquareSaIS0_EE5beginEv:
.LFB6996:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	leaq	-8(%rbp), %rdx
	leaq	-16(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN9__gnu_cxx17__normal_iteratorIPK6SquareSt6vectorIS1_SaIS1_EEEC1ERKS3_
	movq	-16(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNKSt6vectorI6SquareSaIS0_EE3endEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNKSt6vectorI6SquareSaIS0_EE3endEv
	.def	_ZNKSt6vectorI6SquareSaIS0_EE3endEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNKSt6vectorI6SquareSaIS0_EE3endEv
_ZNKSt6vectorI6SquareSaIS0_EE3endEv:
.LFB6997:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -8(%rbp)
	leaq	-8(%rbp), %rdx
	leaq	-16(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN9__gnu_cxx17__normal_iteratorIPK6SquareSt6vectorIS1_SaIS1_EEEC1ERKS3_
	movq	-16(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt6vectorI6SquareSaIS0_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS0_S2_EEEEPS0_yT_SA_,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt6vectorI6SquareSaIS0_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS0_S2_EEEEPS0_yT_SA_
	.def	_ZNSt6vectorI6SquareSaIS0_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS0_S2_EEEEPS0_yT_SA_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt6vectorI6SquareSaIS0_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS0_S2_EEEEPS0_yT_SA_
_ZNSt6vectorI6SquareSaIS0_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS0_S2_EEEEPS0_yT_SA_:
.LFB6998:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$56, %rsp
	.seh_stackalloc	56
	leaq	128(%rsp), %rbp
	.seh_setframe	%rbp, 128
	.seh_endprologue
	movq	%rcx, -48(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%r8, -32(%rbp)
	movq	%r9, -24(%rbp)
	movq	-48(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rax, %rcx
.LEHB8:
	call	_ZNSt12_Vector_baseI6SquareSaIS0_EE11_M_allocateEy
.LEHE8:
	movq	%rax, -88(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt12_Vector_baseI6SquareSaIS0_EE19_M_get_Tp_allocatorEv
	movq	%rax, %r8
	movq	-88(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%r8, %r9
	movq	%rcx, %r8
	movq	%rax, %rcx
.LEHB9:
	call	_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPK6SquareSt6vectorIS2_SaIS2_EEEEPS2_S2_ET0_T_SB_SA_RSaIT1_E
.LEHE9:
	movq	-88(%rbp), %rax
	jmp	.L163
.L161:
	movq	%rax, %rcx
	call	__cxa_begin_catch
	movq	-48(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	-88(%rbp), %rdx
	movq	%rcx, %r8
	movq	%rax, %rcx
.LEHB10:
	call	_ZNSt12_Vector_baseI6SquareSaIS0_EE13_M_deallocateEPS0_y
	call	__cxa_rethrow
.LEHE10:
.L162:
	movq	%rax, %rbx
	call	__cxa_end_catch
	movq	%rbx, %rax
	movq	%rax, %rcx
.LEHB11:
	call	_Unwind_Resume
.LEHE11:
.L163:
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
	.align 4
.LLSDA6998:
	.byte	0xff
	.byte	0x9b
	.uleb128 .LLSDATT6998-.LLSDATTD6998
.LLSDATTD6998:
	.byte	0x1
	.uleb128 .LLSDACSE6998-.LLSDACSB6998
.LLSDACSB6998:
	.uleb128 .LEHB8-.LFB6998
	.uleb128 .LEHE8-.LEHB8
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB9-.LFB6998
	.uleb128 .LEHE9-.LEHB9
	.uleb128 .L161-.LFB6998
	.uleb128 0x1
	.uleb128 .LEHB10-.LFB6998
	.uleb128 .LEHE10-.LEHB10
	.uleb128 .L162-.LFB6998
	.uleb128 0
	.uleb128 .LEHB11-.LFB6998
	.uleb128 .LEHE11-.LEHB11
	.uleb128 0
	.uleb128 0
.LLSDACSE6998:
	.byte	0x1
	.byte	0
	.align 4
	.long	0

.LLSDATT6998:
	.section	.text$_ZNSt6vectorI6SquareSaIS0_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS0_S2_EEEEPS0_yT_SA_,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_ZSt8_DestroyIP6SquareS0_EvT_S2_RSaIT0_E,"x"
	.linkonce discard
	.globl	_ZSt8_DestroyIP6SquareS0_EvT_S2_RSaIT0_E
	.def	_ZSt8_DestroyIP6SquareS0_EvT_S2_RSaIT0_E;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt8_DestroyIP6SquareS0_EvT_S2_RSaIT0_E
_ZSt8_DestroyIP6SquareS0_EvT_S2_RSaIT0_E:
.LFB6999:
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
	movq	%rax, %rdx
	movq	16(%rbp), %rcx
	call	_ZSt8_DestroyIP6SquareEvT_S2_
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPK6SquareSt6vectorIS2_SaIS2_EEEENS1_IPS2_S7_EEET0_T_SC_SB_,"x"
	.linkonce discard
	.globl	_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPK6SquareSt6vectorIS2_SaIS2_EEEENS1_IPS2_S7_EEET0_T_SC_SB_
	.def	_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPK6SquareSt6vectorIS2_SaIS2_EEEENS1_IPS2_S7_EEET0_T_SC_SB_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPK6SquareSt6vectorIS2_SaIS2_EEEENS1_IPS2_S7_EEET0_T_SC_SB_
_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPK6SquareSt6vectorIS2_SaIS2_EEEENS1_IPS2_S7_EEET0_T_SC_SB_:
.LFB7000:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$40, %rsp
	.seh_stackalloc	40
	leaq	128(%rsp), %rbp
	.seh_setframe	%rbp, 128
	.seh_endprologue
	movq	%rcx, -64(%rbp)
	movq	%rdx, -56(%rbp)
	movq	%r8, -48(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, %rcx
	call	_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPK6SquareSt6vectorIS2_SaIS2_EEEEET_S9_
	movq	%rax, %rbx
	movq	-64(%rbp), %rcx
	call	_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPK6SquareSt6vectorIS2_SaIS2_EEEEET_S9_
	movq	%rax, %rcx
	movq	-48(%rbp), %rax
	movq	%rax, %r8
	movq	%rbx, %rdx
	call	_ZSt14__copy_move_a2ILb0EN9__gnu_cxx17__normal_iteratorIPK6SquareSt6vectorIS2_SaIS2_EEEENS1_IPS2_S7_EEET1_T0_SC_SB_
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIP6SquareSt6vectorIS2_SaIS2_EEEES2_EvT_S8_RSaIT0_E,"x"
	.linkonce discard
	.globl	_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIP6SquareSt6vectorIS2_SaIS2_EEEES2_EvT_S8_RSaIT0_E
	.def	_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIP6SquareSt6vectorIS2_SaIS2_EEEES2_EvT_S8_RSaIT0_E;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIP6SquareSt6vectorIS2_SaIS2_EEEES2_EvT_S8_RSaIT0_E
_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIP6SquareSt6vectorIS2_SaIS2_EEEES2_EvT_S8_RSaIT0_E:
.LFB7001:
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
	movq	%rax, %rdx
	movq	16(%rbp), %rcx
	call	_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIP6SquareSt6vectorIS2_SaIS2_EEEEEvT_S8_
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZSt4copyIP6SquareS1_ET0_T_S3_S2_,"x"
	.linkonce discard
	.globl	_ZSt4copyIP6SquareS1_ET0_T_S3_S2_
	.def	_ZSt4copyIP6SquareS1_ET0_T_S3_S2_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt4copyIP6SquareS1_ET0_T_S3_S2_
_ZSt4copyIP6SquareS1_ET0_T_S3_S2_:
.LFB7002:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$40, %rsp
	.seh_stackalloc	40
	leaq	128(%rsp), %rbp
	.seh_setframe	%rbp, 128
	.seh_endprologue
	movq	%rcx, -64(%rbp)
	movq	%rdx, -56(%rbp)
	movq	%r8, -48(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, %rcx
	call	_ZSt12__miter_baseIP6SquareET_S2_
	movq	%rax, %rbx
	movq	-64(%rbp), %rcx
	call	_ZSt12__miter_baseIP6SquareET_S2_
	movq	%rax, %rcx
	movq	-48(%rbp), %rax
	movq	%rax, %r8
	movq	%rbx, %rdx
	call	_ZSt14__copy_move_a2ILb0EP6SquareS1_ET1_T0_S3_S2_
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZSt22__uninitialized_copy_aIP6SquareS1_S0_ET0_T_S3_S2_RSaIT1_E,"x"
	.linkonce discard
	.globl	_ZSt22__uninitialized_copy_aIP6SquareS1_S0_ET0_T_S3_S2_RSaIT1_E
	.def	_ZSt22__uninitialized_copy_aIP6SquareS1_S0_ET0_T_S3_S2_RSaIT1_E;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt22__uninitialized_copy_aIP6SquareS1_S0_ET0_T_S3_S2_RSaIT1_E
_ZSt22__uninitialized_copy_aIP6SquareS1_S0_ET0_T_S3_S2_RSaIT1_E:
.LFB7003:
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
	movq	32(%rbp), %rdx
	movq	24(%rbp), %rax
	movq	%rdx, %r8
	movq	%rax, %rdx
	movq	16(%rbp), %rcx
	call	_ZSt18uninitialized_copyIP6SquareS1_ET0_T_S3_S2_
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt12_Vector_baseI6SquareSaIS0_EE12_Vector_implC1Ev,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt12_Vector_baseI6SquareSaIS0_EE12_Vector_implC1Ev
	.def	_ZNSt12_Vector_baseI6SquareSaIS0_EE12_Vector_implC1Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt12_Vector_baseI6SquareSaIS0_EE12_Vector_implC1Ev
_ZNSt12_Vector_baseI6SquareSaIS0_EE12_Vector_implC1Ev:
.LFB7040:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rcx
	call	_ZNSaI6SquareEC2Ev
	movq	16(%rbp), %rax
	movq	$0, (%rax)
	movq	16(%rbp), %rax
	movq	$0, 8(%rax)
	movq	16(%rbp), %rax
	movq	$0, 16(%rax)
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSaI6SquareED2Ev,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSaI6SquareED2Ev
	.def	_ZNSaI6SquareED2Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSaI6SquareED2Ev
_ZNSaI6SquareED2Ev:
.LFB7042:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rcx
	call	_ZN9__gnu_cxx13new_allocatorI6SquareED2Ev
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSaI6SquareED1Ev,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSaI6SquareED1Ev
	.def	_ZNSaI6SquareED1Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSaI6SquareED1Ev
_ZNSaI6SquareED1Ev:
.LFB7043:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rcx
	call	_ZN9__gnu_cxx13new_allocatorI6SquareED2Ev
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNK9__gnu_cxx17__normal_iteratorIPK6SquareSt6vectorIS1_SaIS1_EEE4baseEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNK9__gnu_cxx17__normal_iteratorIPK6SquareSt6vectorIS1_SaIS1_EEE4baseEv
	.def	_ZNK9__gnu_cxx17__normal_iteratorIPK6SquareSt6vectorIS1_SaIS1_EEE4baseEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNK9__gnu_cxx17__normal_iteratorIPK6SquareSt6vectorIS1_SaIS1_EEE4baseEv
_ZNK9__gnu_cxx17__normal_iteratorIPK6SquareSt6vectorIS1_SaIS1_EEE4baseEv:
.LFB7046:
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
	.section	.text$_ZSt7forwardIRK6SquareEOT_RNSt16remove_referenceIS3_E4typeE,"x"
	.linkonce discard
	.globl	_ZSt7forwardIRK6SquareEOT_RNSt16remove_referenceIS3_E4typeE
	.def	_ZSt7forwardIRK6SquareEOT_RNSt16remove_referenceIS3_E4typeE;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt7forwardIRK6SquareEOT_RNSt16remove_referenceIS3_E4typeE
_ZSt7forwardIRK6SquareEOT_RNSt16remove_referenceIS3_E4typeE:
.LFB7047:
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
	.section	.text$_ZN9__gnu_cxx13new_allocatorI6SquareE9constructIS1_JRKS1_EEEvPT_DpOT0_,"x"
	.linkonce discard
	.align 2
	.globl	_ZN9__gnu_cxx13new_allocatorI6SquareE9constructIS1_JRKS1_EEEvPT_DpOT0_
	.def	_ZN9__gnu_cxx13new_allocatorI6SquareE9constructIS1_JRKS1_EEEvPT_DpOT0_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN9__gnu_cxx13new_allocatorI6SquareE9constructIS1_JRKS1_EEEvPT_DpOT0_
_ZN9__gnu_cxx13new_allocatorI6SquareE9constructIS1_JRKS1_EEEvPT_DpOT0_:
.LFB7048:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$40, %rsp
	.seh_stackalloc	40
	leaq	128(%rsp), %rbp
	.seh_setframe	%rbp, 128
	.seh_endprologue
	movq	%rcx, -64(%rbp)
	movq	%rdx, -56(%rbp)
	movq	%r8, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, %rcx
	call	_ZSt7forwardIRK6SquareEOT_RNSt16remove_referenceIS3_E4typeE
	movq	%rax, %rbx
	movq	-56(%rbp), %rax
	movq	%rax, %rdx
	movl	$8, %ecx
	call	_ZnwyPv
	movq	%rax, %rdx
	movq	(%rbx), %rax
	movq	%rax, (%rdx)
	nop
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZN9__gnu_cxx17__normal_iteratorIPK6SquareSt6vectorIS1_SaIS1_EEEC1ERKS3_,"x"
	.linkonce discard
	.align 2
	.globl	_ZN9__gnu_cxx17__normal_iteratorIPK6SquareSt6vectorIS1_SaIS1_EEEC1ERKS3_
	.def	_ZN9__gnu_cxx17__normal_iteratorIPK6SquareSt6vectorIS1_SaIS1_EEEC1ERKS3_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN9__gnu_cxx17__normal_iteratorIPK6SquareSt6vectorIS1_SaIS1_EEEC1ERKS3_
_ZN9__gnu_cxx17__normal_iteratorIPK6SquareSt6vectorIS1_SaIS1_EEEC1ERKS3_:
.LFB7051:
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
	.section	.text$_ZNSt6vectorI6SquareSaIS0_EE16_Temporary_value6_M_ptrEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt6vectorI6SquareSaIS0_EE16_Temporary_value6_M_ptrEv
	.def	_ZNSt6vectorI6SquareSaIS0_EE16_Temporary_value6_M_ptrEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt6vectorI6SquareSaIS0_EE16_Temporary_value6_M_ptrEv
_ZNSt6vectorI6SquareSaIS0_EE16_Temporary_value6_M_ptrEv:
.LFB7052:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rcx
	call	_ZNSt6vectorI6SquareSaIS0_EE16_Temporary_value6_M_valEv
	movq	%rax, %rcx
	call	_ZNSt14pointer_traitsIP6SquareE10pointer_toERS0_
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt16allocator_traitsISaI6SquareEE7destroyIS0_EEvRS1_PT_,"x"
	.linkonce discard
	.globl	_ZNSt16allocator_traitsISaI6SquareEE7destroyIS0_EEvRS1_PT_
	.def	_ZNSt16allocator_traitsISaI6SquareEE7destroyIS0_EEvRS1_PT_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt16allocator_traitsISaI6SquareEE7destroyIS0_EEvRS1_PT_
_ZNSt16allocator_traitsISaI6SquareEE7destroyIS0_EEvRS1_PT_:
.LFB7053:
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
	movq	%rax, %rdx
	movq	16(%rbp), %rcx
	call	_ZN9__gnu_cxx13new_allocatorI6SquareE7destroyIS1_EEvPT_
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt16allocator_traitsISaI6SquareEE9constructIS0_JS0_EEEvRS1_PT_DpOT0_,"x"
	.linkonce discard
	.globl	_ZNSt16allocator_traitsISaI6SquareEE9constructIS0_JS0_EEEvRS1_PT_DpOT0_
	.def	_ZNSt16allocator_traitsISaI6SquareEE9constructIS0_JS0_EEEvRS1_PT_DpOT0_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt16allocator_traitsISaI6SquareEE9constructIS0_JS0_EEEvRS1_PT_DpOT0_
_ZNSt16allocator_traitsISaI6SquareEE9constructIS0_JS0_EEEvRS1_PT_DpOT0_:
.LFB7054:
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
	movq	%rax, %rcx
	call	_ZSt7forwardI6SquareEOT_RNSt16remove_referenceIS1_E4typeE
	movq	%rax, %rdx
	movq	24(%rbp), %rax
	movq	%rdx, %r8
	movq	%rax, %rdx
	movq	16(%rbp), %rcx
	call	_ZN9__gnu_cxx13new_allocatorI6SquareE9constructIS1_JS1_EEEvPT_DpOT0_
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZSt13move_backwardIP6SquareS1_ET0_T_S3_S2_,"x"
	.linkonce discard
	.globl	_ZSt13move_backwardIP6SquareS1_ET0_T_S3_S2_
	.def	_ZSt13move_backwardIP6SquareS1_ET0_T_S3_S2_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt13move_backwardIP6SquareS1_ET0_T_S3_S2_
_ZSt13move_backwardIP6SquareS1_ET0_T_S3_S2_:
.LFB7055:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$40, %rsp
	.seh_stackalloc	40
	leaq	128(%rsp), %rbp
	.seh_setframe	%rbp, 128
	.seh_endprologue
	movq	%rcx, -64(%rbp)
	movq	%rdx, -56(%rbp)
	movq	%r8, -48(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, %rcx
	call	_ZSt12__miter_baseIP6SquareET_S2_
	movq	%rax, %rbx
	movq	-64(%rbp), %rcx
	call	_ZSt12__miter_baseIP6SquareET_S2_
	movq	%rax, %rcx
	movq	-48(%rbp), %rax
	movq	%rax, %r8
	movq	%rbx, %rdx
	call	_ZSt23__copy_move_backward_a2ILb1EP6SquareS1_ET1_T0_S3_S2_
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNK9__gnu_cxx17__normal_iteratorIP6SquareSt6vectorIS1_SaIS1_EEEdeEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNK9__gnu_cxx17__normal_iteratorIP6SquareSt6vectorIS1_SaIS1_EEEdeEv
	.def	_ZNK9__gnu_cxx17__normal_iteratorIP6SquareSt6vectorIS1_SaIS1_EEEdeEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNK9__gnu_cxx17__normal_iteratorIP6SquareSt6vectorIS1_SaIS1_EEEdeEv
_ZNK9__gnu_cxx17__normal_iteratorIP6SquareSt6vectorIS1_SaIS1_EEEdeEv:
.LFB7056:
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
	.section	.text$_ZSt7forwardI6SquareEOT_RNSt16remove_referenceIS1_E4typeE,"x"
	.linkonce discard
	.globl	_ZSt7forwardI6SquareEOT_RNSt16remove_referenceIS1_E4typeE
	.def	_ZSt7forwardI6SquareEOT_RNSt16remove_referenceIS1_E4typeE;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt7forwardI6SquareEOT_RNSt16remove_referenceIS1_E4typeE
_ZSt7forwardI6SquareEOT_RNSt16remove_referenceIS1_E4typeE:
.LFB7057:
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
	.section	.text$_ZNKSt6vectorI6SquareSaIS0_EE12_M_check_lenEyPKc,"x"
	.linkonce discard
	.align 2
	.globl	_ZNKSt6vectorI6SquareSaIS0_EE12_M_check_lenEyPKc
	.def	_ZNKSt6vectorI6SquareSaIS0_EE12_M_check_lenEyPKc;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNKSt6vectorI6SquareSaIS0_EE12_M_check_lenEyPKc
_ZNKSt6vectorI6SquareSaIS0_EE12_M_check_lenEyPKc:
.LFB7058:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$56, %rsp
	.seh_stackalloc	56
	leaq	128(%rsp), %rbp
	.seh_setframe	%rbp, 128
	.seh_endprologue
	movq	%rcx, -48(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%r8, -32(%rbp)
	movq	-48(%rbp), %rcx
	call	_ZNKSt6vectorI6SquareSaIS0_EE8max_sizeEv
	movq	%rax, %rbx
	movq	-48(%rbp), %rcx
	call	_ZNKSt6vectorI6SquareSaIS0_EE4sizeEv
	subq	%rax, %rbx
	movq	%rbx, %rdx
	movq	-40(%rbp), %rax
	cmpq	%rax, %rdx
	setb	%al
	testb	%al, %al
	je	.L192
	movq	-32(%rbp), %rax
	movq	%rax, %rcx
	call	_ZSt20__throw_length_errorPKc
.L192:
	movq	-48(%rbp), %rcx
	call	_ZNKSt6vectorI6SquareSaIS0_EE4sizeEv
	movq	%rax, %rbx
	movq	-48(%rbp), %rcx
	call	_ZNKSt6vectorI6SquareSaIS0_EE4sizeEv
	movq	%rax, -96(%rbp)
	leaq	-40(%rbp), %rdx
	leaq	-96(%rbp), %rax
	movq	%rax, %rcx
	call	_ZSt3maxIyERKT_S2_S2_
	movq	(%rax), %rax
	addq	%rbx, %rax
	movq	%rax, -88(%rbp)
	movq	-48(%rbp), %rcx
	call	_ZNKSt6vectorI6SquareSaIS0_EE4sizeEv
	cmpq	%rax, -88(%rbp)
	jb	.L193
	movq	-48(%rbp), %rcx
	call	_ZNKSt6vectorI6SquareSaIS0_EE8max_sizeEv
	cmpq	%rax, -88(%rbp)
	jbe	.L194
.L193:
	movq	-48(%rbp), %rcx
	call	_ZNKSt6vectorI6SquareSaIS0_EE8max_sizeEv
	jmp	.L195
.L194:
	movq	-88(%rbp), %rax
.L195:
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZN9__gnu_cxxmiIP6SquareSt6vectorIS1_SaIS1_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS9_SC_,"x"
	.linkonce discard
	.globl	_ZN9__gnu_cxxmiIP6SquareSt6vectorIS1_SaIS1_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS9_SC_
	.def	_ZN9__gnu_cxxmiIP6SquareSt6vectorIS1_SaIS1_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS9_SC_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN9__gnu_cxxmiIP6SquareSt6vectorIS1_SaIS1_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS9_SC_
_ZN9__gnu_cxxmiIP6SquareSt6vectorIS1_SaIS1_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS9_SC_:
.LFB7059:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$40, %rsp
	.seh_stackalloc	40
	leaq	128(%rsp), %rbp
	.seh_setframe	%rbp, 128
	.seh_endprologue
	movq	%rcx, -64(%rbp)
	movq	%rdx, -56(%rbp)
	movq	-64(%rbp), %rcx
	call	_ZNK9__gnu_cxx17__normal_iteratorIP6SquareSt6vectorIS1_SaIS1_EEE4baseEv
	movq	(%rax), %rbx
	movq	-56(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNK9__gnu_cxx17__normal_iteratorIP6SquareSt6vectorIS1_SaIS1_EEE4baseEv
	movq	(%rax), %rax
	subq	%rax, %rbx
	movq	%rbx, %rax
	sarq	$3, %rax
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt12_Vector_baseI6SquareSaIS0_EE11_M_allocateEy,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt12_Vector_baseI6SquareSaIS0_EE11_M_allocateEy
	.def	_ZNSt12_Vector_baseI6SquareSaIS0_EE11_M_allocateEy;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt12_Vector_baseI6SquareSaIS0_EE11_M_allocateEy
_ZNSt12_Vector_baseI6SquareSaIS0_EE11_M_allocateEy:
.LFB7060:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	cmpq	$0, 24(%rbp)
	je	.L200
	movq	16(%rbp), %rax
	movq	24(%rbp), %rdx
	movq	%rax, %rcx
	call	_ZNSt16allocator_traitsISaI6SquareEE8allocateERS1_y
	jmp	.L202
.L200:
	movl	$0, %eax
.L202:
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZSt34__uninitialized_move_if_noexcept_aIP6SquareS1_SaIS0_EET0_T_S4_S3_RT1_,"x"
	.linkonce discard
	.globl	_ZSt34__uninitialized_move_if_noexcept_aIP6SquareS1_SaIS0_EET0_T_S4_S3_RT1_
	.def	_ZSt34__uninitialized_move_if_noexcept_aIP6SquareS1_SaIS0_EET0_T_S4_S3_RT1_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt34__uninitialized_move_if_noexcept_aIP6SquareS1_SaIS0_EET0_T_S4_S3_RT1_
_ZSt34__uninitialized_move_if_noexcept_aIP6SquareS1_SaIS0_EET0_T_S4_S3_RT1_:
.LFB7061:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$40, %rsp
	.seh_stackalloc	40
	leaq	128(%rsp), %rbp
	.seh_setframe	%rbp, 128
	.seh_endprologue
	movq	%rcx, -64(%rbp)
	movq	%rdx, -56(%rbp)
	movq	%r8, -48(%rbp)
	movq	%r9, -40(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, %rcx
	call	_ZSt32__make_move_if_noexcept_iteratorI6SquareSt13move_iteratorIPS0_EET0_PT_
	movq	%rax, %rbx
	movq	-64(%rbp), %rcx
	call	_ZSt32__make_move_if_noexcept_iteratorI6SquareSt13move_iteratorIPS0_EET0_PT_
	movq	%rax, %rcx
	movq	-40(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %r9
	movq	%rax, %r8
	movq	%rbx, %rdx
	call	_ZSt22__uninitialized_copy_aISt13move_iteratorIP6SquareES2_S1_ET0_T_S5_S4_RSaIT1_E
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt19__shrink_to_fit_auxISt6vectorI6SquareSaIS1_EELb1EE8_S_do_itERS3_,"x"
	.linkonce discard
	.globl	_ZNSt19__shrink_to_fit_auxISt6vectorI6SquareSaIS1_EELb1EE8_S_do_itERS3_
	.def	_ZNSt19__shrink_to_fit_auxISt6vectorI6SquareSaIS1_EELb1EE8_S_do_itERS3_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt19__shrink_to_fit_auxISt6vectorI6SquareSaIS1_EELb1EE8_S_do_itERS3_
_ZNSt19__shrink_to_fit_auxISt6vectorI6SquareSaIS1_EELb1EE8_S_do_itERS3_:
.LFB7062:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$72, %rsp
	.seh_stackalloc	72
	leaq	128(%rsp), %rbp
	.seh_setframe	%rbp, 128
	.seh_endprologue
	movq	%rcx, -32(%rbp)
	movq	-32(%rbp), %rdx
	leaq	-65(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNKSt12_Vector_baseI6SquareSaIS0_EE13get_allocatorEv
	movq	-32(%rbp), %rcx
	call	_ZNSt6vectorI6SquareSaIS0_EE3endEv
	movq	%rax, %rcx
.LEHB12:
	call	_ZSt32__make_move_if_noexcept_iteratorIN9__gnu_cxx17__normal_iteratorIP6SquareSt6vectorIS2_SaIS2_EEEESt13move_iteratorIS7_EET0_T_
	movq	%rax, %rbx
	movq	-32(%rbp), %rcx
	call	_ZNSt6vectorI6SquareSaIS0_EE5beginEv
	movq	%rax, %rcx
	call	_ZSt32__make_move_if_noexcept_iteratorIN9__gnu_cxx17__normal_iteratorIP6SquareSt6vectorIS2_SaIS2_EEEESt13move_iteratorIS7_EET0_T_
	movq	%rax, %rcx
	leaq	-65(%rbp), %rdx
	leaq	-96(%rbp), %rax
	movq	%rdx, %r9
	movq	%rbx, %r8
	movq	%rcx, %rdx
	movq	%rax, %rcx
	call	_ZNSt6vectorI6SquareSaIS0_EEC1ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS0_S2_EEEvEET_SA_RKS1_
.LEHE12:
	leaq	-96(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rax, %rcx
	call	_ZNSt6vectorI6SquareSaIS0_EE4swapERS2_
	leaq	-96(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI6SquareSaIS0_EED1Ev
	leaq	-65(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSaI6SquareED1Ev
	movl	$1, %ebx
.L206:
	movl	%ebx, %eax
	jmp	.L209
.L208:
	movq	%rax, %rbx
	leaq	-65(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSaI6SquareED1Ev
	movq	%rbx, %rax
	movq	%rax, %rcx
	call	__cxa_begin_catch
	movl	$0, %ebx
	call	__cxa_end_catch
	jmp	.L206
.L209:
	addq	$72, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
	.align 4
.LLSDA7062:
	.byte	0xff
	.byte	0x9b
	.uleb128 .LLSDATT7062-.LLSDATTD7062
.LLSDATTD7062:
	.byte	0x1
	.uleb128 .LLSDACSE7062-.LLSDACSB7062
.LLSDACSB7062:
	.uleb128 .LEHB12-.LFB7062
	.uleb128 .LEHE12-.LEHB12
	.uleb128 .L208-.LFB7062
	.uleb128 0x3
.LLSDACSE7062:
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0x7d
	.align 4
	.long	0

.LLSDATT7062:
	.section	.text$_ZNSt19__shrink_to_fit_auxISt6vectorI6SquareSaIS1_EELb1EE8_S_do_itERS3_,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_ZNSt16allocator_traitsISaI6SquareEE10deallocateERS1_PS0_y,"x"
	.linkonce discard
	.globl	_ZNSt16allocator_traitsISaI6SquareEE10deallocateERS1_PS0_y
	.def	_ZNSt16allocator_traitsISaI6SquareEE10deallocateERS1_PS0_y;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt16allocator_traitsISaI6SquareEE10deallocateERS1_PS0_y
_ZNSt16allocator_traitsISaI6SquareEE10deallocateERS1_PS0_y:
.LFB7063:
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
	movq	%rdx, %r8
	movq	%rax, %rdx
	movq	16(%rbp), %rcx
	call	_ZN9__gnu_cxx13new_allocatorI6SquareE10deallocateEPS1_y
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZSt18__do_alloc_on_copyISaI6SquareEEvRT_RKS2_St17integral_constantIbLb0EE,"x"
	.linkonce discard
	.globl	_ZSt18__do_alloc_on_copyISaI6SquareEEvRT_RKS2_St17integral_constantIbLb0EE
	.def	_ZSt18__do_alloc_on_copyISaI6SquareEEvRT_RKS2_St17integral_constantIbLb0EE;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt18__do_alloc_on_copyISaI6SquareEEvRT_RKS2_St17integral_constantIbLb0EE
_ZSt18__do_alloc_on_copyISaI6SquareEEvRT_RKS2_St17integral_constantIbLb0EE:
.LFB7064:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movb	%r8b, 32(%rbp)
	nop
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPK6SquareSt6vectorIS2_SaIS2_EEEEPS2_S2_ET0_T_SB_SA_RSaIT1_E,"x"
	.linkonce discard
	.globl	_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPK6SquareSt6vectorIS2_SaIS2_EEEEPS2_S2_ET0_T_SB_SA_RSaIT1_E
	.def	_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPK6SquareSt6vectorIS2_SaIS2_EEEEPS2_S2_ET0_T_SB_SA_RSaIT1_E;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPK6SquareSt6vectorIS2_SaIS2_EEEEPS2_S2_ET0_T_SB_SA_RSaIT1_E
_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPK6SquareSt6vectorIS2_SaIS2_EEEEPS2_S2_ET0_T_SB_SA_RSaIT1_E:
.LFB7065:
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
	movq	32(%rbp), %rdx
	movq	24(%rbp), %rax
	movq	%rdx, %r8
	movq	%rax, %rdx
	movq	16(%rbp), %rcx
	call	_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPK6SquareSt6vectorIS2_SaIS2_EEEEPS2_ET0_T_SB_SA_
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZSt8_DestroyIP6SquareEvT_S2_,"x"
	.linkonce discard
	.globl	_ZSt8_DestroyIP6SquareEvT_S2_
	.def	_ZSt8_DestroyIP6SquareEvT_S2_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt8_DestroyIP6SquareEvT_S2_
_ZSt8_DestroyIP6SquareEvT_S2_:
.LFB7066:
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
	movq	%rax, %rdx
	movq	16(%rbp), %rcx
	call	_ZNSt12_Destroy_auxILb1EE9__destroyIP6SquareEEvT_S4_
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPK6SquareSt6vectorIS2_SaIS2_EEEEET_S9_,"x"
	.linkonce discard
	.globl	_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPK6SquareSt6vectorIS2_SaIS2_EEEEET_S9_
	.def	_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPK6SquareSt6vectorIS2_SaIS2_EEEEET_S9_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPK6SquareSt6vectorIS2_SaIS2_EEEEET_S9_
_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPK6SquareSt6vectorIS2_SaIS2_EEEEET_S9_:
.LFB7067:
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
	.section	.text$_ZSt14__copy_move_a2ILb0EN9__gnu_cxx17__normal_iteratorIPK6SquareSt6vectorIS2_SaIS2_EEEENS1_IPS2_S7_EEET1_T0_SC_SB_,"x"
	.linkonce discard
	.globl	_ZSt14__copy_move_a2ILb0EN9__gnu_cxx17__normal_iteratorIPK6SquareSt6vectorIS2_SaIS2_EEEENS1_IPS2_S7_EEET1_T0_SC_SB_
	.def	_ZSt14__copy_move_a2ILb0EN9__gnu_cxx17__normal_iteratorIPK6SquareSt6vectorIS2_SaIS2_EEEENS1_IPS2_S7_EEET1_T0_SC_SB_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt14__copy_move_a2ILb0EN9__gnu_cxx17__normal_iteratorIPK6SquareSt6vectorIS2_SaIS2_EEEENS1_IPS2_S7_EEET1_T0_SC_SB_
_ZSt14__copy_move_a2ILb0EN9__gnu_cxx17__normal_iteratorIPK6SquareSt6vectorIS2_SaIS2_EEEENS1_IPS2_S7_EEET1_T0_SC_SB_:
.LFB7068:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	movq	%rcx, 32(%rbp)
	movq	%rdx, 40(%rbp)
	movq	%r8, 48(%rbp)
	movq	48(%rbp), %rax
	movq	%rax, %rcx
	call	_ZSt12__niter_baseIP6SquareSt6vectorIS0_SaIS0_EEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE
	movq	%rax, %rsi
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZSt12__niter_baseIPK6SquareSt6vectorIS0_SaIS0_EEET_N9__gnu_cxx17__normal_iteratorIS6_T0_EE
	movq	%rax, %rbx
	movq	32(%rbp), %rcx
	call	_ZSt12__niter_baseIPK6SquareSt6vectorIS0_SaIS0_EEET_N9__gnu_cxx17__normal_iteratorIS6_T0_EE
	movq	%rsi, %r8
	movq	%rbx, %rdx
	movq	%rax, %rcx
	call	_ZSt13__copy_move_aILb0EPK6SquarePS0_ET1_T0_S5_S4_
	movq	%rax, -8(%rbp)
	leaq	-8(%rbp), %rdx
	leaq	-16(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN9__gnu_cxx17__normal_iteratorIP6SquareSt6vectorIS1_SaIS1_EEEC1ERKS2_
	movq	-16(%rbp), %rax
	addq	$48, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIP6SquareSt6vectorIS2_SaIS2_EEEEEvT_S8_,"x"
	.linkonce discard
	.globl	_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIP6SquareSt6vectorIS2_SaIS2_EEEEEvT_S8_
	.def	_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIP6SquareSt6vectorIS2_SaIS2_EEEEEvT_S8_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIP6SquareSt6vectorIS2_SaIS2_EEEEEvT_S8_
_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIP6SquareSt6vectorIS2_SaIS2_EEEEEvT_S8_:
.LFB7069:
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
	movq	%rax, %rdx
	movq	16(%rbp), %rcx
	call	_ZNSt12_Destroy_auxILb1EE9__destroyIN9__gnu_cxx17__normal_iteratorIP6SquareSt6vectorIS4_SaIS4_EEEEEEvT_SA_
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZSt12__miter_baseIP6SquareET_S2_,"x"
	.linkonce discard
	.globl	_ZSt12__miter_baseIP6SquareET_S2_
	.def	_ZSt12__miter_baseIP6SquareET_S2_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt12__miter_baseIP6SquareET_S2_
_ZSt12__miter_baseIP6SquareET_S2_:
.LFB7070:
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
	.section	.text$_ZSt14__copy_move_a2ILb0EP6SquareS1_ET1_T0_S3_S2_,"x"
	.linkonce discard
	.globl	_ZSt14__copy_move_a2ILb0EP6SquareS1_ET1_T0_S3_S2_
	.def	_ZSt14__copy_move_a2ILb0EP6SquareS1_ET1_T0_S3_S2_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt14__copy_move_a2ILb0EP6SquareS1_ET1_T0_S3_S2_
_ZSt14__copy_move_a2ILb0EP6SquareS1_ET1_T0_S3_S2_:
.LFB7071:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 32(%rbp)
	movq	%rdx, 40(%rbp)
	movq	%r8, 48(%rbp)
	movq	48(%rbp), %rax
	movq	%rax, %rcx
	call	_ZSt12__niter_baseIP6SquareET_S2_
	movq	%rax, %rsi
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZSt12__niter_baseIP6SquareET_S2_
	movq	%rax, %rbx
	movq	32(%rbp), %rcx
	call	_ZSt12__niter_baseIP6SquareET_S2_
	movq	%rsi, %r8
	movq	%rbx, %rdx
	movq	%rax, %rcx
	call	_ZSt13__copy_move_aILb0EP6SquareS1_ET1_T0_S3_S2_
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZSt18uninitialized_copyIP6SquareS1_ET0_T_S3_S2_,"x"
	.linkonce discard
	.globl	_ZSt18uninitialized_copyIP6SquareS1_ET0_T_S3_S2_
	.def	_ZSt18uninitialized_copyIP6SquareS1_ET0_T_S3_S2_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt18uninitialized_copyIP6SquareS1_ET0_T_S3_S2_
_ZSt18uninitialized_copyIP6SquareS1_ET0_T_S3_S2_:
.LFB7072:
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
	movb	$1, -1(%rbp)
	movq	32(%rbp), %rdx
	movq	24(%rbp), %rax
	movq	%rdx, %r8
	movq	%rax, %rdx
	movq	16(%rbp), %rcx
	call	_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIP6SquareS3_EET0_T_S5_S4_
	addq	$48, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSaI6SquareEC2Ev,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSaI6SquareEC2Ev
	.def	_ZNSaI6SquareEC2Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSaI6SquareEC2Ev
_ZNSaI6SquareEC2Ev:
.LFB7108:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rcx
	call	_ZN9__gnu_cxx13new_allocatorI6SquareEC2Ev
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZN9__gnu_cxx13new_allocatorI6SquareED2Ev,"x"
	.linkonce discard
	.align 2
	.globl	_ZN9__gnu_cxx13new_allocatorI6SquareED2Ev
	.def	_ZN9__gnu_cxx13new_allocatorI6SquareED2Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN9__gnu_cxx13new_allocatorI6SquareED2Ev
_ZN9__gnu_cxx13new_allocatorI6SquareED2Ev:
.LFB7111:
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
	.section	.text$_ZNSt14pointer_traitsIP6SquareE10pointer_toERS0_,"x"
	.linkonce discard
	.globl	_ZNSt14pointer_traitsIP6SquareE10pointer_toERS0_
	.def	_ZNSt14pointer_traitsIP6SquareE10pointer_toERS0_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt14pointer_traitsIP6SquareE10pointer_toERS0_
_ZNSt14pointer_traitsIP6SquareE10pointer_toERS0_:
.LFB7113:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rcx
	call	_ZSt9addressofI6SquareEPT_RS1_
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZN9__gnu_cxx13new_allocatorI6SquareE7destroyIS1_EEvPT_,"x"
	.linkonce discard
	.align 2
	.globl	_ZN9__gnu_cxx13new_allocatorI6SquareE7destroyIS1_EEvPT_
	.def	_ZN9__gnu_cxx13new_allocatorI6SquareE7destroyIS1_EEvPT_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN9__gnu_cxx13new_allocatorI6SquareE7destroyIS1_EEvPT_
_ZN9__gnu_cxx13new_allocatorI6SquareE7destroyIS1_EEvPT_:
.LFB7114:
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
	.section	.text$_ZN9__gnu_cxx13new_allocatorI6SquareE9constructIS1_JS1_EEEvPT_DpOT0_,"x"
	.linkonce discard
	.align 2
	.globl	_ZN9__gnu_cxx13new_allocatorI6SquareE9constructIS1_JS1_EEEvPT_DpOT0_
	.def	_ZN9__gnu_cxx13new_allocatorI6SquareE9constructIS1_JS1_EEEvPT_DpOT0_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN9__gnu_cxx13new_allocatorI6SquareE9constructIS1_JS1_EEEvPT_DpOT0_
_ZN9__gnu_cxx13new_allocatorI6SquareE9constructIS1_JS1_EEEvPT_DpOT0_:
.LFB7115:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$40, %rsp
	.seh_stackalloc	40
	leaq	128(%rsp), %rbp
	.seh_setframe	%rbp, 128
	.seh_endprologue
	movq	%rcx, -64(%rbp)
	movq	%rdx, -56(%rbp)
	movq	%r8, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, %rcx
	call	_ZSt7forwardI6SquareEOT_RNSt16remove_referenceIS1_E4typeE
	movq	%rax, %rbx
	movq	-56(%rbp), %rax
	movq	%rax, %rdx
	movl	$8, %ecx
	call	_ZnwyPv
	movq	%rax, %rdx
	movq	(%rbx), %rax
	movq	%rax, (%rdx)
	nop
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZSt23__copy_move_backward_a2ILb1EP6SquareS1_ET1_T0_S3_S2_,"x"
	.linkonce discard
	.globl	_ZSt23__copy_move_backward_a2ILb1EP6SquareS1_ET1_T0_S3_S2_
	.def	_ZSt23__copy_move_backward_a2ILb1EP6SquareS1_ET1_T0_S3_S2_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt23__copy_move_backward_a2ILb1EP6SquareS1_ET1_T0_S3_S2_
_ZSt23__copy_move_backward_a2ILb1EP6SquareS1_ET1_T0_S3_S2_:
.LFB7116:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 32(%rbp)
	movq	%rdx, 40(%rbp)
	movq	%r8, 48(%rbp)
	movq	48(%rbp), %rax
	movq	%rax, %rcx
	call	_ZSt12__niter_baseIP6SquareET_S2_
	movq	%rax, %rsi
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZSt12__niter_baseIP6SquareET_S2_
	movq	%rax, %rbx
	movq	32(%rbp), %rcx
	call	_ZSt12__niter_baseIP6SquareET_S2_
	movq	%rsi, %r8
	movq	%rbx, %rdx
	movq	%rax, %rcx
	call	_ZSt22__copy_move_backward_aILb1EP6SquareS1_ET1_T0_S3_S2_
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNKSt6vectorI6SquareSaIS0_EE8max_sizeEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNKSt6vectorI6SquareSaIS0_EE8max_sizeEv
	.def	_ZNKSt6vectorI6SquareSaIS0_EE8max_sizeEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNKSt6vectorI6SquareSaIS0_EE8max_sizeEv
_ZNKSt6vectorI6SquareSaIS0_EE8max_sizeEv:
.LFB7117:
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
	call	_ZNKSt12_Vector_baseI6SquareSaIS0_EE19_M_get_Tp_allocatorEv
	movq	%rax, %rcx
	call	_ZNSt16allocator_traitsISaI6SquareEE8max_sizeERKS1_
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZSt3maxIyERKT_S2_S2_,"x"
	.linkonce discard
	.globl	_ZSt3maxIyERKT_S2_S2_
	.def	_ZSt3maxIyERKT_S2_S2_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt3maxIyERKT_S2_S2_
_ZSt3maxIyERKT_S2_S2_:
.LFB7118:
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
	jnb	.L237
	movq	24(%rbp), %rax
	jmp	.L238
.L237:
	movq	16(%rbp), %rax
.L238:
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt16allocator_traitsISaI6SquareEE8allocateERS1_y,"x"
	.linkonce discard
	.globl	_ZNSt16allocator_traitsISaI6SquareEE8allocateERS1_y
	.def	_ZNSt16allocator_traitsISaI6SquareEE8allocateERS1_y;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt16allocator_traitsISaI6SquareEE8allocateERS1_y
_ZNSt16allocator_traitsISaI6SquareEE8allocateERS1_y:
.LFB7119:
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
	movl	$0, %r8d
	movq	%rax, %rdx
	movq	16(%rbp), %rcx
	call	_ZN9__gnu_cxx13new_allocatorI6SquareE8allocateEyPKv
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZSt32__make_move_if_noexcept_iteratorI6SquareSt13move_iteratorIPS0_EET0_PT_,"x"
	.linkonce discard
	.globl	_ZSt32__make_move_if_noexcept_iteratorI6SquareSt13move_iteratorIPS0_EET0_PT_
	.def	_ZSt32__make_move_if_noexcept_iteratorI6SquareSt13move_iteratorIPS0_EET0_PT_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt32__make_move_if_noexcept_iteratorI6SquareSt13move_iteratorIPS0_EET0_PT_
_ZSt32__make_move_if_noexcept_iteratorI6SquareSt13move_iteratorIPS0_EET0_PT_:
.LFB7120:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	leaq	-8(%rbp), %rax
	movq	16(%rbp), %rdx
	movq	%rax, %rcx
	call	_ZNSt13move_iteratorIP6SquareEC1ES1_
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZSt22__uninitialized_copy_aISt13move_iteratorIP6SquareES2_S1_ET0_T_S5_S4_RSaIT1_E,"x"
	.linkonce discard
	.globl	_ZSt22__uninitialized_copy_aISt13move_iteratorIP6SquareES2_S1_ET0_T_S5_S4_RSaIT1_E
	.def	_ZSt22__uninitialized_copy_aISt13move_iteratorIP6SquareES2_S1_ET0_T_S5_S4_RSaIT1_E;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt22__uninitialized_copy_aISt13move_iteratorIP6SquareES2_S1_ET0_T_S5_S4_RSaIT1_E
_ZSt22__uninitialized_copy_aISt13move_iteratorIP6SquareES2_S1_ET0_T_S5_S4_RSaIT1_E:
.LFB7121:
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
	movq	32(%rbp), %rdx
	movq	24(%rbp), %rax
	movq	%rdx, %r8
	movq	%rax, %rdx
	movq	16(%rbp), %rcx
	call	_ZSt18uninitialized_copyISt13move_iteratorIP6SquareES2_ET0_T_S5_S4_
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZSt32__make_move_if_noexcept_iteratorIN9__gnu_cxx17__normal_iteratorIP6SquareSt6vectorIS2_SaIS2_EEEESt13move_iteratorIS7_EET0_T_,"x"
	.linkonce discard
	.globl	_ZSt32__make_move_if_noexcept_iteratorIN9__gnu_cxx17__normal_iteratorIP6SquareSt6vectorIS2_SaIS2_EEEESt13move_iteratorIS7_EET0_T_
	.def	_ZSt32__make_move_if_noexcept_iteratorIN9__gnu_cxx17__normal_iteratorIP6SquareSt6vectorIS2_SaIS2_EEEESt13move_iteratorIS7_EET0_T_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt32__make_move_if_noexcept_iteratorIN9__gnu_cxx17__normal_iteratorIP6SquareSt6vectorIS2_SaIS2_EEEESt13move_iteratorIS7_EET0_T_
_ZSt32__make_move_if_noexcept_iteratorIN9__gnu_cxx17__normal_iteratorIP6SquareSt6vectorIS2_SaIS2_EEEESt13move_iteratorIS7_EET0_T_:
.LFB7122:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	leaq	-8(%rbp), %rax
	movq	16(%rbp), %rdx
	movq	%rax, %rcx
	call	_ZNSt13move_iteratorIN9__gnu_cxx17__normal_iteratorIP6SquareSt6vectorIS2_SaIS2_EEEEEC1ES7_
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNKSt12_Vector_baseI6SquareSaIS0_EE13get_allocatorEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNKSt12_Vector_baseI6SquareSaIS0_EE13get_allocatorEv
	.def	_ZNKSt12_Vector_baseI6SquareSaIS0_EE13get_allocatorEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNKSt12_Vector_baseI6SquareSaIS0_EE13get_allocatorEv
_ZNKSt12_Vector_baseI6SquareSaIS0_EE13get_allocatorEv:
.LFB7123:
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
	call	_ZNKSt12_Vector_baseI6SquareSaIS0_EE19_M_get_Tp_allocatorEv
	movq	%rax, %rdx
	movq	16(%rbp), %rcx
	call	_ZNSaI6SquareEC1ERKS0_
	movq	16(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt6vectorI6SquareSaIS0_EEC1ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS0_S2_EEEvEET_SA_RKS1_,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt6vectorI6SquareSaIS0_EEC1ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS0_S2_EEEvEET_SA_RKS1_
	.def	_ZNSt6vectorI6SquareSaIS0_EEC1ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS0_S2_EEEvEET_SA_RKS1_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt6vectorI6SquareSaIS0_EEC1ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS0_S2_EEEvEET_SA_RKS1_
_ZNSt6vectorI6SquareSaIS0_EEC1ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS0_S2_EEEvEET_SA_RKS1_:
.LFB7126:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$56, %rsp
	.seh_stackalloc	56
	leaq	128(%rsp), %rbp
	.seh_setframe	%rbp, 128
	.seh_endprologue
	movq	%rcx, -48(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%r8, -32(%rbp)
	movq	%r9, -24(%rbp)
	movq	-48(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rax, %rcx
	call	_ZNSt12_Vector_baseI6SquareSaIS0_EEC2ERKS1_
	movq	-32(%rbp), %rdx
	movq	-40(%rbp), %rax
	movl	%ebx, %r9d
	movq	%rdx, %r8
	movq	%rax, %rdx
	movq	-48(%rbp), %rcx
.LEHB13:
	call	_ZNSt6vectorI6SquareSaIS0_EE22_M_initialize_dispatchISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS0_S2_EEEEEvT_SA_St12__false_type
.LEHE13:
	jmp	.L252
.L251:
	movq	%rax, %rbx
	movq	-48(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt12_Vector_baseI6SquareSaIS0_EED2Ev
	movq	%rbx, %rax
	movq	%rax, %rcx
.LEHB14:
	call	_Unwind_Resume
	nop
.LEHE14:
.L252:
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA7126:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE7126-.LLSDACSB7126
.LLSDACSB7126:
	.uleb128 .LEHB13-.LFB7126
	.uleb128 .LEHE13-.LEHB13
	.uleb128 .L251-.LFB7126
	.uleb128 0
	.uleb128 .LEHB14-.LFB7126
	.uleb128 .LEHE14-.LEHB14
	.uleb128 0
	.uleb128 0
.LLSDACSE7126:
	.section	.text$_ZNSt6vectorI6SquareSaIS0_EEC1ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS0_S2_EEEvEET_SA_RKS1_,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_ZNSt6vectorI6SquareSaIS0_EED1Ev,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt6vectorI6SquareSaIS0_EED1Ev
	.def	_ZNSt6vectorI6SquareSaIS0_EED1Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt6vectorI6SquareSaIS0_EED1Ev
_ZNSt6vectorI6SquareSaIS0_EED1Ev:
.LFB7129:
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
	call	_ZNSt12_Vector_baseI6SquareSaIS0_EE19_M_get_Tp_allocatorEv
	movq	%rax, %rcx
	movq	16(%rbp), %rax
	movq	8(%rax), %rdx
	movq	16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rcx, %r8
	movq	%rax, %rcx
	call	_ZSt8_DestroyIP6SquareS0_EvT_S2_RSaIT0_E
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt12_Vector_baseI6SquareSaIS0_EED2Ev
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA7129:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE7129-.LLSDACSB7129
.LLSDACSB7129:
.LLSDACSE7129:
	.section	.text$_ZNSt6vectorI6SquareSaIS0_EED1Ev,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_ZNSt6vectorI6SquareSaIS0_EE4swapERS2_,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt6vectorI6SquareSaIS0_EE4swapERS2_
	.def	_ZNSt6vectorI6SquareSaIS0_EE4swapERS2_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt6vectorI6SquareSaIS0_EE4swapERS2_
_ZNSt6vectorI6SquareSaIS0_EE4swapERS2_:
.LFB7130:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$40, %rsp
	.seh_stackalloc	40
	leaq	128(%rsp), %rbp
	.seh_setframe	%rbp, 128
	.seh_endprologue
	movq	%rcx, -64(%rbp)
	movq	%rdx, -56(%rbp)
	movq	-64(%rbp), %rax
	movq	-56(%rbp), %rdx
	movq	%rax, %rcx
	call	_ZNSt12_Vector_baseI6SquareSaIS0_EE12_Vector_impl12_M_swap_dataERS3_
	movq	-56(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt12_Vector_baseI6SquareSaIS0_EE19_M_get_Tp_allocatorEv
	movq	%rax, %rbx
	movq	-64(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt12_Vector_baseI6SquareSaIS0_EE19_M_get_Tp_allocatorEv
	movq	%rbx, %rdx
	movq	%rax, %rcx
	call	_ZN9__gnu_cxx14__alloc_traitsISaI6SquareES1_E10_S_on_swapERS2_S4_
	nop
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA7130:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE7130-.LLSDACSB7130
.LLSDACSB7130:
.LLSDACSE7130:
	.section	.text$_ZNSt6vectorI6SquareSaIS0_EE4swapERS2_,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_ZN9__gnu_cxx13new_allocatorI6SquareE10deallocateEPS1_y,"x"
	.linkonce discard
	.align 2
	.globl	_ZN9__gnu_cxx13new_allocatorI6SquareE10deallocateEPS1_y
	.def	_ZN9__gnu_cxx13new_allocatorI6SquareE10deallocateEPS1_y;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN9__gnu_cxx13new_allocatorI6SquareE10deallocateEPS1_y
_ZN9__gnu_cxx13new_allocatorI6SquareE10deallocateEPS1_y:
.LFB7131:
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
	call	_ZdlPv
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPK6SquareSt6vectorIS2_SaIS2_EEEEPS2_ET0_T_SB_SA_,"x"
	.linkonce discard
	.globl	_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPK6SquareSt6vectorIS2_SaIS2_EEEEPS2_ET0_T_SB_SA_
	.def	_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPK6SquareSt6vectorIS2_SaIS2_EEEEPS2_ET0_T_SB_SA_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPK6SquareSt6vectorIS2_SaIS2_EEEEPS2_ET0_T_SB_SA_
_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPK6SquareSt6vectorIS2_SaIS2_EEEEPS2_ET0_T_SB_SA_:
.LFB7132:
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
	movb	$1, -1(%rbp)
	movq	32(%rbp), %rdx
	movq	24(%rbp), %rax
	movq	%rdx, %r8
	movq	%rax, %rdx
	movq	16(%rbp), %rcx
	call	_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPK6SquareSt6vectorIS4_SaIS4_EEEEPS4_EET0_T_SD_SC_
	addq	$48, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt12_Destroy_auxILb1EE9__destroyIP6SquareEEvT_S4_,"x"
	.linkonce discard
	.globl	_ZNSt12_Destroy_auxILb1EE9__destroyIP6SquareEEvT_S4_
	.def	_ZNSt12_Destroy_auxILb1EE9__destroyIP6SquareEEvT_S4_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt12_Destroy_auxILb1EE9__destroyIP6SquareEEvT_S4_
_ZNSt12_Destroy_auxILb1EE9__destroyIP6SquareEEvT_S4_:
.LFB7133:
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
	.section	.text$_ZSt12__niter_baseIPK6SquareSt6vectorIS0_SaIS0_EEET_N9__gnu_cxx17__normal_iteratorIS6_T0_EE,"x"
	.linkonce discard
	.globl	_ZSt12__niter_baseIPK6SquareSt6vectorIS0_SaIS0_EEET_N9__gnu_cxx17__normal_iteratorIS6_T0_EE
	.def	_ZSt12__niter_baseIPK6SquareSt6vectorIS0_SaIS0_EEET_N9__gnu_cxx17__normal_iteratorIS6_T0_EE;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt12__niter_baseIPK6SquareSt6vectorIS0_SaIS0_EEET_N9__gnu_cxx17__normal_iteratorIS6_T0_EE
_ZSt12__niter_baseIPK6SquareSt6vectorIS0_SaIS0_EEET_N9__gnu_cxx17__normal_iteratorIS6_T0_EE:
.LFB7134:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	leaq	16(%rbp), %rcx
	call	_ZNK9__gnu_cxx17__normal_iteratorIPK6SquareSt6vectorIS1_SaIS1_EEE4baseEv
	movq	(%rax), %rax
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZSt12__niter_baseIP6SquareSt6vectorIS0_SaIS0_EEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE,"x"
	.linkonce discard
	.globl	_ZSt12__niter_baseIP6SquareSt6vectorIS0_SaIS0_EEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE
	.def	_ZSt12__niter_baseIP6SquareSt6vectorIS0_SaIS0_EEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt12__niter_baseIP6SquareSt6vectorIS0_SaIS0_EEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE
_ZSt12__niter_baseIP6SquareSt6vectorIS0_SaIS0_EEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE:
.LFB7135:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	leaq	16(%rbp), %rcx
	call	_ZNK9__gnu_cxx17__normal_iteratorIP6SquareSt6vectorIS1_SaIS1_EEE4baseEv
	movq	(%rax), %rax
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZSt13__copy_move_aILb0EPK6SquarePS0_ET1_T0_S5_S4_,"x"
	.linkonce discard
	.globl	_ZSt13__copy_move_aILb0EPK6SquarePS0_ET1_T0_S5_S4_
	.def	_ZSt13__copy_move_aILb0EPK6SquarePS0_ET1_T0_S5_S4_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt13__copy_move_aILb0EPK6SquarePS0_ET1_T0_S5_S4_
_ZSt13__copy_move_aILb0EPK6SquarePS0_ET1_T0_S5_S4_:
.LFB7136:
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
	movb	$1, -1(%rbp)
	movq	32(%rbp), %rdx
	movq	24(%rbp), %rax
	movq	%rdx, %r8
	movq	%rax, %rdx
	movq	16(%rbp), %rcx
	call	_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mI6SquareEEPT_PKS4_S7_S5_
	addq	$48, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt12_Destroy_auxILb1EE9__destroyIN9__gnu_cxx17__normal_iteratorIP6SquareSt6vectorIS4_SaIS4_EEEEEEvT_SA_,"x"
	.linkonce discard
	.globl	_ZNSt12_Destroy_auxILb1EE9__destroyIN9__gnu_cxx17__normal_iteratorIP6SquareSt6vectorIS4_SaIS4_EEEEEEvT_SA_
	.def	_ZNSt12_Destroy_auxILb1EE9__destroyIN9__gnu_cxx17__normal_iteratorIP6SquareSt6vectorIS4_SaIS4_EEEEEEvT_SA_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt12_Destroy_auxILb1EE9__destroyIN9__gnu_cxx17__normal_iteratorIP6SquareSt6vectorIS4_SaIS4_EEEEEEvT_SA_
_ZNSt12_Destroy_auxILb1EE9__destroyIN9__gnu_cxx17__normal_iteratorIP6SquareSt6vectorIS4_SaIS4_EEEEEEvT_SA_:
.LFB7137:
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
	.section	.text$_ZSt12__niter_baseIP6SquareET_S2_,"x"
	.linkonce discard
	.globl	_ZSt12__niter_baseIP6SquareET_S2_
	.def	_ZSt12__niter_baseIP6SquareET_S2_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt12__niter_baseIP6SquareET_S2_
_ZSt12__niter_baseIP6SquareET_S2_:
.LFB7138:
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
	.section	.text$_ZSt13__copy_move_aILb0EP6SquareS1_ET1_T0_S3_S2_,"x"
	.linkonce discard
	.globl	_ZSt13__copy_move_aILb0EP6SquareS1_ET1_T0_S3_S2_
	.def	_ZSt13__copy_move_aILb0EP6SquareS1_ET1_T0_S3_S2_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt13__copy_move_aILb0EP6SquareS1_ET1_T0_S3_S2_
_ZSt13__copy_move_aILb0EP6SquareS1_ET1_T0_S3_S2_:
.LFB7139:
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
	movb	$1, -1(%rbp)
	movq	32(%rbp), %rdx
	movq	24(%rbp), %rax
	movq	%rdx, %r8
	movq	%rax, %rdx
	movq	16(%rbp), %rcx
	call	_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mI6SquareEEPT_PKS4_S7_S5_
	addq	$48, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIP6SquareS3_EET0_T_S5_S4_,"x"
	.linkonce discard
	.globl	_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIP6SquareS3_EET0_T_S5_S4_
	.def	_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIP6SquareS3_EET0_T_S5_S4_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIP6SquareS3_EET0_T_S5_S4_
_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIP6SquareS3_EET0_T_S5_S4_:
.LFB7140:
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
	movq	%rdx, %r8
	movq	%rax, %rdx
	movq	16(%rbp), %rcx
	call	_ZSt4copyIP6SquareS1_ET0_T_S3_S2_
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZN9__gnu_cxx13new_allocatorI6SquareEC2Ev,"x"
	.linkonce discard
	.align 2
	.globl	_ZN9__gnu_cxx13new_allocatorI6SquareEC2Ev
	.def	_ZN9__gnu_cxx13new_allocatorI6SquareEC2Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN9__gnu_cxx13new_allocatorI6SquareEC2Ev
_ZN9__gnu_cxx13new_allocatorI6SquareEC2Ev:
.LFB7171:
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
	.section	.text$_ZSt9addressofI6SquareEPT_RS1_,"x"
	.linkonce discard
	.globl	_ZSt9addressofI6SquareEPT_RS1_
	.def	_ZSt9addressofI6SquareEPT_RS1_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt9addressofI6SquareEPT_RS1_
_ZSt9addressofI6SquareEPT_RS1_:
.LFB7173:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rcx
	call	_ZSt11__addressofI6SquareEPT_RS1_
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZSt22__copy_move_backward_aILb1EP6SquareS1_ET1_T0_S3_S2_,"x"
	.linkonce discard
	.globl	_ZSt22__copy_move_backward_aILb1EP6SquareS1_ET1_T0_S3_S2_
	.def	_ZSt22__copy_move_backward_aILb1EP6SquareS1_ET1_T0_S3_S2_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt22__copy_move_backward_aILb1EP6SquareS1_ET1_T0_S3_S2_
_ZSt22__copy_move_backward_aILb1EP6SquareS1_ET1_T0_S3_S2_:
.LFB7174:
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
	movb	$1, -1(%rbp)
	movq	32(%rbp), %rdx
	movq	24(%rbp), %rax
	movq	%rdx, %r8
	movq	%rax, %rdx
	movq	16(%rbp), %rcx
	call	_ZNSt20__copy_move_backwardILb1ELb1ESt26random_access_iterator_tagE13__copy_move_bI6SquareEEPT_PKS4_S7_S5_
	addq	$48, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt16allocator_traitsISaI6SquareEE8max_sizeERKS1_,"x"
	.linkonce discard
	.globl	_ZNSt16allocator_traitsISaI6SquareEE8max_sizeERKS1_
	.def	_ZNSt16allocator_traitsISaI6SquareEE8max_sizeERKS1_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt16allocator_traitsISaI6SquareEE8max_sizeERKS1_
_ZNSt16allocator_traitsISaI6SquareEE8max_sizeERKS1_:
.LFB7175:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rcx
	call	_ZNK9__gnu_cxx13new_allocatorI6SquareE8max_sizeEv
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZN9__gnu_cxx13new_allocatorI6SquareE8allocateEyPKv,"x"
	.linkonce discard
	.align 2
	.globl	_ZN9__gnu_cxx13new_allocatorI6SquareE8allocateEyPKv
	.def	_ZN9__gnu_cxx13new_allocatorI6SquareE8allocateEyPKv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN9__gnu_cxx13new_allocatorI6SquareE8allocateEyPKv
_ZN9__gnu_cxx13new_allocatorI6SquareE8allocateEyPKv:
.LFB7176:
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
	movq	16(%rbp), %rcx
	call	_ZNK9__gnu_cxx13new_allocatorI6SquareE8max_sizeEv
	cmpq	%rax, 24(%rbp)
	seta	%al
	testb	%al, %al
	je	.L280
	call	_ZSt17__throw_bad_allocv
.L280:
	movq	24(%rbp), %rax
	salq	$3, %rax
	movq	%rax, %rcx
	call	_Znwy
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt13move_iteratorIP6SquareEC1ES1_,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt13move_iteratorIP6SquareEC1ES1_
	.def	_ZNSt13move_iteratorIP6SquareEC1ES1_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt13move_iteratorIP6SquareEC1ES1_
_ZNSt13move_iteratorIP6SquareEC1ES1_:
.LFB7179:
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
	.section	.text$_ZSt18uninitialized_copyISt13move_iteratorIP6SquareES2_ET0_T_S5_S4_,"x"
	.linkonce discard
	.globl	_ZSt18uninitialized_copyISt13move_iteratorIP6SquareES2_ET0_T_S5_S4_
	.def	_ZSt18uninitialized_copyISt13move_iteratorIP6SquareES2_ET0_T_S5_S4_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt18uninitialized_copyISt13move_iteratorIP6SquareES2_ET0_T_S5_S4_
_ZSt18uninitialized_copyISt13move_iteratorIP6SquareES2_ET0_T_S5_S4_:
.LFB7180:
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
	movb	$1, -1(%rbp)
	movq	32(%rbp), %rdx
	movq	24(%rbp), %rax
	movq	%rdx, %r8
	movq	%rax, %rdx
	movq	16(%rbp), %rcx
	call	_ZNSt20__uninitialized_copyILb1EE13__uninit_copyISt13move_iteratorIP6SquareES4_EET0_T_S7_S6_
	addq	$48, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt13move_iteratorIN9__gnu_cxx17__normal_iteratorIP6SquareSt6vectorIS2_SaIS2_EEEEEC1ES7_,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt13move_iteratorIN9__gnu_cxx17__normal_iteratorIP6SquareSt6vectorIS2_SaIS2_EEEEEC1ES7_
	.def	_ZNSt13move_iteratorIN9__gnu_cxx17__normal_iteratorIP6SquareSt6vectorIS2_SaIS2_EEEEEC1ES7_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt13move_iteratorIN9__gnu_cxx17__normal_iteratorIP6SquareSt6vectorIS2_SaIS2_EEEEEC1ES7_
_ZNSt13move_iteratorIN9__gnu_cxx17__normal_iteratorIP6SquareSt6vectorIS2_SaIS2_EEEEEC1ES7_:
.LFB7183:
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
	.section	.text$_ZNSaI6SquareEC2ERKS0_,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSaI6SquareEC2ERKS0_
	.def	_ZNSaI6SquareEC2ERKS0_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSaI6SquareEC2ERKS0_
_ZNSaI6SquareEC2ERKS0_:
.LFB7185:
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
	movq	%rax, %rdx
	movq	16(%rbp), %rcx
	call	_ZN9__gnu_cxx13new_allocatorI6SquareEC2ERKS2_
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSaI6SquareEC1ERKS0_,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSaI6SquareEC1ERKS0_
	.def	_ZNSaI6SquareEC1ERKS0_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSaI6SquareEC1ERKS0_
_ZNSaI6SquareEC1ERKS0_:
.LFB7186:
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
	movq	%rax, %rdx
	movq	16(%rbp), %rcx
	call	_ZN9__gnu_cxx13new_allocatorI6SquareEC2ERKS2_
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt12_Vector_baseI6SquareSaIS0_EEC2ERKS1_,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt12_Vector_baseI6SquareSaIS0_EEC2ERKS1_
	.def	_ZNSt12_Vector_baseI6SquareSaIS0_EEC2ERKS1_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt12_Vector_baseI6SquareSaIS0_EEC2ERKS1_
_ZNSt12_Vector_baseI6SquareSaIS0_EEC2ERKS1_:
.LFB7188:
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
	call	_ZNSt12_Vector_baseI6SquareSaIS0_EE12_Vector_implC1ERKS1_
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt6vectorI6SquareSaIS0_EE22_M_initialize_dispatchISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS0_S2_EEEEEvT_SA_St12__false_type,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt6vectorI6SquareSaIS0_EE22_M_initialize_dispatchISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS0_S2_EEEEEvT_SA_St12__false_type
	.def	_ZNSt6vectorI6SquareSaIS0_EE22_M_initialize_dispatchISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS0_S2_EEEEEvT_SA_St12__false_type;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt6vectorI6SquareSaIS0_EE22_M_initialize_dispatchISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS0_S2_EEEEEvT_SA_St12__false_type
_ZNSt6vectorI6SquareSaIS0_EE22_M_initialize_dispatchISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS0_S2_EEEEEvT_SA_St12__false_type:
.LFB7190:
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
	movb	%r9b, 40(%rbp)
	movq	32(%rbp), %rdx
	movq	24(%rbp), %rax
	movl	%r10d, %r9d
	movq	%rdx, %r8
	movq	%rax, %rdx
	movq	16(%rbp), %rcx
	call	_ZNSt6vectorI6SquareSaIS0_EE19_M_range_initializeISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS0_S2_EEEEEvT_SA_St20forward_iterator_tag
	nop
	addq	$48, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt12_Vector_baseI6SquareSaIS0_EE12_Vector_impl12_M_swap_dataERS3_,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt12_Vector_baseI6SquareSaIS0_EE12_Vector_impl12_M_swap_dataERS3_
	.def	_ZNSt12_Vector_baseI6SquareSaIS0_EE12_Vector_impl12_M_swap_dataERS3_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt12_Vector_baseI6SquareSaIS0_EE12_Vector_impl12_M_swap_dataERS3_
_ZNSt12_Vector_baseI6SquareSaIS0_EE12_Vector_impl12_M_swap_dataERS3_:
.LFB7191:
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
	call	_ZSt4swapIP6SquareENSt9enable_ifIXsrSt6__and_IJSt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS6_ESt18is_move_assignableIS6_EEE5valueEvE4typeERS6_SG_
	movq	24(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	16(%rbp), %rax
	addq	$8, %rax
	movq	%rax, %rcx
	call	_ZSt4swapIP6SquareENSt9enable_ifIXsrSt6__and_IJSt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS6_ESt18is_move_assignableIS6_EEE5valueEvE4typeERS6_SG_
	movq	24(%rbp), %rax
	leaq	16(%rax), %rdx
	movq	16(%rbp), %rax
	addq	$16, %rax
	movq	%rax, %rcx
	call	_ZSt4swapIP6SquareENSt9enable_ifIXsrSt6__and_IJSt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS6_ESt18is_move_assignableIS6_EEE5valueEvE4typeERS6_SG_
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZN9__gnu_cxx14__alloc_traitsISaI6SquareES1_E10_S_on_swapERS2_S4_,"x"
	.linkonce discard
	.globl	_ZN9__gnu_cxx14__alloc_traitsISaI6SquareES1_E10_S_on_swapERS2_S4_
	.def	_ZN9__gnu_cxx14__alloc_traitsISaI6SquareES1_E10_S_on_swapERS2_S4_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN9__gnu_cxx14__alloc_traitsISaI6SquareES1_E10_S_on_swapERS2_S4_
_ZN9__gnu_cxx14__alloc_traitsISaI6SquareES1_E10_S_on_swapERS2_S4_:
.LFB7192:
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
	movq	%rax, %rdx
	movq	16(%rbp), %rcx
	call	_ZSt15__alloc_on_swapISaI6SquareEEvRT_S3_
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPK6SquareSt6vectorIS4_SaIS4_EEEEPS4_EET0_T_SD_SC_,"x"
	.linkonce discard
	.globl	_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPK6SquareSt6vectorIS4_SaIS4_EEEEPS4_EET0_T_SD_SC_
	.def	_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPK6SquareSt6vectorIS4_SaIS4_EEEEPS4_EET0_T_SD_SC_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPK6SquareSt6vectorIS4_SaIS4_EEEEPS4_EET0_T_SD_SC_
_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPK6SquareSt6vectorIS4_SaIS4_EEEEPS4_EET0_T_SD_SC_:
.LFB7193:
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
	movq	%rdx, %r8
	movq	%rax, %rdx
	movq	16(%rbp), %rcx
	call	_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPK6SquareSt6vectorIS2_SaIS2_EEEEPS2_ET0_T_SB_SA_
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mI6SquareEEPT_PKS4_S7_S5_,"x"
	.linkonce discard
	.globl	_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mI6SquareEEPT_PKS4_S7_S5_
	.def	_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mI6SquareEEPT_PKS4_S7_S5_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mI6SquareEEPT_PKS4_S7_S5_
_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mI6SquareEEPT_PKS4_S7_S5_:
.LFB7194:
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
	subq	16(%rbp), %rax
	sarq	$3, %rax
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L295
	movq	-8(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	32(%rbp), %rax
	movq	%rdx, %r8
	movq	16(%rbp), %rdx
	movq	%rax, %rcx
	call	memmove
.L295:
	movq	-8(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	32(%rbp), %rax
	addq	%rdx, %rax
	addq	$48, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZSt11__addressofI6SquareEPT_RS1_,"x"
	.linkonce discard
	.globl	_ZSt11__addressofI6SquareEPT_RS1_
	.def	_ZSt11__addressofI6SquareEPT_RS1_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt11__addressofI6SquareEPT_RS1_
_ZSt11__addressofI6SquareEPT_RS1_:
.LFB7222:
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
	.section	.text$_ZNSt20__copy_move_backwardILb1ELb1ESt26random_access_iterator_tagE13__copy_move_bI6SquareEEPT_PKS4_S7_S5_,"x"
	.linkonce discard
	.globl	_ZNSt20__copy_move_backwardILb1ELb1ESt26random_access_iterator_tagE13__copy_move_bI6SquareEEPT_PKS4_S7_S5_
	.def	_ZNSt20__copy_move_backwardILb1ELb1ESt26random_access_iterator_tagE13__copy_move_bI6SquareEEPT_PKS4_S7_S5_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt20__copy_move_backwardILb1ELb1ESt26random_access_iterator_tagE13__copy_move_bI6SquareEEPT_PKS4_S7_S5_
_ZNSt20__copy_move_backwardILb1ELb1ESt26random_access_iterator_tagE13__copy_move_bI6SquareEEPT_PKS4_S7_S5_:
.LFB7223:
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
	subq	16(%rbp), %rax
	sarq	$3, %rax
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L300
	movq	-8(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-8(%rbp), %rax
	salq	$3, %rax
	negq	%rax
	movq	%rax, %rcx
	movq	32(%rbp), %rax
	addq	%rcx, %rax
	movq	%rdx, %r8
	movq	16(%rbp), %rdx
	movq	%rax, %rcx
	call	memmove
.L300:
	movq	-8(%rbp), %rax
	salq	$3, %rax
	negq	%rax
	movq	%rax, %rdx
	movq	32(%rbp), %rax
	addq	%rdx, %rax
	addq	$48, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNK9__gnu_cxx13new_allocatorI6SquareE8max_sizeEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNK9__gnu_cxx13new_allocatorI6SquareE8max_sizeEv
	.def	_ZNK9__gnu_cxx13new_allocatorI6SquareE8max_sizeEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNK9__gnu_cxx13new_allocatorI6SquareE8max_sizeEv
_ZNK9__gnu_cxx13new_allocatorI6SquareE8max_sizeEv:
.LFB7224:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movabsq	$2305843009213693951, %rax
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt20__uninitialized_copyILb1EE13__uninit_copyISt13move_iteratorIP6SquareES4_EET0_T_S7_S6_,"x"
	.linkonce discard
	.globl	_ZNSt20__uninitialized_copyILb1EE13__uninit_copyISt13move_iteratorIP6SquareES4_EET0_T_S7_S6_
	.def	_ZNSt20__uninitialized_copyILb1EE13__uninit_copyISt13move_iteratorIP6SquareES4_EET0_T_S7_S6_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt20__uninitialized_copyILb1EE13__uninit_copyISt13move_iteratorIP6SquareES4_EET0_T_S7_S6_
_ZNSt20__uninitialized_copyILb1EE13__uninit_copyISt13move_iteratorIP6SquareES4_EET0_T_S7_S6_:
.LFB7225:
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
	movq	%rdx, %r8
	movq	%rax, %rdx
	movq	16(%rbp), %rcx
	call	_ZSt4copyISt13move_iteratorIP6SquareES2_ET0_T_S5_S4_
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZN9__gnu_cxx13new_allocatorI6SquareEC2ERKS2_,"x"
	.linkonce discard
	.align 2
	.globl	_ZN9__gnu_cxx13new_allocatorI6SquareEC2ERKS2_
	.def	_ZN9__gnu_cxx13new_allocatorI6SquareEC2ERKS2_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN9__gnu_cxx13new_allocatorI6SquareEC2ERKS2_
_ZN9__gnu_cxx13new_allocatorI6SquareEC2ERKS2_:
.LFB7227:
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
	.section	.text$_ZNSt12_Vector_baseI6SquareSaIS0_EE12_Vector_implC1ERKS1_,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt12_Vector_baseI6SquareSaIS0_EE12_Vector_implC1ERKS1_
	.def	_ZNSt12_Vector_baseI6SquareSaIS0_EE12_Vector_implC1ERKS1_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt12_Vector_baseI6SquareSaIS0_EE12_Vector_implC1ERKS1_
_ZNSt12_Vector_baseI6SquareSaIS0_EE12_Vector_implC1ERKS1_:
.LFB7231:
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
	movq	%rax, %rdx
	movq	16(%rbp), %rcx
	call	_ZNSaI6SquareEC2ERKS0_
	movq	16(%rbp), %rax
	movq	$0, (%rax)
	movq	16(%rbp), %rax
	movq	$0, 8(%rax)
	movq	16(%rbp), %rax
	movq	$0, 16(%rax)
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt6vectorI6SquareSaIS0_EE19_M_range_initializeISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS0_S2_EEEEEvT_SA_St20forward_iterator_tag,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt6vectorI6SquareSaIS0_EE19_M_range_initializeISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS0_S2_EEEEEvT_SA_St20forward_iterator_tag
	.def	_ZNSt6vectorI6SquareSaIS0_EE19_M_range_initializeISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS0_S2_EEEEEvT_SA_St20forward_iterator_tag;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt6vectorI6SquareSaIS0_EE19_M_range_initializeISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS0_S2_EEEEEvT_SA_St20forward_iterator_tag
_ZNSt6vectorI6SquareSaIS0_EE19_M_range_initializeISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS0_S2_EEEEEvT_SA_St20forward_iterator_tag:
.LFB7232:
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
	movb	%r9b, 40(%rbp)
	movq	32(%rbp), %rdx
	movq	24(%rbp), %rax
	movq	%rax, %rcx
	call	_ZSt8distanceISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIP6SquareSt6vectorIS3_SaIS3_EEEEEENSt15iterator_traitsIT_E15difference_typeESB_SB_
	movq	%rax, -8(%rbp)
	movq	16(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rax, %rcx
	call	_ZNSt12_Vector_baseI6SquareSaIS0_EE11_M_allocateEy
	movq	%rax, %rdx
	movq	16(%rbp), %rax
	movq	%rdx, (%rax)
	movq	16(%rbp), %rax
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	salq	$3, %rax
	addq	%rax, %rdx
	movq	16(%rbp), %rax
	movq	%rdx, 16(%rax)
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt12_Vector_baseI6SquareSaIS0_EE19_M_get_Tp_allocatorEv
	movq	%rax, %r8
	movq	16(%rbp), %rax
	movq	(%rax), %rcx
	movq	32(%rbp), %rdx
	movq	24(%rbp), %rax
	movq	%r8, %r9
	movq	%rcx, %r8
	movq	%rax, %rcx
	call	_ZSt22__uninitialized_copy_aISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIP6SquareSt6vectorIS3_SaIS3_EEEEES4_S3_ET0_T_SB_SA_RSaIT1_E
	movq	%rax, %rdx
	movq	16(%rbp), %rax
	movq	%rdx, 8(%rax)
	nop
	addq	$48, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZSt4moveIRP6SquareEONSt16remove_referenceIT_E4typeEOS4_,"x"
	.linkonce discard
	.globl	_ZSt4moveIRP6SquareEONSt16remove_referenceIT_E4typeEOS4_
	.def	_ZSt4moveIRP6SquareEONSt16remove_referenceIT_E4typeEOS4_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt4moveIRP6SquareEONSt16remove_referenceIT_E4typeEOS4_
_ZSt4moveIRP6SquareEONSt16remove_referenceIT_E4typeEOS4_:
.LFB7234:
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
	.section	.text$_ZSt4swapIP6SquareENSt9enable_ifIXsrSt6__and_IJSt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS6_ESt18is_move_assignableIS6_EEE5valueEvE4typeERS6_SG_,"x"
	.linkonce discard
	.globl	_ZSt4swapIP6SquareENSt9enable_ifIXsrSt6__and_IJSt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS6_ESt18is_move_assignableIS6_EEE5valueEvE4typeERS6_SG_
	.def	_ZSt4swapIP6SquareENSt9enable_ifIXsrSt6__and_IJSt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS6_ESt18is_move_assignableIS6_EEE5valueEvE4typeERS6_SG_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt4swapIP6SquareENSt9enable_ifIXsrSt6__and_IJSt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS6_ESt18is_move_assignableIS6_EEE5valueEvE4typeERS6_SG_
_ZSt4swapIP6SquareENSt9enable_ifIXsrSt6__and_IJSt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS6_ESt18is_move_assignableIS6_EEE5valueEvE4typeERS6_SG_:
.LFB7233:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	16(%rbp), %rcx
	call	_ZSt4moveIRP6SquareEONSt16remove_referenceIT_E4typeEOS4_
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	24(%rbp), %rax
	movq	%rax, %rcx
	call	_ZSt4moveIRP6SquareEONSt16remove_referenceIT_E4typeEOS4_
	movq	(%rax), %rdx
	movq	16(%rbp), %rax
	movq	%rdx, (%rax)
	leaq	-8(%rbp), %rax
	movq	%rax, %rcx
	call	_ZSt4moveIRP6SquareEONSt16remove_referenceIT_E4typeEOS4_
	movq	(%rax), %rdx
	movq	24(%rbp), %rax
	movq	%rdx, (%rax)
	nop
	addq	$48, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZSt15__alloc_on_swapISaI6SquareEEvRT_S3_,"x"
	.linkonce discard
	.globl	_ZSt15__alloc_on_swapISaI6SquareEEvRT_S3_
	.def	_ZSt15__alloc_on_swapISaI6SquareEEvRT_S3_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt15__alloc_on_swapISaI6SquareEEvRT_S3_
_ZSt15__alloc_on_swapISaI6SquareEEvRT_S3_:
.LFB7235:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	24(%rbp), %rax
	movq	%rax, %rdx
	movq	16(%rbp), %rcx
	call	_ZSt18__do_alloc_on_swapISaI6SquareEEvRT_S3_St17integral_constantIbLb0EE
	nop
	addq	$48, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPK6SquareSt6vectorIS2_SaIS2_EEEEPS2_ET0_T_SB_SA_,"x"
	.linkonce discard
	.globl	_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPK6SquareSt6vectorIS2_SaIS2_EEEEPS2_ET0_T_SB_SA_
	.def	_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPK6SquareSt6vectorIS2_SaIS2_EEEEPS2_ET0_T_SB_SA_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPK6SquareSt6vectorIS2_SaIS2_EEEEPS2_ET0_T_SB_SA_
_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPK6SquareSt6vectorIS2_SaIS2_EEEEPS2_ET0_T_SB_SA_:
.LFB7236:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$40, %rsp
	.seh_stackalloc	40
	leaq	128(%rsp), %rbp
	.seh_setframe	%rbp, 128
	.seh_endprologue
	movq	%rcx, -64(%rbp)
	movq	%rdx, -56(%rbp)
	movq	%r8, -48(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, %rcx
	call	_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPK6SquareSt6vectorIS2_SaIS2_EEEEET_S9_
	movq	%rax, %rbx
	movq	-64(%rbp), %rcx
	call	_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPK6SquareSt6vectorIS2_SaIS2_EEEEET_S9_
	movq	%rax, %rcx
	movq	-48(%rbp), %rax
	movq	%rax, %r8
	movq	%rbx, %rdx
	call	_ZSt14__copy_move_a2ILb0EN9__gnu_cxx17__normal_iteratorIPK6SquareSt6vectorIS2_SaIS2_EEEEPS2_ET1_T0_SB_SA_
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZSt4copyISt13move_iteratorIP6SquareES2_ET0_T_S5_S4_,"x"
	.linkonce discard
	.globl	_ZSt4copyISt13move_iteratorIP6SquareES2_ET0_T_S5_S4_
	.def	_ZSt4copyISt13move_iteratorIP6SquareES2_ET0_T_S5_S4_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt4copyISt13move_iteratorIP6SquareES2_ET0_T_S5_S4_
_ZSt4copyISt13move_iteratorIP6SquareES2_ET0_T_S5_S4_:
.LFB7247:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$40, %rsp
	.seh_stackalloc	40
	leaq	128(%rsp), %rbp
	.seh_setframe	%rbp, 128
	.seh_endprologue
	movq	%rcx, -64(%rbp)
	movq	%rdx, -56(%rbp)
	movq	%r8, -48(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, %rcx
	call	_ZSt12__miter_baseIP6SquareEDTcl12__miter_basecldtfp_4baseEEESt13move_iteratorIT_E
	movq	%rax, %rbx
	movq	-64(%rbp), %rcx
	call	_ZSt12__miter_baseIP6SquareEDTcl12__miter_basecldtfp_4baseEEESt13move_iteratorIT_E
	movq	%rax, %rcx
	movq	-48(%rbp), %rax
	movq	%rax, %r8
	movq	%rbx, %rdx
	call	_ZSt14__copy_move_a2ILb1EP6SquareS1_ET1_T0_S3_S2_
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZSt8distanceISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIP6SquareSt6vectorIS3_SaIS3_EEEEEENSt15iterator_traitsIT_E15difference_typeESB_SB_,"x"
	.linkonce discard
	.globl	_ZSt8distanceISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIP6SquareSt6vectorIS3_SaIS3_EEEEEENSt15iterator_traitsIT_E15difference_typeESB_SB_
	.def	_ZSt8distanceISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIP6SquareSt6vectorIS3_SaIS3_EEEEEENSt15iterator_traitsIT_E15difference_typeESB_SB_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt8distanceISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIP6SquareSt6vectorIS3_SaIS3_EEEEEENSt15iterator_traitsIT_E15difference_typeESB_SB_
_ZSt8distanceISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIP6SquareSt6vectorIS3_SaIS3_EEEEEENSt15iterator_traitsIT_E15difference_typeESB_SB_:
.LFB7248:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$56, %rsp
	.seh_stackalloc	56
	leaq	128(%rsp), %rbp
	.seh_setframe	%rbp, 128
	.seh_endprologue
	movq	%rcx, -48(%rbp)
	movq	%rdx, -40(%rbp)
	leaq	-48(%rbp), %rcx
	call	_ZSt19__iterator_categoryISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIP6SquareSt6vectorIS3_SaIS3_EEEEEENSt15iterator_traitsIT_E17iterator_categoryERKSB_
	movq	-40(%rbp), %rax
	movl	%ebx, %r8d
	movq	%rax, %rdx
	movq	-48(%rbp), %rcx
	call	_ZSt10__distanceISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIP6SquareSt6vectorIS3_SaIS3_EEEEEENSt15iterator_traitsIT_E15difference_typeESB_SB_St26random_access_iterator_tag
	nop
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZSt22__uninitialized_copy_aISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIP6SquareSt6vectorIS3_SaIS3_EEEEES4_S3_ET0_T_SB_SA_RSaIT1_E,"x"
	.linkonce discard
	.globl	_ZSt22__uninitialized_copy_aISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIP6SquareSt6vectorIS3_SaIS3_EEEEES4_S3_ET0_T_SB_SA_RSaIT1_E
	.def	_ZSt22__uninitialized_copy_aISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIP6SquareSt6vectorIS3_SaIS3_EEEEES4_S3_ET0_T_SB_SA_RSaIT1_E;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt22__uninitialized_copy_aISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIP6SquareSt6vectorIS3_SaIS3_EEEEES4_S3_ET0_T_SB_SA_RSaIT1_E
_ZSt22__uninitialized_copy_aISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIP6SquareSt6vectorIS3_SaIS3_EEEEES4_S3_ET0_T_SB_SA_RSaIT1_E:
.LFB7249:
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
	movq	32(%rbp), %rdx
	movq	24(%rbp), %rax
	movq	%rdx, %r8
	movq	%rax, %rdx
	movq	16(%rbp), %rcx
	call	_ZSt18uninitialized_copyISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIP6SquareSt6vectorIS3_SaIS3_EEEEES4_ET0_T_SB_SA_
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZSt18__do_alloc_on_swapISaI6SquareEEvRT_S3_St17integral_constantIbLb0EE,"x"
	.linkonce discard
	.globl	_ZSt18__do_alloc_on_swapISaI6SquareEEvRT_S3_St17integral_constantIbLb0EE
	.def	_ZSt18__do_alloc_on_swapISaI6SquareEEvRT_S3_St17integral_constantIbLb0EE;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt18__do_alloc_on_swapISaI6SquareEEvRT_S3_St17integral_constantIbLb0EE
_ZSt18__do_alloc_on_swapISaI6SquareEEvRT_S3_St17integral_constantIbLb0EE:
.LFB7250:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movb	%r8b, 32(%rbp)
	nop
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZSt14__copy_move_a2ILb0EN9__gnu_cxx17__normal_iteratorIPK6SquareSt6vectorIS2_SaIS2_EEEEPS2_ET1_T0_SB_SA_,"x"
	.linkonce discard
	.globl	_ZSt14__copy_move_a2ILb0EN9__gnu_cxx17__normal_iteratorIPK6SquareSt6vectorIS2_SaIS2_EEEEPS2_ET1_T0_SB_SA_
	.def	_ZSt14__copy_move_a2ILb0EN9__gnu_cxx17__normal_iteratorIPK6SquareSt6vectorIS2_SaIS2_EEEEPS2_ET1_T0_SB_SA_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt14__copy_move_a2ILb0EN9__gnu_cxx17__normal_iteratorIPK6SquareSt6vectorIS2_SaIS2_EEEEPS2_ET1_T0_SB_SA_
_ZSt14__copy_move_a2ILb0EN9__gnu_cxx17__normal_iteratorIPK6SquareSt6vectorIS2_SaIS2_EEEEPS2_ET1_T0_SB_SA_:
.LFB7251:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 32(%rbp)
	movq	%rdx, 40(%rbp)
	movq	%r8, 48(%rbp)
	movq	48(%rbp), %rax
	movq	%rax, %rcx
	call	_ZSt12__niter_baseIP6SquareET_S2_
	movq	%rax, %rsi
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZSt12__niter_baseIPK6SquareSt6vectorIS0_SaIS0_EEET_N9__gnu_cxx17__normal_iteratorIS6_T0_EE
	movq	%rax, %rbx
	movq	32(%rbp), %rcx
	call	_ZSt12__niter_baseIPK6SquareSt6vectorIS0_SaIS0_EEET_N9__gnu_cxx17__normal_iteratorIS6_T0_EE
	movq	%rsi, %r8
	movq	%rbx, %rdx
	movq	%rax, %rcx
	call	_ZSt13__copy_move_aILb0EPK6SquarePS0_ET1_T0_S5_S4_
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZSt12__miter_baseIP6SquareEDTcl12__miter_basecldtfp_4baseEEESt13move_iteratorIT_E,"x"
	.linkonce discard
	.globl	_ZSt12__miter_baseIP6SquareEDTcl12__miter_basecldtfp_4baseEEESt13move_iteratorIT_E
	.def	_ZSt12__miter_baseIP6SquareEDTcl12__miter_basecldtfp_4baseEEESt13move_iteratorIT_E;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt12__miter_baseIP6SquareEDTcl12__miter_basecldtfp_4baseEEESt13move_iteratorIT_E
_ZSt12__miter_baseIP6SquareEDTcl12__miter_basecldtfp_4baseEEESt13move_iteratorIT_E:
.LFB7254:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	leaq	16(%rbp), %rcx
	call	_ZNKSt13move_iteratorIP6SquareE4baseEv
	movq	%rax, %rcx
	call	_ZSt12__miter_baseIP6SquareET_S2_
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZSt14__copy_move_a2ILb1EP6SquareS1_ET1_T0_S3_S2_,"x"
	.linkonce discard
	.globl	_ZSt14__copy_move_a2ILb1EP6SquareS1_ET1_T0_S3_S2_
	.def	_ZSt14__copy_move_a2ILb1EP6SquareS1_ET1_T0_S3_S2_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt14__copy_move_a2ILb1EP6SquareS1_ET1_T0_S3_S2_
_ZSt14__copy_move_a2ILb1EP6SquareS1_ET1_T0_S3_S2_:
.LFB7255:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 32(%rbp)
	movq	%rdx, 40(%rbp)
	movq	%r8, 48(%rbp)
	movq	48(%rbp), %rax
	movq	%rax, %rcx
	call	_ZSt12__niter_baseIP6SquareET_S2_
	movq	%rax, %rsi
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZSt12__niter_baseIP6SquareET_S2_
	movq	%rax, %rbx
	movq	32(%rbp), %rcx
	call	_ZSt12__niter_baseIP6SquareET_S2_
	movq	%rsi, %r8
	movq	%rbx, %rdx
	movq	%rax, %rcx
	call	_ZSt13__copy_move_aILb1EP6SquareS1_ET1_T0_S3_S2_
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZSt19__iterator_categoryISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIP6SquareSt6vectorIS3_SaIS3_EEEEEENSt15iterator_traitsIT_E17iterator_categoryERKSB_,"x"
	.linkonce discard
	.globl	_ZSt19__iterator_categoryISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIP6SquareSt6vectorIS3_SaIS3_EEEEEENSt15iterator_traitsIT_E17iterator_categoryERKSB_
	.def	_ZSt19__iterator_categoryISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIP6SquareSt6vectorIS3_SaIS3_EEEEEENSt15iterator_traitsIT_E17iterator_categoryERKSB_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt19__iterator_categoryISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIP6SquareSt6vectorIS3_SaIS3_EEEEEENSt15iterator_traitsIT_E17iterator_categoryERKSB_
_ZSt19__iterator_categoryISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIP6SquareSt6vectorIS3_SaIS3_EEEEEENSt15iterator_traitsIT_E17iterator_categoryERKSB_:
.LFB7256:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZSt10__distanceISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIP6SquareSt6vectorIS3_SaIS3_EEEEEENSt15iterator_traitsIT_E15difference_typeESB_SB_St26random_access_iterator_tag,"x"
	.linkonce discard
	.globl	_ZSt10__distanceISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIP6SquareSt6vectorIS3_SaIS3_EEEEEENSt15iterator_traitsIT_E15difference_typeESB_SB_St26random_access_iterator_tag
	.def	_ZSt10__distanceISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIP6SquareSt6vectorIS3_SaIS3_EEEEEENSt15iterator_traitsIT_E15difference_typeESB_SB_St26random_access_iterator_tag;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt10__distanceISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIP6SquareSt6vectorIS3_SaIS3_EEEEEENSt15iterator_traitsIT_E15difference_typeESB_SB_St26random_access_iterator_tag
_ZSt10__distanceISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIP6SquareSt6vectorIS3_SaIS3_EEEEEENSt15iterator_traitsIT_E15difference_typeESB_SB_St26random_access_iterator_tag:
.LFB7257:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movb	%r8b, 32(%rbp)
	leaq	24(%rbp), %rax
	leaq	16(%rbp), %rdx
	movq	%rax, %rcx
	call	_ZStmiIN9__gnu_cxx17__normal_iteratorIP6SquareSt6vectorIS2_SaIS2_EEEES7_EDTmicldtfp_4baseEcldtfp0_4baseEERKSt13move_iteratorIT_ERKS9_IT0_E
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZSt18uninitialized_copyISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIP6SquareSt6vectorIS3_SaIS3_EEEEES4_ET0_T_SB_SA_,"x"
	.linkonce discard
	.globl	_ZSt18uninitialized_copyISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIP6SquareSt6vectorIS3_SaIS3_EEEEES4_ET0_T_SB_SA_
	.def	_ZSt18uninitialized_copyISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIP6SquareSt6vectorIS3_SaIS3_EEEEES4_ET0_T_SB_SA_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt18uninitialized_copyISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIP6SquareSt6vectorIS3_SaIS3_EEEEES4_ET0_T_SB_SA_
_ZSt18uninitialized_copyISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIP6SquareSt6vectorIS3_SaIS3_EEEEES4_ET0_T_SB_SA_:
.LFB7258:
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
	movb	$1, -1(%rbp)
	movq	32(%rbp), %rdx
	movq	24(%rbp), %rax
	movq	%rdx, %r8
	movq	%rax, %rdx
	movq	16(%rbp), %rcx
	call	_ZNSt20__uninitialized_copyILb1EE13__uninit_copyISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIP6SquareSt6vectorIS5_SaIS5_EEEEES6_EET0_T_SD_SC_
	addq	$48, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNKSt13move_iteratorIP6SquareE4baseEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNKSt13move_iteratorIP6SquareE4baseEv
	.def	_ZNKSt13move_iteratorIP6SquareE4baseEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNKSt13move_iteratorIP6SquareE4baseEv
_ZNKSt13move_iteratorIP6SquareE4baseEv:
.LFB7259:
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
	.section	.text$_ZSt13__copy_move_aILb1EP6SquareS1_ET1_T0_S3_S2_,"x"
	.linkonce discard
	.globl	_ZSt13__copy_move_aILb1EP6SquareS1_ET1_T0_S3_S2_
	.def	_ZSt13__copy_move_aILb1EP6SquareS1_ET1_T0_S3_S2_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt13__copy_move_aILb1EP6SquareS1_ET1_T0_S3_S2_
_ZSt13__copy_move_aILb1EP6SquareS1_ET1_T0_S3_S2_:
.LFB7260:
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
	movb	$1, -1(%rbp)
	movq	32(%rbp), %rdx
	movq	24(%rbp), %rax
	movq	%rdx, %r8
	movq	%rax, %rdx
	movq	16(%rbp), %rcx
	call	_ZNSt11__copy_moveILb1ELb1ESt26random_access_iterator_tagE8__copy_mI6SquareEEPT_PKS4_S7_S5_
	addq	$48, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZStmiIN9__gnu_cxx17__normal_iteratorIP6SquareSt6vectorIS2_SaIS2_EEEES7_EDTmicldtfp_4baseEcldtfp0_4baseEERKSt13move_iteratorIT_ERKS9_IT0_E,"x"
	.linkonce discard
	.globl	_ZStmiIN9__gnu_cxx17__normal_iteratorIP6SquareSt6vectorIS2_SaIS2_EEEES7_EDTmicldtfp_4baseEcldtfp0_4baseEERKSt13move_iteratorIT_ERKS9_IT0_E
	.def	_ZStmiIN9__gnu_cxx17__normal_iteratorIP6SquareSt6vectorIS2_SaIS2_EEEES7_EDTmicldtfp_4baseEcldtfp0_4baseEERKSt13move_iteratorIT_ERKS9_IT0_E;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZStmiIN9__gnu_cxx17__normal_iteratorIP6SquareSt6vectorIS2_SaIS2_EEEES7_EDTmicldtfp_4baseEcldtfp0_4baseEERKSt13move_iteratorIT_ERKS9_IT0_E
_ZStmiIN9__gnu_cxx17__normal_iteratorIP6SquareSt6vectorIS2_SaIS2_EEEES7_EDTmicldtfp_4baseEcldtfp0_4baseEERKSt13move_iteratorIT_ERKS9_IT0_E:
.LFB7261:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	24(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNKSt13move_iteratorIN9__gnu_cxx17__normal_iteratorIP6SquareSt6vectorIS2_SaIS2_EEEEE4baseEv
	movq	%rax, -16(%rbp)
	movq	16(%rbp), %rcx
	call	_ZNKSt13move_iteratorIN9__gnu_cxx17__normal_iteratorIP6SquareSt6vectorIS2_SaIS2_EEEEE4baseEv
	movq	%rax, -8(%rbp)
	leaq	-16(%rbp), %rdx
	leaq	-8(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN9__gnu_cxxmiIP6SquareSt6vectorIS1_SaIS1_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS9_SC_
	nop
	addq	$48, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt20__uninitialized_copyILb1EE13__uninit_copyISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIP6SquareSt6vectorIS5_SaIS5_EEEEES6_EET0_T_SD_SC_,"x"
	.linkonce discard
	.globl	_ZNSt20__uninitialized_copyILb1EE13__uninit_copyISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIP6SquareSt6vectorIS5_SaIS5_EEEEES6_EET0_T_SD_SC_
	.def	_ZNSt20__uninitialized_copyILb1EE13__uninit_copyISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIP6SquareSt6vectorIS5_SaIS5_EEEEES6_EET0_T_SD_SC_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt20__uninitialized_copyILb1EE13__uninit_copyISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIP6SquareSt6vectorIS5_SaIS5_EEEEES6_EET0_T_SD_SC_
_ZNSt20__uninitialized_copyILb1EE13__uninit_copyISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIP6SquareSt6vectorIS5_SaIS5_EEEEES6_EET0_T_SD_SC_:
.LFB7262:
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
	movq	%rdx, %r8
	movq	%rax, %rdx
	movq	16(%rbp), %rcx
	call	_ZSt4copyISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIP6SquareSt6vectorIS3_SaIS3_EEEEES4_ET0_T_SB_SA_
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt11__copy_moveILb1ELb1ESt26random_access_iterator_tagE8__copy_mI6SquareEEPT_PKS4_S7_S5_,"x"
	.linkonce discard
	.globl	_ZNSt11__copy_moveILb1ELb1ESt26random_access_iterator_tagE8__copy_mI6SquareEEPT_PKS4_S7_S5_
	.def	_ZNSt11__copy_moveILb1ELb1ESt26random_access_iterator_tagE8__copy_mI6SquareEEPT_PKS4_S7_S5_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt11__copy_moveILb1ELb1ESt26random_access_iterator_tagE8__copy_mI6SquareEEPT_PKS4_S7_S5_
_ZNSt11__copy_moveILb1ELb1ESt26random_access_iterator_tagE8__copy_mI6SquareEEPT_PKS4_S7_S5_:
.LFB7263:
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
	subq	16(%rbp), %rax
	sarq	$3, %rax
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L343
	movq	-8(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	32(%rbp), %rax
	movq	%rdx, %r8
	movq	16(%rbp), %rdx
	movq	%rax, %rcx
	call	memmove
.L343:
	movq	-8(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	32(%rbp), %rax
	addq	%rdx, %rax
	addq	$48, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNKSt13move_iteratorIN9__gnu_cxx17__normal_iteratorIP6SquareSt6vectorIS2_SaIS2_EEEEE4baseEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNKSt13move_iteratorIN9__gnu_cxx17__normal_iteratorIP6SquareSt6vectorIS2_SaIS2_EEEEE4baseEv
	.def	_ZNKSt13move_iteratorIN9__gnu_cxx17__normal_iteratorIP6SquareSt6vectorIS2_SaIS2_EEEEE4baseEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNKSt13move_iteratorIN9__gnu_cxx17__normal_iteratorIP6SquareSt6vectorIS2_SaIS2_EEEEE4baseEv
_ZNKSt13move_iteratorIN9__gnu_cxx17__normal_iteratorIP6SquareSt6vectorIS2_SaIS2_EEEEE4baseEv:
.LFB7264:
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
	.section	.text$_ZSt4copyISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIP6SquareSt6vectorIS3_SaIS3_EEEEES4_ET0_T_SB_SA_,"x"
	.linkonce discard
	.globl	_ZSt4copyISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIP6SquareSt6vectorIS3_SaIS3_EEEEES4_ET0_T_SB_SA_
	.def	_ZSt4copyISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIP6SquareSt6vectorIS3_SaIS3_EEEEES4_ET0_T_SB_SA_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt4copyISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIP6SquareSt6vectorIS3_SaIS3_EEEEES4_ET0_T_SB_SA_
_ZSt4copyISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIP6SquareSt6vectorIS3_SaIS3_EEEEES4_ET0_T_SB_SA_:
.LFB7265:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$40, %rsp
	.seh_stackalloc	40
	leaq	128(%rsp), %rbp
	.seh_setframe	%rbp, 128
	.seh_endprologue
	movq	%rcx, -64(%rbp)
	movq	%rdx, -56(%rbp)
	movq	%r8, -48(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, %rcx
	call	_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIP6SquareSt6vectorIS2_SaIS2_EEEEEDTcl12__miter_basecldtfp_4baseEEESt13move_iteratorIT_E
	movq	%rax, %rbx
	movq	-64(%rbp), %rcx
	call	_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIP6SquareSt6vectorIS2_SaIS2_EEEEEDTcl12__miter_basecldtfp_4baseEEESt13move_iteratorIT_E
	movq	%rax, %rcx
	movq	-48(%rbp), %rax
	movq	%rax, %r8
	movq	%rbx, %rdx
	call	_ZSt14__copy_move_a2ILb1EN9__gnu_cxx17__normal_iteratorIP6SquareSt6vectorIS2_SaIS2_EEEES3_ET1_T0_S9_S8_
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIP6SquareSt6vectorIS2_SaIS2_EEEEEDTcl12__miter_basecldtfp_4baseEEESt13move_iteratorIT_E,"x"
	.linkonce discard
	.globl	_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIP6SquareSt6vectorIS2_SaIS2_EEEEEDTcl12__miter_basecldtfp_4baseEEESt13move_iteratorIT_E
	.def	_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIP6SquareSt6vectorIS2_SaIS2_EEEEEDTcl12__miter_basecldtfp_4baseEEESt13move_iteratorIT_E;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIP6SquareSt6vectorIS2_SaIS2_EEEEEDTcl12__miter_basecldtfp_4baseEEESt13move_iteratorIT_E
_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIP6SquareSt6vectorIS2_SaIS2_EEEEEDTcl12__miter_basecldtfp_4baseEEESt13move_iteratorIT_E:
.LFB7266:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	leaq	16(%rbp), %rcx
	call	_ZNKSt13move_iteratorIN9__gnu_cxx17__normal_iteratorIP6SquareSt6vectorIS2_SaIS2_EEEEE4baseEv
	movq	%rax, %rcx
	call	_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIP6SquareSt6vectorIS2_SaIS2_EEEEET_S8_
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZSt14__copy_move_a2ILb1EN9__gnu_cxx17__normal_iteratorIP6SquareSt6vectorIS2_SaIS2_EEEES3_ET1_T0_S9_S8_,"x"
	.linkonce discard
	.globl	_ZSt14__copy_move_a2ILb1EN9__gnu_cxx17__normal_iteratorIP6SquareSt6vectorIS2_SaIS2_EEEES3_ET1_T0_S9_S8_
	.def	_ZSt14__copy_move_a2ILb1EN9__gnu_cxx17__normal_iteratorIP6SquareSt6vectorIS2_SaIS2_EEEES3_ET1_T0_S9_S8_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt14__copy_move_a2ILb1EN9__gnu_cxx17__normal_iteratorIP6SquareSt6vectorIS2_SaIS2_EEEES3_ET1_T0_S9_S8_
_ZSt14__copy_move_a2ILb1EN9__gnu_cxx17__normal_iteratorIP6SquareSt6vectorIS2_SaIS2_EEEES3_ET1_T0_S9_S8_:
.LFB7267:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 32(%rbp)
	movq	%rdx, 40(%rbp)
	movq	%r8, 48(%rbp)
	movq	48(%rbp), %rax
	movq	%rax, %rcx
	call	_ZSt12__niter_baseIP6SquareET_S2_
	movq	%rax, %rsi
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZSt12__niter_baseIP6SquareSt6vectorIS0_SaIS0_EEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE
	movq	%rax, %rbx
	movq	32(%rbp), %rcx
	call	_ZSt12__niter_baseIP6SquareSt6vectorIS0_SaIS0_EEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE
	movq	%rsi, %r8
	movq	%rbx, %rdx
	movq	%rax, %rcx
	call	_ZSt13__copy_move_aILb1EP6SquareS1_ET1_T0_S3_S2_
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIP6SquareSt6vectorIS2_SaIS2_EEEEET_S8_,"x"
	.linkonce discard
	.globl	_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIP6SquareSt6vectorIS2_SaIS2_EEEEET_S8_
	.def	_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIP6SquareSt6vectorIS2_SaIS2_EEEEET_S8_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIP6SquareSt6vectorIS2_SaIS2_EEEEET_S8_
_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIP6SquareSt6vectorIS2_SaIS2_EEEEET_S8_:
.LFB7268:
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
	.text
	.def	__tcf_0;	.scl	3;	.type	32;	.endef
	.seh_proc	__tcf_0
__tcf_0:
.LFB7270:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	leaq	_ZStL8__ioinit(%rip), %rcx
	call	_ZNSt8ios_base4InitD1Ev
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.def	__tcf_1;	.scl	3;	.type	32;	.endef
	.seh_proc	__tcf_1
__tcf_1:
.LFB7271:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	leaq	LIVE_SQUARES(%rip), %rcx
	call	_ZNSt6vectorI6SquareSaIS0_EED1Ev
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.def	__tcf_2;	.scl	3;	.type	32;	.endef
	.seh_proc	__tcf_2
__tcf_2:
.LFB7272:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	leaq	LIVE_SQUARES2(%rip), %rcx
	call	_ZNSt6vectorI6SquareSaIS0_EED1Ev
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.def	_Z41__static_initialization_and_destruction_0ii;	.scl	3;	.type	32;	.endef
	.seh_proc	_Z41__static_initialization_and_destruction_0ii
_Z41__static_initialization_and_destruction_0ii:
.LFB7269:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movl	%ecx, 16(%rbp)
	movl	%edx, 24(%rbp)
	cmpl	$1, 16(%rbp)
	jne	.L360
	cmpl	$65535, 24(%rbp)
	jne	.L360
	leaq	_ZStL8__ioinit(%rip), %rcx
	call	_ZNSt8ios_base4InitC1Ev
	leaq	__tcf_0(%rip), %rcx
	call	atexit
	leaq	LIVE_SQUARES(%rip), %rcx
	call	_ZNSt6vectorI6SquareSaIS0_EEC1Ev
	leaq	__tcf_1(%rip), %rcx
	call	atexit
	leaq	LIVE_SQUARES2(%rip), %rcx
	call	_ZNSt6vectorI6SquareSaIS0_EEC1Ev
	leaq	__tcf_2(%rip), %rcx
	call	atexit
.L360:
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.def	_GLOBAL__sub_I_TABLE;	.scl	3;	.type	32;	.endef
	.seh_proc	_GLOBAL__sub_I_TABLE
_GLOBAL__sub_I_TABLE:
.LFB7273:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movl	$65535, %edx
	movl	$1, %ecx
	call	_Z41__static_initialization_and_destruction_0ii
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.ctors,"w"
	.align 8
	.quad	_GLOBAL__sub_I_TABLE
	.ident	"GCC: (x86_64-posix-seh-rev0, Built by MinGW-W64 project) 8.1.0"
	.def	time;	.scl	2;	.type	32;	.endef
	.def	srand;	.scl	2;	.type	32;	.endef
	.def	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc;	.scl	2;	.type	32;	.endef
	.def	_ZNSolsEPFRSoS_E;	.scl	2;	.type	32;	.endef
	.def	getchar;	.scl	2;	.type	32;	.endef
	.def	rand;	.scl	2;	.type	32;	.endef
	.def	system;	.scl	2;	.type	32;	.endef
	.def	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c;	.scl	2;	.type	32;	.endef
	.def	_Unwind_Resume;	.scl	2;	.type	32;	.endef
	.def	__cxa_begin_catch;	.scl	2;	.type	32;	.endef
	.def	__cxa_rethrow;	.scl	2;	.type	32;	.endef
	.def	__cxa_end_catch;	.scl	2;	.type	32;	.endef
	.def	_ZSt20__throw_length_errorPKc;	.scl	2;	.type	32;	.endef
	.def	_ZdlPv;	.scl	2;	.type	32;	.endef
	.def	_ZSt17__throw_bad_allocv;	.scl	2;	.type	32;	.endef
	.def	_Znwy;	.scl	2;	.type	32;	.endef
	.def	memmove;	.scl	2;	.type	32;	.endef
	.def	_ZNSt8ios_base4InitD1Ev;	.scl	2;	.type	32;	.endef
	.def	_ZNSt8ios_base4InitC1Ev;	.scl	2;	.type	32;	.endef
	.def	atexit;	.scl	2;	.type	32;	.endef
	.section	.rdata$.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, "dr"
	.globl	.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
	.linkonce	discard
.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_:
	.quad	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
	.section	.rdata$.refptr._ZSt4cout, "dr"
	.globl	.refptr._ZSt4cout
	.linkonce	discard
.refptr._ZSt4cout:
	.quad	_ZSt4cout
