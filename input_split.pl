#!/usr/bin/perl -w
use strict;
use warnings;


#
# �Է°� ����(\s) �� �ٹٲ�{\n) �������� split
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
