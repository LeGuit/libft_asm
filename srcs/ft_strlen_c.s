;; ************************************************************************** ;;
;;                                                                            ;;
;;                                                        :::      ::::::::   ;;
;;   ft_strlen_c.s                                      :+:      :+:    :+:   ;;
;;                                                    +:+ +:+         +:+     ;;
;;   By: gwoodwar <gwoodwar@student.42.fr>          +#+  +:+       +#+        ;;
;;                                                +#+#+#+#+#+   +#+           ;;
;;   Created: 2016/08/18 14:35:06 by gwoodwar          #+#    #+#             ;;
;;   Updated: 2016/08/18 14:36:14 by gwoodwar         ###   ########.fr       ;;
;;                                                                            ;;
;; ************************************************************************** ;;

global 		ft_strlen

ft_strlen:
	push	rdi
	sub		ecx, ecx
	not		ecx
	mov		edi,[esp+8]
	sub		al, al			;put '\0' value for end of count
	add		al, esi			;add second argument value to stop the count
	cld						;to read from lowest to highest adress
	repne	scasb			;count till al
	not		ecx
	pop		rdi
	lea		eax, [ecx-1]	;sub the count of the '\0'
	ret
