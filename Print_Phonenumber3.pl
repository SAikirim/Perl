#!/usr/bin/perl -w

# �������� ��ȭ��ȣ ���
# DATA���� �������� ��ȭ��ȣ�� 1��, 4��, 5��, 6���Դϴ�. $phoneNumberRex�� �����Ͽ� �������� ��ȭ��ȣ�� ��µǵ��� ���Խ��� �ۼ��ϼ���.
# https://github.com/SAikirim/Perl
# by SAiki
#


use strict;
use warnings;

my $phoneNumberRex = qr/(?<![\w\-])\d{3}-\d{3,4}-\d{4}(?![\w\-])/;
local $/ = undef;
my $data = <DATA>;


while ( $data =~ /($phoneNumberRex)/g ) {
    print ": $1\n";
}

__DATA__
010-5054-6772 f-010-8001-7481 fd010-8001-7481 010-3492-3482 010-5064-0256 010-504-0256 -010-4788-5596 010-478-5596-