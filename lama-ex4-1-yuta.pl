#!/usr/bin/env perl
use strict;
use warnings;

# 4-1のサブルーチンを使用して1～1000までの合計を求める

sub total2 {
	my @a = sort @_;
	my @b = ($a[0]..$a[1]);
    my $answer;
	for (@b) {
		$answer += $_;
	}
    return $answer;
}

chomp(my @arg = <>);
print "@arg の合計は", &total2(@arg) ,"です。\n";
