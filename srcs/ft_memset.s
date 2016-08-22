;; ************************************************************************** ;;
;;                                                                            ;;
;;                                                        :::      ::::::::   ;;
;;   ft_memset.s                                        :+:      :+:    :+:   ;;
;;                                                    +:+ +:+         +:+     ;;
;;   By: gwoodwar <gwoodwar@student.42.fr>          +#+  +:+       +#+        ;;
;;                                                +#+#+#+#+#+   +#+           ;;
;;   Created: 2016/08/18 17:42:29 by gwoodwar          #+#    #+#             ;;
;;   Updated: 2016/08/22 15:55:53 by gwoodwar         ###   ########.fr       ;;
;;                                                                            ;;
;; ************************************************************************** ;;

;void	*ft_memset(void *b, int c, size_t len);
;use rep     stosb  rep repeat stosb store bytes

ft_memset:
	push	rdi
	mov		al, [rsp + ] 	;get c
	mov		rcx, [rsp + ]	;get len
	rep		stosb
	pop		rdi
	ret
