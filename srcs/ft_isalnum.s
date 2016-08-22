;; ************************************************************************** ;;
;;                                                                            ;;
;;                                                        :::      ::::::::   ;;
;;   ft_isalnum.s                                       :+:      :+:    :+:   ;;
;;                                                    +:+ +:+         +:+     ;;
;;   By: gwoodwar <gwoodwar@student.42.fr>          +#+  +:+       +#+        ;;
;;                                                +#+#+#+#+#+   +#+           ;;
;;   Created: 2016/08/16 18:00:02 by gwoodwar          #+#    #+#             ;;
;;   Updated: 2016/08/22 19:55:46 by gwoodwar         ###   ########.fr       ;;
;;                                                                            ;;
;; ************************************************************************** ;;

global		ft_isalnum
extern		ft_isalpha
extern		ft_isdigit


ft_isalnum:
	enter	0, 0
	call	ft_isalpha
	cmp		rax, 1
	je		.leave
	call	ft_isdigit
	leave
	ret
	
.leave:
	leave
	ret
