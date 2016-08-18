;; ************************************************************************** ;;
;;                                                                            ;;
;;                                                        :::      ::::::::   ;;
;;   ft_memset.s                                        :+:      :+:    :+:   ;;
;;                                                    +:+ +:+         +:+     ;;
;;   By: gwoodwar <gwoodwar@student.42.fr>          +#+  +:+       +#+        ;;
;;                                                +#+#+#+#+#+   +#+           ;;
;;   Created: 2016/08/18 17:42:29 by gwoodwar          #+#    #+#             ;;
;;   Updated: 2016/08/18 17:53:41 by gwoodwar         ###   ########.fr       ;;
;;                                                                            ;;
;; ************************************************************************** ;;

;void	*ft_memset(void *b, int c, size_t len);
; use rep     stosb maybe

ft_memset:
	push	rdi
	mov		al, rsi
	cmp		rdx, 0
	je		.ret

.ret
	pop		rax
	ret
