# **************************************************************************** #
#                                                                              #
#                                                         ::::::::             #
#    Makefile                                           :+:    :+:             #
#                                                      +:+                     #
#    By: mdekker <mdekker@student.codam.nl>           +#+                      #
#                                                    +#+                       #
#    Created: 2022/12/07 12:57:06 by mdekker       #+#    #+#                  #
#    Updated: 2022/12/10 13:47:36 by mdekker       ########   odam.nl          #
#                                                                              #
# **************************************************************************** #

NAME := gnl.out
SRCS := get_next_line.c get_next_line_utils.c
CC := gcc
CFLAGS := -Wall -Wextra -Werror

all: ${NAME}

gnl.out: ${SRCS} | ${BUILD}
	${CC} ${CFLAGS} $^ -o gnl.out

${BUILD}:
	@mkdir -p $@

clean:
	@rm -rf ${BUILD}

fclean: clean
	@rm -f ${NAME}

re: fclean all
