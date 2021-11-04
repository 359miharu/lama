#!/usr/bin/perl
use strict;
use warnings;
use Data::Dumper;

# ファイルから文字列のリストを読み込み、ユーザーが指定したパターンにマッチさせる
# マッチした文字列と個数を表示
# ユーザーが入力したパターンが正しくなければ、errorを報告して再入力させる
# 空行が入力されたらプログラムを終了させる

my @list = split(/ /,<DATA>);
chomp @list;

while(1) {
    print "パターン：";
    my $pattern = <STDIN>;
    chomp $pattern;
    last if $pattern =~ /^\s*$/;
    my @matches = eval {grep /$pattern/, @list};
    if($@) {
	print "パターンに誤りがあります\n";
    } else {
	print scalar(@matches),"個の文字列にマッチしました\n";
	print "@matches\n";
    }
}

__DATA__
fred flintstone Wilma Flintstone Barney Rubble
betty rubble Bamm-Bamm Rubble PEBBLES FLINTSTONE
