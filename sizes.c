#include <stdio.h>
#include <stdint.h>

#define printsize(sz) printf("sizeof(" #sz "):    \t%lu\n", sizeof(sz))
int main() {
    printsize(char);
    printsize(short);
    printsize(int);
    printsize(long);
    printsize(long long);
    printsize(size_t);
    printsize(ssize_t);
    printsize(void *);
    return 0;
}
