PROGNAME = helloHTWK
DEPS = hello.h
OBJ = main.o hello.o

%.o: %.c $(DEPS)
	$(CC) -c -o $@ $< $(CFLAGS)

$(PROGNAME): $(OBJ)
	$(CC) -o $@ $^ $(CFLAGS)


install: $(PROGNAME)
	mkdir -p $(DESTDIR)$(PREFIX)
	cp $< $(DESTDIR)$(PREFIX)/bin/$(PROGNAME)

uninstall:
	rm -f $(DESTDIR)$(PREFIX)/bin/$(PROGNAME)

clean:
	rm  *.o
	rm  $(PROGNAME)

