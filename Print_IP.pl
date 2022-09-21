#!/usr/bin/perl -w

#
# �������� ip ���
# $dataRex�� $ipRex�� �����ؼ� �Ʒ��� ���� ����� �������� �غ�����.
#ip-list 1 > 1 > 192.168.2.1
#ip-list 1 > 2 > 192.168.2.2
#ip-list 2 > 1 > 192.168.4.2
#ip-list 2 > 2 > 192.168.4.3
#ip-list 3 > 1 > 192.168.5.1
#ip-list 3 > 2 > 192.168.5.2
# https://github.com/SAikirim/Perl
# by SAiki
#

use strict;
use warnings;

local $/ = undef;
my $data = <DATA>;

my $dataRex = qr/([^\s]+ \d)\s([0-9\.\s]+)/s; # ����
my $ipRex = qr/((?:\d{1,3}\.){3}\d{1,3})/; # ����

while ( $data =~ /$dataRex/g ) {
    my ($name, $conf) = ($1, $2);
    my $cnt = 0;
    while ( $conf =~ /$ipRex/g ) {
        my $ip = $1;
        $cnt++;
        print "$name > $cnt > $ip\n";
    }
    
}

__DATA__
ip-list 1
192.168.2.1
192.168.2.2
ip-list 2
192.168.4.2
192.168.4.3
ip-list 3
192.168.5.1
192.168.5.2