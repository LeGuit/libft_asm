# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: gwoodwar <gwoodwar@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2016/08/16 14:16:17 by gwoodwar          #+#    #+#              #
#    Updated: 2016/08/16 18:56:36 by gwoodwar         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

ASM = 			nasm
NAME =			libfts.a
SRCS_DIR =		srcs
OBJS_DIR =		objs
CC =			gcc
TEST_NAME =		test
TEST_FLAGS =	-Wall -Werror -Wextra
ASM_FLAGS =		-f macho
LIST =	ft_is_in_range \
		ft_strcat \
		ft_isalpha \
		ft_isdigit \
		ft_isalnum \
		ft_isascii \
		ft_isprint \
		ft_toupper \
		ft_tolower \
		ft_bzero \
		ft_puts \
		ft_strlen \
		ft_memset \
		ft_memcpy \
		ft_strdup

SRCS := $(addprefix $(SRCS_DIR)/, $(addsuffix .s, $(LIST)))
OBJS := $(addprefix $(OBJS_DIR)/, $(addsuffix .o, $(LIST)))

all: $(NAME)

test: $(NAME)
	$(CC) $(TEST_FLAGS) -o $(TEST_NAME) main.c

$(NAME): $(OBJS)
	ln -sf $@

$(OBJS_DIR)/%.o: $(SRCS_DIR)/%.s
	mkdir -p $(dir $@)
	$(ASM) $(ASM_FLAGS) -o $@ $<

clean:
	/bin/rm -rf $(OBJS_DIR)

fclean: clean
	/bin/rm -f $(NAME)
	/bin/rm -f $(test)

re: fclean all

.PHONY: re clean fclean all
