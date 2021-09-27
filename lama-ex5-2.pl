#!/usr/bin/env perl
use strict;
use warnings;

print "1行に1個ずつ単語を入力してください。各単語が何回出現したか数えます。\n";
my (@list , %count);
chomp(@list=<STDIN>);

for (@list) {
    $count{$_} += 1;
}

for (keys %count){
    print "$_:$count{$_}回\n";
}





