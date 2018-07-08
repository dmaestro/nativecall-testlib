CFLAGS=-Wall -O2 -fPIC

all: int32.o int64.o int_ssize.o libints.so

libints.so : int32.o int64.o int_ssize.o
	$(CC) $(CFLAGS) -shared $^ -o $@
