#!/usr/bin/perl -w
use strict;
use warnings;

#
# mv ��ɾ�
# mv ó�� ���, �ɼ� ����, �μ� 2���� ���� 
# 2��° �μ��� ���͸��� �� ���͸� �ؿ� ���� ����
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
/etc/vsftpd.conf ���� ����
line0014: pam_service_name=vsftpd
line0017: userlist_enable=yes
line0018: userlist_deny=yes

/etc/vsftpd.ftpusers ���� ������
/etc/vsftpd.user_list ���� ����
root

line0014: pam_service_name=vsftpd
line0017: userlist_enable=yes
line0018: userlist_deny=yes

/etc/vsftpd/ftpusers ���� ����
ssr1

/etc/vsftpd.user_list ���� ����
root