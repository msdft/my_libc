NAME = my_libc.a
CC = cc
CFLAGS = -Wall -Wextra -Werror

SRCS = my_strlen.c my_strcpy.c my_strncpy.c my_strcat.c my_strncat.c
OBJS = $(SRCS:.c=.o)

all: $(NAME)

$(NAME): $(OBJS)
	ar -rc $(NAME) $(OBJS)

format:
	clang-format -a *.c *h	

clean:
	rm -f $(OBJS)

fclean: clean
	rm -f $(NAME)

re: fclean all