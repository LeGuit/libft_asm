;; ************************************************************************** ;;
;;                                                                            ;;
;;                                                        :::      ::::::::   ;;
;;   ft_is_in_range.s                                   :+:      :+:    :+:   ;;
;;                                                    +:+ +:+         +:+     ;;
;;   By: gwoodwar <gwoodwar@student.42.fr>          +#+  +:+       +#+        ;;
;;                                                +#+#+#+#+#+   +#+           ;;
;;   Created: 2016/08/16 14:49:53 by gwoodwar          #+#    #+#             ;;
;;   Updated: 2016/08/16 18:54:03 by gwoodwar         ###   ########.fr       ;;
;;                                                                            ;;
;; ************************************************************************** ;;

global	ft_is_in_range

ft_is_in_range:
	cmp	esi, edx
	jg	.to_from

.from_to:
	cmp	edi, esi
	jl	.false
	cmp	edi, edx
	jg	.false
	jmp .true

.to_from:
	cmp	edi, edx
	jg	.false
	cmp	edi, esi
	jl	.false

.true:
	mov rax, 1
	ret

.false:
	mov rax, 0
	ret
