;; ************************************************************************** ;;
;;                                                                            ;;
;;                                                        :::      ::::::::   ;;
;;   ft_strdup.s                                        :+:      :+:    :+:   ;;
;;                                                    +:+ +:+         +:+     ;;
;;   By: gwoodwar <gwoodwar@student.42.fr>          +#+  +:+       +#+        ;;
;;                                                +#+#+#+#+#+   +#+           ;;
;;   Created: 2016/08/23 18:19:41 by gwoodwar          #+#    #+#             ;;
;;   Updated: 2016/08/23 18:32:58 by gwoodwar         ###   ########.fr       ;;
;;                                                                            ;;
;; ************************************************************************** ;;

;char	*ft_strdup(const char *s1);

global	ft_strdup
extern	ft_memcpy
extern	ft_strlen
extern	malloc

ft_strdup:
	enter	0, 0
	cmp		rdi, 0
	je		.null
	push	rdi
	call	ft_strlen
	inc		rax
	push	rax
	mov		rdi, rax
	call	malloc
	mov		rdi, rax
	pop		rdx
	pop		rsi
	call	ft_memcpy
	leave
	ret

.null:
	mov		rax, 0x00
	leave
	ret
