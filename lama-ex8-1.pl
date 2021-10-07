#!/usr/bin/env perl
use strict;
use warnings;

while (<>) {
    chomp;

# ワードfredまたはwilmaがあり、次に何個かの空白があり、その後ろにワードflintstoneがある行にマッチ
    if (/\b(fred|wilma)\s+flintstone\b/) {
	print "Matched: |$`<$&>$'|\n";
    } else {
	print "No match.\n";
    }

}
