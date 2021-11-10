CC=gcc
CFLAGS=-g -fPIC -Iinclude -Ideps -Wall -Wextra -pedantic -std=c17
LDFLAGS=-shared -o

WIN_BIN=lib_<project>.dll
UNIX_BIN=lib<project>.so

OBJFILES=$(wildcard src/*.c)

TESTS = $(patsubst %.c, %, $(wildcard t/*.c))

all: unix

unix:
	$(CC) $(CFLAGS) $(OBJFILES) $(LDFLAGS) $(UNIX_BIN)

win:
	$(CC) $(CFLAGS) $(OBJFILES) $(LDFLAGS) $(WIN_BIN)

clean:
	rm -f $(TARGET) $(UNIX_BIN) $(WIN_BIN) main main.o

test:
	./scripts/test.bash
	$(MAKE) clean

.PHONY: test clean
