NAME = minitalk

all: server client

server: sources/server.c
	gcc -Wall -Wextra -Werror sources/server.c -o server

client: sources/client.c
	gcc -Wall -Wextra -Werror sources/client.c -o client

$(NAME): server client

clean:
	rm -f server client

fclean: clean

re: clean all

dev :
	make fclean
	git add .; git commit -m "auto/dev"; git push
	make all

.PHONY: all clean fclean re