#!/usr/bin/env perl
use strict;
use warnings;

print "数のリストを作ります。1行に1つずつ1～7の数字を入力してください。入力が終わったら改行し、Ctrl+dを押してください。\n";
my @list;
chomp(@list=<STDIN>);
my @names = qw/ fred betty barney dino wilma pebbles bamm-bamm/; 
print "\n数字に対応する人名を表示します。\n";
foreach my $item (@list){
    print @names[scalar $item -1],"\n";
}	
