#!/usr/bin/perl -w
use strict;
use warnings;


#
# mv ���ɾ�
# mv ó�� ���, �ɼ� ����, �μ� 2���� ���� 
# 2��° �μ��� ���͸��� �� ���͸� �ؿ� ���� ����
# by SAiki 
# 

my %fruit = (red => "apple", yellow => "banana", purple => "grape");

# 해시 요소를 모두 출력
while( my ($key, $val) = each %fruit) {
 	print "$key : $val \n";
}



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