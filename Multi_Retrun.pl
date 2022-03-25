#!/usr/bin/perl -w
use strict;
use warnings;


#
# 함수에서 배열를 멀티 리턴
#


sub num_to_eng{
    my @num = @_;
    my %num_eng;
    @num_eng{1..9} = qw(one two three four five six seven eight nine);
    my @eng;
    my @noteng;
    
    foreach (@num){
        if ($num_eng{$_}) {
            push(@eng, $num_eng{$_});          
        }else{
            push(@noteng, $_);
        } 
    }
return \@eng,\@noteng;
}

my @input = (1..19);
my ($yes,$no) = num_to_eng(@input);
print join (" ", @$yes), "\n";    
print join (" ", @$no), "\n"

