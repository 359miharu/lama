#!/usr/bin/env perl
use strict;
use warnings;

print "円の半径を入力してください。";
chomp($r = <STDIN>);
$p = 3.141592654;

if ($r ge 0) { 
    print "円周の長さは",2 * $r * $p,"です。\n";
} else {
    print "０より小さい数が入力されました\n";
    print "円周の長さは０です。\n";
}
