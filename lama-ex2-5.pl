#!/usr/bin/env perl
use strict;
use warnings;

print "入力された文字列を1行に1つずつ、指定された回数表示します";
print "文字列を入力してください。";
my $moji = <STDIN>;
print "何行繰り返しますか。";
my $gyo;
chomp($gyo = <STDIN>);

print $moji x $gyo;


