;; ************************************************************************** ;;
;;                                                                            ;;
;;                                                        :::      ::::::::   ;;
;;   ft_isdigit.s                                       :+:      :+:    :+:   ;;
;;                                                    +:+ +:+         +:+     ;;
;;   By: gwoodwar <gwoodwar@student.42.fr>          +#+  +:+       +#+        ;;
;;                                                +#+#+#+#+#+   +#+           ;;
;;   Created: 2016/08/16 17:37:27 by gwoodwar          #+#    #+#             ;;
;;   Updated: 2016/08/16 18:53:34 by gwoodwar         ###   ########.fr       ;;
;;                                                                            ;;
;; ************************************************************************** ;;

global		ft_isdigit
extern		ft_is_in_range

ft_isdigit:
	mov		esi, '0'
	mov		edx, '9'
	call	ft_is_in_range
