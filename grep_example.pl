#!/usr/bin/perl -w
use strict;
use warnings;

#
# grep ��� ����
# grep�� ����� �迭(@foundFtpUsers)�� ���� ���θ� Ȯ���� �� �ִ�. 
# ���̸� �迭���� ����

my $ftpUsers = "test";
my @foundFtpUsers = ("ghgh", "test", 'teest', 'qwe', 'asd');
my $includeFtpUsers = \@foundFtpUsers;

#print grep  {$ftpUsers eq $_} @foundFtpUsers ;
if ( $ftpUsers ne '' and grep  {$ftpUsers eq $_} @{$includeFtpUsers}) {
    print 'HEllo\n'
}