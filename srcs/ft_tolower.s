;; ************************************************************************** ;;
;;                                                                            ;;
;;                                                        :::      ::::::::   ;;
;;   ft_tolower.s                                       :+:      :+:    :+:   ;;
;;                                                    +:+ +:+         +:+     ;;
;;   By: gwoodwar <gwoodwar@student.42.fr>          +#+  +:+       +#+        ;;
;;                                                +#+#+#+#+#+   +#+           ;;
;;   Created: 2016/08/16 17:42:20 by gwoodwar          #+#    #+#             ;;
;;   Updated: 2016/08/16 18:53:40 by gwoodwar         ###   ########.fr       ;;
;;                                                                            ;;
;; ************************************************************************** ;;

ft_tolower:
	je		.ret
	mov		esi, 'A'
	mov		edx, 'Z'
	call	ft_is_in_range
	cmp		rax, 1
	je		.lower

.lower
	add		edi, 0x20
	ret
