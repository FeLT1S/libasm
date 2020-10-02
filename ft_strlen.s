segment .text
	global _ft_strlen
_ft_strlen:
	mov rax, -1
	cmp rdi, 0
	je ret
inc:
	inc rax
	cmp BYTE [rdi + rax], 0
	jne inc
ret:
	ret