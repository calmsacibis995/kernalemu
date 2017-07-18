CFLAGS=-Wall -Werror -g

all:
	cc $(CFLAGS) -c console.c
	cc $(CFLAGS) -c runtime.c
	cc $(CFLAGS) -c cbmdos.c
	cc $(CFLAGS) -c screen.c
	cc $(CFLAGS) -c memory.c
	cc $(CFLAGS) -c time.c
	cc $(CFLAGS) -c c128.c
	cc $(CFLAGS) -c fake6502.c
	cc -o kernalemu console.o cbmdos.o screen.o memory.o time.o c128.o runtime.o fake6502.o

clean:
	rm *.o
