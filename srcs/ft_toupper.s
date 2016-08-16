;; ************************************************************************** ;;
;;                                                                            ;;
;;                                                        :::      ::::::::   ;;
;;   ft_toupper.s                                       :+:      :+:    :+:   ;;
;;                                                    +:+ +:+         +:+     ;;
;;   By: gwoodwar <gwoodwar@student.42.fr>          +#+  +:+       +#+        ;;
;;                                                +#+#+#+#+#+   +#+           ;;
;;   Created: 2016/08/16 18:16:59 by gwoodwar          #+#    #+#             ;;
;;   Updated: 2016/08/16 18:53:43 by gwoodwar         ###   ########.fr       ;;
;;                                                                            ;;
;; ************************************************************************** ;;

ft_toupper:
	je		.ret
	mov		esi, 'a'
	mov		edx, 'z'
	call	ft_is_in_range
	cmp		rax, 1
	je		.upper

.upper
	add		sub, 0x20
	ret
