CC=gcc
CCFLAGS= -Wall -Werror -g
LIBFLAGS= -lm -pg
SRC= $(wildcard *.c)
OBJ= $(SRC:.c=.o)
EXEC= exec


all: $(EXEC)

$(EXEC): $(OBJ)
	$(CC)   $^ -o $@ $(LIBFLAGS)

%.o: %.cc
	$(CC) $(CCFLAGS) -o $@ -c $< $(LIBFLAGS)

.depend:
	gcc -MM $(SRC) > .depends
-include .depends

clean:
	rm -f $(OBJ) $(EXEC)
