# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: gwoodwar <gwoodwar@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2016/08/16 14:16:17 by gwoodwar          #+#    #+#              #
#    Updated: 2016/08/22 19:20:45 by gwoodwar         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

ASM = 			nasm
NAME =			libfts.a
SRCS_DIR =		srcs
OBJS_DIR =		objs
ASM_FLAGS =		-f macho64 --prefix _
CC =			gcc
TEST_NAME =		test
LIB_ASM =		libfts
TEST_FLAGS =	-Wall -Werror -Wextra
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
		ft_strlen_c \
		ft_memset 
		#ft_memcpy \
		#ft_strdup

SRCS := $(addprefix $(SRCS_DIR)/, $(addsuffix .s, $(LIST)))
OBJS := $(addprefix $(OBJS_DIR)/, $(addsuffix .o, $(LIST)))

all: $(NAME)

$(NAME): $(OBJS)
	ar rc $@ $^
	ranlib $@

$(OBJS_DIR)/%.o: $(SRCS_DIR)/%.s
	mkdir -p $(dir $@)
	$(ASM) $(ASM_FLAGS) -o $@ $<

$(TEST_NAME): $(NAME)
	$(CC) $(TEST_FLAGS) -o main.o -c main.c -I./libfts.h
	$(CC) $(TEST_FLAGS) -o $(TEST_NAME) main.o -I./libfts.h $(NAME)

clean:
	/bin/rm -rf $(OBJS_DIR)

fclean: clean
	/bin/rm -f $(NAME)
	/bin/rm -f $(TEST_NAME)

re: fclean all

.PHONY: re clean fclean all test
