/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: gwoodwar <gwoodwar@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2016/08/22 18:17:16 by gwoodwar          #+#    #+#             */
/*   Updated: 2016/08/22 19:57:48 by gwoodwar         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libfts.h"
#include <stdio.h>

int				main(void)
{
	char		test_is[8]= "1aB ~\n\t\0";
	int			ret;
	int			i = 0;

	printf("TEST is_\n");
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
	//ft_puts("test ft_puts\n"); BUS ERROR
	return (0);
}
