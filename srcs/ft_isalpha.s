;; ************************************************************************** ;;
;;                                                                            ;;
;;                                                        :::      ::::::::   ;;
;;   ft_isalpha.s                                       :+:      :+:    :+:   ;;
;;                                                    +:+ +:+         +:+     ;;
;;   By: gwoodwar <gwoodwar@student.42.fr>          +#+  +:+       +#+        ;;
;;                                                +#+#+#+#+#+   +#+           ;;
;;   Created: 2016/08/16 17:39:02 by gwoodwar          #+#    #+#             ;;
;;   Updated: 2016/08/22 19:40:39 by gwoodwar         ###   ########.fr       ;;
;;                                                                            ;;
;; ************************************************************************** ;;

global		ft_isalpha
extern		ft_is_in_range

ft_isalpha:
	enter	0, 0
	mov		rsi, 'a'
	mov		rdx, 'z'
	call	ft_is_in_range
	cmp		rax, 1
	je		.ret
	mov		rsi, 'A'
	mov		rdx, 'Z'
	call	ft_is_in_range
	jmp		.ret

.ret:
	leave
	ret
