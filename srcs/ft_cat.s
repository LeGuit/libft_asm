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
section .data
section	.bss
	.equ			SIZE, 1
	.lcomm		BUFFER, SIZE

section .text

global		ft_cat
extern		ft_puts

ft_cat:
	enter	0, 0

.read:
	pop		rdi
	mov		rax, 0x2000003 ;syscall read
	mov		rsi, BUFFER
	mov		rdx, SIZE
	cmp		rax, 0
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
