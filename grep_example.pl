#!/usr/bin/perl -w
use strict;
use warnings;

#
# grep 사용 예시
# grep을 사용해 배열(@foundFtpUsers)의 존재 여부를 확인할 수 있다. 
# 참이면 배열값을 리턴

my $ftpUsers = "test";
my @foundFtpUsers = ("ghgh", "test", 'teest', 'qwe', 'asd');
my $includeFtpUsers = \@foundFtpUsers;

#print grep  {$ftpUsers eq $_} @foundFtpUsers ;
if ( $ftpUsers ne '' and grep  {$ftpUsers eq $_} @{$includeFtpUsers}) {
    print 'HEllo\n'
}