#!/usr/bin/env perl
use strict;
use warnings;

# fredを含むようなすべての文字列にマッチするパターン
while (<>){
    chomp;
    if (/fred/){
        print "Matched: |$`<$&>$'|\n"
    } else {
        print "No match.\n";
}
}

