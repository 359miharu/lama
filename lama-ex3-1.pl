#!/usr/bin/env perl
use strict;
use warnings;

print "文字列のリストを作ります。1行に1個ずつ単語を書いてください。入力が終わったら改行し、Ctrl+dを押してください。\n";
my @list = <STDIN>;
@list = reverse @list;
print "\n逆順にします。\n";
print @list;
