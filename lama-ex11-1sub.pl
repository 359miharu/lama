#!/usr/bin/env perl
use strict;
use warnings;

# ユーザーから入力ファイル名、出力ファイル名、サーチパターン、置き換え文字列を入力してもらう
# 入力ファイルを読み込んで見つかったサーチパターンをすべて置き換え文字列に置き換えて出力ファイルへと書き出すプログラム
#サブルーチンを使用

sub getinfo {
    print $_[0]; 
    my $info = <>;
    chomp $info;
    return $info;
}

my $file_in = &getinfo("入力ファイル名：");
open DATA, $file_in
    or die "$file_inは開きませんでした\n";

my $before = &getinfo("サーチパターン：");

my $after = &getinfo("置き換え文字列：");

my $file_out = &getinfo("出力ファイル名：");
unless (-e $file_out) {
    `touch $file_out`;
}
open DATA2, ">$file_out"
    or die "$file_outは開きませんでした\n" ;


while (<DATA>){
    s/$before/$after/g;
    print DATA2 $_;
}
