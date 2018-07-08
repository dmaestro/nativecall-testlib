use v6;
use NativeCall;

sub decr_3(uint32 --> int32) is native("ints") { * };
sub decr_6(uint64 --> int64) is native("ints") { * };
sub decr_s(uint64 --> ssize_t) is native("ints") { * };

say decr_3(0);
say decr_3(0);

say decr_6(0);
say decr_6(0);

say decr_s(0);
say decr_s(0);
