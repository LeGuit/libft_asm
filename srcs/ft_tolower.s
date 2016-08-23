;; ************************************************************************** ;;
;;                                                                            ;;
;;                                                        :::      ::::::::   ;;
;;   ft_tolower.s                                       :+:      :+:    :+:   ;;
;;                                                    +:+ +:+         +:+     ;;
;;   By: gwoodwar <gwoodwar@student.42.fr>          +#+  +:+       +#+        ;;
;;                                                +#+#+#+#+#+   +#+           ;;
;;   Created: 2016/08/16 17:42:20 by gwoodwar          #+#    #+#             ;;
;;   Updated: 2016/08/23 16:40:30 by gwoodwar         ###   ########.fr       ;;
;;                                                                            ;;
;; ************************************************************************** ;;

extern		ft_is_in_range
global		ft_tolower

ft_tolower:
	enter	0, 0
	mov		rsi, 'A'
	mov		rdx, 'Z'
	call	ft_is_in_range
	cmp		rax, 0
	je		.ret

.lower:
	add		rdi, 0x20

.ret:
	mov		rax, rdi
	leave
	ret
