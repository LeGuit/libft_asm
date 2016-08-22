;; ************************************************************************** ;;
;;                                                                            ;;
;;                                                        :::      ::::::::   ;;
;;   ft_isascii.s                                       :+:      :+:    :+:   ;;
;;                                                    +:+ +:+         +:+     ;;
;;   By: gwoodwar <gwoodwar@student.42.fr>          +#+  +:+       +#+        ;;
;;                                                +#+#+#+#+#+   +#+           ;;
;;   Created: 2016/08/16 18:02:21 by gwoodwar          #+#    #+#             ;;
;;   Updated: 2016/08/22 19:14:02 by gwoodwar         ###   ########.fr       ;;
;;                                                                            ;;
;; ************************************************************************** ;;

extern		ft_is_in_range
global		ft_isascii

ft_isascii:
	enter	0, 0
	mov		esi, 0
	mov		edx, 127
	call	ft_is_in_range
	leave
	ret
