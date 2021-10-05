#!/usr/bin/env perl
use strict;
use warnings;

# wilmaとfredの両方が含まれている行を表示する
while (<>){
    chomp;
    if (/(w|W)ilma.*(f|F)red|(f|F)red.*(w|W)ilma/){
        print "Matched:$_\n"
    } else {
        print "No match.\n";
}
}
