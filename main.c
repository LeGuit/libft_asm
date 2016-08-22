/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: gwoodwar <gwoodwar@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2016/08/22 18:17:16 by gwoodwar          #+#    #+#             */
/*   Updated: 2016/08/22 18:55:31 by gwoodwar         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libfts.h"
#include <stdio.h>

int				main(void)
{
	char		test_is[8]= "1ab ~\n\t\0";
	int			ret;
	
	printf("TEST IS\n");
	printf("value %c\n", test_is[0]);
	ret = ft_isascii(test_is[0]);
	printf("value %d\n", ret);
	ret = ft_isalpha(test_is[0]);
	printf("value %d\n", ret);
	ret = ft_isalnum(test_is[0]);
	printf("value %d\n", ret);
	return (0);
}
