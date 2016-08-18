;; ************************************************************************** ;;
;;                                                                            ;;
;;                                                        :::      ::::::::   ;;
;;   ft_strlen.s                                        :+:      :+:    :+:   ;;
;;                                                    +:+ +:+         +:+     ;;
;;   By: gwoodwar <gwoodwar@student.42.fr>          +#+  +:+       +#+        ;;
;;                                                +#+#+#+#+#+   +#+           ;;
;;   Created: 2016/08/17 14:39:34 by gwoodwar          #+#    #+#             ;;
;;   Updated: 2016/08/18 16:44:50 by gwoodwar         ###   ########.fr       ;;
;;                                                                            ;;
;; ************************************************************************** ;;

global 		ft_strlen

ft_strlen:
	push	rdi
	sub		rcx, rcx
	not		rcx
	mov		rdi,[rsp+8]
	sub		al, al			;put '\0' value for end of count
	cld						;to read from lowest to highest adress
	repne	scasb			;count till al
	not		rcx
	pop		rdi
	lea		rax, [ecx-1]	;sub the count of the '\0'
	ret
