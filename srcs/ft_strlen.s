;; ************************************************************************** ;;
;;                                                                            ;;
;;                                                        :::      ::::::::   ;;
;;   ft_strlen.s                                        :+:      :+:    :+:   ;;
;;                                                    +:+ +:+         +:+     ;;
;;   By: gwoodwar <gwoodwar@student.42.fr>          +#+  +:+       +#+        ;;
;;                                                +#+#+#+#+#+   +#+           ;;
;;   Created: 2016/08/17 14:39:34 by gwoodwar          #+#    #+#             ;;
;;   Updated: 2016/08/23 14:07:15 by gwoodwar         ###   ########.fr       ;;
;;                                                                            ;;
;; ************************************************************************** ;;

;;ft_strlen(const char *str)
global 		ft_strlen

ft_strlen:
	enter	0, 0
	push	rdi
	sub		rcx, rcx
	not		rcx
	mov		rdi,[rsp]
	sub		al, al			;put '\0' value for end of count
	cld						;to read from lowest to highest adress
	repne	scasb			;count till al
	not		rcx
	pop		rdi
	lea		rax, [rcx - 1]	;sub the count of the '\0'
	leave
	ret
