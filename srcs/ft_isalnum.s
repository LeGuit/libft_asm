;; ************************************************************************** ;;
;;                                                                            ;;
;;                                                        :::      ::::::::   ;;
;;   ft_isalnum.s                                       :+:      :+:    :+:   ;;
;;                                                    +:+ +:+         +:+     ;;
;;   By: gwoodwar <gwoodwar@student.42.fr>          +#+  +:+       +#+        ;;
;;                                                +#+#+#+#+#+   +#+           ;;
;;   Created: 2016/08/16 18:00:02 by gwoodwar          #+#    #+#             ;;
;;   Updated: 2016/08/22 15:55:54 by gwoodwar         ###   ########.fr       ;;
;;                                                                            ;;
;; ************************************************************************** ;;

extern		ft_isalpha
extern		ft_isdigit

prologue:
	enter	0, 0

ft_isalnum:
	call	ft_isalpha
	cmp		rax, 1
	je		leave
	call	ft_isdigit

leave:
	leave
	ret
