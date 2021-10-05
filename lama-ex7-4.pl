#!/usr/bin/env perl
use strict;
use warnings;

# wilmaまたはWilmaを含むすべての入力行を表示する
while (<>){
    chomp;
    if (/(w|W)ilma/){
        print "Matched:$_\n"
    } else {
        print "No match.\n";
}
}

