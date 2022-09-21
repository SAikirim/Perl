#!/usr/bin/perl -w

# �������� ��ȭ��ȣ ���
# DATA���� �������� ��ȭ��ȣ�� 1��, 4��, 5��, 6���Դϴ�. $phoneNumberRex�� �����Ͽ� �������� ��ȭ��ȣ�� ��µǵ��� ���Խ��� �ۼ��ϼ���.
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
1��:010-5054-6772
2��: -010-8001-7481         
3��:010-3492-3482-
4��: 010-4788-5596            
5��:010-5064-0256
6��:010-504-0256