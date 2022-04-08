#!/usr/bin/perl -w
use strict;
use warnings;


#system("dir") > ;
#my @in_filename ;
#print @in_filename;
#my @in_name = split(" ",@in_filename);
#
#print @in_name;

my $old_age = 0;
my $old_name;
while (<*>) {
    chomp;
    print "$_ is readable\n" if -r;
    print "$_ is writeable\n" if -w;
    print "$_ is executable\n" if -x;
    print "$_ does not exist\n" unless -e;
    my $age = -C $_;
    if ($age >= 9) {
        print "age 9 over\n"
    }
    
    print "ctime: $age\n";
    if ($old_age < $age) {
        $old_name = $_;
        $old_age = $age;
    }
}
#my ($dev, $ino, $mode, $nlink, $uid, $gid, $rdev, $size, $atime, $mtime, $ctime, $blksize, $blocks) = stat("README.md");
printf "\nold filename: %s\nold_age: %d", $old_name, $old_age;

my $name_1 = "/etc/vsftpd.conf";
my $test = "red green  blue
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
root";

if ( $test =~ /$name_1/ ) {
    print "\nYES: $_\n";
}
else {
    print "\nNOT\n";
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