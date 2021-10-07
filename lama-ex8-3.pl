#!/usr/bin/env perl
use strict;
use warnings;

while (<>) {
    chomp;

# スカラー変数名だけを含むような文字列にマッチ($fred,$_など)
    if (/^\$[A-Za-z_]\w*$/) {
        print "Matched: |$`<$&>$'|\n";
    } else {
	print "No match.\n";
    }

}

