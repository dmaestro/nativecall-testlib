CFLAGS=-Wall -O2 -fPIC
OS := $(shell uname)
ifeq ($(OS),Darwin)
    LIBEXT=.dylib
else
    LIBEXT=.so
endif

all: int32.o int64.o int_ssize.o libints$(LIBEXT) sizes

libints.so libints.dylib : int32.o int64.o int_ssize.o
	$(CC) $(CFLAGS) -shared $^ -o $@

sizes: sizes.c

clean:
	rm -vf int32.o int64.o int_ssize.o libints$(LIBEXT) sizes

test: all
	LD_LIBRARY_PATH=. perl6 decr_zero.pl6
