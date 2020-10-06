segment .text
	global _ft_strcpy
_ft_strcpy:
	cmp rdi, 0
	je exiterr
	cmp rsi, 0
	je exiterr
	mov rcx, -1
inc:
	inc rcx
	mov BYTE al, [rsi + rcx]
	mov BYTE [rdi + rcx], al
	cmp BYTE [rsi + rcx], 0
	jne inc
exit:
	mov rax, rdi
	ret
exiterr:
	mov rax, 0
	ret