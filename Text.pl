#!/usr/bin/perl -w
use strict;
use warnings;

#
# grep ��� ����
# grep�� ����� �迭(@foundFtpUsers)�� ���� ���θ� Ȯ���� �� �ִ�. 
# ���̸� �迭���� ����

my $test = "/test/test.txt";
my $basetest = $test =~ /[^\/\n\t]+$/ ;

my ($old_name, $new_name) = @ARGV;
if ( !defined ($old_name && $new_name)  ) {
    print "�μ��� �־��ּ���";
    exit;
}
$old_name =~ s/\\/\//g ;
$new_name =~ s/\\/\//g ;

if (-e $old_name) {
    if ( -d $new_name ) {
        (my $base_name = $old_name) =~ /[^\/\n\t]+$/ ;
        $new_name .= "/$base_name";
    }
    
    rename ( $old_name, $new_name ) || die "rename failed :$!\n";
    }
else {      
    print "NO Fire or Diretory : $!";
    exit;
}




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