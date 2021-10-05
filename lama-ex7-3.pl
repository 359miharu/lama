#!/usr/bin/env perl
use strict;
use warnings;

# 任意個の逆スラッシュの後ろに任意個のアスタリスクが続くような部分を持つすべての文字列にマッチするパターン
while (<>){
    chomp;
    if (/\\*\**/){
        print "Matched: |$`<$&>$'|\n"
    }
}
