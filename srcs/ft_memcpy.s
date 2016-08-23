;; ************************************************************************** ;;
;;                                                                            ;;
;;                                                        :::      ::::::::   ;;
;;   ft_memcpy.s                                        :+:      :+:    :+:   ;;
;;                                                    +:+ +:+         +:+     ;;
;;   By: gwoodwar <gwoodwar@student.42.fr>          +#+  +:+       +#+        ;;
;;                                                +#+#+#+#+#+   +#+           ;;
;;   Created: 2016/08/23 17:45:05 by gwoodwar          #+#    #+#             ;;
;;   Updated: 2016/08/23 18:13:14 by gwoodwar         ###   ########.fr       ;;
;;                                                                            ;;
;; ************************************************************************** ;;

;void	*ft_memcpy(void *dst, const void *src, size_t n)
global		ft_memcpy

ft_memcpy:
	enter		0, 0
	push		rdi
	mov			rcx, rdx	;get len
	cld
	rep	movsb
	pop			rax
	leave
	ret
