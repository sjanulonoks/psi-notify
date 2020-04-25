CFLAGS=-Wall -Wextra -Werror -g $(shell pkg-config --cflags libnotify)
LDFLAGS=$(shell pkg-config --libs libnotify)

SOURCES=$(wildcard *.c)
EXECUTABLES=$(patsubst %.c,%,$(SOURCES))

all: $(EXECUTABLES)

clean:
	-rm -f $(EXECUTABLES)
