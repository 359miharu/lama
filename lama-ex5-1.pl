#!/usr/bin/env perl
use strict;
use warnings;

print "名前から姓を当てます。名前を入力してください。";
my $first_name;
chomp($first_name = <STDIN>);

my %last_name = qw/
    miharu fujita
    訪暖 藤田
    /;

print "$last_name{$first_name}\n";


