#!/usr/bin/env perl
use strict;
use warnings;

#6-2を改造してユーザーがカラムの幅を指定できるようにする。
print "columnの幅を指定してください：";
my $width = <STDIN>;
chomp $width;
print "文字列のリストを1行に1個ずつ読み込んで右寄せで表示します。\n";
my @list = <STDIN>;
chomp @list;

print "1234567890" x (($width+9)/10),"\n";
printf "%${width}s\n",$_ for(@list)
