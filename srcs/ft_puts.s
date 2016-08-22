;; ************************************************************************** ;;
;;                                                                            ;;
;;                                                        :::      ::::::::   ;;
;;   ft_puts.s                                          :+:      :+:    :+:   ;;
;;                                                    +:+ +:+         +:+     ;;
;;   By: gwoodwar <gwoodwar@student.42.fr>          +#+  +:+       +#+        ;;
;;                                                +#+#+#+#+#+   +#+           ;;
;;   Created: 2016/08/17 14:34:07 by gwoodwar          #+#    #+#             ;;
;;   Updated: 2016/08/22 17:29:05 by gwoodwar         ###   ########.fr       ;;
;;                                                                            ;;
;; ************************************************************************** ;;

extern		ft_strlen

section .data
	nl			db	10
	
ft_puts:
	enter	0, 0
	push	rdi			;to save from strlen
	call	ft_strlen
	pop		rdi			;restore after strlen
	cmp		rax, 0
	je		.print_nl

.print_string:
	mov		rsi, rdi	;move str to arg 2
	mov		rdx, rax	;strlen to arg 3
	mov		rdi, 1		;fd 1 to arg 1
	mov		rax, 1		;syscall for write
	syscall

.print_nl:
	mov		rsi, nl
	mov		rdx, 1
	mov		rdi, 1
	mov		rax, 1
	syscall
	leave
	ret
