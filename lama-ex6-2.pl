#!/usr/bin/env perl
use strict;
use warnings;

print "文字列のリストを1行に1個ずつ読み込んで20文字幅のカラムに右寄せで表示します。\n";
my @list = <>;
chomp @list;
print "\n",1234567890 x 5,"\n";
printf "%20s\n",$_ for(@list)

