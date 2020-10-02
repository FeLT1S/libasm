segment .text
	global _ft_strcpy
_ft_strcpy:
	cmp rdi, 0
	je exiterr
	cmp rsi, 0
	je exiterr
	mov rbx, 0
inc:
	mov BYTE al, [rsi + rbx]
	mov BYTE [rdi + rbx], al
	inc rbx
	cmp BYTE [rsi + rbx], 0
	jne inc
exit:
	mov rax, rdi
	ret
exiterr:
	mov rax, 0
	ret