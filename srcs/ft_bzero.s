;; ************************************************************************** ;;
;;                                                                            ;;
;;                                                        :::      ::::::::   ;;
;;   ft_bzero.s                                         :+:      :+:    :+:   ;;
;;                                                    +:+ +:+         +:+     ;;
;;   By: gwoodwar <gwoodwar@student.42.fr>          +#+  +:+       +#+        ;;
;;                                                +#+#+#+#+#+   +#+           ;;
;;   Created: 2016/08/16 18:28:14 by gwoodwar          #+#    #+#             ;;
;;   Updated: 2016/08/23 16:07:05 by gwoodwar         ###   ########.fr       ;;
;;                                                                            ;;
;; ************************************************************************** ;;

;;void		ft_bzero(void *s, size_t n)
global		ft_bzero

ft_bzero:
	enter	0, 0

.loop:
	cmp		rsi, 0
	je		.ret
	mov	byte [rdi], 0x00
	inc		rdi
	dec		rsi
	jmp		.loop

.ret:
	leave
	ret
