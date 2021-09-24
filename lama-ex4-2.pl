#!/usr/bin/env perl
use strict;
use warnings;

#4-1のサブルーチンを使用して1～1000までの合計を求める
sub total {
    my $answer;
    foreach (@_) {
        $answer += $_;
    }
    return $answer;
}

print "1～1000の合計は", &total(1..1000) ,"です。\n";

#my @list = 1..1000;
#my $sum = &total(@list);
#print "1～1000の合計は $sum です。.\n";
