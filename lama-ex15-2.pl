#!/usr/bin/perl
use strict;
use warnings;
use Data::Dumper;

# ハッシュのデータを姓のアルファベット順（大文字小文字区別なし）でソート
# 姓が同じ場合は名前でソートする

my %last_name = qw{ 
    fred flintstone Wilma Flintstone Barney Rubble
    betty rubble Bamm-Bamm Rubble PEBBLES FLINTSTONE
};

my @list = sort {
    "\L$last_name{$a}" cmp "\L$last_name{$b}"
	or
	"\L$a"cmp "\L$b"
} keys %last_name;

print "$last_name{$_},$_\n" for(@list);
