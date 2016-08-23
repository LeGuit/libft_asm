;; ************************************************************************** ;;
;;                                                                            ;;
;;                                                        :::      ::::::::   ;;
;;   ft_toupper.s                                       :+:      :+:    :+:   ;;
;;                                                    +:+ +:+         +:+     ;;
;;   By: gwoodwar <gwoodwar@student.42.fr>          +#+  +:+       +#+        ;;
;;                                                +#+#+#+#+#+   +#+           ;;
;;   Created: 2016/08/16 18:16:59 by gwoodwar          #+#    #+#             ;;
;;   Updated: 2016/08/23 16:38:26 by gwoodwar         ###   ########.fr       ;;
;;                                                                            ;;
;; ************************************************************************** ;;

extern		ft_is_in_range
global		ft_toupper

ft_toupper:
	enter	0, 0
	mov		rsi, 'a'
	mov		rdx, 'z'
	call	ft_is_in_range
	cmp		rax, 1
	jne		.ret

.upper:
	sub		rdi, 0x20

.ret:
	mov		rax, rdi
	leave
	ret
