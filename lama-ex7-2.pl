#!/usr/bin/env perl
use strict;
use warnings;

# 少なくとも1個のaの後ろに任意個のbが続くような文字列にマッチするパターン
# 任意個…0個でもよい
while (<>){
    chomp;
    if (/a/){
        print "Matched: |$`<$&>$'|\n"
    } else {
	print "No match.\n";
    }
}
