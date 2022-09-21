#!/usr/bin/perl -w

#
# 정상적인 ip 출력
# $dataRex와 $ipRex를 수정해서 아래와 같은 출력이 나오도록 해보세요.
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

my $dataRex = qr/([^\s]+ \d)\s([0-9\.\s]+)/s; # 수정
my $ipRex = qr/((?:\d{1,3}\.){3}\d{1,3})/; # 수정

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