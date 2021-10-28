#!/usr/bin/perl
use strict;
use warnings;
use Data::Dumper;

# 数値のリストを読み込んで数値としてソートし、右寄せで表示

my @numbers;
for (<DATA>) {
    chomp $_;
    push @numbers, split(/ /, $_); 
}
my @list = sort { $a <=> $b } @numbers;
printf "%20s\n",$_ for(@list)

__DATA__
17 1000 04 1.50 3.14159
-10 1.5 4 2001 90210 666
9 0 2 1 0
2001 42 -40 98.6 2.71828
