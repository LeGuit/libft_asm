/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   libfts.h                                           :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: gwoodwar <gwoodwar@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2016/08/16 14:40:05 by gwoodwar          #+#    #+#             */
/*   Updated: 2016/08/23 19:05:27 by gwoodwar         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef LIBTFS_H
# define LIBTFS_H
# include <stddef.h>

/* Instruction ASM
** ;64				32			16		[8	8]
** ;%rax			%eax		%ax		%ah	%al 	Return 1
** ;%rbx			%ebx		%bx		%bh	%bl 	(Callee saved)
** ;%rcx			%ecx		%cx		%ch	%cl 	Arg 4 + Counter
** ;%rdx			%edx		%dx		%dh	%dl 	Arg 3 + Return 2
** ;%rsi			%esi		%si			%sil	Arg 2
** ;%rdi			%edi		%di			%dil	Arg 1
** ;%rbp			%ebp		%bp			%bpl	(Callee saved)
** ;%rsp			%esp		%sp			%spl	Stack pointer (Callee saved)
** ;%r8				%r8d		%r8w		%r8b	Arg 5
** ;%r9				%r9d		%r9w		%r9b	Arg 6
** ;%r10			%r10d		%r10w		%r10b	Arg 7
** ;%r11			%r11d		%r11w		%r11b	Tmp
** ;%r12			%r12d		%r12w		%r12b	(Callee saved)
** ;%r13			%r13d		%r13w		%r13b	(Callee saved)
** ;%r14			%r14d		%r14w		%r14b	(Callee saved)
** ;%r15			%r15d		%r15w		%r15b	(Callee saved)
** -
** SYSTEM CALL
** 0x2000003	read
** 0x2000004	write
*/

/*
** Part 1 - functions
*/

int				ft_isalpha(int c);
int				ft_isdigit(int c);
int				ft_isalnum(int c);
int				ft_isascii(int c);
int				ft_isprint(int c);

int				ft_toupper(int c);
int				ft_tolower(int c);
int				ft_puts(const char *s);

void			ft_bzero(void *s, size_t n);
char			*ft_strcat(char *s1, const char *s2);

/*
** Part 2 - functions
*/

size_t			ft_strlen(const char *str);
void			*ft_memset(void *b, int c, size_t len);
void			*ft_memcpy(void *dst, const void *src, size_t n);
char			*ft_strdup(const char *s1);

/*
** Part 3 - Cat
*/

void			ft_cat(size_t fd);
/*
** Bonuses
*/

int				ft_is_in_range(int c, int from, int to);
size_t			ft_strlen_c(const char *str, int c);

#endif
