;; ************************************************************************** ;;
;;                                                                            ;;
;;                                                        :::      ::::::::   ;;
;;   ft_strcat.s                                        :+:      :+:    :+:   ;;
;;                                                    +:+ +:+         +:+     ;;
;;   By: gwoodwar <gwoodwar@student.42.fr>          +#+  +:+       +#+        ;;
;;                                                +#+#+#+#+#+   +#+           ;;
;;   Created: 2016/08/22 17:33:12 by gwoodwar          #+#    #+#             ;;
;;   Updated: 2016/08/23 17:11:59 by gwoodwar         ###   ########.fr       ;;
;;                                                                            ;;
;; ************************************************************************** ;;

;char	*ft_strcat(char *s1, const char *s2)

extern		ft_strlen
global		ft_strcat

ft_strcat:
	enter 		0, 0
	cmp			rsi, 0	;ptr NULL
	je			.error
	cmp			rdi, 0
	je			.error
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

.error:
	mov			rax, rdi
	leave
	ret

