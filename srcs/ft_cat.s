;; ************************************************************************** ;;
;;                                                                            ;;
;;                                                        :::      ::::::::   ;;
;;   ft_cat.s                                           :+:      :+:    :+:   ;;
;;                                                    +:+ +:+         +:+     ;;
;;   By: gwoodwar <gwoodwar@student.42.fr>          +#+  +:+       +#+        ;;
;;                                                +#+#+#+#+#+   +#+           ;;
;;   Created: 2016/08/23 18:44:17 by gwoodwar          #+#    #+#             ;;
;;   Updated: 2016/08/23 19:05:19 by gwoodwar         ###   ########.fr       ;;
;;                                                                            ;;
;; ************************************************************************** ;;

;void		ft_cat(size_t fd)

section .text

global		ft_cat
extern		ft_puts

ft_cat:
	enter	0, 128		;buffer
	leave
	ret

;.read:
;	cmp		rax, 0
;
;
;.write:
;
