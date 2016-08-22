;; ************************************************************************** ;;
;;                                                                            ;;
;;                                                        :::      ::::::::   ;;
;;   ft_isprint.s                                       :+:      :+:    :+:   ;;
;;                                                    +:+ +:+         +:+     ;;
;;   By: gwoodwar <gwoodwar@student.42.fr>          +#+  +:+       +#+        ;;
;;                                                +#+#+#+#+#+   +#+           ;;
;;   Created: 2016/08/16 17:39:59 by gwoodwar          #+#    #+#             ;;
;;   Updated: 2016/08/22 19:14:10 by gwoodwar         ###   ########.fr       ;;
;;                                                                            ;;
;; ************************************************************************** ;;

extern		ft_is_in_range
global		ft_isprint

ft_isprint:
	enter	0, 0
	mov		esi, ' '
	mov		edx, '~'
	call	ft_is_in_range
	leave
	ret
