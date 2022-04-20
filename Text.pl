#!/usr/bin/perl -w
use strict;
use warnings;

#
# mv 명령어
# mv 처럼 사용, 옵션 없음, 인수 2개를 받음 
# 2번째 인수가 디렉터리면 그 디렉터리 밑에 파일 생성
#

opendir (GIT, "C:/_Git")  || die "no git : $!\n";
while ( my $name = readdir(GIT)) {
    print "$name\n";
    
}
closedir(GIT)


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