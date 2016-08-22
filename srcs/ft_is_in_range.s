;; ************************************************************************** ;;
;;                                                                            ;;
;;                                                        :::      ::::::::   ;;
;;   ft_is_in_range.s                                   :+:      :+:    :+:   ;;
;;                                                    +:+ +:+         +:+     ;;
;;   By: gwoodwar <gwoodwar@student.42.fr>          +#+  +:+       +#+        ;;
;;                                                +#+#+#+#+#+   +#+           ;;
;;   Created: 2016/08/16 14:49:53 by gwoodwar          #+#    #+#             ;;
;;   Updated: 2016/08/22 17:27:25 by gwoodwar         ###   ########.fr       ;;
;;                                                                            ;;
;; ************************************************************************** ;;

global	ft_is_in_range

ft_is_in_range:
	enter	0, 0
	cmp		rsi, rdx
	jg		.to_from

.from_to:
	cmp		rdi, rsi
	jl		.false
	cmp		rdi, rdx
	jg		.false
	jmp 	.true

.to_from:
	cmp		rdi, rdx
	jg		.false
	cmp		rdi, rsi
	jl		.false

.true:
	mov 	rax, 1
	leave
	ret

.false:
	mov 	rax, 0
	leave
	ret
