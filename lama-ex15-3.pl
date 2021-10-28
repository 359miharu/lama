#!/usr/bin/perl
use strict;
use warnings;
use Data::Dumper;

# ユーザーから与えられた文字の中から、与えられた部分文字列が現れる場所をすべて探してその位置を表示

print "文字列：";
my $string = <STDIN>;
chomp $string;
print "探しもの：";
my $search = <STDIN>;
chomp $search;

my @answer;
my $where = -1;


while(1){
    $where = index($string, $search, $where+1);
    last if($where < 0);
    push @answer, $where ;
}

print "@answer\n";
