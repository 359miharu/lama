#!/usr/bin/env perl
use strict;
use warnings;

# コマンドラインからファイル名のリストを受け取る
# その一つ一つについて、読み出し可能か、書き込み可能か、実行可能か、存在するかしないかを表示するプログラム

print "ファイル名のリスト(1行に1個)\n";
my @list = <>;
chomp @list;

for(@list) {
    unless(-e $_){
	print "$_は存在しないファイルです\n";
	next;
    }
    print "\n$_：";
    print "読み出し可能：" if -r $_;
    print "書き込み可能：" if -w $_;
    print "実行可能\n" if -x $_;
} 
