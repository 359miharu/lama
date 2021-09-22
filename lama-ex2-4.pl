#!/usr/bin/env perl
use strict;
use warnings;


print "a×bを計算します\n";
print "数字を入力してください。a=";
my $a = <STDIN>;
chomp($a);
print "数字を入力してください。b=";
my $b = <STDIN>;
chomp($b);
print "a×b=",$a *$b,"\n";


