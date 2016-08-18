;; ************************************************************************** ;;
;;                                                                            ;;
;;                                                        :::      ::::::::   ;;
;;   ft_memset.s                                        :+:      :+:    :+:   ;;
;;                                                    +:+ +:+         +:+     ;;
;;   By: gwoodwar <gwoodwar@student.42.fr>          +#+  +:+       +#+        ;;
;;                                                +#+#+#+#+#+   +#+           ;;
;;   Created: 2016/08/18 17:42:29 by gwoodwar          #+#    #+#             ;;
;;   Updated: 2016/08/18 17:55:39 by gwoodwar         ###   ########.fr       ;;
;;                                                                            ;;
;; ************************************************************************** ;;

;void	*ft_memset(void *b, int c, size_t len);
; use rep     stosb maybe

ft_memset:
	push	rdi
	mov		al, [rsp + 8] 	;get c
	mov		rcx, [rsp + 24]	;get len
	je		.ret

.ret
	pop		rax
	ret
