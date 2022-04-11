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


__DATA__
red green  blue
red
blue
green
red
blue
blue
/etc/vsftpd.conf 파일 내용
line0014: pam_service_name=vsftpd
line0017: userlist_enable=yes
line0018: userlist_deny=yes

/etc/vsftpd.ftpusers 파일 미존재
/etc/vsftpd.user_list 파일 내용
root

line0014: pam_service_name=vsftpd
line0017: userlist_enable=yes
line0018: userlist_deny=yes

/etc/vsftpd/ftpusers 파일 내용
ssr1

/etc/vsftpd.user_list 파일 내용
root