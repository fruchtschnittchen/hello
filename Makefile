CC = gcc
CFLAGS = -I.
DEPS = hello.h
OBJ = main.o hello.o 

%.o: %.c $(DEPS)
	$(CC) -c -o $@ $< $(CFLAGS)

helloPAES: $(OBJ)
	$(CC) -o $@ $^ $(CFLAGS)

clean:
	rm  *.o
	rm  helloPAES
