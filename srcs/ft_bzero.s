;; ************************************************************************** ;;
;;                                                                            ;;
;;                                                        :::      ::::::::   ;;
;;   ft_bzero.s                                         :+:      :+:    :+:   ;;
;;                                                    +:+ +:+         +:+     ;;
;;   By: gwoodwar <gwoodwar@student.42.fr>          +#+  +:+       +#+        ;;
;;                                                +#+#+#+#+#+   +#+           ;;
;;   Created: 2016/08/16 18:28:14 by gwoodwar          #+#    #+#             ;;
;;   Updated: 2016/08/22 16:51:57 by gwoodwar         ###   ########.fr       ;;
;;                                                                            ;;
;; ************************************************************************** ;;

;;void		ft_bzero(void *s, size_t n)

ft_bzero:
	enter	0, 0
	sub		rcx, rcx

loop:
	cmp		rsi, 0
	je		.ret
	mov		rdi, rcx
	inc		rdi
	dec		rsi
	jmp		loop

.ret:
	leave
	ret
