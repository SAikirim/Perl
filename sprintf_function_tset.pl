#!/usr/bin/perl -w
use strict;

#
# sprintf�� ���˿� ���� ����� ��� �Ǵ��� �׽�Ʈ
# $format ���¿� ���Ƽ� "pid"�� ����� �ȵ�
#

my $format = " %10s  | %25s | %27s | %15s |";
my $detail .= sprintf( $format, 'protocol', 'interface', 'port', 'state', 'pid' ) . "\n";

print $detail;