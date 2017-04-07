CC=gcc
CFLAGS=-Wall -Wextra -pedantic -std=c11
LDFLAGS=-O2

PROG=kilo
OBJS=kilo.o

all: $(PROG)

$(PROG):$(OBJS)
	$(CC) -o $@ $^ $(LDFLAGS)

.c.o:
	$(CC) -c $< $(CFLAGS)

kilo.o: kilo.h

clean:
	$(RM) $(OBJS) $(PROG) 
