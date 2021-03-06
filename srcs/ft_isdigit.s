;; ************************************************************************** ;;
;;                                                                            ;;
;;                                                        :::      ::::::::   ;;
;;   ft_isdigit.s                                       :+:      :+:    :+:   ;;
;;                                                    +:+ +:+         +:+     ;;
;;   By: gwoodwar <gwoodwar@student.42.fr>          +#+  +:+       +#+        ;;
;;                                                +#+#+#+#+#+   +#+           ;;
;;   Created: 2016/08/16 17:37:27 by gwoodwar          #+#    #+#             ;;
;;   Updated: 2016/08/22 17:28:30 by gwoodwar         ###   ########.fr       ;;
;;                                                                            ;;
;; ************************************************************************** ;;

global		ft_isdigit
extern		ft_is_in_range

ft_isdigit:
	enter	0, 0
	mov		esi, '0'
	mov		edx, '9'
	call	ft_is_in_range
	leave
	ret
