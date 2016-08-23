;; ************************************************************************** ;;
;;                                                                            ;;
;;                                                        :::      ::::::::   ;;
;;   ft_puts.s                                          :+:      :+:    :+:   ;;
;;                                                    +:+ +:+         +:+     ;;
;;   By: gwoodwar <gwoodwar@student.42.fr>          +#+  +:+       +#+        ;;
;;                                                +#+#+#+#+#+   +#+           ;;
;;   Created: 2016/08/17 14:34:07 by gwoodwar          #+#    #+#             ;;
;;   Updated: 2016/08/23 15:30:36 by gwoodwar         ###   ########.fr       ;;
;;                                                                            ;;
;; ************************************************************************** ;;

;int		ft_puts(char *str)


section .data
data:
	.null		db	"(null)"	
	.nl			db	10

section .text

extern		ft_strlen
global		ft_puts

ft_puts:
	enter	0, 0
	cmp		rdi, 0
	je		.print_null
	push	rdi			;to save from strlen
	call	ft_strlen
	pop		rdi			;restore after strlen
	cmp		rax, 0
	je		.print_nl

.print_string:
	mov		rsi, rdi		;move str to arg 2
	mov		rdx, rax		;strlen to arg 3
	mov		rdi, 1			;fd 1 to arg 1
	mov		rax, 0x2000004	;syscall for write
	syscall
	jmp		.print_nl

.print_null:
	lea		rsi, [rel data.null]
	mov		rdx, 6
	mov		rdi, 1
	mov		rax, 0x2000004
	syscall

.print_nl:
	lea		rsi, [rel data.nl]
	mov		rdx, 1
	mov		rdi, 1
	mov		rax, 0x2000004
	syscall
	leave
	ret

