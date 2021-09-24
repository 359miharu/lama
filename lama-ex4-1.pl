#!/usr/bin/env perl
use strict;
use warnings;

#リストを受け取ってその合計を返すサブルーチン
sub total {
    my $answer;
    foreach (@_) {
	$answer += $_;
    }
    return $answer;
}

#以下はテキスト記載のサンプルプログラム。サブルーチンの動作確認用。
    my @fred = qw{ 1 3 5 7 9 };
    my $fred_total = &total(@fred);
    print "The total of \@fred is $fred_total.\n";
    print "Enter some numbers on separate lines";
    my $user_total = &total(<STDIN>);
    print "The total of those nymbers is $user_total.\n";
