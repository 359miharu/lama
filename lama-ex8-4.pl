#!/usr/bin/env perl
use strict;
use warnings;

while (<>) {
    chomp;

# 同じワードが連続して2回以上出現する行にマッチする。
# ワードはa-z、A-Z、数字、下線が連続するもの。ワード間の空白文字は違っていてもかまわない。
    if (/\b(\w+)(\s+\1)+\b/) {
        print "Matched: |$`<$&>$'|\n";
    } else {
        print "No match.\n";
    }

}
