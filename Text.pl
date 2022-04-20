#!/usr/bin/perl -w
use strict;
use warnings;

#
# grep 사용 예시
# grep을 사용해 배열(@foundFtpUsers)의 존재 여부를 확인할 수 있다. 
# 참이면 배열값을 리턴

my $test = "/test/test.txt";
my $basetest = $test =~ /[^\/\n\t]+$/ ;

my ($old_name, $new_name) = @ARGV;
if ( !defined ($old_name && $new_name)  ) {
    print "인수를 넣어주세요";
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