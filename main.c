/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: gwoodwar <gwoodwar@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2016/08/22 18:17:16 by gwoodwar          #+#    #+#             */
/*   Updated: 2016/08/23 19:04:18 by gwoodwar         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libfts.h"

#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int				main(void)
{
	int			ret;
	int			i = 0;

	printf("TEST ft_is\n");
	while (i < 128)
	{
		printf("\tvalue |%c| ", i);
		ret = ft_isascii(i);
		printf("\tft_isascii: %d ", ret);
		ret = ft_isalpha(i);
		printf("\tft_isalpha: %d ", ret);
		ret = ft_isdigit(i);
		printf("\tft_isdigit: %d ", ret);
		ret = ft_isprint(i);
		printf("\tft_isprint: %d ", ret);
		ret = ft_isalnum(i);
		printf("\tft_isalnum: %d\n", ret);
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
	ret = ft_strlen(NULL);
	printf("\tft_strlen real value: NULL return value %d\n", ret);

	
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
	printf("\ts1: %s\ts2: %s\tresult: %s\n", s1, s2, s);
	s = ft_strcat(s1, NULL);
	printf("\ts1: %s\ts2: NULL\tresult: %s\n", s1, s);
	s = ft_strcat(NULL, s2);
	printf("\ts1: NULL\ts2: %s\tresult: %s\n", s2, s);
	s = ft_strcat(NULL, NULL);
	printf("\ts1: NULL\ts2: NULL\tresult: %s\n", s);

	printf("\nTEST ft_touplow\n");
	i = 32;
	while (i < 127)
	{
		printf("\tvalue: %c\ttoup: %c\ttolow: %c", i, ft_toupper(i), ft_tolower(i));
		if (i % 3 == 0)
			printf("\n");
		i++;
	}
	printf("\n");

	printf("\nTEST ft_memset\n");
	char		memset[8] = "afiwm[i";

	printf("\t%s\n", memset);
	ft_memset(memset, '~', 7);
	printf("\t%s\n", memset); // add test

	printf("\nTEST ft_memcpy\n");
	char		src[8] = "afiwm[i";
	char		*dst = malloc(8);

	printf("\t%s\n", src);
	dst = ft_memcpy(dst, src, 8);
	printf("\t%s\n", dst); // add test

	printf("\nTEST ft_strdup\n");
	char		*dup;

	printf("\t%s\n", src);
	dup = ft_strdup(src);
	printf("\t%s\n", dup);
	free(dup);
	dup = ft_strdup(NULL);
	printf("\tNULL -> %s\n", dup);

	printf("\nTEST ft_cat\n");
	ft_cat(-1);
	ft_cat(10);
	return (0);
}
