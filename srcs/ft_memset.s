;; ************************************************************************** ;;
;;                                                                            ;;
;;                                                        :::      ::::::::   ;;
;;   ft_memset.s                                        :+:      :+:    :+:   ;;
;;                                                    +:+ +:+         +:+     ;;
;;   By: gwoodwar <gwoodwar@student.42.fr>          +#+  +:+       +#+        ;;
;;                                                +#+#+#+#+#+   +#+           ;;
;;   Created: 2016/08/18 17:42:29 by gwoodwar          #+#    #+#             ;;
;;   Updated: 2016/08/22 19:14:17 by gwoodwar         ###   ########.fr       ;;
;;                                                                            ;;
;; ************************************************************************** ;;

;void	*ft_memset(void *b, int c, size_t len);
;use rep     stosb  rep repeat stosb store bytes
global		ft_memset

ft_memset:
	enter	0, 0
	push	rdi
	mov		al, [rsp + 8] 	;get c
	mov		rcx, [rsp + 10]	;get len
	rep		stosb
	pop		rdi
	leave
	ret
