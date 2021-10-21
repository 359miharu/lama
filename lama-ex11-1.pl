#!/usr/bin/env perl
use strict;
use warnings;
#use Data::Dumper;


#"'`テスト
my $a = 10;
print '$a\n';
print "$a\n";
# print `$a`;

# ユーザーから入力ファイル名、出力ファイル名、サーチパターン、置き換え文字列を入力してもらう
# 入力ファイルを読み込んで見つかったサーチパターンをすべて置き換え文字列に置き換えて出力ファイルへと書き出すプログラム

print "入力ファイル名：";
my $file_in = <STDIN>;
open DATA, $file_in
    or die "$file_inは開きませんでした\n";

print "サーチパターン：";
my $before = <STDIN>;
chomp $before;
#warn Dumper "$before";

print "置き換え文字列：";
my $after = <STDIN>;
chomp $after;
#warn Dumper "$after";

print "出力ファイル名：";
my $file_out = <STDIN>;
chomp $file_out;
unless (-e $file_out) {    
    `touch $file_out`;
}
open DATA2, ">$file_out"
	or die "$file_outは開きませんでした\n" ;



while (<DATA>){
    s/$before/$after/g;
    print DATA2 $_; 
}
