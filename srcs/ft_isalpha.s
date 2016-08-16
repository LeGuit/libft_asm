;; ************************************************************************** ;;
;;                                                                            ;;
;;                                                        :::      ::::::::   ;;
;;   ft_isalpha.s                                       :+:      :+:    :+:   ;;
;;                                                    +:+ +:+         +:+     ;;
;;   By: gwoodwar <gwoodwar@student.42.fr>          +#+  +:+       +#+        ;;
;;                                                +#+#+#+#+#+   +#+           ;;
;;   Created: 2016/08/16 17:39:02 by gwoodwar          #+#    #+#             ;;
;;   Updated: 2016/08/16 18:03:19 by gwoodwar         ###   ########.fr       ;;
;;                                                                            ;;
;; ************************************************************************** ;;

global		ft_isalpha
extern		ft_is_in_range

.ft_isalpha:
	mov		esi, 'a'
	mov		edx, 'z'
	call	ft_is_in_range
	cmp		rax, 1
	je		.ret
	mov		esi, 'A'
	mov		edx, 'Z'
	call	ft_is_in_range

.ret:
	ret
