CFLAGS=-Wall -O2 -fPIC

all: int32.o int64.o int_ssize.o libints.so sizes

libints.so : int32.o int64.o int_ssize.o
	$(CC) $(CFLAGS) -shared $^ -o $@

sizes: sizes.c
