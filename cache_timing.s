	.file	"cache_timing.c"
	.comm	start_time,8,8
	.comm	end_time,8,8
	.section	.rodata
	.align 8
.LC1:
	.string	"Total time takes to touch %d bytes is %ld : "
	.text
	.globl	main
	.type	main, @function
main:
.LFB2:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movl	%edi, -52(%rbp)
	movq	%rsi, -64(%rbp)
	movq	-64(%rbp), %rax
	addq	$8, %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	atoi
	movl	%eax, -36(%rbp)
	movl	-36(%rbp), %eax
	sall	$10, %eax
	movl	%eax, -32(%rbp)
	movl	-36(%rbp), %eax
	sall	$20, %eax
	movl	%eax, -28(%rbp)
	movl	-28(%rbp), %eax
	sall	$10, %eax
	movl	%eax, -24(%rbp)
	movl	$64, -20(%rbp)
	movl	-32(%rbp), %eax
	cltq
	movq	%rax, %rdi
	call	malloc
	movq	%rax, -16(%rbp)
	call	clock
	movq	%rax, start_time(%rip)
	movl	$0, -40(%rbp)
	jmp	.L2
.L3:
	movl	-40(%rbp), %eax
	movslq	%eax, %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movl	-40(%rbp), %edx
	movb	%dl, (%rax)
	addl	$64, -40(%rbp)
.L2:
	movl	-40(%rbp), %eax
	cmpl	-32(%rbp), %eax
	jl	.L3
	call	clock
	movq	%rax, end_time(%rip)
	movq	end_time(%rip), %rdx
	movq	start_time(%rip), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rax, %xmm0
	movsd	.LC0(%rip), %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -8(%rbp)
	movq	-8(%rbp), %rdx
	movl	-32(%rbp), %eax
	movq	%rdx, -72(%rbp)
	movsd	-72(%rbp), %xmm0
	movl	%eax, %esi
	movl	$.LC1, %edi
	movl	$1, %eax
	call	printf
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	main, .-main
	.section	.rodata
	.align 8
.LC0:
	.long	0
	.long	1093567616
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.4) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits
