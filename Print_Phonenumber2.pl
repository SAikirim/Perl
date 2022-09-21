#!/usr/bin/perl -w

# 정상적인 전화번호 출력
# DATA에서 정상적인 전화번호는 1번, 4번, 5번, 6번입니다. $phoneNumberRex를 수정하여 정상적인 전화번호만 출력되도록 정규식을 작성하세요.
# https://github.com/SAikirim/Perl
# by SAiki
#

use strict;
use warnings;

my $phoneNumberRex = qr/(?:(?<=\:)[ \t]*?)(\b\d{3}-\d{3,4}-\d{4})(?:[ \t]*?)$/;
while ( my $line = <DATA> ) {
    if ( $line =~ /($phoneNumberRex)/ ) {
        print "$. : $1\n";
    }
}

__DATA__
1번:010-5054-6772
2번: -010-8001-7481         
3번:010-3492-3482-
4번: 010-4788-5596            
5번:010-5064-0256
6번:010-504-0256