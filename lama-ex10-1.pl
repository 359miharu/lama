#!/usr/bin/env perl
use strict;
use warnings;

# 1～100までの間から選んだ秘密の数を、ユーザーに当ててもらうプログラム
my $answer = int(1 + rand 100);

while (1) {
    print "1～100の中から答えを当ててください";
    my $number = <>;
    chomp $number;
    if ($number =~ /quit|exit|^\s*$/i) {
	print "ギブアップ　答えは$answerでした\n";
	last;
    } elsif ($number < $answer){
	print"はずれ　もっと大きい数です\n";
    } elsif($number == $answer){
        print"あたり！\n";
	last;
    } else {
	print"はずれ　もっと小さい数です\n";
    }
}
