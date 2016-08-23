;; ************************************************************************** ;;
;;                                                                            ;;
;;                                                        :::      ::::::::   ;;
;;   ft_strcat.s                                        :+:      :+:    :+:   ;;
;;                                                    +:+ +:+         +:+     ;;
;;   By: gwoodwar <gwoodwar@student.42.fr>          +#+  +:+       +#+        ;;
;;                                                +#+#+#+#+#+   +#+           ;;
;;   Created: 2016/08/22 17:33:12 by gwoodwar          #+#    #+#             ;;
;;   Updated: 2016/08/23 16:26:03 by gwoodwar         ###   ########.fr       ;;
;;                                                                            ;;
;; ************************************************************************** ;;

;char	*ft_strcat(char *s1, const char *s2)

extern		ft_strlen
global		ft_strcat

;ft_strcat:
;	enter	0, 24
;	mov		[rbp - 8], rdi		;check -8 or 0
;	mov		[rbp - 16], rsi
;	call	ft_strlen
;	mov		rdi, [rbp - 8]
;	add		rdi, rax
;	mov		[rbp - 24], rdi
;	mov		rdi, [rbp - 16]
;	call	ft_strlen
;	mov		rcx, rax
;	mov		rdi, [rbp - 24]
;	mov		rsi, [rbp - 8]
;
;loop:
;	cmp		rcx, 0
;	je		.ret
;	mov		rdi, rsi
;	inc		rdi
;	inc		rsi
;	dec		rcx
;	jmp		loop
;
;.ret:
;	mov		rax, rsp
;	leave
;	ret

ft_strcat:
	enter 		0, 0
	push		rdi

.loops1:
	cmp	byte	[rdi], 0x00
	je			.loops2
	inc			rdi
	jmp			.loops1

.loops2:
	cmp	byte	[rsi], 0x00
	je			.ret
	mov	byte	r11, [rsi]
	mov			[rdi], r11
	inc			rdi
	inc			rsi
	jmp			.loops2

.ret:
	inc			rdi
	mov byte	[rdi], 0x00
	pop			rax
	leave
	ret
