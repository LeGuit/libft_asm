;; ************************************************************************** ;;
;;                                                                            ;;
;;                                                        :::      ::::::::   ;;
;;   ft_strlen_c.s                                      :+:      :+:    :+:   ;;
;;                                                    +:+ +:+         +:+     ;;
;;   By: gwoodwar <gwoodwar@student.42.fr>          +#+  +:+       +#+        ;;
;;                                                +#+#+#+#+#+   +#+           ;;
;;   Created: 2016/08/18 14:35:06 by gwoodwar          #+#    #+#             ;;
;;   Updated: 2016/08/22 17:21:50 by gwoodwar         ###   ########.fr       ;;
;;                                                                            ;;
;; ************************************************************************** ;;

global 		ft_strlen

ft_strlen:
	push	rdi
	push	rsi
	sub		rcx, rcx
	not		rcx
	mov		rdi,[rsp+8]
	mov		al, rsi
	;sub		al, al			;put '\0' value for end of count
	;add		al, rsi			;add second argument value to stop the count
	cld						;to read from lowest to highest adress
	repne	scasb			;count till al
	not		rcx
	pop		rdi
	pop		rsi
	lea		rax, [rcx-1]	;sub the count of the '\0'
	ret
