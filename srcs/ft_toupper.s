;; ************************************************************************** ;;
;;                                                                            ;;
;;                                                        :::      ::::::::   ;;
;;   ft_toupper.s                                       :+:      :+:    :+:   ;;
;;                                                    +:+ +:+         +:+     ;;
;;   By: gwoodwar <gwoodwar@student.42.fr>          +#+  +:+       +#+        ;;
;;                                                +#+#+#+#+#+   +#+           ;;
;;   Created: 2016/08/16 18:16:59 by gwoodwar          #+#    #+#             ;;
;;   Updated: 2016/08/17 16:33:10 by gwoodwar         ###   ########.fr       ;;
;;                                                                            ;;
;; ************************************************************************** ;;

extern		ft_is_in_range

ft_toupper:
	mov		esi, 'a'
	mov		edx, 'z'
	call	ft_is_in_range
	cmp		rax, 1
	je		.upper

.upper:
	sub		edi, 0x20
	ret
