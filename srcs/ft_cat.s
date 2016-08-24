;; ************************************************************************** ;;
;;                                                                            ;;
;;                                                        :::      ::::::::   ;;
;;   ft_cat.s                                           :+:      :+:    :+:   ;;
;;                                                    +:+ +:+         +:+     ;;
;;   By: gwoodwar <gwoodwar@student.42.fr>          +#+  +:+       +#+        ;;
;;                                                +#+#+#+#+#+   +#+           ;;
;;   Created: 2016/08/23 18:44:17 by gwoodwar          #+#    #+#             ;;
;;   Updated: 2016/08/23 20:10:40 by gwoodwar         ###   ########.fr       ;;
;;                                                                            ;;
;; ************************************************************************** ;;

;void		ft_cat(size_t fd)
;1024 buffer size of cat(0)
;the \n flush the buffer of term in rht read

section .data
section	.bss
buffer:
	resb		512

section .text

global		ft_cat
extern		ft_puts

ft_cat:
	enter	0, 0
	pop		rdi
	sub		rcx, rcx

.read:
	cmp		rax, 0
	je		.end
	cmp		rax, 13
	je		.write
	lea		rsi, [rel buffer]
	mov		rdx, 512
	mov		rax, 0x2000003 ;syscall read
	syscall
	mov		rcx, rax
	je		.end

.write:
	mov		rsi, BUFFER		;move str to arg 2
	mov		rdx, rax		;strlen to arg 3
	mov		rdi, 1			;fd 1 to arg 1
	mov		rax, 0x2000004	;syscall for write
	syscall
	jmp		.read

.end:
	leave
	ret

