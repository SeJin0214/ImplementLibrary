#**************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: sejjeong <sejjeong@student.42gyeongsa      +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2024/02/26 10:11:40 by sejjeong          #+#    #+#              #
#    Updated: 2025/02/24 09:21:10 by sejjeong         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libft.a
CC = cc
CFLAGS = -Wall -Wextra -Werror -O3 -march=native -mavx2 -fno-stack-protector -funroll-loops

AR = ar
AR_FLAGS = rc

RM =rm
RM_FLAGS = -rf

SRC_DIR = ./srcs

MEMORY_DIR = $(SRC_DIR)/memory
STRING_DIR = $(SRC_DIR)/string
LIST_DIR = $(SRC_DIR)/list
FILE_DIR = $(SRC_DIR)/file
DEQUE_DIR = $(SRC_DIR)/deque
MATH_DIR = $(SRC_DIR)/math
ARRAY_LIST_DIR = $(SRC_DIR)/array_list
PRINTF_DIR = $(SRC_DIR)/printf
CONVERT_DIR = $(SRC_DIR)/convert
MAP_DIR = $(SRC_DIR)/map
STRING_BUILDER_DIR = $(SRC_DIR)/string_builder
VALID_DIR = $(SRC_DIR)/valid
UTIL_DIR = $(SRC_DIR)/util

SRCS = $(VALID_DIR)/ft_isalpha.c \
	$(VALID_DIR)/ft_isdigit.c \
	$(VALID_DIR)/ft_isalnum.c \
	$(VALID_DIR)/ft_isascii.c \
	$(VALID_DIR)/ft_isprint.c \
	$(VALID_DIR)/is_whitespace.c \
	$(VALID_DIR)/has_uppercase.c \
	$(MEMORY_DIR)/ft_memset.c \
	$(MEMORY_DIR)/ft_bzero.c \
	$(MEMORY_DIR)/ft_memcpy.c \
	$(MEMORY_DIR)/ft_memmove.c \
	$(MEMORY_DIR)/ft_memchr.c \
	$(MEMORY_DIR)/ft_memcmp.c \
	$(MEMORY_DIR)/ft_realloc.c \
	$(MEMORY_DIR)/ft_calloc.c \
	$(STRING_DIR)/ft_strlen.c \
	$(STRING_DIR)/ft_strlcpy.c \
	$(STRING_DIR)/ft_strlcat.c \
	$(STRING_DIR)/ft_strchr.c \
	$(STRING_DIR)/ft_strrchr.c \
	$(STRING_DIR)/ft_strncmp.c \
	$(STRING_DIR)/ft_strnstr.c \
	$(STRING_DIR)/ft_strdup.c \
	$(STRING_DIR)/ft_substr.c \
	$(STRING_DIR)/ft_strjoin.c \
	$(STRING_DIR)/ft_strtrim.c \
	$(STRING_DIR)/ft_split.c \
	$(STRING_DIR)/ft_strs_len.c \
	$(STRING_DIR)/ft_strmapi.c \
	$(STRING_DIR)/ft_striteri.c \
	$(STRING_DIR)/indexof.c \
	$(STRING_DIR)/ft_tolower.c \
	$(STRING_DIR)/ft_toupper.c \
	$(CONVERT_DIR)/ft_atoi.c \
	$(CONVERT_DIR)/ft_itoa.c \
	$(CONVERT_DIR)/ft_atoi_base.c \
	$(CONVERT_DIR)/try_atof.c \
	$(FILE_DIR)/ft_putchar_fd.c \
	$(FILE_DIR)/ft_putstr_fd.c \
	$(FILE_DIR)/ft_putendl_fd.c \
	$(FILE_DIR)/sprint_toa.c \
	$(FILE_DIR)/write_number.c \
	$(FILE_DIR)/get_next_line.c \
	$(MAP_DIR)/hashtable.c \
	$(PRINTF_DIR)/check_conversion_digit.c \
	$(PRINTF_DIR)/check_conversion_letter.c \
	$(PRINTF_DIR)/format_conversion.c \
	$(PRINTF_DIR)/print_digit.c \
	$(PRINTF_DIR)/print_str.c \
	$(PRINTF_DIR)/ft_printf.c \
	$(LIST_DIR)/ft_lstnew.c \
	$(LIST_DIR)/ft_lstadd_front.c \
	$(LIST_DIR)/ft_lstsize.c \
	$(LIST_DIR)/ft_lstlast.c \
	$(LIST_DIR)/ft_lstadd_back.c \
	$(LIST_DIR)/ft_lstdelone.c \
	$(LIST_DIR)/ft_lstclear.c \
	$(LIST_DIR)/ft_lstiter.c \
	$(LIST_DIR)/ft_lstmap.c \
	$(LIST_DIR)/ft_lst_prev.c \
	$(DEQUE_DIR)/ring_deque.c \
	$(DEQUE_DIR)/ring_deque2.c \
	$(DEQUE_DIR)/ring_deque3.c \
	$(UTIL_DIR)/assert.c \
	$(UTIL_DIR)/clear_ints.c \
	$(UTIL_DIR)/exit_by_error.c \
	$(UTIL_DIR)/swap_type.c \
	$(UTIL_DIR)/do_nothing.c \
	$(STRING_BUILDER_DIR)/builder_buffer.c \
	$(STRING_BUILDER_DIR)/string_builder.c \
	$(STRING_BUILDER_DIR)/append_string_builder.c \
	$(STRING_BUILDER_DIR)/build_string.c \
	$(ARRAY_LIST_DIR)/array_list.c \
	$(ARRAY_LIST_DIR)/list_getter.c \
	$(MATH_DIR)/ft_math.c \
	$(MATH_DIR)/vector.c \
	$(MATH_DIR)/vector_operation.c \
	$(MATH_DIR)/vector_product.c \
	$(MATH_DIR)/ivector.c \
	$(MATH_DIR)/matrix.c \
	$(MATH_DIR)/generate_hash_65599.c \

HEADER_DIR = -I ./includes

OBJS = $(SRCS:.c=.o)

all: $(NAME)

%.o: %.c
	$(CC) $(CFLAGS) $(HEADER_DIR) -c $< -o $@
	
$(NAME): $(OBJS)
	$(AR) $(AR_FLAGS) -o $(NAME) $(OBJS)

clean:
	$(RM) $(RM_FLAGS) $(OBJS)

fclean: clean	
	$(RM) $(RM_FLAGS) $(NAME)	

re: fclean all

.PHONY: all clean fclean re
