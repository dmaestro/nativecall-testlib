#include <stdint.h>
#include <sys/types.h>
// special for perl 6 native call tests
#ifndef _NC_INT_H
#define _NC_INT_H

int32_t decr_3( uint64_t n );
int64_t decr_6( uint64_t n );
ssize_t decr_s( uint64_t n );

#endif
