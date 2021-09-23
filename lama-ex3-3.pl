#!/usr/bin/env perl
use strict;
use warnings;

print "文字列のリストを作ります。1行に1個ずつ単語を書いてください。入力が終わったら改行し、Ctrl+dを押してください。\n";
my @list = <STDIN>;
@list = sort @list;
print "\nASCIIコード順に並べ替えます。\n";
print @list;
