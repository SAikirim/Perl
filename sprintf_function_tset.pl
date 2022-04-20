#!/usr/bin/perl -w
use strict;

#
# sprintf의 포맷에 따라 출력이 어떻게 되는지 테스트
# $format 형태에 따아서 "pid"가 출력이 안됩
#

my $format = " %10s  | %25s | %27s | %15s |";
my $detail .= sprintf( $format, 'protocol', 'interface', 'port', 'state', 'pid' ) . "\n";

print $detail;