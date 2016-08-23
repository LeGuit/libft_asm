/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: gwoodwar <gwoodwar@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2016/08/22 18:17:16 by gwoodwar          #+#    #+#             */
/*   Updated: 2016/08/23 16:41:15 by gwoodwar         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libfts.h"
#include <stdio.h>

int				main(void)
{
	char		test_is[8]= "1aB ~\n\t\0";
	int			ret;
	int			i = 0;

	printf("TEST ft_is\n");
	while (i < 8)
	{
		printf("\tvalue |%c|\n", test_is[i]);
		ret = ft_isascii(test_is[i]);
		printf("\tft_isascii return value %d\n", ret);
		ret = ft_isalpha(test_is[i]);
		printf("\tft_isalpha return value %d\n", ret);
		ret = ft_isdigit(test_is[i]);
		printf("\tft_isdigit return value %d\n", ret);
		ret = ft_isprint(test_is[i]);
		printf("\tft_isprint return value %d\n", ret);
		ret = ft_isalnum(test_is[i]);
		printf("\tft_isalnum return value %d\n", ret);
		i++;
	}
	printf("\tvalue |128|\n");
	ret = ft_isascii(128);
	printf("\tft_isascii return value %d\n", ret);
	printf("\tvalue |-1|\n");
	ret = ft_isascii(-1);
	printf("\tft_isascii return value %d\n", ret);
	printf("\nTEST ft_strlen\n");
	ret = ft_strlen("test ft_strlen");
	printf("\tft_strlen real value: 14 return value %d\n", ret);
	ret = ft_strlen("");
	printf("\tft_strlen real value: 0 return value %d\n", ret);
	
	printf("\nTEST ft_puts\n");
	ft_puts("toto tata tutu");
	ft_puts("");
	ft_puts(NULL);

	printf("\nTEST ft_bzero\n");
	char		bzer[8] = "afiwm[i";

	printf("\t%s\n", bzer);
	ft_bzero(bzer, 7);
	printf("\t%s\n", bzer); // add test

	printf("\nTEST ft_strcat\n");
	char		s1[9] = "toto";
	char		s2[5] = "tutu";
	char		*s;
	s = ft_strcat(s1, s2);
	printf("\ts1: %s\n\ts2: %s\n\tresult: %s\n", s1, s2, s);

	printf("\nTEST ft_touplow\n");
	i = 32;
	while (i < 127)
	{
		printf("\tvalue: %c\ttoup: %c\ttolow: %c\n", i, ft_toupper(i), ft_tolower(i));
		i++;
	}
	return (0);
}
