#!/usr/bin/env perl
print "入力された文字列を1行に1つずつ、指定された回数表示します";
print "文字列を入力してください。";
$moji = <STDIN>;
print "何行繰り返しますか。";
chomp($gyo = <STDIN>);

print $moji x $gyo;


