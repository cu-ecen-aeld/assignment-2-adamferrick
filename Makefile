# ifdef CROSS_COMPILE
# CC = $(CROSS_COMPILE)
# else
# CC = gcc
# endif
CC = $(CROSS_COMPILE)gcc
CFLAGS = -g -Wall

.PHONY: default all clean

default: all

all: finder-app/writer.out

finder-app/writer.out: finder-app/writer.c
	$(CC) $(CFLAGS) -o $@ $<

clean:
	-rm -f finder-app/writer.out
