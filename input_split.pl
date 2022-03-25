#!/usr/bin/perl -w
use strict;
use warnings;


#
# 입력값 공백(\s) 및 줄바꿈{\n) 기준으로 split
# 

my @str;
my @test;

chomp(@str = <stdin>); #<DATA>);
foreach my $i (@str){
    push @test, split(/\s+/,$i);
}
print join (' ', @test),"\n";


__DATA__
red green  blue
red
blue
green
red
blue
blue
